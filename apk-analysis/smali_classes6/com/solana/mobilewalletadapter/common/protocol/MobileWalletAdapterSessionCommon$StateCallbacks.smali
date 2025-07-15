.class public interface abstract Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;
.super Ljava/lang/Object;
.source "MobileWalletAdapterSessionCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallbacks"
.end annotation


# virtual methods
.method public abstract onSessionClosed()V
.end method

.method public abstract onSessionError()V
.end method

.method public abstract onSessionEstablished()V
.end method
