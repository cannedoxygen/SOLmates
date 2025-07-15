/**
 * ID Mapping Validation Script
 * 
 * This script helps test and validate ID mappings throughout the app.
 * Run in console or add to test suite to ensure consistency.
 */

import { ProfileService } from '../lib/services/profileService';
import { isPrivyId, isSupabaseId, privyToSupabaseId, supabaseToPrivyId } from '../lib/utils/idMapping';

export class IdMappingValidator {
  /**
   * Test a user's ID mapping consistency
   */
  static async validateUserIdMapping(privyId: string): Promise<{
    valid: boolean;
    errors: string[];
    results: any;
  }> {
    const errors: string[] = [];
    const results: any = {};

    try {
      // Test 1: Validate ID format
      if (!isPrivyId(privyId)) {
        errors.push(`Invalid Privy ID format: ${privyId}`);
        return { valid: false, errors, results };
      }

      // Test 2: Get profile by Privy ID
      const profileByPrivyId = await ProfileService.getUserProfile(privyId);
      if (!profileByPrivyId) {
        errors.push(`No profile found for Privy ID: ${privyId}`);
        return { valid: false, errors, results };
      }
      results.profileByPrivyId = profileByPrivyId;

      // Test 3: Validate Supabase ID format
      const supabaseId = profileByPrivyId.id;
      if (!isSupabaseId(supabaseId)) {
        errors.push(`Invalid Supabase ID format: ${supabaseId}`);
      }
      results.supabaseId = supabaseId;

      // Test 4: Get profile by Supabase ID
      const profileBySupabaseId = await ProfileService.getUserProfileById(supabaseId);
      if (!profileBySupabaseId) {
        errors.push(`No profile found for Supabase ID: ${supabaseId}`);
      } else {
        results.profileBySupabaseId = profileBySupabaseId;

        // Test 5: Cross-reference consistency
        if (profileByPrivyId.privy_user_id !== profileBySupabaseId.privy_user_id) {
          errors.push('Privy ID mismatch between profile queries');
        }
        if (profileByPrivyId.id !== profileBySupabaseId.id) {
          errors.push('Supabase ID mismatch between profile queries');
        }
      }

      // Test 6: Test ID conversion utilities
      const convertedSupabaseId = await privyToSupabaseId(privyId);
      if (convertedSupabaseId !== supabaseId) {
        errors.push(`ID conversion mismatch: expected ${supabaseId}, got ${convertedSupabaseId}`);
      }
      results.convertedSupabaseId = convertedSupabaseId;

      const convertedPrivyId = await supabaseToPrivyId(supabaseId);
      if (convertedPrivyId !== privyId) {
        errors.push(`ID conversion mismatch: expected ${privyId}, got ${convertedPrivyId}`);
      }
      results.convertedPrivyId = convertedPrivyId;

      return {
        valid: errors.length === 0,
        errors,
        results
      };

    } catch (error) {
      errors.push(`Validation error: ${error}`);
      return { valid: false, errors, results };
    }
  }

  /**
   * Validate critical app flows that depend on ID mappings
   */
  static async validateCriticalFlows(testPrivyId: string): Promise<{
    valid: boolean;
    errors: string[];
    results: any;
  }> {
    const errors: string[] = [];
    const results: any = {};

    try {
      // Get test user profile
      const profile = await ProfileService.getUserProfile(testPrivyId);
      if (!profile) {
        errors.push('Test user profile not found');
        return { valid: false, errors, results };
      }

      // Test Chat Flow ID Usage
      console.log('Testing Chat Flow...');
      const chatSupabaseId = profile.id; // This is what ChatService expects
      if (!isSupabaseId(chatSupabaseId)) {
        errors.push('Chat flow: Profile ID is not valid Supabase UUID');
      }
      results.chatFlowId = chatSupabaseId;

      // Test Safety Service ID Usage
      console.log('Testing Safety Service...');
      const safetyPrivyId = profile.privy_user_id; // This is what UserSafetyService expects
      if (!isPrivyId(safetyPrivyId)) {
        errors.push('Safety service: Profile Privy ID is not valid');
      }
      results.safetyFlowId = safetyPrivyId;

      // Test Tipping Flow ID Usage
      console.log('Testing Tipping Flow...');
      const tippingSupabaseId = profile.id; // This is what BonkTippingService expects
      if (!isSupabaseId(tippingSupabaseId)) {
        errors.push('Tipping flow: Profile ID is not valid Supabase UUID');
      }
      results.tippingFlowId = tippingSupabaseId;

      return {
        valid: errors.length === 0,
        errors,
        results
      };

    } catch (error) {
      errors.push(`Critical flow validation error: ${error}`);
      return { valid: false, errors, results };
    }
  }

  /**
   * Generate a comprehensive report
   */
  static async generateReport(testPrivyId: string): Promise<string> {
    const userValidation = await this.validateUserIdMapping(testPrivyId);
    const flowValidation = await this.validateCriticalFlows(testPrivyId);

    const report = `
# ID Mapping Validation Report

## User ID Mapping Test
${userValidation.valid ? '✅ PASSED' : '❌ FAILED'}

${userValidation.errors.length > 0 ? 
  '### Errors:\n' + userValidation.errors.map(e => `- ${e}`).join('\n') : 
  '### No errors found'
}

### Results:
- Privy ID: ${testPrivyId}
- Supabase ID: ${userValidation.results.supabaseId || 'N/A'}
- Profile by Privy ID: ${userValidation.results.profileByPrivyId ? '✅' : '❌'}
- Profile by Supabase ID: ${userValidation.results.profileBySupabaseId ? '✅' : '❌'}
- ID Conversion: ${userValidation.results.convertedSupabaseId ? '✅' : '❌'}

## Critical Flows Test
${flowValidation.valid ? '✅ PASSED' : '❌ FAILED'}

${flowValidation.errors.length > 0 ? 
  '### Errors:\n' + flowValidation.errors.map(e => `- ${e}`).join('\n') : 
  '### No errors found'
}

### Flow ID Usage:
- Chat Flow (Supabase): ${flowValidation.results.chatFlowId || 'N/A'}
- Safety Flow (Privy): ${flowValidation.results.safetyFlowId || 'N/A'}
- Tipping Flow (Supabase): ${flowValidation.results.tippingFlowId || 'N/A'}

## Overall Status
${userValidation.valid && flowValidation.valid ? '🎉 ALL TESTS PASSED' : '⚠️ ISSUES FOUND'}

Run this validation regularly to ensure ID consistency across the app.
    `;

    return report.trim();
  }
}

// Example usage:
// const report = await IdMappingValidator.generateReport('did:privy:your-test-id');
// console.log(report);