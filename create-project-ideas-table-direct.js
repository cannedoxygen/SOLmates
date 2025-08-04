const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

// Use service role key for admin operations
const supabaseAdmin = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function createProjectIdeasTable() {
  try {
    console.log('🔄 Creating project_ideas table directly...\n');

    // SQL to create the table
    const createTableSQL = `
      -- Create project_ideas table if it doesn't exist
      CREATE TABLE IF NOT EXISTS project_ideas (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
        match_id TEXT NOT NULL,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        skills_needed TEXT[],
        created_by UUID REFERENCES users(id) ON DELETE CASCADE,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
      );

      -- Create indexes
      CREATE INDEX IF NOT EXISTS idx_project_ideas_match ON project_ideas(match_id);
      CREATE INDEX IF NOT EXISTS idx_project_ideas_created_by ON project_ideas(created_by);
      CREATE INDEX IF NOT EXISTS idx_project_ideas_created_at ON project_ideas(created_at DESC);
    `;

    // Execute SQL using rpc call (if available) or direct SQL
    console.log('📝 Creating table and indexes...');
    
    // Check if table exists first
    const { data: tables, error: checkError } = await supabaseAdmin
      .from('project_ideas')
      .select('id')
      .limit(1);

    if (checkError && checkError.code === '42P01') {
      console.log('❌ Table does not exist. Please run this SQL in Supabase dashboard:');
      console.log('\n' + createTableSQL + '\n');
      console.log('Go to: https://supabase.com/dashboard/project/kvpnseftxvidonyjiqsv/sql/new');
    } else if (!checkError) {
      console.log('✅ project_ideas table already exists!');
      
      // Show current data
      const { data: ideas, error: fetchError } = await supabaseAdmin
        .from('project_ideas')
        .select('*')
        .order('created_at', { ascending: false });

      if (!fetchError && ideas) {
        console.log(`\n📊 Current project ideas: ${ideas.length}`);
        ideas.forEach(idea => {
          console.log(`  - "${idea.title}" (${idea.match_id})`);
        });
      }
    } else {
      console.error('Error checking table:', checkError);
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

createProjectIdeasTable();