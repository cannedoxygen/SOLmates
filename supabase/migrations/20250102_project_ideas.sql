-- Project Ideas table - stores initial project ideas shared between matched users
CREATE TABLE IF NOT EXISTS project_ideas (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  match_id TEXT NOT NULL, -- Using TEXT to match the matches table ID format
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  skills_needed TEXT[],
  created_by UUID REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_project_ideas_match ON project_ideas(match_id);
CREATE INDEX IF NOT EXISTS idx_project_ideas_created_by ON project_ideas(created_by);
CREATE INDEX IF NOT EXISTS idx_project_ideas_created_at ON project_ideas(created_at DESC);

-- RLS Policies
ALTER TABLE project_ideas ENABLE ROW LEVEL SECURITY;

-- Users can view project ideas for matches they're part of
CREATE POLICY "Users can view project ideas for their matches" ON project_ideas
FOR SELECT USING (
  match_id IN (
    SELECT m.id FROM matches m 
    WHERE m.user1_id = auth.uid()::text::uuid 
    OR m.user2_id = auth.uid()::text::uuid
  )
);

-- Users can create project ideas for matches they're part of
CREATE POLICY "Users can create project ideas for their matches" ON project_ideas
FOR INSERT WITH CHECK (
  created_by = auth.uid()::text::uuid
  AND match_id IN (
    SELECT m.id FROM matches m 
    WHERE m.user1_id = auth.uid()::text::uuid 
    OR m.user2_id = auth.uid()::text::uuid
  )
);

-- Users can update/delete their own project ideas
CREATE POLICY "Users can manage their own project ideas" ON project_ideas
FOR ALL USING (created_by = auth.uid()::text::uuid);