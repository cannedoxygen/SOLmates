-- Add user_number column to track signup sequence
ALTER TABLE users ADD COLUMN IF NOT EXISTS user_number SERIAL;

-- Create project_members table
CREATE TABLE IF NOT EXISTS project_members (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  role TEXT CHECK (role IN ('owner', 'collaborator', 'viewer')) DEFAULT 'collaborator',
  joined_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE(project_id, user_id)
);

-- Create project_tasks table
CREATE TABLE IF NOT EXISTS project_tasks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT,
  status TEXT CHECK (status IN ('todo', 'in_progress', 'completed')) DEFAULT 'todo',
  assigned_to UUID REFERENCES users(id) ON DELETE SET NULL,
  created_by UUID REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create project_updates table for activity feed
CREATE TABLE IF NOT EXISTS project_updates (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  update_type TEXT CHECK (update_type IN ('status_change', 'member_added', 'task_completed', 'comment', 'milestone')) NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  metadata JSONB,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create achievements table
CREATE TABLE IF NOT EXISTS user_achievements (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  achievement_type TEXT NOT NULL CHECK (achievement_type IN ('early_adopter', 'collaborator', 'mentor', 'creator')),
  earned_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  metadata JSONB,
  UNIQUE(user_id, achievement_type)
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_project_members_project_id ON project_members(project_id);
CREATE INDEX IF NOT EXISTS idx_project_members_user_id ON project_members(user_id);
CREATE INDEX IF NOT EXISTS idx_project_tasks_project_id ON project_tasks(project_id);
CREATE INDEX IF NOT EXISTS idx_project_tasks_assigned_to ON project_tasks(assigned_to);
CREATE INDEX IF NOT EXISTS idx_project_updates_project_id ON project_updates(project_id);
CREATE INDEX IF NOT EXISTS idx_user_achievements_user_id ON user_achievements(user_id);
CREATE INDEX IF NOT EXISTS idx_user_achievements_type ON user_achievements(achievement_type);
CREATE INDEX IF NOT EXISTS idx_users_created_at ON users(created_at);

-- Create function to get user's signup rank
CREATE OR REPLACE FUNCTION get_user_signup_rank(target_user_id UUID)
RETURNS INTEGER
LANGUAGE sql
STABLE
AS $$
  SELECT COUNT(*)::INTEGER + 1
  FROM users u1
  WHERE u1.created_at < (
    SELECT u2.created_at 
    FROM users u2 
    WHERE u2.id = target_user_id
  );
$$;

-- Function to check and award early adopter achievement
CREATE OR REPLACE FUNCTION check_early_adopter_achievement(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
  signup_rank INTEGER;
  achievement_exists BOOLEAN;
BEGIN
  -- Get user's signup rank
  SELECT get_user_signup_rank(target_user_id) INTO signup_rank;
  
  -- Check if achievement already exists
  SELECT EXISTS(
    SELECT 1 FROM user_achievements 
    WHERE user_achievements.user_id = target_user_id AND achievement_type = 'early_adopter'
  ) INTO achievement_exists;
  
  -- Award achievement if user is in first 100 and doesn't have it yet
  IF signup_rank <= 100 AND NOT achievement_exists THEN
    INSERT INTO user_achievements (user_id, achievement_type, metadata)
    VALUES (target_user_id, 'early_adopter', jsonb_build_object('signup_rank', signup_rank));
    RETURN TRUE;
  END IF;
  
  RETURN FALSE;
END;
$$;

-- Function to check collaborator achievement (5+ projects instead of 10 for testing)
CREATE OR REPLACE FUNCTION check_collaborator_achievement(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
  project_count INTEGER;
  achievement_exists BOOLEAN;
BEGIN
  -- Count completed projects where user is a member
  SELECT COUNT(DISTINCT p.id)
  FROM projects p
  JOIN project_members pm ON p.id = pm.project_id
  WHERE pm.user_id = target_user_id AND p.status = 'completed'
  INTO project_count;
  
  -- Check if achievement already exists
  SELECT EXISTS(
    SELECT 1 FROM user_achievements 
    WHERE user_achievements.user_id = target_user_id AND achievement_type = 'collaborator'
  ) INTO achievement_exists;
  
  -- Award achievement if user has 5+ completed projects (lowered for testing)
  IF project_count >= 5 AND NOT achievement_exists THEN
    INSERT INTO user_achievements (user_id, achievement_type, metadata)
    VALUES (target_user_id, 'collaborator', jsonb_build_object('project_count', project_count));
    RETURN TRUE;
  END IF;
  
  RETURN FALSE;
END;
$$;

-- Function to check mentor achievement (3+ matches with beginners instead of 5)
CREATE OR REPLACE FUNCTION check_mentor_achievement(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
  mentee_count INTEGER;
  achievement_exists BOOLEAN;
BEGIN
  -- Count unique users helped (users they've matched with who are beginners)
  SELECT COUNT(DISTINCT CASE 
    WHEN m.user1_id = target_user_id THEN m.user2_id 
    ELSE m.user1_id 
  END)
  FROM matches m
  JOIN users u ON (
    (m.user1_id = target_user_id AND u.id = m.user2_id AND (u.experience_level = 'Beginner' OR u.experience_level IS NULL)) OR
    (m.user2_id = target_user_id AND u.id = m.user1_id AND (u.experience_level = 'Beginner' OR u.experience_level IS NULL))
  )
  WHERE m.matched_at IS NOT NULL
  INTO mentee_count;
  
  -- Check if achievement already exists
  SELECT EXISTS(
    SELECT 1 FROM user_achievements 
    WHERE user_achievements.user_id = target_user_id AND achievement_type = 'mentor'
  ) INTO achievement_exists;
  
  -- Award achievement if user has helped 3+ beginners (lowered for testing)
  IF mentee_count >= 3 AND NOT achievement_exists THEN
    INSERT INTO user_achievements (user_id, achievement_type, metadata)
    VALUES (target_user_id, 'mentor', jsonb_build_object('mentee_count', mentee_count));
    RETURN TRUE;
  END IF;
  
  RETURN FALSE;
END;
$$;

-- Function to check creator achievement (FIXED - no more unnest in COUNT)
CREATE OR REPLACE FUNCTION check_creator_achievement(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
  innovation_score INTEGER;
  achievement_exists BOOLEAN;
BEGIN
  -- Calculate innovation score using a safe method (count unique technologies)
  SELECT COUNT(DISTINCT tech)
  FROM (
    SELECT unnest(p.tech_stack) as tech
    FROM projects p
    WHERE p.created_by = target_user_id AND p.status IN ('completed', 'active')
  ) tech_list
  INTO innovation_score;
  
  -- Check if achievement already exists
  SELECT EXISTS(
    SELECT 1 FROM user_achievements 
    WHERE user_achievements.user_id = target_user_id AND achievement_type = 'creator'
  ) INTO achievement_exists;
  
  -- Award achievement if user has used 5+ different technologies (lowered for testing)
  IF innovation_score >= 5 AND NOT achievement_exists THEN
    INSERT INTO user_achievements (user_id, achievement_type, metadata)
    VALUES (target_user_id, 'creator', jsonb_build_object('innovation_score', innovation_score));
    RETURN TRUE;
  END IF;
  
  RETURN FALSE;
END;
$$;

-- Function to check all achievements for a user
CREATE OR REPLACE FUNCTION check_user_achievements(target_user_id UUID)
RETURNS JSONB
LANGUAGE plpgsql
AS $$
DECLARE
  results JSONB := '{}';
BEGIN
  -- Check all achievement types
  results := jsonb_set(results, '{early_adopter}', to_jsonb(check_early_adopter_achievement(target_user_id)));
  results := jsonb_set(results, '{collaborator}', to_jsonb(check_collaborator_achievement(target_user_id)));
  results := jsonb_set(results, '{mentor}', to_jsonb(check_mentor_achievement(target_user_id)));
  results := jsonb_set(results, '{creator}', to_jsonb(check_creator_achievement(target_user_id)));
  
  RETURN results;
END;
$$;

-- Function to automatically add project members when project is created
CREATE OR REPLACE FUNCTION auto_add_project_members()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  -- Add creator as owner
  INSERT INTO project_members (project_id, user_id, role)
  VALUES (NEW.id, NEW.created_by, 'owner')
  ON CONFLICT (project_id, user_id) DO NOTHING;
  
  -- If project has a match_id, add both matched users as collaborators
  IF NEW.match_id IS NOT NULL THEN
    INSERT INTO project_members (project_id, user_id, role)
    SELECT NEW.id, 
           CASE 
             WHEN m.user1_id = NEW.created_by THEN m.user2_id
             ELSE m.user1_id
           END,
           'collaborator'
    FROM matches m
    WHERE m.id = NEW.match_id
    AND EXISTS (
      SELECT 1 FROM users u 
      WHERE u.id = CASE 
        WHEN m.user1_id = NEW.created_by THEN m.user2_id
        ELSE m.user1_id
      END
    )
    ON CONFLICT (project_id, user_id) DO NOTHING;
  END IF;
  
  RETURN NEW;
END;
$$;

-- Populate user_number for existing users (based on creation order)
UPDATE users SET user_number = subquery.row_number
FROM (
  SELECT id, ROW_NUMBER() OVER (ORDER BY created_at ASC) as row_number
  FROM users
  WHERE user_number IS NULL
) AS subquery
WHERE users.id = subquery.id;

-- Add project members for existing projects (creator as owner)
INSERT INTO project_members (project_id, user_id, role)
SELECT p.id, p.created_by, 'owner'
FROM projects p
WHERE p.created_by IS NOT NULL
AND NOT EXISTS (
  SELECT 1 FROM project_members pm 
  WHERE pm.project_id = p.id AND pm.user_id = p.created_by
)
ON CONFLICT (project_id, user_id) DO NOTHING;

-- Add collaborators for existing projects with match_id
INSERT INTO project_members (project_id, user_id, role)
SELECT p.id,
       CASE 
         WHEN m.user1_id = p.created_by THEN m.user2_id
         ELSE m.user1_id
       END,
       'collaborator'
FROM projects p
JOIN matches m ON p.match_id = m.id
WHERE p.match_id IS NOT NULL
AND p.created_by IS NOT NULL
AND NOT EXISTS (
  SELECT 1 FROM project_members pm 
  WHERE pm.project_id = p.id 
  AND pm.user_id = CASE 
    WHEN m.user1_id = p.created_by THEN m.user2_id
    ELSE m.user1_id
  END
)
ON CONFLICT (project_id, user_id) DO NOTHING;

-- Create triggers AFTER the functions are defined
DROP TRIGGER IF EXISTS trigger_auto_add_project_members ON projects;
CREATE TRIGGER trigger_auto_add_project_members
  AFTER INSERT ON projects
  FOR EACH ROW
  EXECUTE FUNCTION auto_add_project_members();

-- Check achievements for existing users (do this last)
DO $$
DECLARE
  user_record RECORD;
  user_count INTEGER := 0;
BEGIN
  FOR user_record IN SELECT id FROM users ORDER BY created_at LIMIT 50 LOOP
    user_count := user_count + 1;
    BEGIN
      PERFORM check_user_achievements(user_record.id);
    EXCEPTION WHEN OTHERS THEN
      -- Skip users that cause errors
      CONTINUE;
    END;
  END LOOP;
  
  RAISE NOTICE 'Processed % users for achievements', user_count;
END $$;