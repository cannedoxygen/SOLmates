.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;
.super Ljava/lang/Object;
.source "MobileWalletAdapterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignMessagesResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;
    }
.end annotation


# instance fields
.field public final messages:[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;


# direct methods
.method public constructor <init>([Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;)V
    .locals 0
    .param p1, "messages"    # [Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;->messages:[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;

    .line 965
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignMessagesResult{messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;->messages:[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
