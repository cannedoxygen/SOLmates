import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  } from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedStyle,
  interpolate,
  useSharedValue,
  withTiming,
} from 'react-native-reanimated';

interface UserProfile {
  availability?: string;
  location?: string;
  timezone?: string;
}

interface AvailabilityCardProps {
  userProfile: UserProfile;
}

const AVAILABILITY_INFO = {
  'full-time': {
    icon: 'briefcase',
    color: '#FF6B6B',
    description: 'Available for full-time collaboration',
    hours: '40+ hours/week'
  },
  'part-time': {
    icon: 'time',
    color: '#FFD700',
    description: 'Available for part-time projects',
    hours: '20-30 hours/week'
  },
  'weekends': {
    icon: 'calendar',
    color: '#14F195',
    description: 'Available on weekends only',
    hours: 'Saturdays & Sundays'
  },
  'flexible': {
    icon: 'shuffle',
    color: '#9945FF',
    description: 'Flexible schedule available',
    hours: 'Variable hours'
  }
};

const TIMEZONE_REGIONS = [
  { name: 'Pacific', code: 'PST/PDT', offset: -8, color: '#FF6B6B' },
  { name: 'Mountain', code: 'MST/MDT', offset: -7, color: '#FFD700' },
  { name: 'Central', code: 'CST/CDT', offset: -6, color: '#14F195' },
  { name: 'Eastern', code: 'EST/EDT', offset: -5, color: '#9945FF' },
  { name: 'UTC', code: 'UTC', offset: 0, color: '#6BCF7F' },
  { name: 'Europe', code: 'CET/CEST', offset: 1, color: '#FF8C42' },
];

