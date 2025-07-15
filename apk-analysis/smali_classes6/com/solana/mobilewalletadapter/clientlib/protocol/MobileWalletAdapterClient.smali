.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.super Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;
.source "MobileWalletAdapterClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsFuture;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$NotSubmittedException;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsResult;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesResult;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InvalidPayloadsException;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsResult;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InsecureWalletEndpointUriException;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$JsonRpc20MethodResultFuture;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OFFCHAIN_MESSAGE_SIGNATURE_LENGTH:I = 0x40


# instance fields
.field private final mClientTimeoutMs:I


# direct methods
.method static bridge synthetic -$$Nest$smunpackResponseBooleanArray(Lorg/json/JSONObject;Ljava/lang/String;I)[Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->unpackResponseBooleanArray(Lorg/json/JSONObject;Ljava/lang/String;I)[Z

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smunpackResponsePayloadArray(Lorg/json/JSONObject;Ljava/lang/String;IZ)[[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->unpackResponsePayloadArray(Lorg/json/JSONObject;Ljava/lang/String;IZ)[[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "clientTimeoutMs"    # I

    .line 47
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;-><init>()V

    .line 48
    iput p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    .line 49
    return-void
.end method

.method private static unpackResponseBooleanArray(Lorg/json/JSONObject;Ljava/lang/String;I)[Z
    .locals 6
    .param p0, "jo"    # Lorg/json/JSONObject;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "numExpectedBooleans"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 727
    if-lez p2, :cond_1

    .line 731
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 734
    .local v0, "arr":Lorg/json/JSONArray;
    nop

    .line 735
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 736
    .local v1, "numValid":I
    if-ne v1, p2, :cond_0

    .line 743
    :try_start_1
    invoke-static {v0}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->unpackBooleans(Lorg/json/JSONArray;)[Z

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 746
    .local v2, "valid":[Z
    nop

    .line 748
    return-object v2

    .line 744
    .end local v2    # "valid":[Z
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be an array of Booleans"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 737
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " should contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries; actual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "numValid":I
    :catch_1
    move-exception v0

    .line 733
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v2, "JSON object does not contain a valid array"

    invoke-direct {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static unpackResponsePayloadArray(Lorg/json/JSONObject;Ljava/lang/String;IZ)[[B
    .locals 6
    .param p0, "jo"    # Lorg/json/JSONObject;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "numExpectedPayloads"    # I
    .param p3, "allowNulls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 695
    if-lez p2, :cond_1

    .line 699
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 702
    .local v0, "arr":Lorg/json/JSONArray;
    nop

    .line 703
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 704
    .local v1, "numPayloads":I
    if-ne v1, p2, :cond_0

    .line 711
    :try_start_1
    invoke-static {v0, p3}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->unpackBase64PayloadsArrayToByteArrays(Lorg/json/JSONArray;Z)[[B

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 716
    .local v2, "payloads":[[B
    nop

    .line 718
    return-object v2

    .line 714
    .end local v2    # "payloads":[[B
    :catch_0
    move-exception v2

    .line 715
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not allow null entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 712
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 713
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be an array of base64url-encoded Strings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 705
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " should contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries; actual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 700
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "numPayloads":I
    :catch_2
    move-exception v0

    .line 701
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v2, "JSON object does not contain a valid array"

    invoke-direct {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public authorize(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;
    .locals 4
    .param p1, "identityUri"    # Landroid/net/Uri;
    .param p2, "iconUri"    # Landroid/net/Uri;
    .param p3, "identityName"    # Ljava/lang/String;
    .param p4, "cluster"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If non-null, identityUri must be an absolute, hierarchical Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 398
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If non-null, iconRelativeUri must be a relative Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 404
    .local v0, "identity":Lorg/json/JSONObject;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v1, "icon"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .local v1, "authorize":Lorg/json/JSONObject;
    const-string v2, "identity"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v2, "cluster"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    nop

    .line 414
    .end local v0    # "identity":Lorg/json/JSONObject;
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;

    const-string v2, "authorize"

    iget v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture-IA;)V

    return-object v0

    .line 410
    .end local v1    # "authorize":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to create authorize JSON params"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public authorize(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[[BLcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;
    .locals 7
    .param p1, "identityUri"    # Landroid/net/Uri;
    .param p2, "iconUri"    # Landroid/net/Uri;
    .param p3, "identityName"    # Ljava/lang/String;
    .param p4, "chain"    # Ljava/lang/String;
    .param p5, "authToken"    # Ljava/lang/String;
    .param p6, "features"    # [Ljava/lang/String;
    .param p7, "addresses"    # [[B
    .param p8, "signInPayload"    # Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If non-null, identityUri must be an absolute, hierarchical Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 430
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If non-null, iconRelativeUri must be a relative Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_3
    :goto_1
    if-eqz p4, :cond_5

    invoke-static {p4}, Lcom/solana/mobilewalletadapter/common/util/Identifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 434
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provided chain is not a valid chain identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_5
    :goto_2
    const/4 v0, 0x0

    if-eqz p6, :cond_6

    invoke-static {p6}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packStrings([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    .line 438
    .local v1, "featuresArr":Lorg/json/JSONArray;
    :goto_3
    if-eqz p7, :cond_7

    invoke-static {p7}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v0

    .line 442
    .local v2, "addressesArr":Lorg/json/JSONArray;
    :goto_4
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v3, "identity":Lorg/json/JSONObject;
    const-string/jumbo v4, "uri"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v4, "icon"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v4, "name"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 447
    .local v4, "authorize":Lorg/json/JSONObject;
    const-string v5, "identity"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v5, "chain"

    invoke-virtual {v4, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v5, "auth_token"

    invoke-virtual {v4, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v5, "features"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v5, "addresses"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    if-eqz p8, :cond_8

    .line 453
    const-string/jumbo v5, "sign_in_payload"

    invoke-virtual {p8}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v3    # "identity":Lorg/json/JSONObject;
    :cond_8
    nop

    .line 459
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;

    const-string v5, "authorize"

    iget v6, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    invoke-virtual {p0, v5, v4, v6}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture-IA;)V

    return-object v3

    .line 455
    .end local v4    # "authorize":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Failed to create authorize JSON params"

    invoke-direct {v3, v4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public deauthorize(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;
    .locals 4
    .param p1, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 504
    .local v0, "deauthorize":Lorg/json/JSONObject;
    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    nop

    .line 509
    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;

    const-string v2, "deauthorize"

    iget v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$DeauthorizeFuture-IA;)V

    return-object v1

    .line 505
    .end local v0    # "deauthorize":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to create deauthorize JSON params"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCapabilities()Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 539
    .local v0, "params":Lorg/json/JSONObject;
    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;

    const-string v2, "get_capabilities"

    iget v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesFuture-IA;)V

    return-object v1
.end method

.method public reauthorize(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;
    .locals 4
    .param p1, "identityUri"    # Landroid/net/Uri;
    .param p2, "iconUri"    # Landroid/net/Uri;
    .param p3, "identityName"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If non-null, identityUri must be an absolute, hierarchical Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 475
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If non-null, iconRelativeUri must be a relative Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 481
    .local v0, "identity":Lorg/json/JSONObject;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v1, "icon"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 485
    .local v1, "reauthorize":Lorg/json/JSONObject;
    const-string v2, "identity"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    const-string v2, "auth_token"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .line 491
    .end local v0    # "identity":Lorg/json/JSONObject;
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;

    const-string v2, "reauthorize"

    iget v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationFuture-IA;)V

    return-object v0

    .line 487
    .end local v1    # "reauthorize":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to create reauthorize JSON params"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public signAndSendTransactions([[BLjava/lang/Integer;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsFuture;
    .locals 7
    .param p1, "transactions"    # [[B
    .param p2, "minContextSlot"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1069
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->signAndSendTransactions([[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsFuture;

    move-result-object v0

    return-object v0
.end method

.method public signAndSendTransactions([[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsFuture;
    .locals 6
    .param p1, "transactions"    # [[B
    .param p2, "minContextSlot"    # Ljava/lang/Integer;
    .param p3, "commitment"    # Ljava/lang/String;
    .param p4, "skipPreflight"    # Ljava/lang/Boolean;
    .param p5, "maxRetries"    # Ljava/lang/Integer;
    .param p6, "waitForCommitmentToSendNextTransaction"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1081
    .local v2, "t":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 1080
    .end local v2    # "t":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1082
    .restart local v2    # "t":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transactions must be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    .end local v2    # "t":[B
    :cond_1
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;

    move-result-object v0

    .line 1087
    .local v0, "payloadsArr":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1089
    .local v1, "signAndSendTransactions":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "payloads"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1090
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1091
    .local v2, "options":Lorg/json/JSONObject;
    const-string v3, "commitment"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1092
    if-eqz p2, :cond_2

    .line 1093
    const-string v3, "min_context_slot"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1095
    :cond_2
    if-eqz p4, :cond_3

    .line 1096
    const-string/jumbo v3, "skip_preflight"

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1098
    :cond_3
    if-eqz p5, :cond_4

    .line 1099
    const-string v3, "max_retries"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1101
    :cond_4
    if-eqz p6, :cond_5

    .line 1102
    const-string/jumbo v3, "wait_for_commitment_to_send_next_transaction"

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1104
    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1105
    const-string v3, "options"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    .end local v2    # "options":Lorg/json/JSONObject;
    :cond_6
    nop

    .line 1111
    new-instance v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsFuture;

    iget v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    .line 1112
    const-string/jumbo v4, "sign_and_send_transactions"

    invoke-virtual {p0, v4, v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v3

    array-length v4, p1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignAndSendTransactionsFuture-IA;)V

    .line 1111
    return-object v2

    .line 1107
    :catch_0
    move-exception v2

    .line 1108
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Failed to create signing payload JSON params"

    invoke-direct {v3, v4, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public signMessages([[B[[B)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;
    .locals 7
    .param p1, "messages"    # [[B
    .param p2, "addresses"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 885
    .local v2, "m":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 884
    .end local v2    # "m":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    .restart local v2    # "m":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messages must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    .end local v2    # "m":[B
    :cond_1
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;

    move-result-object v0

    .line 891
    .local v0, "payloadsArr":Lorg/json/JSONArray;
    invoke-static {p2}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;

    move-result-object v1

    .line 892
    .local v1, "addressesArr":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 894
    .local v2, "signPayloads":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "payloads"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string v3, "addresses"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    nop

    .line 900
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;

    iget v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    .line 901
    const-string/jumbo v5, "sign_messages"

    invoke-virtual {p0, v5, v2, v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v4

    array-length v5, p1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture-IA;)V

    .line 900
    return-object v3

    .line 896
    :catch_0
    move-exception v3

    .line 897
    .local v3, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Failed to create signing payload JSON params"

    invoke-direct {v4, v5, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public signMessagesDetached([[B[[B)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;
    .locals 6
    .param p1, "messages"    # [[B
    .param p2, "addresses"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 910
    .local v2, "m":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 909
    .end local v2    # "m":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .restart local v2    # "m":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messages must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    .end local v2    # "m":[B
    :cond_1
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;

    move-result-object v0

    .line 916
    .local v0, "payloadsArr":Lorg/json/JSONArray;
    invoke-static {p2}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;

    move-result-object v1

    .line 917
    .local v1, "addressesArr":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 919
    .local v2, "signPayloads":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "payloads"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    const-string v3, "addresses"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    nop

    .line 925
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;

    iget v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    .line 926
    const-string/jumbo v5, "sign_messages"

    invoke-virtual {p0, v5, v2, v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;[[B[[BLcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignMessagesFuture-IA;)V

    .line 925
    return-object v3

    .line 921
    :catch_0
    move-exception v3

    .line 922
    .local v3, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Failed to create signing payload JSON params"

    invoke-direct {v4, v5, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public signTransactions([[B)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;
    .locals 6
    .param p1, "transactions"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "2.0.0"
    .end annotation

    .line 851
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 852
    .local v2, "t":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 851
    .end local v2    # "t":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    .restart local v2    # "t":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transactions must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    .end local v2    # "t":[B
    :cond_1
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;

    move-result-object v0

    .line 858
    .local v0, "payloadsArr":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 860
    .local v1, "signPayloads":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "payloads"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    nop

    .line 865
    new-instance v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;

    iget v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->mClientTimeoutMs:I

    .line 866
    const-string/jumbo v4, "sign_transactions"

    invoke-virtual {p0, v4, v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v3

    array-length v4, p1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture;-><init>(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$SignPayloadsFuture-IA;)V

    .line 865
    return-object v2

    .line 861
    :catch_0
    move-exception v2

    .line 862
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Failed to create signing payload JSON params"

    invoke-direct {v3, v4, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
