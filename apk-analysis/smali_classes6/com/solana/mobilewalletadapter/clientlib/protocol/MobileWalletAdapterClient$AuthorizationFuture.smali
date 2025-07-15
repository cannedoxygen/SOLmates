.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;
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
    name = "AuthorizationFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;",
        ">;",
        "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
        "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;",
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

    .line 271
    .local p1, "methodCallFuture":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture-IA;)V

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel(Z)Z
    .locals 0

    .line 267
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

    .line 267
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

    .line 267
    invoke-super {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isCancelled()Z
    .locals 1

    .line 267
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDone()Z
    .locals 1

    .line 267
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyOnComplete$0$com-solana-mobilewalletadapter-clientlib-protocol-MobileWalletAdapterClient$AuthorizationFuture(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;)V
    .locals 0
    .param p1, "cb"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;
    .param p2, "f"    # Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    .line 376
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
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 376
    .local p1, "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;>;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;->mMethodCallFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture$$ExternalSyntheticLambda0;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    invoke-interface {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->notifyOnComplete(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V

    .line 377
    return-void
.end method

.method protected processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;
    .locals 21
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 278
    move-object/from16 v1, p1

    const-string v0, "label"

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_12

    .line 282
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    .line 286
    .local v2, "jo":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "auth_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    .local v5, "authToken":Ljava/lang/String;
    nop

    .line 293
    :try_start_1
    const-string v3, "accounts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 294
    .local v3, "accounts":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

    move-object v11, v4

    .line 295
    .local v11, "authorizedAccounts":[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "address"

    if-ge v4, v6, :cond_5

    .line 300
    :try_start_2
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 301
    .local v6, "account":Lorg/json/JSONObject;
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "b64EncodedAddress":Ljava/lang/String;
    invoke-static {v7}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->unpackBase64PayloadToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 303
    .local v13, "publicKey":[B
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 304
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "accountLabel":Ljava/lang/String;
    goto :goto_1

    .line 306
    .end local v8    # "accountLabel":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 308
    .restart local v8    # "accountLabel":Ljava/lang/String;
    :goto_1
    const-string v9, "chains"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 309
    .local v9, "chainsArr":Lorg/json/JSONArray;
    const/4 v10, 0x0

    if-nez v9, :cond_1

    const/4 v12, 0x0

    move-object/from16 v18, v12

    .local v12, "chains":[Ljava/lang/String;
    goto :goto_3

    .line 311
    .end local v12    # "chains":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 312
    .restart local v12    # "chains":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "c":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 313
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 312
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v18, v12

    .line 316
    .end local v12    # "chains":[Ljava/lang/String;
    .end local v14    # "c":I
    .local v18, "chains":[Ljava/lang/String;
    :goto_3
    const-string v12, "features"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    move-object v15, v12

    .line 317
    .local v15, "featuresArr":Lorg/json/JSONArray;
    if-nez v15, :cond_3

    const/4 v10, 0x0

    .local v10, "features":[Ljava/lang/String;
    goto :goto_5

    .line 319
    .end local v10    # "features":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 320
    .local v12, "features":[Ljava/lang/String;
    const/4 v14, 0x0

    .restart local v14    # "c":I
    :goto_4
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v14, v10, :cond_4

    .line 321
    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v14

    .line 320
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    move-object v10, v12

    .line 324
    .end local v12    # "features":[Ljava/lang/String;
    .end local v14    # "c":I
    .restart local v10    # "features":[Ljava/lang/String;
    :goto_5
    new-instance v19, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

    const/16 v17, 0x0

    move-object/from16 v12, v19

    move-object v14, v8

    move-object/from16 v20, v15

    .end local v15    # "featuresArr":Lorg/json/JSONArray;
    .local v20, "featuresArr":Lorg/json/JSONArray;
    move-object/from16 v15, v18

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;-><init>([BLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount-IA;)V

    aput-object v19, v11, v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 295
    .end local v6    # "account":Lorg/json/JSONObject;
    .end local v7    # "b64EncodedAddress":Ljava/lang/String;
    .end local v8    # "accountLabel":Ljava/lang/String;
    .end local v9    # "chainsArr":Lorg/json/JSONArray;
    .end local v10    # "features":[Ljava/lang/String;
    .end local v13    # "publicKey":[B
    .end local v18    # "chains":[Ljava/lang/String;
    .end local v20    # "featuresArr":Lorg/json/JSONArray;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "accounts":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_5
    nop

    .line 330
    const-string/jumbo v0, "wallet_uri_base"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 331
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, v4

    .line 332
    .local v0, "walletUriBaseStr":Ljava/lang/String;
    :goto_6
    if-eqz v0, :cond_7

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v4

    .line 333
    .local v3, "walletUriBase":Landroid/net/Uri;
    :goto_7
    if-eqz v3, :cond_9

    const-string v6, "https"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_8

    .line 334
    :cond_8
    new-instance v4, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InsecureWalletEndpointUriException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid wallet URI prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'; expected a \'https\' URI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InsecureWalletEndpointUriException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 338
    :cond_9
    :goto_8
    const-string/jumbo v6, "wallet_icon"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 339
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_a
    move-object v6, v4

    :goto_9
    move-object v12, v6

    .line 340
    .local v12, "walletIconStr":Ljava/lang/String;
    if-eqz v12, :cond_b

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v8, v6

    goto :goto_a

    :cond_b
    move-object v8, v4

    .line 342
    .local v8, "walletIcon":Landroid/net/Uri;
    :goto_a
    const-string/jumbo v6, "sign_in_result"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 343
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_b

    :cond_c
    nop

    :goto_b
    move-object v13, v4

    .line 345
    .local v13, "signInResultJson":Lorg/json/JSONObject;
    if-eqz v13, :cond_11

    .line 346
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "address":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, "expected an address in sign_in_result"

    if-nez v6, :cond_10

    .line 350
    invoke-static {v4}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->unpackBase64PayloadToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 352
    .local v6, "publicKey":[B
    const-string/jumbo v9, "signed_message"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, "signedMessageStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    .line 356
    invoke-static {v9}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->unpackBase64PayloadToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 358
    .local v10, "signedMessage":[B
    const-string/jumbo v14, "signature"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 359
    .local v14, "signatureStr":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_e

    .line 362
    invoke-static {v14}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->unpackBase64PayloadToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 364
    .local v7, "signature":[B
    const-string/jumbo v15, "signature_type"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 365
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_c

    :cond_d
    const-string v15, "ed25519"

    .line 366
    .local v15, "signatureType":Ljava/lang/String;
    :goto_c
    move-object/from16 v16, v0

    .end local v0    # "walletUriBaseStr":Ljava/lang/String;
    .local v16, "walletUriBaseStr":Ljava/lang/String;
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;

    invoke-direct {v0, v6, v10, v7, v15}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;-><init>([B[B[BLjava/lang/String;)V

    .line 367
    .end local v4    # "address":Ljava/lang/String;
    .end local v6    # "publicKey":[B
    .end local v7    # "signature":[B
    .end local v9    # "signedMessageStr":Ljava/lang/String;
    .end local v10    # "signedMessage":[B
    .end local v14    # "signatureStr":Ljava/lang/String;
    .end local v15    # "signatureType":Ljava/lang/String;
    .local v0, "signInResult":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;
    goto :goto_d

    .line 360
    .end local v16    # "walletUriBaseStr":Ljava/lang/String;
    .local v0, "walletUriBaseStr":Ljava/lang/String;
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v6    # "publicKey":[B
    .restart local v9    # "signedMessageStr":Ljava/lang/String;
    .restart local v10    # "signedMessage":[B
    .restart local v14    # "signatureStr":Ljava/lang/String;
    :cond_e
    move-object/from16 v16, v0

    .end local v0    # "walletUriBaseStr":Ljava/lang/String;
    .restart local v16    # "walletUriBaseStr":Ljava/lang/String;
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    invoke-direct {v0, v7}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    .end local v10    # "signedMessage":[B
    .end local v14    # "signatureStr":Ljava/lang/String;
    .end local v16    # "walletUriBaseStr":Ljava/lang/String;
    .restart local v0    # "walletUriBaseStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v0

    .end local v0    # "walletUriBaseStr":Ljava/lang/String;
    .restart local v16    # "walletUriBaseStr":Ljava/lang/String;
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    invoke-direct {v0, v7}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    .end local v6    # "publicKey":[B
    .end local v9    # "signedMessageStr":Ljava/lang/String;
    .end local v16    # "walletUriBaseStr":Ljava/lang/String;
    .restart local v0    # "walletUriBaseStr":Ljava/lang/String;
    :cond_10
    move-object/from16 v16, v0

    .end local v0    # "walletUriBaseStr":Ljava/lang/String;
    .restart local v16    # "walletUriBaseStr":Ljava/lang/String;
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    invoke-direct {v0, v7}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    .end local v4    # "address":Ljava/lang/String;
    .end local v16    # "walletUriBaseStr":Ljava/lang/String;
    .restart local v0    # "walletUriBaseStr":Ljava/lang/String;
    :cond_11
    move-object/from16 v16, v0

    .end local v0    # "walletUriBaseStr":Ljava/lang/String;
    .restart local v16    # "walletUriBaseStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 371
    .local v0, "signInResult":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;
    :goto_d
    new-instance v14, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;

    const/4 v10, 0x0

    move-object v4, v14

    move-object v6, v11

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;-><init>(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;Landroid/net/Uri;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult-IA;)V

    return-object v14

    .line 326
    .end local v0    # "signInResult":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;
    .end local v3    # "walletUriBase":Landroid/net/Uri;
    .end local v8    # "walletIcon":Landroid/net/Uri;
    .end local v11    # "authorizedAccounts":[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;
    .end local v12    # "walletIconStr":Ljava/lang/String;
    .end local v13    # "signInResultJson":Lorg/json/JSONObject;
    .end local v16    # "walletUriBaseStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v4, "expected one or more addresses"

    invoke-direct {v3, v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "authToken":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 288
    .restart local v0    # "e":Lorg/json/JSONException;
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v4, "expected an auth_token"

    invoke-direct {v3, v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jo":Lorg/json/JSONObject;
    :cond_12
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v2, "expected result to be a JSON object"

    invoke-direct {v0, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic processResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;->processResult(Ljava/lang/Object;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 267
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
