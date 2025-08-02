-- Add user_number column to track signup sequence
ALTER TABLE users ADD COLUMN IF NOT EXISTS user_number SERIAL;

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
CREATE INDEX IF NOT EXISTS idx_user_achievements_user_id ON user_achievements(user_id);
CREATE INDEX IF NOT EXISTS idx_user_achievements_type ON user_achievements(achievement_type);
CREATE INDEX IF NOT EXISTS idx_users_created_at ON users(created_at);

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

-- Function to check collaborator achievement (10+ projects)
CREATE OR REPLACE FUNCTION check_collaborator_achievement(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
  project_count INTEGER;
  achievement_exists BOOLEAN;
BEGIN
  -- Count completed projects
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
  
  -- Award achievement if user has 10+ completed projects
  IF project_count >= 10 AND NOT achievement_exists THEN
    INSERT INTO user_achievements (user_id, achievement_type, metadata)
    VALUES (target_user_id, 'collaborator', jsonb_build_object('project_count', project_count));
    RETURN TRUE;
  END IF;
  
  RETURN FALSE;
END;
$$;

-- Function to check mentor achievement (helped 5+ developers)
CREATE OR REPLACE FUNCTION check_mentor_achievement(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
  mentee_count INTEGER;
  achievement_exists BOOLEAN;
BEGIN
  -- Count unique users helped (simplified: users they've matched with who are beginners)
  SELECT COUNT(DISTINCT CASE 
    WHEN m.user1_id = target_user_id THEN m.user2_id 
    ELSE m.user1_id 
  END)
  FROM matches m
  JOIN users u ON (
    (m.user1_id = target_user_id AND u.id = m.user2_id AND u.experience_level = 'Beginner') OR
    (m.user2_id = target_user_id AND u.id = m.user1_id AND u.experience_level = 'Beginner')
  )
  WHERE m.matched_at IS NOT NULL
  INTO mentee_count;
  
  -- Check if achievement already exists
  SELECT EXISTS(
    SELECT 1 FROM user_achievements 
    WHERE user_achievements.user_id = target_user_id AND achievement_type = 'mentor'
  ) INTO achievement_exists;
  
  -- Award achievement if user has helped 5+ beginners
  IF mentee_count >= 5 AND NOT achievement_exists THEN
    INSERT INTO user_achievements (user_id, achievement_type, metadata)
    VALUES (target_user_id, 'mentor', jsonb_build_object('mentee_count', mentee_count));
    RETURN TRUE;
  END IF;
  
  RETURN FALSE;
END;
$$;

-- Function to check creator achievement (built innovative solutions)
CREATE OR REPLACE FUNCTION check_creator_achievement(target_user_id UUID)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
  innovation_score INTEGER;
  achievement_exists BOOLEAN;
BEGIN
  -- Calculate innovation score based on unique tech stacks used
  SELECT COUNT(DISTINCT unnest(p.tech_stack))
  FROM projects p
  WHERE p.created_by = target_user_id AND p.status IN ('completed', 'active')
  INTO innovation_score;
  
  -- Check if achievement already exists
  SELECT EXISTS(
    SELECT 1 FROM user_achievements 
    WHERE user_achievements.user_id = target_user_id AND achievement_type = 'creator'
  ) INTO achievement_exists;
  
  -- Award achievement if user has used 10+ different technologies
  IF innovation_score >= 10 AND NOT achievement_exists THEN
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

-- Trigger to check achievements after certain events
CREATE OR REPLACE FUNCTION trigger_check_achievements()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  -- Check achievements for the affected user
  PERFORM check_user_achievements(
    CASE 
      WHEN TG_TABLE_NAME = 'users' THEN NEW.id
      WHEN TG_TABLE_NAME = 'projects' THEN NEW.created_by
      WHEN TG_TABLE_NAME = 'project_members' THEN NEW.user_id
      WHEN TG_TABLE_NAME = 'matches' THEN NEW.user1_id
    END
  );
  
  -- For matches, also check the other user
  IF TG_TABLE_NAME = 'matches' THEN
    PERFORM check_user_achievements(NEW.user2_id);
  END IF;
  
  RETURN NEW;
END;
$$;

-- Create triggers
DROP TRIGGER IF EXISTS trigger_user_achievements_on_user_create ON users;
CREATE TRIGGER trigger_user_achievements_on_user_create
  AFTER INSERT ON users
  FOR EACH ROW
  EXECUTE FUNCTION trigger_check_achievements();

DROP TRIGGER IF EXISTS trigger_user_achievements_on_project_update ON projects;
CREATE TRIGGER trigger_user_achievements_on_project_update
  AFTER INSERT OR UPDATE ON projects
  FOR EACH ROW
  EXECUTE FUNCTION trigger_check_achievements();

DROP TRIGGER IF EXISTS trigger_user_achievements_on_match ON matches;
CREATE TRIGGER trigger_user_achievements_on_match
  AFTER INSERT OR UPDATE ON matches
  FOR EACH ROW
  EXECUTE FUNCTION trigger_check_achievements();

-- Populate user_number for existing users (based on creation order)
UPDATE users SET user_number = subquery.row_number
FROM (
  SELECT id, ROW_NUMBER() OVER (ORDER BY created_at ASC) as row_number
  FROM users
  WHERE user_number IS NULL
) AS subquery
WHERE users.id = subquery.id;

-- Check achievements for all existing users
DO $$
DECLARE
  user_record RECORD;
BEGIN
  FOR user_record IN SELECT id FROM users LOOP
    PERFORM check_user_achievements(user_record.id);
  END LOOP;
END $$;