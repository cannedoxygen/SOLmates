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
    // Check if user has premium access
    if (enabled && !user?.is_premium) {
      Alert.alert(
        'Premium Feature Required',
        'Hackathon Mode is available for Premium subscribers only. Upgrade to get priority matching and increased visibility in discovery.',
        [
          {
            text: 'Learn More',
            onPress: () => router.push('/premium'),
          },
          {
            text: 'Cancel',
            style: 'cancel',
          },
        ]
      );
      return;
    }

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
          <View style={styles.premiumBadge}>
            <Ionicons name="diamond" size={16} color="#FFD700" />
            <Text style={styles.premiumBadgeText}>Premium Feature</Text>
          </View>
          <Text style={styles.subtitle}>
            Get priority matching for urgent collaborations
          </Text>
          
          <View style={styles.explanationContainer}>
            <View style={styles.explanationCard}>
              <View style={styles.explanationHeader}>
                <Ionicons name="rocket" size={24} color="#9945FF" />
                <Text style={styles.explanationTitle}>What is Hackathon Mode?</Text>
              </View>
              <Text style={styles.explanationText}>
                Hackathon Mode is designed for developers who need to find teammates quickly for time-sensitive projects. 
                When activated, your profile gets priority placement in discovery, making it easier for other urgent 
                collaborators to find you.
              </Text>
            </View>

            <View style={styles.featuresGrid}>
              <View style={styles.featureCard}>
                <Ionicons name="eye" size={20} color="#4CAF50" />
                <Text style={styles.featureTitle}>Higher Visibility</Text>
                <Text style={styles.featureDescription}>
                  Your profile appears at the top of discovery for other hackathon participants
                </Text>
              </View>

              <View style={styles.featureCard}>
                <Ionicons name="people" size={20} color="#2196F3" />
                <Text style={styles.featureTitle}>Skill Matching</Text>
                <Text style={styles.featureDescription}>
                  Match based on your skills and the roles you need for your team
                </Text>
              </View>

              <View style={styles.featureCard}>
                <Ionicons name="timer" size={20} color="#FF9800" />
                <Text style={styles.featureTitle}>Urgency Levels</Text>
                <Text style={styles.featureDescription}>
                  Set timeline expectations: Low (1-2 days), Medium (hours), High (ASAP)
                </Text>
              </View>

              <View style={styles.featureCard}>
                <Ionicons name="notifications" size={20} color="#E91E63" />
                <Text style={styles.featureTitle}>Real-time Alerts</Text>
                <Text style={styles.featureDescription}>
                  Get priority notifications for urgent collaboration opportunities
                </Text>
              </View>
            </View>

            <View style={styles.useCaseCard}>
              <View style={styles.useCaseHeader}>
                <Ionicons name="bulb" size={20} color="#FFA500" />
                <Text style={styles.useCaseTitle}>Perfect For:</Text>
              </View>
              <View style={styles.useCaseList}>
                <Text style={styles.useCaseItem}>• 24-48 hour hackathon events</Text>
                <Text style={styles.useCaseItem}>• Weekend coding competitions</Text>
                <Text style={styles.useCaseItem}>• Quick prototype collaborations</Text>
                <Text style={styles.useCaseItem}>• Time-sensitive side projects</Text>
                <Text style={styles.useCaseItem}>• Building teams for upcoming deadlines</Text>
              </View>
            </View>
          </View>
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
                trackColor={{ false: '#333', true: user?.is_premium ? '#9945FF' : '#666' }}
                thumbColor={settings.enabled ? '#FFFFFF' : '#666'}
                ios_backgroundColor="#333"
                disabled={!user?.is_premium}
              />
            </View>
          </View>

          {!user?.is_premium && (
            <View style={styles.premiumUpsellCard}>
              <View style={styles.upsellHeader}>
                <Ionicons name="lock-closed" size={24} color="#FFD700" />
                <Text style={styles.upsellTitle}>Upgrade to Premium</Text>
              </View>
              <Text style={styles.upsellDescription}>
                Unlock Hackathon Mode and get priority placement in discovery. Perfect for finding teammates quickly during time-sensitive projects.
              </Text>
              <View style={styles.upsellBenefits}>
                <View style={styles.upsellBenefit}>
                  <Ionicons name="checkmark" size={16} color="#4CAF50" />
                  <Text style={styles.upsellBenefitText}>Priority discovery placement</Text>
                </View>
                <View style={styles.upsellBenefit}>
                  <Ionicons name="checkmark" size={16} color="#4CAF50" />
                  <Text style={styles.upsellBenefitText}>Real-time collaboration alerts</Text>
                </View>
                <View style={styles.upsellBenefit}>
                  <Ionicons name="checkmark" size={16} color="#4CAF50" />
                  <Text style={styles.upsellBenefitText}>Advanced skill matching</Text>
                </View>
              </View>
              <Pressable
                style={styles.upgradeButton}
                onPress={() => router.push('/premium')}
              >
                <LinearGradient
                  colors={['#FFD700', '#FFA500']}
                  style={styles.upgradeButtonGradient}
                  start={{ x: 0, y: 0 }}
                  end={{ x: 1, y: 0 }}
                >
                  <Ionicons name="diamond" size={18} color="#000000" style={styles.upgradeButtonIcon} />
                  <Text style={styles.upgradeButtonText}>Upgrade to Premium</Text>
                </LinearGradient>
              </Pressable>
            </View>
          )}

          {settings.enabled && user?.is_premium && (
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

          {user?.is_premium && (
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
          )}
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
  explanationContainer: {
    marginTop: 24,
    marginBottom: 8,
  },
  explanationCard: {
    backgroundColor: 'rgba(153, 69, 255, 0.08)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 20,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  explanationHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
    gap: 8,
  },
  explanationTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  explanationText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 20,
  },
  featuresGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    marginHorizontal: -6,
    marginBottom: 20,
  },
  featureCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.06)',
    borderRadius: 12,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    width: '47%',
    marginHorizontal: '1.5%',
    marginBottom: 12,
  },
  featureTitle: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginTop: 8,
    marginBottom: 4,
  },
  featureDescription: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 16,
  },
  useCaseCard: {
    backgroundColor: 'rgba(255, 165, 0, 0.08)',
    borderRadius: 12,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 165, 0, 0.2)',
  },
  useCaseHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
    gap: 8,
  },
  useCaseTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  useCaseList: {
    gap: 4,
  },
  useCaseItem: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 18,
  },
  premiumBadge: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 215, 0, 0.1)',
    borderRadius: 12,
    paddingHorizontal: 8,
    paddingVertical: 4,
    alignSelf: 'flex-start',
    marginBottom: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 215, 0, 0.3)',
    gap: 4,
  },
  premiumBadgeText: {
    fontSize: 12,
    fontFamily: 'Inter-SemiBold',
    color: '#FFD700',
  },
  premiumUpsellCard: {
    backgroundColor: 'rgba(255, 215, 0, 0.08)',
    borderRadius: 16,
    padding: 24,
    marginBottom: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 215, 0, 0.2)',
  },
  upsellHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
    gap: 8,
  },
  upsellTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  upsellDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 20,
    marginBottom: 16,
  },
  upsellBenefits: {
    gap: 8,
    marginBottom: 20,
  },
  upsellBenefit: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  upsellBenefitText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
  },
  upgradeButton: {
    borderRadius: 12,
    overflow: 'hidden',
  },
  upgradeButtonGradient: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 16,
    paddingHorizontal: 24,
  },
  upgradeButtonIcon: {
    marginRight: 8,
  },
  upgradeButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#000000',
  },
});