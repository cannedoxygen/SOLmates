import { AppState, AppStateStatus } from 'react-native';
import { AnalyticsService } from './analyticsService';
import { supabase } from '../supabase/client';

export class SessionManager {
  private static instance: SessionManager;
  private currentSessionId: string | null = null;
  private sessionStartTime: number | null = null;
  private userId: string | null = null;
  private isSessionActive: boolean = false;
  private heartbeatInterval: NodeJS.Timeout | null = null;
  private lastActivityTime: number = Date.now();

  private constructor() {
    this.setupAppStateListener();
    this.setupHeartbeat();
  }

  static getInstance(): SessionManager {
    if (!SessionManager.instance) {
      SessionManager.instance = new SessionManager();
    }
    return SessionManager.instance;
  }

  /**
   * Start a new session for the user
   */
  async startSession(userId: string): Promise<void> {
    try {
      this.userId = userId;
      this.currentSessionId = `session_${userId}_${Date.now()}`;
      this.sessionStartTime = Date.now();
      this.isSessionActive = true;
      this.lastActivityTime = Date.now();

      // Create session in database
      await supabase.from('user_sessions').insert({
        user_id: userId,
        session_id: this.currentSessionId,
        start_time: new Date().toISOString(),
        events_count: 0
      });

      // Track app open event
      await AnalyticsService.trackEvent(userId, 'app_open', {
        session_id: this.currentSessionId,
        timestamp: new Date().toISOString()
      });

      console.log('📱 Session started:', this.currentSessionId);
    } catch (error) {
      console.error('❌ Failed to start session:', error);
    }
  }

  /**
   * End the current session
   */
  async endSession(): Promise<void> {
    if (!this.currentSessionId || !this.sessionStartTime || !this.userId) return;

    try {
      const sessionDuration = Math.floor((Date.now() - this.sessionStartTime) / 1000);
      
      // Update session in database
      await supabase
        .from('user_sessions')
        .update({
          end_time: new Date().toISOString(),
          duration_seconds: sessionDuration
        })
        .eq('session_id', this.currentSessionId);

      console.log('📱 Session ended:', this.currentSessionId, 'Duration:', sessionDuration + 's');
      
      this.currentSessionId = null;
      this.sessionStartTime = null;
      this.isSessionActive = false;
      this.userId = null;

      if (this.heartbeatInterval) {
        clearInterval(this.heartbeatInterval);
        this.heartbeatInterval = null;
      }
    } catch (error) {
      console.error('❌ Failed to end session:', error);
    }
  }

  /**
   * Update last activity time (call this on user interactions)
   */
  updateActivity(): void {
    this.lastActivityTime = Date.now();
  }

  /**
   * Get current session ID
   */
  getCurrentSessionId(): string | null {
    return this.currentSessionId;
  }

  /**
   * Check if session is active
   */
  isActive(): boolean {
    return this.isSessionActive;
  }

  /**
   * Setup app state listener for background/foreground transitions
   */
  private setupAppStateListener(): void {
    AppState.addEventListener('change', (nextAppState: AppStateStatus) => {
      if (nextAppState === 'active') {
        // App came to foreground
        if (this.userId && !this.isSessionActive) {
          this.startSession(this.userId);
        }
      } else if (nextAppState === 'background' || nextAppState === 'inactive') {
        // App went to background
        if (this.isSessionActive) {
          this.endSession();
        }
      }
    });
  }

  /**
   * Setup heartbeat to check for inactive sessions
   */
  private setupHeartbeat(): void {
    this.heartbeatInterval = setInterval(() => {
      if (this.isSessionActive && this.lastActivityTime) {
        const timeSinceLastActivity = Date.now() - this.lastActivityTime;
        
        // End session if inactive for more than 5 minutes
        if (timeSinceLastActivity > 5 * 60 * 1000) {
          console.log('📱 Session ended due to inactivity');
          this.endSession();
        }
      }
    }, 30000); // Check every 30 seconds
  }

  /**
   * Get session duration in seconds
   */
  getSessionDuration(): number {
    if (!this.sessionStartTime) return 0;
    return Math.floor((Date.now() - this.sessionStartTime) / 1000);
  }

  /**
   * Resume session if app becomes active again quickly
   */
  async resumeSession(): Promise<void> {
    if (this.userId && this.currentSessionId && !this.isSessionActive) {
      this.isSessionActive = true;
      this.lastActivityTime = Date.now();
      
      // Track app resume event
      await AnalyticsService.trackEvent(this.userId, 'app_open', {
        session_id: this.currentSessionId,
        session_resumed: true,
        timestamp: new Date().toISOString()
      });
    }
  }
}