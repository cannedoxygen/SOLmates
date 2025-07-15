.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;
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
    name = "GetCapabilitiesFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;",
        ">;",
        "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;",
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

    .line 604
    .local p1, "methodCallFuture":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture-IA;)V

    .line 605
    return-void
.end method

.method synthetic constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel(Z)Z
    .locals 0

    .line 600
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

    .line 600
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

    .line 600
    invoke-super {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isCancelled()Z
    .locals 1

    .line 600
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDone()Z
    .locals 1

    .line 600
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyOnComplete$0$com-solana-mobilewalletadapter-clientlib-protocol-MobileWalletAdapterClient$GetCapabilitiesFuture(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V
    .locals 0
    .param p1, "cb"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;
    .param p2, "f"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    .line 680
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
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;",
            ">;>;)V"
        }
    .end annotation

    .line 680
    .local p1, "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;>;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture$$ExternalSyntheticLambda0;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    invoke-interface {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->notifyOnComplete(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    .line 681
    return-void
.end method

.method protected processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 611
    const-string/jumbo v0, "supports_sign_and_send_transactions"

    const-string/jumbo v1, "supports_clone_authorization"

    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    .line 615
    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    .line 624
    .local v2, "jo":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 625
    .local v3, "supportsCloneAuthorization":Z
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 626
    .local v4, "supportsSignAndSendTransactions":Z
    const-string v5, "max_transactions_per_request"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 627
    .local v8, "maxTransactionsPerSigningRequest":I
    const-string v5, "max_messages_per_request"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 629
    .local v9, "maxMessagesPerSigningRequest":I
    const-string/jumbo v5, "supported_transaction_versions"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 630
    .local v5, "supportedTransactionVersionsArr":Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    .line 631
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 632
    .local v7, "length":I
    new-array v10, v7, [Ljava/lang/Object;

    .line 633
    .local v10, "supportedTransactionVersions":[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v7, :cond_1

    .line 634
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 635
    .local v12, "stv":Ljava/lang/Object;
    sget-object v13, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v12, v13, :cond_0

    instance-of v13, v12, Lorg/json/JSONObject;

    if-nez v13, :cond_0

    instance-of v13, v12, Lorg/json/JSONArray;

    if-nez v13, :cond_0

    .line 638
    aput-object v12, v10, v11

    .line 633
    .end local v12    # "stv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 636
    .restart local v12    # "stv":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "supported_transaction_versions expected to contain only non-null primitive datatypes"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local p1    # "o":Ljava/lang/Object;
    throw v0

    .line 640
    .end local v7    # "length":I
    .end local v11    # "i":I
    .end local v12    # "stv":Ljava/lang/Object;
    .restart local v2    # "jo":Lorg/json/JSONObject;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move-object v13, v10

    goto :goto_1

    .line 645
    .end local v10    # "supportedTransactionVersions":[Ljava/lang/Object;
    :cond_2
    const-string v7, "legacy"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    move-object v13, v10

    .line 648
    .local v13, "supportedTransactionVersions":[Ljava/lang/Object;
    :goto_1
    const-string v7, "features"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 649
    .local v7, "supportedOptionalFeaturesArr":Lorg/json/JSONArray;
    if-eqz v7, :cond_5

    .line 650
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 651
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    .line 652
    .local v1, "supportedOptionalFeatures":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_4

    .line 653
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 654
    .local v10, "sof":Ljava/lang/String;
    invoke-static {v10}, Lcom/solana/mobilewalletadapter/common/util/Identifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 657
    aput-object v10, v1, v6

    .line 652
    .end local v10    # "sof":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 655
    .restart local v10    # "sof":Ljava/lang/String;
    :cond_3
    new-instance v11, Lorg/json/JSONException;

    const-string v12, "features expected to contain only valid namespaced feature identifiers (String)"

    invoke-direct {v11, v12}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local p1    # "o":Ljava/lang/Object;
    throw v11

    .line 659
    .end local v0    # "length":I
    .end local v6    # "i":I
    .end local v10    # "sof":Ljava/lang/String;
    .restart local v2    # "jo":Lorg/json/JSONObject;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    goto :goto_3

    .line 663
    .end local v1    # "supportedOptionalFeatures":[Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v10, "supportedOptionalFeaturesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_6
    if-eqz v4, :cond_7

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_7
    new-array v0, v6, [Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 670
    .end local v5    # "supportedTransactionVersionsArr":Lorg/json/JSONArray;
    .end local v7    # "supportedOptionalFeaturesArr":Lorg/json/JSONArray;
    .end local v10    # "supportedOptionalFeaturesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "supportedOptionalFeatures":[Ljava/lang/String;
    :goto_3
    nop

    .line 672
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;

    const/4 v12, 0x0

    move-object v7, v0

    move-object v10, v13

    move-object v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;-><init>(II[Ljava/lang/Object;[Ljava/lang/String;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult-IA;)V

    return-object v0

    .line 668
    .end local v1    # "supportedOptionalFeatures":[Ljava/lang/String;
    .end local v3    # "supportsCloneAuthorization":Z
    .end local v4    # "supportsSignAndSendTransactions":Z
    .end local v8    # "maxTransactionsPerSigningRequest":I
    .end local v9    # "maxMessagesPerSigningRequest":I
    .end local v13    # "supportedTransactionVersions":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v3, "result does not conform to expected format"

    invoke-direct {v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jo":Lorg/json/JSONObject;
    :cond_8
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

    .line 600
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;->processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 600
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
