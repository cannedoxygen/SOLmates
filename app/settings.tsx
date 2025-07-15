import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  Switch,
  Alert,
} from 'react-native';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import { ProfileService } from '../lib/services/profileService';

interface UserSettings {
  // Discovery settings
  show_in_discovery: boolean;
  looking_for_skills: string[];
  looking_for_types: string[];
  
  // Privacy settings
  show_wallet_address: 'always' | 'matches' | 'never';
  read_receipts: boolean;
  typing_indicators: boolean;
}

const DEFAULT_SETTINGS: UserSettings = {
  show_in_discovery: true,
  looking_for_skills: [],
  looking_for_types: [],
  show_wallet_address: 'matches',
  read_receipts: true,
  typing_indicators: true,
};

// Simple discovery filters - just the basics for Web3
const SKILL_OPTIONS = [
  'Developer',
  'Designer/Artist', 
  'KOL/Influencer',
  'Community/Raider',
  'Business/Strategy',
  'Content Creator',
  'Trader/DeFi',
  'Project Manager'
];

const COLLABORATION_TYPES = [
  'Co-founder',
  'Developer',
  'Designer/Artist',
  'KOL/Influencer', 
  'Community Manager',
  'Content Creator',
  'Business Partner',
  'Advisor',
  'Freelancer',
  'Investor'
];


