import { useState, useEffect } from 'react';
import { 
  View, 
  Text, 
  StyleSheet, 
  TextInput, 
  Pressable, 
  ScrollView,
  KeyboardAvoidingView,
  Platform,
  Alert,
  ActivityIndicator,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useRouter } from 'expo-router';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import Animated, { FadeInUp } from 'react-native-reanimated';
import { usePrivy, useEmbeddedSolanaWallet } from '@privy-io/expo';
import { ProfileService } from '../../lib/services/profileService';
import { supabase } from '../../lib/supabase/client';
import { Ionicons } from '@expo/vector-icons';

const SKILL_OPTIONS = [
  'Solidity', 'Rust', 'React', 'TypeScript', 'Web3.js', 
  'UI/UX', 'Smart Contracts', 'DeFi', 'NFTs', 'DAOs',
  'Marketing', 'Community', 'Art', 'Music', 'Writing',
];

const LOOKING_FOR = [
  'Developer', 'Designer', 'Marketer', 'Artist', 
  'Community Manager', 'Co-founder', 'Advisor', 'Investor',
];

export default function Onboarding() {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { user } = usePrivy();
  const { wallets } = useEmbeddedSolanaWallet();
  
  const [step, setStep] = useState(1);
  const [username, setUsername] = useState('');
  const [bio, setBio] = useState('');
  const [githubUrl, setGithubUrl] = useState('');
  const [websiteUrl, setWebsiteUrl] = useState('');
  const [selectedSkills, setSelectedSkills] = useState<string[]>([]);
  const [selectedLookingFor, setSelectedLookingFor] = useState<string[]>([]);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isLoading, setIsLoading] = useState(true);

  // Load existing profile data when component mounts
  useEffect(() => {
    const loadExistingProfile = async () => {
      if (!user?.id) {
        setIsLoading(false);
        return;
      }

      try {
        console.log('🔄 Loading existing profile for editing...');
        
        // Get existing profile from Supabase
        const { data: existingProfile, error } = await supabase
          .from('users')
          .select('*')
          .eq('privy_user_id', user.id)
          .single();

        if (existingProfile) {
          console.log('✅ Found existing profile:', existingProfile.username);
          
          // Pre-populate form fields with existing data
          setUsername(existingProfile.username || '');
          setBio(existingProfile.bio || '');
          setGithubUrl(existingProfile.github_url || '');
          setWebsiteUrl(existingProfile.website_url || '');
          setSelectedSkills(existingProfile.skills || []);
          setSelectedLookingFor(existingProfile.looking_for || []);
        } else {
          console.log('ℹ️ No existing profile found, starting fresh');
        }
      } catch (error) {
        console.error('❌ Error loading existing profile:', error);
      } finally {
        setIsLoading(false);
      }
    };

    loadExistingProfile();
  }, [user?.id]);

  const toggleSkill = (skill: string) => {
    setSelectedSkills(prev => 
      prev.includes(skill) 
        ? prev.filter(s => s !== skill)
        : [...prev, skill]
    );
  };

  const toggleLookingFor = (item: string) => {
    setSelectedLookingFor(prev => 
      prev.includes(item) 
        ? prev.filter(i => i !== item)
        : [...prev, item]
    );
  };

  const handleNext = () => {
    if (step === 1 && (!username.trim() || !bio.trim())) {
      Alert.alert('Missing Info', 'Please fill in all required fields');
      return;
    }
    // Validate GitHub URL if provided
    if (step === 1 && githubUrl.trim() && !githubUrl.trim().includes('github.com')) {
      Alert.alert('Invalid GitHub URL', 'Please enter a valid GitHub URL (e.g., https://github.com/username)');
      return;
    }
    // Validate website URL if provided
    if (step === 1 && websiteUrl.trim() && !websiteUrl.trim().includes('.')) {
      Alert.alert('Invalid Website URL', 'Please enter a valid website URL (e.g., https://yourwebsite.com)');
      return;
    }
    if (step === 2 && selectedSkills.length === 0) {
      Alert.alert('Select Skills', 'Please select at least one skill');
      return;
    }
    
    if (step < 3) {
      setStep(step + 1);
    } else {
      handleComplete();
    }
  };

  const handleComplete = async () => {
    if (selectedLookingFor.length === 0) {
      Alert.alert('Select Preferences', 'Please select what you\'re looking for');
      return;
    }

    if (!user) {
      Alert.alert('Error', 'You must be logged in to complete onboarding');
      router.replace('/');
      return;
    }

    try {
      setIsSubmitting(true);
      console.log('🔄 Starting profile update with data:', {
        username: username.trim(),
        bio: bio.trim(),
        skills: selectedSkills,
        looking_for: selectedLookingFor,
        userId: user.id
      });
      
      // First ensure user is synced to Supabase
      console.log('🔄 Ensuring user is synced to Supabase...');
      await ProfileService.syncPrivyUser(user, wallets?.[0]?.address);
      
      const result = await ProfileService.updateUserProfile(user.id, {
        username: username.trim(),
        bio: bio.trim(),
        skills: selectedSkills,
        looking_for: selectedLookingFor,
        github_url: githubUrl.trim() || null,
        website_url: websiteUrl.trim() || null,
      });
      
      console.log('✅ Profile updated successfully:', result);
      Alert.alert('Success!', 'Your profile has been saved successfully');
      router.replace('/(tabs)/discover');
    } catch (error) {
      const errorMessage = error?.message || error?.toString() || 'Please try again.';
      console.error('❌ Profile update error:', error);
      console.error('❌ Error details:', JSON.stringify(error, null, 2));
      console.error('❌ User ID:', user?.id);
      
      // Check if it's a duplicate key error
      if (errorMessage.includes('duplicate') || errorMessage.includes('unique')) {
        Alert.alert('Profile Already Exists', 'Your profile already exists. It has been updated with your changes.');
        router.replace('/(tabs)/discover');
      } else {
        Alert.alert('Error', `Failed to save profile: ${errorMessage}`);
      }
    } finally {
      setIsSubmitting(false);
    }
  };

  const renderStep = () => {
    switch (step) {
      case 1:
        return (
          <Animated.View entering={FadeInUp.duration(600)}>
            <Text style={styles.stepTitle}>Let's get to know you</Text>
            <Text style={styles.stepSubtitle}>Tell us about yourself</Text>
            
            <View style={styles.inputContainer}>
              <Text style={styles.label}>Username</Text>
              <TextInput
                style={styles.input}
                value={username}
                onChangeText={setUsername}
                placeholder="Enter your username"
                placeholderTextColor="#666666"
                autoCapitalize="none"
                maxLength={20}
              />
            </View>

            <View style={styles.inputContainer}>
              <Text style={styles.label}>Bio</Text>
              <TextInput
                style={[styles.input, styles.textArea]}
                value={bio}
                onChangeText={setBio}
                placeholder="Tell us about your experience and interests..."
                placeholderTextColor="#666666"
                multiline
                numberOfLines={4}
                maxLength={160}
              />
              <Text style={styles.charCount}>{bio.length}/160</Text>
            </View>

            <View style={styles.inputContainer}>
              <Text style={styles.label}>GitHub URL (Optional)</Text>
              <TextInput
                style={styles.input}
                value={githubUrl}
                onChangeText={setGithubUrl}
                placeholder="https://github.com/yourusername"
                placeholderTextColor="#666666"
                autoCapitalize="none"
                autoCorrect={false}
                keyboardType="url"
              />
            </View>

            <View style={styles.inputContainer}>
              <Text style={styles.label}>Website URL (Optional)</Text>
              <TextInput
                style={styles.input}
                value={websiteUrl}
                onChangeText={setWebsiteUrl}
                placeholder="https://yourwebsite.com"
                placeholderTextColor="#666666"
                autoCapitalize="none"
                autoCorrect={false}
                keyboardType="url"
              />
            </View>
          </Animated.View>
        );

      case 2:
        return (
          <Animated.View entering={FadeInUp.duration(600)}>
            <Text style={styles.stepTitle}>What are your skills?</Text>
            <Text style={styles.stepSubtitle}>Select all that apply</Text>
            
            <View style={styles.tagsContainer}>
              {SKILL_OPTIONS.map((skill) => (
                <Pressable
                  key={skill}
                  style={[
                    styles.tag,
                    selectedSkills.includes(skill) && styles.tagSelected,
                  ]}
                  onPress={() => toggleSkill(skill)}
                >
                  <Text style={[
                    styles.tagText,
                    selectedSkills.includes(skill) && styles.tagTextSelected,
                  ]}>
                    {skill}
                  </Text>
                </Pressable>
              ))}
            </View>
          </Animated.View>
        );

      case 3:
        return (
          <Animated.View entering={FadeInUp.duration(600)}>
            <Text style={styles.stepTitle}>Who are you looking for?</Text>
            <Text style={styles.stepSubtitle}>Find your perfect collab</Text>
            
            <View style={styles.tagsContainer}>
              {LOOKING_FOR.map((item) => (
                <Pressable
                  key={item}
                  style={[
                    styles.tag,
                    selectedLookingFor.includes(item) && styles.tagSelected,
                  ]}
                  onPress={() => toggleLookingFor(item)}
                >
                  <Text style={[
                    styles.tagText,
                    selectedLookingFor.includes(item) && styles.tagTextSelected,
                  ]}>
                    {item}
                  </Text>
                </Pressable>
              ))}
            </View>
          </Animated.View>
        );
    }
  };

  // Show loading screen while profile data is being loaded
  if (isLoading) {
    return (
      <LinearGradient
        colors={['#0A0E27', '#1A1F3A']}
        style={styles.container}
      >
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading your profile...</Text>
        </View>
      </LinearGradient>
    );
  }

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      <KeyboardAvoidingView
        style={styles.keyboardView}
        behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      >
        <ScrollView
          style={styles.scrollView}
          contentContainerStyle={[
            styles.content,
            { paddingTop: insets.top + 20, paddingBottom: insets.bottom + 20 },
          ]}
          showsVerticalScrollIndicator={false}
        >
          <View style={styles.progressContainer}>
            <View style={styles.progressBar}>
              <View 
                style={[
                  styles.progressFill,
                  { width: `${(step / 3) * 100}%` },
                ]}
              />
            </View>
            <Text style={styles.progressText}>Step {step} of 3</Text>
          </View>

          {renderStep()}

          <View style={styles.buttonContainer}>
            <Pressable
              style={[
                styles.nextButton,
                isSubmitting && styles.disabledButton,
              ]}
              onPress={handleNext}
              disabled={isSubmitting}
            >
              <LinearGradient
                colors={['#9945FF', '#7B3FF2']}
                style={styles.buttonGradient}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 0 }}
              >
                <Text style={styles.buttonText}>
                  {step === 3 ? (isSubmitting ? 'Creating Profile...' : 'Complete') : 'Next'}
                </Text>
                {!isSubmitting && (
                  <Ionicons name="arrow-forward" size={20} color="#FFFFFF" style={styles.buttonIcon} />
                )}
              </LinearGradient>
            </Pressable>

            {step > 1 && (
              <Pressable
                style={styles.backButton}
                onPress={() => setStep(step - 1)}
              >
                <Text style={styles.backButtonText}>Back</Text>
              </Pressable>
            )}
          </View>
        </ScrollView>
      </KeyboardAvoidingView>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
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
    marginTop: 16,
  },
  keyboardView: {
    flex: 1,
  },
  scrollView: {
    flex: 1,
  },
  content: {
    paddingHorizontal: 24,
    minHeight: '100%',
  },
  progressContainer: {
    marginBottom: 40,
  },
  progressBar: {
    height: 4,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 2,
    overflow: 'hidden',
    marginBottom: 12,
  },
  progressFill: {
    height: '100%',
    backgroundColor: '#9945FF',
    borderRadius: 2,
  },
  progressText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#666666',
    textAlign: 'center',
  },
  stepTitle: {
    fontSize: 28,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  stepSubtitle: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 40,
  },
  inputContainer: {
    marginBottom: 24,
  },
  label: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  input: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 12,
    paddingHorizontal: 16,
    paddingVertical: 14,
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  textArea: {
    height: 120,
    textAlignVertical: 'top',
    paddingTop: 14,
  },
  charCount: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'right',
    marginTop: 4,
  },
  tagsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    marginHorizontal: -6,
  },
  tag: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 20,
    paddingHorizontal: 20,
    paddingVertical: 10,
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
  buttonContainer: {
    marginTop: 'auto',
    paddingTop: 40,
  },
  nextButton: {
    width: '100%',
    height: 56,
    borderRadius: 28,
    overflow: 'hidden',
    marginBottom: 16,
  },
  disabledButton: {
    opacity: 0.6,
  },
  buttonGradient: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
  },
  buttonText: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  buttonIcon: {
    marginLeft: 8,
  },
  backButton: {
    alignItems: 'center',
    paddingVertical: 12,
  },
  backButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
});