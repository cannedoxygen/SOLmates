import { ViewStyle } from 'react-native';

/**
 * Liquid Glass Effects - 2025 Figma Trend
 * Reusable glass morphism styles for consistent UI
 */

export const glassEffects = {
  // Primary glass container
  primaryGlass: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.18)',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.3,
    shadowRadius: 32,
    elevation: 8,
  } as ViewStyle,

  // Secondary glass elements
  secondaryGlass: {
    backgroundColor: 'rgba(255, 255, 255, 0.06)',
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.15)',
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.1,
    shadowRadius: 16,
    elevation: 4,
  } as ViewStyle,

  // Floating glass cards
  floatingGlass: {
    backgroundColor: 'rgba(26, 31, 58, 0.6)',
    borderRadius: 20,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 16 },
    shadowOpacity: 0.25,
    shadowRadius: 48,
    elevation: 12,
  } as ViewStyle,

  // Button glass effect
  buttonGlass: {
    backgroundColor: '#9945FF',
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.4,
    shadowRadius: 32,
    elevation: 8,
  } as ViewStyle,

  // Input glass effect
  inputGlass: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.15)',
    shadowColor: '#14F195',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.1,
    shadowRadius: 16,
    elevation: 4,
  } as ViewStyle,

  // Accent glass (for highlights)
  accentGlass: {
    backgroundColor: 'rgba(153, 69, 255, 0.15)',
    borderRadius: 12,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.4)',
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.4,
    shadowRadius: 32,
    elevation: 8,
  } as ViewStyle,

  // Success glass (for positive states)
  successGlass: {
    backgroundColor: 'rgba(20, 241, 149, 0.15)',
    borderRadius: 12,
    borderWidth: 1,
    borderColor: 'rgba(20, 241, 149, 0.3)',
    shadowColor: '#14F195',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.2,
    shadowRadius: 16,
    elevation: 6,
  } as ViewStyle,

  // Subtle glass for nested elements
  subtleGlass: {
    backgroundColor: 'rgba(255, 255, 255, 0.04)',
    borderRadius: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.08)',
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 8,
    elevation: 2,
  } as ViewStyle,
};

// Color gradients for glass backgrounds
export const glassGradients = {
  primary: ['rgba(153, 69, 255, 0.15)', 'rgba(26, 31, 58, 0.25)', 'rgba(20, 241, 149, 0.1)'],
  secondary: ['rgba(26, 31, 58, 0.8)', 'rgba(10, 14, 39, 0.9)', 'rgba(153, 69, 255, 0.2)'],
  accent: ['rgba(153, 69, 255, 0.2)', 'rgba(20, 241, 149, 0.15)', 'rgba(26, 31, 58, 0.3)'],
};

// Backdrop filter values (for web/future support)
export const backdropFilters = {
  light: 'blur(20px) saturate(150%)',
  medium: 'blur(40px) saturate(180%)',
  heavy: 'blur(60px) saturate(200%)',
};