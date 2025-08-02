import { useState } from 'react';
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
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter, useLocalSearchParams } from 'expo-router';
import { useAuth } from '../hooks/useAuth';
import { collabBadgeService, CollabBadgeData } from '../lib/web3/collabBadge';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInUp } from 'react-native-reanimated';

const CONTRIBUTION_TYPES = [
  'Frontend Development',
  'Backend Development',
  'Smart Contract Development',
  'UI/UX Design',
  'Product Management',
  'Marketing',
  'Community Management',
  'Quality Assurance',
  'DevOps',
  'Research',
  'Documentation',
  'Other',
];

export default function BadgeMint() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = useAuth();
  const { matchId } = useLocalSearchParams<{ matchId?: string }>();

  const [projectName, setProjectName] = useState('');
  const [contributionType, setContributionType] = useState('');
  const [customContribution, setCustomContribution] = useState('');
  const [collaboratorWallets, setCollaboratorWallets] = useState('');
  const [completionDate, setCompletionDate] = useState(new Date());
  const [isMinting, setIsMinting] = useState(false);

  const handleMintBadge = async () => {
    if (!user || !projectName.trim()) {
      Alert.alert('Error', 'Please fill in all required fields');
      return;
    }

    const finalContributionType = contributionType === 'Other' 
      ? customContribution.trim() 
      : contributionType;

    if (!finalContributionType) {
      Alert.alert('Error', 'Please specify your contribution type');
      return;
    }

    const collaborators = collaboratorWallets
      .split('\n')
      .map(wallet => wallet.trim())
      .filter(wallet => wallet.length > 0);

    if (collaborators.length === 0) {
      Alert.alert('Error', 'Please add at least one collaborator wallet address');
      return;
    }

    try {
      setIsMinting(true);

      const badgeData: CollabBadgeData = {
        projectName: projectName.trim(),
        collaborators,
        contributionType: finalContributionType,
        completionDate,
        recipient: user.wallet_address,
      };

      const signature = await collabBadgeService.mintCollabBadge(badgeData);

      if (signature) {
        Alert.alert(
          'Badge Minted! 🎉',
          `Your collaboration badge has been successfully minted.\n\nTransaction: ${signature.slice(0, 8)}...`,
          [
            {
              text: 'View Badge',
              onPress: () => {
                // Navigate to badge view or profile
                router.back();
              },
            },
            {
              text: 'Done',
              onPress: () => router.back(),
            },
          ]
        );
      } else {
        Alert.alert('Error', 'Failed to mint badge. Please try again.');
      }
    } catch (error) {
      console.error('Badge minting error:', error);
      Alert.alert('Error', 'Failed to mint badge. Please try again.');
    } finally {
      setIsMinting(false);
    }
  };

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
            { paddingTop: insets.top + 20, paddingBottom: insets.bottom + 40 },
          ]}
          showsVerticalScrollIndicator={false}
        >
          <View style={styles.header}>
            <Pressable style={styles.closeButton} onPress={() => router.back()}>
              <Ionicons name="close" size={24} color="#FFFFFF" />
            </Pressable>
            <Text style={styles.title}>Mint Collab Badge</Text>
            <Text style={styles.subtitle}>
              Create a soulbound NFT to commemorate your collaboration
            </Text>
          </View>

          <Animated.View entering={FadeInUp.delay(100).duration(600)}>
            <View style={styles.explanationSection}>
              <View style={styles.explanationHeader}>
                <Ionicons name="shield-checkmark" size={24} color="#4CAF50" />
                <Text style={styles.explanationTitle}>Why Mint a Collab Badge?</Text>
              </View>
              <Text style={styles.explanationText}>
                Solve the problem of "How do I prove I actually worked on this project with these people?" 
                in a way that can't be disputed or faked.
              </Text>
              <View style={styles.benefitsList}>
                <View style={styles.benefitItem}>
                  <Ionicons name="checkmark-circle" size={16} color="#4CAF50" />
                  <Text style={styles.benefitText}>Permanent blockchain proof of collaboration</Text>
                </View>
                <View style={styles.benefitItem}>
                  <Ionicons name="checkmark-circle" size={16} color="#4CAF50" />
                  <Text style={styles.benefitText}>Verifiable by teammates and employers</Text>
                </View>
                <View style={styles.benefitItem}>
                  <Ionicons name="checkmark-circle" size={16} color="#4CAF50" />
                  <Text style={styles.benefitText}>Build credible developer reputation</Text>
                </View>
                <View style={styles.benefitItem}>
                  <Ionicons name="checkmark-circle" size={16} color="#4CAF50" />
                  <Text style={styles.benefitText}>Soulbound NFT - can't be transferred or faked</Text>
                </View>
              </View>
            </View>
          </Animated.View>

          <Animated.View entering={FadeInUp.delay(200).duration(600)}>
            <View style={styles.form}>
              <View style={styles.inputGroup}>
                <Text style={styles.label}>Project Name *</Text>
                <TextInput
                  style={styles.input}
                  value={projectName}
                  onChangeText={setProjectName}
                  placeholder="Enter project name"
                  placeholderTextColor="#666666"
                  maxLength={50}
                />
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.label}>Your Contribution *</Text>
                <ScrollView
                  horizontal
                  showsHorizontalScrollIndicator={false}
                  style={styles.contributionScrollView}
                >
                  <View style={styles.contributionTypes}>
                    {CONTRIBUTION_TYPES.map((type) => (
                      <Pressable
                        key={type}
                        style={[
                          styles.contributionTag,
                          contributionType === type && styles.contributionTagSelected,
                        ]}
                        onPress={() => setContributionType(type)}
                      >
                        <Text
                          style={[
                            styles.contributionTagText,
                            contributionType === type && styles.contributionTagTextSelected,
                          ]}
                        >
                          {type}
                        </Text>
                      </Pressable>
                    ))}
                  </View>
                </ScrollView>

                {contributionType === 'Other' && (
                  <TextInput
                    style={[styles.input, { marginTop: 12 }]}
                    value={customContribution}
                    onChangeText={setCustomContribution}
                    placeholder="Specify your contribution"
                    placeholderTextColor="#666666"
                    maxLength={30}
                  />
                )}
              </View>

              <View style={styles.inputGroup}>
                <Text style={styles.label}>Collaborator Wallets *</Text>
                <Text style={styles.helperText}>
                  Enter wallet addresses, one per line
                </Text>
                <TextInput
                  style={[styles.input, styles.textArea]}
                  value={collaboratorWallets}
                  onChangeText={setCollaboratorWallets}
                  placeholder="Enter wallet addresses..."
                  placeholderTextColor="#666666"
                  multiline
                  numberOfLines={4}
                  textAlignVertical="top"
                />
              </View>

              <View style={styles.infoBox}>
                <Ionicons name="information-circle" size={20} color="#9945FF" />
                <Text style={styles.infoText}>
                  This badge will be minted as a soulbound NFT and cannot be transferred.
                  All collaborators can verify this badge on-chain.
                </Text>
              </View>
            </View>
          </Animated.View>

          <View style={styles.buttonContainer}>
            <Pressable
              style={[
                styles.mintButton,
                (!projectName.trim() || !contributionType || isMinting) && styles.mintButtonDisabled,
              ]}
              onPress={handleMintBadge}
              disabled={!projectName.trim() || !contributionType || isMinting}
            >
              <LinearGradient
                colors={['#9945FF', '#7B3FF2']}
                style={styles.buttonGradient}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 0 }}
              >
                <Ionicons
                  name={isMinting ? "hourglass" : "diamond"}
                  size={20}
                  color="#FFFFFF"
                  style={styles.buttonIcon}
                />
                <Text style={styles.buttonText}>
                  {isMinting ? 'Minting Badge...' : 'Mint Badge'}
                </Text>
              </LinearGradient>
            </Pressable>

            <Pressable style={styles.cancelButton} onPress={() => router.back()}>
              <Text style={styles.cancelButtonText}>Cancel</Text>
            </Pressable>
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
  keyboardView: {
    flex: 1,
  },
  scrollView: {
    flex: 1,
  },
  content: {
    paddingHorizontal: 24,
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
  explanationSection: {
    backgroundColor: 'rgba(76, 175, 80, 0.05)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 32,
    borderWidth: 1,
    borderColor: 'rgba(76, 175, 80, 0.1)',
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
    marginBottom: 16,
  },
  benefitsList: {
    gap: 8,
  },
  benefitItem: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  benefitText: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    flex: 1,
  },
  form: {
    marginBottom: 32,
  },
  inputGroup: {
    marginBottom: 24,
  },
  label: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  helperText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
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
    height: 100,
    textAlignVertical: 'top',
    paddingTop: 14,
  },
  contributionScrollView: {
    marginHorizontal: -6,
  },
  contributionTypes: {
    flexDirection: 'row',
    paddingHorizontal: 6,
  },
  contributionTag: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 20,
    paddingHorizontal: 16,
    paddingVertical: 8,
    marginHorizontal: 4,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  contributionTagSelected: {
    backgroundColor: '#9945FF',
    borderColor: '#9945FF',
  },
  contributionTagText: {
    color: '#9945FF',
    fontSize: 12,
    fontWeight: '600',
  },
  contributionTagTextSelected: {
    color: '#FFFFFF',
  },
  infoBox: {
    flexDirection: 'row',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
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
  mintButton: {
    width: '100%',
    height: 56,
    borderRadius: 28,
    overflow: 'hidden',
    marginBottom: 16,
  },
  mintButtonDisabled: {
    opacity: 0.5,
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
  cancelButton: {
    alignItems: 'center',
    paddingVertical: 16,
  },
  cancelButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
});