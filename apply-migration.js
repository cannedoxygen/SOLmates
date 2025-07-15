const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseServiceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.IjrRlvyO2ZSa9R0wSZvvb7PbXDLYyJ5g4VGVLwTf6-k';

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function applyMigration() {
  console.log('🔄 Applying profile fields migration...');
  
  try {
    // Add missing profile fields for enhanced profile cards
    const { error } = await supabase.rpc('exec', {
      sql: `
        -- Add timezone column
        ALTER TABLE users 
        ADD COLUMN IF NOT EXISTS timezone TEXT;

        -- Add interests column (for AboutMeCard)
        ALTER TABLE users 
        ADD COLUMN IF NOT EXISTS interests TEXT[];

        -- Add index for better performance on new fields
        CREATE INDEX IF NOT EXISTS idx_users_timezone ON users(timezone);
        CREATE INDEX IF NOT EXISTS idx_users_interests ON users USING GIN(interests);

        -- Update any existing users to have empty arrays for interests if null
        UPDATE users 
        SET interests = '{}' 
        WHERE interests IS NULL;
      `
    });
    
    if (error) {
      console.error('❌ Migration failed:', error);
    } else {
      console.log('✅ Migration applied successfully!');
    }
  } catch (err) {
    console.error('❌ Error:', err);
  }
}

applyMigration();