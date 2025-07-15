.class public interface abstract Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;
.super Ljava/lang/Object;
.source "MobileWalletAdapterWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallbacks"
.end annotation


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onConnectionClosed()V
.end method

.method public abstract onConnectionFailed()V
.end method
