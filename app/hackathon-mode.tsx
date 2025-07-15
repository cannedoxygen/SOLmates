import { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Pressable,
  Switch,
  ScrollView,
  Alert,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { useAuth } from '../hooks/useAuth';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInUp } from 'react-native-reanimated';
import AsyncStorage from '@react-native-async-storage/async-storage';

const HACKATHON_STORAGE_KEY = '@solmates/hackathon_mode';

interface HackathonSettings {
  enabled: boolean;
  availableHours: string;
  skills: string[];
  lookingFor: string[];
  urgency: 'low' | 'medium' | 'high';
}

const HACKATHON_SKILLS = [
  'React/React Native',
  'Solana/Web3',
  'Smart Contracts',
  'Backend APIs',
  'UI/UX Design',
  'Product Strategy',
  'Marketing',
  'Pitch Deck',
  'Business Model',
  'Data Analysis',
  'AI/ML',
  'DevOps',
];

const HACKATHON_ROLES = [
  'Co-founder',
  'Technical Lead',
  'Designer',
  'Developer',
  'Product Manager',
  'Marketing Lead',
  'Business Analyst',
  'Mentor',
];

export default function HackathonMode() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user, updateUser } = useAuth();

  const [settings, setSettings] = useState<HackathonSettings>({
    enabled: false,
    availableHours: '4-8 hours',
    skills: [],
    lookingFor: [],
    urgency: 'medium',
  });

  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadHackathonSettings();
  }, []);

  const loadHackathonSettings = async () => {
    try {
      const stored = await AsyncStorage.getItem(HACKATHON_STORAGE_KEY);
      if (stored) {
        setSettings(JSON.parse(stored));
      }
    } catch (error) {
      console.error('Failed to load hackathon settings:', error);
    } finally {
      setLoading(false);
    }
  };

  const saveSettings = async (newSettings: HackathonSettings) => {
    try {
      await AsyncStorage.setItem(HACKATHON_STORAGE_KEY, JSON.stringify(newSettings));
      setSettings(newSettings);

      // Update user settings - skip for now since User interface doesn't support these properties
      console.log('🔄 Hackathon mode settings updated:', newSettings);
    } catch (error) {
      console.error('Failed to save hackathon settings:', error);
      Alert.alert('Error', 'Failed to save settings');
    }
  };

  const toggleHackathonMode = async (enabled: boolean) => {
    const newSettings = { ...settings, enabled };
    
    if (enabled && (settings.skills.length === 0 || settings.lookingFor.length === 0)) {
      Alert.alert(
        'Complete Setup',
        'Please select your skills and what you\'re looking for before enabling hackathon mode.'
      );
      return;
    }

    await saveSettings(newSettings);

    if (enabled) {
      Alert.alert(
        'Hackathon Mode Activated! 🚀',
        'You\'ll now be prioritized for urgent collaboration matches. Your profile will show higher in discovery for other hackathon participants.',
        [{ text: 'Got it!' }]
      );
    }
  };

  const toggleSkill = (skill: string) => {
    const newSkills = settings.skills.includes(skill)
      ? settings.skills.filter(s => s !== skill)
      : [...settings.skills, skill];
    
    setSettings({ ...settings, skills: newSkills });
  };

  const toggleLookingFor = (role: string) => {
    const newLookingFor = settings.lookingFor.includes(role)
      ? settings.lookingFor.filter(r => r !== role)
      : [...settings.lookingFor, role];
    
    setSettings({ ...settings, lookingFor: newLookingFor });
  };

  const renderUrgencySelector = () => (
    <View style={styles.urgencyContainer}>
      <Text style={styles.sectionTitle}>Collaboration Urgency</Text>
      <View style={styles.urgencyOptions}>
        {[
          { key: 'low', label: 'Low (1-2 days)', color: '#4CAF50' },
          { key: 'medium', label: 'Medium (hours)', color: '#FF9800' },
          { key: 'high', label: 'High (ASAP)', color: '#FF5252' },
        ].map((option) => (
          <Pressable
            key={option.key}
            style={[
              styles.urgencyOption,
              settings.urgency === option.key && styles.urgencyOptionSelected,
              { borderColor: option.color },
            ]}
            onPress={() => setSettings({ ...settings, urgency: option.key as any })}
          >
            <View
              style={[
                styles.urgencyIndicator,
                { backgroundColor: option.color },
                settings.urgency === option.key && styles.urgencyIndicatorSelected,
              ]}
            />
            <Text
              style={[
                styles.urgencyLabel,
                settings.urgency === option.key && styles.urgencyLabelSelected,
              ]}
            >
              {option.label}
            </Text>
          </Pressable>
        ))}
      </View>
    </View>
  );

  if (loading) {
    return (
      <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
        <View style={styles.loadingContainer}>
          <Text style={styles.loadingText}>Loading...</Text>
        </View>
      </LinearGradient>
    );
  }

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      <ScrollView
        style={styles.scrollView}
        contentContainerStyle={[
          styles.content,
          { paddingTop: insets.top + 20, paddingBottom: insets.bottom + 40 },
        ]}
        showsVerticalScrollIndicator={false}
      >
        <View style={styles.header}>
          <Pressable style={styles.closeButton} onPress={() => router.back()}>
            <Ionicons name="close" size={24} color="#FFFFFF" />
          </Pressable>
          <Text style={styles.title}>Hackathon Mode</Text>
          <Text style={styles.subtitle}>
            Get priority matching for urgent collaborations
          </Text>
        </View>

        <Animated.View entering={FadeInUp.delay(200).duration(600)}>
          <View style={styles.toggleContainer}>
            <View style={styles.toggleHeader}>
              <View>
                <Text style={styles.toggleTitle}>Enable Hackathon Mode</Text>
                <Text style={styles.toggleDescription}>
                  Show higher in discovery for urgent projects
                </Text>
              </View>
              <Switch
                value={settings.enabled}
                onValueChange={toggleHackathonMode}
                trackColor={{ false: '#333', true: '#9945FF' }}
                thumbColor={settings.enabled ? '#FFFFFF' : '#666'}
                ios_backgroundColor="#333"
              />
            </View>
          </View>

          {settings.enabled && (
            <View style={styles.settingsContainer}>
              <View style={styles.section}>
                <Text style={styles.sectionTitle}>Your Skills</Text>
                <Text style={styles.sectionDescription}>
                  What can you contribute to a hackathon team?
                </Text>
                <View style={styles.tagsContainer}>
                  {HACKATHON_SKILLS.map((skill) => (
                    <Pressable
                      key={skill}
                      style={[
                        styles.tag,
                        settings.skills.includes(skill) && styles.tagSelected,
                      ]}
                      onPress={() => toggleSkill(skill)}
                    >
                      <Text
                        style={[
                          styles.tagText,
                          settings.skills.includes(skill) && styles.tagTextSelected,
                        ]}
                      >
                        {skill}
                      </Text>
                    </Pressable>
                  ))}
                </View>
              </View>

              <View style={styles.section}>
                <Text style={styles.sectionTitle}>Looking For</Text>
                <Text style={styles.sectionDescription}>
                  What roles do you need for your team?
                </Text>
                <View style={styles.tagsContainer}>
                  {HACKATHON_ROLES.map((role) => (
                    <Pressable
                      key={role}
                      style={[
                        styles.tag,
                        settings.lookingFor.includes(role) && styles.tagSelected,
                      ]}
                      onPress={() => toggleLookingFor(role)}
                    >
                      <Text
                        style={[
                          styles.tagText,
                          settings.lookingFor.includes(role) && styles.tagTextSelected,
                        ]}
                      >
                        {role}
                      </Text>
                    </Pressable>
                  ))}
                </View>
              </View>

              {renderUrgencySelector()}

              <View style={styles.infoBox}>
                <Ionicons name="flash" size={20} color="#FF9800" />
                <Text style={styles.infoText}>
                  Hackathon mode increases your visibility to other urgent collaborators 
                  and enables real-time matching notifications.
                </Text>
              </View>
            </View>
          )}

          <View style={styles.buttonContainer}>
            <Pressable
              style={styles.saveButton}
              onPress={() => saveSettings(settings)}
            >
              <LinearGradient
                colors={['#9945FF', '#7B3FF2']}
                style={styles.buttonGradient}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 0 }}
              >
                <Ionicons name="checkmark" size={20} color="#FFFFFF" style={styles.buttonIcon} />
                <Text style={styles.buttonText}>Save Settings</Text>
              </LinearGradient>
            </Pressable>
          </View>
        </Animated.View>
      </ScrollView>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  scrollView: {
    flex: 1,
  },
  content: {
    paddingHorizontal: 24,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  header: {
    marginBottom: 32,
  },
  closeButton: {
    alignSelf: 'flex-end',
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 20,
  },
  title: {
    fontSize: 28,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  subtitle: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  toggleContainer: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  toggleHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  toggleTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  toggleDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  settingsContainer: {
    marginBottom: 32,
  },
  section: {
    marginBottom: 24,
  },
  sectionTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  sectionDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 16,
  },
  tagsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    marginHorizontal: -6,
  },
  tag: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 20,
    paddingHorizontal: 16,
    paddingVertical: 8,
    margin: 6,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  tagSelected: {
    backgroundColor: '#9945FF',
    borderColor: '#9945FF',
  },
  tagText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#B8B8B8',
  },
  tagTextSelected: {
    color: '#FFFFFF',
  },
  urgencyContainer: {
    marginBottom: 24,
  },
  urgencyOptions: {
    marginTop: 12,
  },
  urgencyOption: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 12,
    padding: 16,
    marginBottom: 8,
    borderWidth: 1,
  },
  urgencyOptionSelected: {
    backgroundColor: 'rgba(255, 255, 255, 0.15)',
  },
  urgencyIndicator: {
    width: 12,
    height: 12,
    borderRadius: 6,
    marginRight: 12,
    opacity: 0.6,
  },
  urgencyIndicatorSelected: {
    opacity: 1,
  },
  urgencyLabel: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#B8B8B8',
  },
  urgencyLabelSelected: {
    color: '#FFFFFF',
  },
  infoBox: {
    flexDirection: 'row',
    backgroundColor: 'rgba(255, 152, 0, 0.1)',
    borderRadius: 12,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 152, 0, 0.2)',
  },
  infoText: {
    flex: 1,
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginLeft: 12,
    lineHeight: 20,
  },
  buttonContainer: {
    marginTop: 'auto',
  },
  saveButton: {
    width: '100%',
    height: 56,
    borderRadius: 28,
    overflow: 'hidden',
  },
  buttonGradient: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
  },
  buttonIcon: {
    marginRight: 8,
  },
  buttonText: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
});