export function AvailabilityCard({ userProfile }: AvailabilityCardProps) {
  const [currentTime, setCurrentTime] = useState(new Date());
  const clockAnimation = useSharedValue(0);
  const cardAnimations = Array.from({ length: 3 }, () => useSharedValue(0));

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentTime(new Date());
    }, 1000);

    return () => clearInterval(timer);
  }, []);

  useEffect(() => {
    clockAnimation.value = withTiming(1, { duration: 1000 });
    cardAnimations.forEach((anim, index) => {
      // Use setTimeout for staggered animations instead of delay
      setTimeout(() => {
        anim.value = withTiming(1, {
          duration: 700,
        });
      }, index * 200);
    });
  }, []);

  const getAvailabilityInfo = () => {
    return AVAILABILITY_INFO[userProfile.availability?.toLowerCase() as keyof typeof AVAILABILITY_INFO] || 
           AVAILABILITY_INFO.flexible;
  };

  const getCurrentTimeInTimezone = (offset: number) => {
    const utc = currentTime.getTime() + (currentTime.getTimezoneOffset() * 60000);
    const targetTime = new Date(utc + (offset * 3600000));
    return targetTime.toLocaleTimeString('en-US', { 
      hour: '2-digit', 
      minute: '2-digit',
      hour12: true 
    });
  };

  const getWorkingHoursStatus = () => {
    const hour = currentTime.getHours();
    if (hour >= 9 && hour < 17) {
      return { status: 'Working Hours', color: '#14F195', icon: 'checkmark-circle' };
    } else if (hour >= 17 && hour < 22) {
      return { status: 'Evening Hours', color: '#FFD700', icon: 'moon' };
    } else {
      return { status: 'Off Hours', color: '#FF6B6B', icon: 'bed' };
    }
  };

  const availabilityInfo = getAvailabilityInfo();
  const workingStatus = getWorkingHoursStatus();

  const clockAnimatedStyle = useAnimatedStyle(() => {
    const rotate = interpolate(clockAnimation.value, [0, 1], [0, 360]);
    return {
      transform: [{ rotate: `${rotate}deg` }],
    };
  });

  const renderTimeZoneCard = (region: typeof TIMEZONE_REGIONS[0], index: number) => {
    const animation = cardAnimations[index % cardAnimations.length];
    
    const animatedStyle = useAnimatedStyle(() => {
      const translateY = interpolate(animation.value, [0, 1], [20, 0]);
      const opacity = interpolate(animation.value, [0, 1], [0, 1]);

      return {
        transform: [{ translateY }],
        opacity,
      };
    });

    return (
      <Animated.View key={region.code} style={[styles.timezoneCard, animatedStyle]}>
        <View style={[styles.timezoneCardInner, { backgroundColor: region.color + '20' }]}>
          <View style={styles.timezoneHeader}>
            <View style={[styles.timezoneIndicator, { backgroundColor: region.color }]} />
            <Text style={styles.timezoneName}>{region.name}</Text>
            <Text style={styles.timezoneCode}>{region.code}</Text>
          </View>
          <Text style={[styles.timezoneTime, { color: region.color }]}>
            {getCurrentTimeInTimezone(region.offset)}
          </Text>
        </View>
      </Animated.View>
    );
  };

  return (
    <View style={[styles.card, { backgroundColor: 'rgba(25, 30, 50, 0.95)' }]}>
      <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.3)' }]} />
      
      <View style={styles.content}>
        {/* Header */}
        <View style={styles.header}>
          <View style={[styles.headerIcon, { backgroundColor: availabilityInfo.color }]}>
            <Ionicons name={availabilityInfo.icon as any} size={20} color="#FFFFFF" />
          </View>
          <View style={styles.headerText}>
            <Text style={styles.headerTitle}>Availability</Text>
            <Text style={styles.headerSubtitle}>Schedule & contact</Text>
          </View>
        </View>

        {/* Status & Schedule */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Current Status</Text>
          <View style={styles.statusGrid}>
            <View style={[styles.statusChip, { backgroundColor: workingStatus.color + '20', borderColor: workingStatus.color + '40' }]}>
              <Ionicons name={workingStatus.icon as any} size={16} color={workingStatus.color} />
              <Text style={[styles.statusChipText, { color: workingStatus.color }]}>
                {workingStatus.status}
              </Text>
            </View>
            <View style={[styles.statusChip, { backgroundColor: availabilityInfo.color + '20', borderColor: availabilityInfo.color + '40' }]}>
              <Ionicons name={availabilityInfo.icon as any} size={16} color={availabilityInfo.color} />
              <Text style={[styles.statusChipText, { color: availabilityInfo.color }]}>
                {userProfile.availability || 'Flexible'}
              </Text>
            </View>
          </View>
        </View>

        {/* Availability Details */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Schedule</Text>
          <View style={styles.availabilityContainer}>
            <View style={[styles.availabilityCard, { backgroundColor: availabilityInfo.color + '20' }]}>
              <View style={styles.availabilityHeader}>
                <View style={[styles.availabilityIcon, { backgroundColor: availabilityInfo.color }]}>
                  <Ionicons name={availabilityInfo.icon as any} size={18} color="#FFFFFF" />
                </View>
                <View style={styles.availabilityInfo}>
                  <Text style={styles.availabilityTitle}>
                    {userProfile.availability ? userProfile.availability.charAt(0).toUpperCase() + userProfile.availability.slice(1) : 'Flexible'}
                  </Text>
                  <Text style={styles.availabilityDescription}>{availabilityInfo.description}</Text>
                </View>
              </View>
            </View>
          </View>
        </View>

        {/* Location */}
        {userProfile.location && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Location</Text>
            <View style={styles.locationContainer}>
              <View style={[styles.locationCard, { backgroundColor: 'rgba(153, 69, 255, 0.2)' }]}>
                <Ionicons name="location" size={20} color="#9945FF" />
                <Text style={styles.locationText}>{userProfile.location}</Text>
              </View>
            </View>
          </View>
        )}

        {/* Response Time */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Communication</Text>
          <View style={styles.communicationContainer}>
            <View style={styles.responseCard}>
              <View style={styles.responseHeader}>
                <Ionicons name="flash" size={18} color="#14F195" />
                <Text style={styles.responseLabel}>Typical Response</Text>
              </View>
              <Text style={styles.responseTime}>Within 2-4 hours</Text>
            </View>
            
            <View style={styles.responseCard}>
              <View style={styles.responseHeader}>
                <Ionicons name="time" size={18} color="#FFD700" />
                <Text style={styles.responseLabel}>Timezone</Text>
              </View>
              <Text style={styles.responseTime}>{userProfile.timezone || 'UTC'}</Text>
            </View>
          </View>
        </View>

        {/* Collaboration Preferences */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Collaboration Style</Text>
          <View style={styles.collabContainer}>
            <View style={styles.collabCard}>
              <View style={[styles.collabIcon, { backgroundColor: '#9945FF' }]}>
                <Ionicons name="people" size={18} color="#FFFFFF" />
              </View>
              <View style={styles.collabContent}>
                <Text style={styles.collabTitle}>Team Player</Text>
                <Text style={styles.collabDescription}>Works well in groups and pairs</Text>
              </View>
            </View>
            
            <View style={styles.collabCard}>
              <View style={[styles.collabIcon, { backgroundColor: '#14F195' }]}>
                <Ionicons name="chatbubbles" size={18} color="#FFFFFF" />
              </View>
              <View style={styles.collabContent}>
                <Text style={styles.collabTitle}>Great Communicator</Text>
                <Text style={styles.collabDescription}>Clear updates and feedback</Text>
              </View>
            </View>
          </View>
        </View>

        {/* Best Times to Contact */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Best Contact Times</Text>
          <View style={styles.contactTimesContainer}>
            <View style={styles.contactTimeCard}>
              <View style={styles.contactTimeHeader}>
                <Ionicons name="sunny" size={16} color="#FFD700" />
                <Text style={styles.contactTimeLabel}>Morning</Text>
              </View>
              <Text style={styles.contactTimeValue}>9 AM - 12 PM</Text>
            </View>
            
            <View style={styles.contactTimeCard}>
              <View style={styles.contactTimeHeader}>
                <Ionicons name="partly-sunny" size={16} color="#FF8C42" />
                <Text style={styles.contactTimeLabel}>Afternoon</Text>
              </View>
              <Text style={styles.contactTimeValue}>1 PM - 5 PM</Text>
            </View>
            
            <View style={styles.contactTimeCard}>
              <View style={styles.contactTimeHeader}>
                <Ionicons name="moon" size={16} color="#9945FF" />
                <Text style={styles.contactTimeLabel}>Evening</Text>
              </View>
              <Text style={styles.contactTimeValue}>6 PM - 9 PM</Text>
            </View>
          </View>
        </View>

      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    flex: 1,
    width: '100%',
    borderRadius: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    overflow: 'hidden',
  },
  content: {
    flex: 1,
    padding: 20,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 16,
  },
  headerIcon: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  headerText: {
    flex: 1,
  },
  headerTitle: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  headerSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  section: {
    marginBottom: 16,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  statusContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  statusCard: {
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  statusHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 8,
  },
  statusText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    marginLeft: 8,
  },
  currentTime: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  availabilityContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  availabilityCard: {
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  availabilityHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 4,
  },
  availabilityIcon: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 10,
  },
  availabilityInfo: {
    flex: 1,
  },
  availabilityTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  availabilityDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
  },
  availabilityHours: {
    fontSize: 14,
    fontFamily: 'Inter-Bold',
  },
  locationContainer: {
    borderRadius: 12,
    overflow: 'hidden',
  },
  locationCard: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  locationText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginLeft: 8,
  },
  worldClockContainer: {
    gap: 8,
  },
  timezoneCard: {
    borderRadius: 12,
    overflow: 'hidden',
  },
  timezoneCardInner: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  timezoneHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    flex: 1,
  },
  timezoneIndicator: {
    width: 8,
    height: 8,
    borderRadius: 4,
    marginRight: 8,
  },
  timezoneName: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginRight: 8,
  },
  timezoneCode: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  timezoneTime: {
    fontSize: 14,
    fontFamily: 'Inter-Bold',
  },
  communicationContainer: {
    flexDirection: 'row',
    gap: 12,
  },
  responseCard: {
    flex: 1,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  responseHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 6,
  },
  responseLabel: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
    marginLeft: 6,
  },
  responseTime: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  // New compact styles
  compactInfoGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  infoChip: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 12,
    padding: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  infoChipText: {
    fontSize: 11,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginLeft: 4,
  },
  // New compact grid styles
  statusGrid: {
    flexDirection: 'row',
    gap: 8,
  },
  statusChip: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 12,
    padding: 6,
    borderWidth: 1,
  },
  statusChipText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    marginLeft: 6,
  },
  locationGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  locationChip: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 12,
    padding: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  locationChipText: {
    fontSize: 11,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginLeft: 4,
  },
  // Restored original styles
  availabilityContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  availabilityCard: {
    borderRadius: 16,
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  availabilityHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 4,
  },
  availabilityIcon: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 10,
  },
  availabilityInfo: {
    flex: 1,
  },
  availabilityTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  availabilityDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
  },
  availabilityHours: {
    fontSize: 14,
    fontFamily: 'Inter-Bold',
    textAlign: 'right',
  },
  locationContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  locationCard: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  locationText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginLeft: 12,
  },
  communicationContainer: {
    flexDirection: 'row',
    gap: 12,
  },
  responseCard: {
    flex: 1,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  responseHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 6,
  },
  responseLabel: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
    marginLeft: 6,
  },
  responseTime: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  collabContainer: {
    gap: 12,
  },
  collabCard: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  collabIcon: {
    width: 30,
    height: 30,
    borderRadius: 15,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 10,
  },
  collabContent: {
    flex: 1,
  },
  collabTitle: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  collabDescription: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
  },
  contactTimesContainer: {
    flexDirection: 'row',
    gap: 8,
  },
  contactTimeCard: {
    flex: 1,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 10,
    padding: 10,
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  contactTimeHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 6,
  },
  contactTimeLabel: {
    fontSize: 11,
    fontFamily: 'Inter-Medium',
    color: 'rgba(255, 255, 255, 0.8)',
    marginLeft: 4,
  },
  contactTimeValue: {
    fontSize: 12,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    textAlign: 'center',
  },
});