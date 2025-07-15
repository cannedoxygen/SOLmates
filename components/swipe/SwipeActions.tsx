import React from 'react';
import { View, Pressable, StyleSheet } from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedStyle,
  withSpring,
  useSharedValue,
} from 'react-native-reanimated';

interface SwipeActionsProps {
  onReject: () => void;
  onLike: () => void;
  onSuperLike?: () => void;
}

const AnimatedPressable = Animated.createAnimatedComponent(Pressable);

export function SwipeActions({ onReject, onLike, onSuperLike }: SwipeActionsProps) {
  const rejectScale = useSharedValue(1);
  const likeScale = useSharedValue(1);
  const superLikeScale = useSharedValue(1);

  const handlePressIn = (scale: Animated.SharedValue<number>) => {
    scale.value = withSpring(0.85);
  };

  const handlePressOut = (scale: Animated.SharedValue<number>) => {
    scale.value = withSpring(1);
  };

  const rejectStyle = useAnimatedStyle(() => ({
    transform: [{ scale: rejectScale.value }],
  }));

  const likeStyle = useAnimatedStyle(() => ({
    transform: [{ scale: likeScale.value }],
  }));

  const superLikeStyle = useAnimatedStyle(() => ({
    transform: [{ scale: superLikeScale.value }],
  }));

  return (
    <View style={styles.container}>
      <AnimatedPressable
        style={[styles.button, styles.rejectButton, rejectStyle]}
        onPressIn={() => handlePressIn(rejectScale)}
        onPressOut={() => handlePressOut(rejectScale)}
        onPress={onReject}
      >
        <Ionicons name="close" size={32} color="#FF5252" />
      </AnimatedPressable>

      {onSuperLike && (
        <AnimatedPressable
          style={[styles.button, styles.superLikeButton, superLikeStyle]}
          onPressIn={() => handlePressIn(superLikeScale)}
          onPressOut={() => handlePressOut(superLikeScale)}
          onPress={onSuperLike}
        >
          <Ionicons name="star" size={28} color="#00BCD4" />
        </AnimatedPressable>
      )}

      <AnimatedPressable
        style={[styles.button, styles.likeButton, likeStyle]}
        onPressIn={() => handlePressIn(likeScale)}
        onPressOut={() => handlePressOut(likeScale)}
        onPress={onLike}
      >
        <Ionicons name="heart" size={32} color="#4CAF50" />
      </AnimatedPressable>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    paddingVertical: 20,
  },
  button: {
    width: 64,
    height: 64,
    borderRadius: 32,
    justifyContent: 'center',
    alignItems: 'center',
    marginHorizontal: 12,
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.2,
    shadowRadius: 4,
    elevation: 3,
  },
  rejectButton: {
    backgroundColor: '#FFFFFF',
    borderWidth: 2,
    borderColor: '#FF5252',
  },
  likeButton: {
    backgroundColor: '#FFFFFF',
    borderWidth: 2,
    borderColor: '#4CAF50',
  },
  superLikeButton: {
    backgroundColor: '#FFFFFF',
    borderWidth: 2,
    borderColor: '#00BCD4',
  },
});