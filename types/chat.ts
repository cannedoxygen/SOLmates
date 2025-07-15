export interface ChatRoom {
  id: string;
  participants: string[];
  last_message?: Message;
  last_message_at?: string;
  created_at: string;
}

export interface Message {
  id: string;
  chat_id: string;
  sender_id: string;
  content: string;
  message_type: string;
  read_at?: string;
  created_at: string;
  encrypted_content?: string;
  encryption_iv?: string;
}

export interface MessageMetadata {
  tip_amount?: number;
  tip_token?: string;
  tip_signature?: string;
  image_url?: string;
  project_id?: string;
  project_name?: string;
}

export interface ChatParticipant {
  id: string;
  username: string;
  avatar_url?: string;
  twitter_avatar_url?: string;
  wallet_address: string;
  is_online?: boolean;
  last_seen?: string;
}