export default function SettingsScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const [settings, setSettings] = useState<UserSettings>(DEFAULT_SETTINGS);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    loadSettings();
  }, [user]);

  const loadSettings = async () => {
    if (!user) return;
    
    try {
      // TODO: Load settings from Supabase
      // For now, use defaults
      setSettings(DEFAULT_SETTINGS);
    } catch (error) {
      console.error('Failed to load settings:', error);
    } finally {
      setLoading(false);
    }
  };

  const saveSettings = async () => {
    setSaving(true);
    try {
      // TODO: Save settings to Supabase
      Alert.alert('Success', 'Settings saved successfully');
    } catch (error) {
      Alert.alert('Error', 'Failed to save settings');
    } finally {
      setSaving(false);
    }
  };

  const toggleSkill = (skill: string) => {
    setSettings(prev => ({
      ...prev,
      looking_for_skills: prev.looking_for_skills.includes(skill)
        ? prev.looking_for_skills.filter(s => s !== skill)
        : [...prev.looking_for_skills, skill]
    }));
  };

  const toggleCollaborationType = (type: string) => {
    setSettings(prev => ({
      ...prev,
      looking_for_types: prev.looking_for_types.includes(type)
        ? prev.looking_for_types.filter(t => t !== type)
        : [...prev.looking_for_types, type]
    }));
  };


  const renderSection = (title: string, children: React.ReactNode) => (
    <View style={styles.section}>
      <Text style={styles.sectionTitle}>{title}</Text>
      {children}
    </View>
  );

  const renderToggle = (
    label: string, 
    value: boolean, 
    onValueChange: (value: boolean) => void,
    subtitle?: string
  ) => (
    <View style={styles.toggleRow}>
      <View style={styles.toggleInfo}>
        <Text style={styles.toggleLabel}>{label}</Text>
        {subtitle && <Text style={styles.toggleSubtitle}>{subtitle}</Text>}
      </View>
      <Switch
        value={value}
        onValueChange={onValueChange}
        trackColor={{ false: '#363636', true: '#9945FF' }}
        thumbColor="#FFFFFF"
      />
    </View>
  );

  const renderMultiSelect = (
    options: string[],
    selected: string[],
    onToggle: (value: string) => void
  ) => (
    <View style={styles.multiSelectContainer}>
      {options.map(option => (
        <Pressable
          key={option}
          style={[
            styles.multiSelectItem,
            selected.includes(option) && styles.multiSelectItemActive
          ]}
          onPress={() => onToggle(option)}
        >
          <Text style={[
            styles.multiSelectText,
            selected.includes(option) && styles.multiSelectTextActive
          ]}>
            {option}
          </Text>
        </Pressable>
      ))}
    </View>
  );

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <View style={[styles.header, { paddingTop: insets.top + 10 }]}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
        </Pressable>
        <Text style={styles.headerTitle}>Settings</Text>
        <Pressable
          onPress={saveSettings}
          disabled={saving}
          style={[styles.saveButton, saving && styles.saveButtonDisabled]}
        >
          <Text style={styles.saveButtonText}>
            {saving ? 'Saving...' : 'Save'}
          </Text>
        </Pressable>
      </View>

      <ScrollView
        style={styles.content}
        contentContainerStyle={styles.contentContainer}
        showsVerticalScrollIndicator={false}
      >
        {/* Discovery Settings */}
        {renderSection('Discovery', (
          <>
            {renderToggle(
              'Show me in discovery',
              settings.show_in_discovery,
              (value) => setSettings(prev => ({ ...prev, show_in_discovery: value })),
              'Pause your profile without losing matches'
            )}
          </>
        ))}

        {/* Skills Filter */}
        {renderSection('Skills I\'m Looking For', (
          <>
            <Text style={styles.helperText}>
              Broad categories to filter discovery (detailed skills shown on profile cards)
            </Text>
            {renderMultiSelect(
              SKILL_OPTIONS,
              settings.looking_for_skills,
              toggleSkill
            )}
          </>
        ))}

        {/* Collaboration Types */}
        {renderSection('Collaboration Types', (
          <>
            <Text style={styles.helperText}>
              What type of collaborators are you looking for?
            </Text>
            {renderMultiSelect(
              COLLABORATION_TYPES,
              settings.looking_for_types,
              toggleCollaborationType
            )}
          </>
        ))}



        {/* Privacy Settings */}
        {renderSection('Privacy', (
          <>
            <View style={styles.subsection}>
              <Text style={styles.subsectionTitle}>Wallet Address Visibility</Text>
              <View style={styles.radioGroup}>
                {[
                  { value: 'always', label: 'Always visible' },
                  { value: 'matches', label: 'Only to matches' },
                  { value: 'never', label: 'Never show' },
                ].map(option => (
                  <Pressable
                    key={option.value}
                    style={styles.radioRow}
                    onPress={() => setSettings(prev => ({ ...prev, show_wallet_address: option.value as any }))}
                  >
                    <View style={[
                      styles.radioButton,
                      settings.show_wallet_address === option.value && styles.radioButtonActive
                    ]}>
                      {settings.show_wallet_address === option.value && (
                        <View style={styles.radioButtonInner} />
                      )}
                    </View>
                    <Text style={styles.radioLabel}>{option.label}</Text>
                  </Pressable>
                ))}
              </View>
            </View>

            {renderToggle(
              'Read receipts',
              settings.read_receipts,
              (value) => setSettings(prev => ({ ...prev, read_receipts: value })),
              'Let others know when you\'ve read messages'
            )}

            {renderToggle(
              'Typing indicators',
              settings.typing_indicators,
              (value) => setSettings(prev => ({ ...prev, typing_indicators: value })),
              'Show when you\'re typing'
            )}
          </>
        ))}

        {/* Safety & Security */}
        {renderSection('Safety & Security', (
          <>
            <Pressable 
              style={styles.linkRow}
              onPress={() => router.push('/blocked-users')}
            >
              <View style={styles.linkInfo}>
                <Text style={styles.linkLabel}>Blocked Users</Text>
                <Text style={styles.linkSubtitle}>Manage users you've blocked</Text>
              </View>
              <Ionicons name="chevron-forward" size={20} color="#666666" />
            </Pressable>
          </>
        ))}

        <View style={styles.bottomPadding} />
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 16,
    paddingBottom: 16,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.1)',
  },
  backButton: {
    padding: 8,
    marginLeft: -8,
  },
  headerTitle: {
    fontSize: 20,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  saveButton: {
    paddingHorizontal: 16,
    paddingVertical: 8,
    backgroundColor: '#9945FF',
    borderRadius: 16,
  },
  saveButtonDisabled: {
    opacity: 0.5,
  },
  saveButtonText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  content: {
    flex: 1,
  },
  contentContainer: {
    paddingHorizontal: 24,
    paddingTop: 24,
  },
  section: {
    marginBottom: 32,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  subsection: {
    marginBottom: 16,
  },
  subsectionTitle: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#B8B8B8',
    marginBottom: 12,
  },
  helperText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginBottom: 12,
  },
  toggleRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.05)',
  },
  toggleInfo: {
    flex: 1,
    marginRight: 16,
  },
  toggleLabel: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
  },
  toggleSubtitle: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginTop: 4,
  },
  multiSelectContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    marginTop: 8,
    marginHorizontal: -4,
  },
  multiSelectItem: {
    paddingHorizontal: 16,
    paddingVertical: 8,
    margin: 4,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  multiSelectItemActive: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    borderColor: '#9945FF',
  },
  multiSelectText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  multiSelectTextActive: {
    color: '#9945FF',
    fontFamily: 'Inter-Medium',
  },
  radioGroup: {
    marginTop: 8,
  },
  radioRow: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 10,
  },
  radioButton: {
    width: 20,
    height: 20,
    borderRadius: 10,
    borderWidth: 2,
    borderColor: '#666666',
    marginRight: 12,
    alignItems: 'center',
    justifyContent: 'center',
  },
  radioButtonActive: {
    borderColor: '#9945FF',
  },
  radioButtonInner: {
    width: 10,
    height: 10,
    borderRadius: 5,
    backgroundColor: '#9945FF',
  },
  radioLabel: {
    fontSize: 15,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
  },
  linkRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.05)',
  },
  linkInfo: {
    flex: 1,
  },
  linkLabel: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
  },
  linkSubtitle: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginTop: 2,
  },
  bottomPadding: {
    height: 40,
  },
});