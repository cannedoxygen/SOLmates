.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;
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
    name = "SignPayloadsFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;",
        ">;",
        "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExpectedNumSignedPayloads:I


# direct methods
.method private constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;I)V
    .locals 1
    .param p2, "expectedNumSignedPayloads"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 775
    .local p1, "methodCallFuture":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture-IA;)V

    .line 776
    iput p2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;->mExpectedNumSignedPayloads:I

    .line 777
    return-void
.end method

.method synthetic constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel(Z)Z
    .locals 0

    .line 767
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

    .line 767
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

    .line 767
    invoke-super {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isCancelled()Z
    .locals 1

    .line 767
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDone()Z
    .locals 1

    .line 767
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyOnComplete$0$com-solana-mobilewalletadapter-clientlib-protocol-MobileWalletAdapterClient$SignPayloadsFuture(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V
    .locals 0
    .param p1, "cb"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;
    .param p2, "f"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    .line 808
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
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;",
            ">;>;)V"
        }
    .end annotation

    .line 808
    .local p1, "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;>;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture$$ExternalSyntheticLambda0;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    invoke-interface {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->notifyOnComplete(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    .line 809
    return-void
.end method

.method protected processRemoteException(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    .locals 5
    .param p1, "remoteException"    # Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    .line 795
    iget v0, p1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 796
    return-object v2

    .line 799
    :cond_0
    :try_start_0
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InvalidPayloadsException;

    invoke-virtual {p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->data:Ljava/lang/String;

    iget v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;->mExpectedNumSignedPayloads:I

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InvalidPayloadsException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InvalidPayloadsException-IA;)V
    :try_end_0
    .catch Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
    return-object v0
.end method

.method protected processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 783
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 786
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 787
    .local v0, "jo":Lorg/json/JSONObject;
    iget v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;->mExpectedNumSignedPayloads:I

    const/4 v2, 0x0

    const-string/jumbo v3, "signed_payloads"

    invoke-static {v0, v3, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->-$$Nest$smunpackResponsePayloadArray(Lorg/json/JSONObject;Ljava/lang/String;IZ)[[B

    move-result-object v1

    .line 789
    .local v1, "signedPayloads":[[B
    new-instance v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;

    invoke-direct {v2, v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;-><init>([[B)V

    return-object v2

    .line 784
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "signedPayloads":[[B
    :cond_0
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v1, "expected result to be a JSON object"

    invoke-direct {v0, v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic processResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 767
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;->processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 767
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
