const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function createProjectIdeasTable() {
  try {
    console.log('🔄 Creating project_ideas table...');

    // First, let's check if the table exists
    const { data: tables, error: tablesError } = await supabase
      .from('information_schema.tables')
      .select('table_name')
      .eq('table_name', 'project_ideas');

    if (tables && tables.length > 0) {
      console.log('✅ project_ideas table already exists');
      return;
    }

    // Since we can't create tables via client, let's simulate the data structure
    // In a real deployment, this would be handled by migrations
    console.log('⚠️ project_ideas table does not exist');
    console.log('For now, the app will handle missing table gracefully');
    console.log('In production, run the migration: 20250102_project_ideas.sql');

  } catch (error) {
    console.error('Error checking table:', error);
  }
}

createProjectIdeasTable();