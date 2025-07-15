import React, { createContext, ReactNode } from 'react';

interface ChatContextType {
  activeChats: any[];
  sendMessage: (chatId: string, message: string) => Promise<void>;
}

export const ChatContext = createContext<ChatContextType>({
  activeChats: [],
  sendMessage: async () => {},
});

export function ChatProvider({ children }: { children: ReactNode }) {
  return (
    <ChatContext.Provider value={{ activeChats: [], sendMessage: async () => {} }}>
      {children}
    </ChatContext.Provider>
  );
}