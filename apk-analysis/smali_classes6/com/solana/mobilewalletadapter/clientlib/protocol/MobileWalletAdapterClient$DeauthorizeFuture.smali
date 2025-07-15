.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;
.super Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;
.source "MobileWalletAdapterClient.java"

# interfaces
.implements Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeauthorizeFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "methodCallFuture":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture-IA;)V

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel(Z)Z
    .locals 0

    .line 512
    invoke-super {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 512
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 512
    invoke-super {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isCancelled()Z
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDone()Z
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyOnComplete$0$com-solana-mobilewalletadapter-clientlib-protocol-MobileWalletAdapterClient$DeauthorizeFuture(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V
    .locals 0
    .param p1, "cb"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;
    .param p2, "f"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    .line 527
    invoke-interface {p1, p0}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;->onComplete(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public notifyOnComplete(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<",
            "-",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 527
    .local p1, "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture$$ExternalSyntheticLambda0;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    invoke-interface {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->notifyOnComplete(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    .line 528
    return-void
.end method

.method protected processResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 522
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
