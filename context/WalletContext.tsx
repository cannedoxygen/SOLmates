import React, { createContext, useState, useEffect, ReactNode } from 'react';
import { PublicKey } from '@solana/web3.js';
import { walletAdapter, WalletSession } from '../lib/auth/wallet-adapter';

interface WalletContextType {
  connected: boolean;
  connecting: boolean;
  publicKey: PublicKey | null;
  address: string | null;
  connect: () => Promise<void>;
  disconnect: () => Promise<void>;
  signMessage: (message: string) => Promise<string>;
}

export const WalletContext = createContext<WalletContextType>({
  connected: false,
  connecting: false,
  publicKey: null,
  address: null,
  connect: async () => {},
  disconnect: async () => {},
  signMessage: async () => '',
});

interface WalletProviderProps {
  children: ReactNode;
}

export function WalletProvider({ children }: WalletProviderProps) {
  const [connected, setConnected] = useState(false);
  const [connecting, setConnecting] = useState(false);
  const [session, setSession] = useState<WalletSession | null>(null);

  useEffect(() => {
    checkExistingSession();
  }, []);

  const checkExistingSession = async () => {
    try {
      const existingSession = await walletAdapter.getSession();
      if (existingSession) {
        setSession(existingSession);
        setConnected(true);
      }
    } catch (error) {
      console.error('Failed to check wallet session:', error);
    }
  };

  const connect = async () => {
    try {
      setConnecting(true);
      const walletSession = await walletAdapter.connect();
      setSession(walletSession);
      setConnected(true);
    } catch (error) {
      console.error('Wallet connection failed:', error);
      throw error;
    } finally {
      setConnecting(false);
    }
  };

  const disconnect = async () => {
    try {
      await walletAdapter.disconnect();
      setSession(null);
      setConnected(false);
    } catch (error) {
      console.error('Wallet disconnection failed:', error);
    }
  };

  const signMessage = async (message: string): Promise<string> => {
    if (!connected) throw new Error('Wallet not connected');
    return walletAdapter.signMessage(message);
  };

  const publicKey = session ? new PublicKey(session.publicKey) : null;
  const address = session?.address || null;

  return (
    <WalletContext.Provider
      value={{
        connected,
        connecting,
        publicKey,
        address,
        connect,
        disconnect,
        signMessage,
      }}
    >
      {children}
    </WalletContext.Provider>
  );
}