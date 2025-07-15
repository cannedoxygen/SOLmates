.class public final synthetic Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;


# instance fields
.field public final synthetic f$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;

.field public final synthetic f$1:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture$$ExternalSyntheticLambda0;->f$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;

    iput-object p2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture$$ExternalSyntheticLambda0;->f$1:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/util/concurrent/Future;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture$$ExternalSyntheticLambda0;->f$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture$$ExternalSyntheticLambda0;->f$1:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;

    check-cast p1, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    invoke-virtual {v0, v1, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->lambda$notifyOnComplete$0$com-solana-mobilewalletadapter-clientlib-protocol-MobileWalletAdapterClient$SignMessagesFuture(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V

    return-void
.end method
