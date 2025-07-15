import React, { createContext, ReactNode } from 'react';

interface NotificationContextType {
  hasPermission: boolean;
  requestPermission: () => Promise<void>;
}

export const NotificationContext = createContext<NotificationContextType>({
  hasPermission: false,
  requestPermission: async () => {},
});

export function NotificationProvider({ children }: { children: ReactNode }) {
  return (
    <NotificationContext.Provider 
      value={{ hasPermission: false, requestPermission: async () => {} }}
    >
      {children}
    </NotificationContext.Provider>
  );
}