.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;
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
    name = "SignMessagesFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;",
        ">;",
        "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAddresses:[[B

.field private final mMessages:[[B


# direct methods
.method private constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;[[B[[B)V
    .locals 1
    .param p2, "messages"    # [[B
    .param p3, "addresses"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Object;",
            ">;[[B[[B)V"
        }
    .end annotation

    .line 986
    .local p1, "methodCallFuture":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture-IA;)V

    .line 987
    iput-object p2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mMessages:[[B

    .line 988
    iput-object p3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mAddresses:[[B

    .line 989
    return-void
.end method

.method synthetic constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;[[B[[BLcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;[[B[[B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel(Z)Z
    .locals 0

    .line 974
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

    .line 974
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

    .line 974
    invoke-super {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isCancelled()Z
    .locals 1

    .line 974
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDone()Z
    .locals 1

    .line 974
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyOnComplete$0$com-solana-mobilewalletadapter-clientlib-protocol-MobileWalletAdapterClient$SignMessagesFuture(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V
    .locals 0
    .param p1, "cb"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;
    .param p2, "f"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    .line 1052
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
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1052
    .local p1, "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;>;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture$$ExternalSyntheticLambda0;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    invoke-interface {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->notifyOnComplete(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    .line 1053
    return-void
.end method

.method protected processRemoteException(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    .locals 5
    .param p1, "remoteException"    # Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    .line 1039
    iget v0, p1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1040
    return-object v2

    .line 1043
    :cond_0
    :try_start_0
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InvalidPayloadsException;

    invoke-virtual {p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->data:Ljava/lang/String;

    iget-object v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mMessages:[[B

    array-length v4, v4

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InvalidPayloadsException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InvalidPayloadsException-IA;)V
    :try_end_0
    .catch Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
    return-object v0
.end method

.method protected processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 995
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 998
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 999
    .local v0, "jo":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mMessages:[[B

    array-length v1, v1

    const/4 v2, 0x0

    const-string/jumbo v3, "signed_payloads"

    invoke-static {v0, v3, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->-$$Nest$smunpackResponsePayloadArray(Lorg/json/JSONObject;Ljava/lang/String;IZ)[[B

    move-result-object v1

    .line 1002
    .local v1, "signedPayloads":[[B
    array-length v2, v1

    new-array v2, v2, [Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;

    .line 1004
    .local v2, "signedMessages":[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;
    iget-object v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mAddresses:[[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x40

    .line 1005
    .local v3, "signaturesLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 1007
    aget-object v5, v1, v4

    array-length v5, v5

    if-lt v5, v3, :cond_2

    .line 1010
    aget-object v5, v1, v4

    array-length v5, v5

    sub-int/2addr v5, v3

    .line 1011
    .local v5, "payloadLength":I
    iget-object v6, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mAddresses:[[B

    array-length v6, v6

    new-array v6, v6, [[B

    .line 1012
    .local v6, "signatures":[[B
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 1013
    aget-object v8, v1, v4

    mul-int/lit8 v9, v7, 0x40

    add-int/2addr v9, v5

    add-int/lit8 v10, v7, 0x1

    mul-int/lit8 v10, v10, 0x40

    add-int/2addr v10, v5

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    aput-object v8, v6, v7

    .line 1012
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1022
    .end local v7    # "j":I
    :cond_0
    if-nez v5, :cond_1

    .line 1023
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mMessages:[[B

    aget-object v7, v7, v4

    .local v7, "message":[B
    goto :goto_2

    .line 1025
    .end local v7    # "message":[B
    :cond_1
    aget-object v7, v1, v4

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 1027
    .restart local v7    # "message":[B
    :goto_2
    new-instance v8, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;

    iget-object v9, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->mAddresses:[[B

    invoke-direct {v8, v7, v6, v9}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;-><init>([B[[B[[B)V

    aput-object v8, v2, v4

    .line 1005
    .end local v5    # "payloadLength":I
    .end local v6    # "signatures":[[B
    .end local v7    # "message":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1008
    :cond_2
    new-instance v5, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v6, "Payload length too small for all requested signatures"

    invoke-direct {v5, v6}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1032
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;

    invoke-direct {v4, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;-><init>([Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;)V

    .line 1033
    .local v4, "result":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;
    return-object v4

    .line 996
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "signedPayloads":[[B
    .end local v2    # "signedMessages":[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult$SignedMessage;
    .end local v3    # "signaturesLength":I
    .end local v4    # "result":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;
    :cond_4
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

    .line 974
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;->processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 974
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
