.class abstract Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;
.super Ljava/lang/Object;
.source "MobileWalletAdapterClient.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "JsonRpc20MethodResultFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    .local p1, "methodCallFuture":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 61
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    invoke-interface {v0, p1}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .local v0, "o":Ljava/lang/Object;
    nop

    .line 90
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->processResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 79
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "e":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 81
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    check-cast v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    invoke-virtual {p0, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->processRemoteException(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;

    move-result-object v2

    .line 83
    .local v2, "mapped":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    if-eqz v2, :cond_0

    .line 84
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 87
    .end local v2    # "mapped":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    :cond_0
    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    invoke-interface {v0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .local v0, "o":Ljava/lang/Object;
    nop

    .line 113
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->processResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 102
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "e":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 104
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v1

    check-cast v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    invoke-virtual {p0, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->processRemoteException(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;

    move-result-object v2

    .line 106
    .local v2, "mapped":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    if-eqz v2, :cond_0

    .line 107
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 110
    .end local v2    # "mapped":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    :cond_0
    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 66
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 71
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method protected processRemoteException(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    .locals 1
    .param p1, "e"    # Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    .line 125
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract processResult(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    .local p0, "this":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;, "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonRpc20MethodResultFuture{mMethodCallFuture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
