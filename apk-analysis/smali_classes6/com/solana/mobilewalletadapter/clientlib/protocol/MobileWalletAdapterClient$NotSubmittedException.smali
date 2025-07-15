.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$NotSubmittedException;
.super Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;
.source "MobileWalletAdapterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotSubmittedException"
.end annotation


# instance fields
.field public final signatures:[[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "expectedNumSignatures"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
        }
    .end annotation

    .line 1192
    const/4 v0, -0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1194
    if-eqz p2, :cond_0

    .line 1199
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    .local v0, "o":Lorg/json/JSONObject;
    nop

    .line 1204
    const-string/jumbo v1, "signatures"

    const/4 v2, 0x1

    invoke-static {v0, v1, p3, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->-$$Nest$smunpackResponsePayloadArray(Lorg/json/JSONObject;Ljava/lang/String;IZ)[[B

    move-result-object v1

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$NotSubmittedException;->signatures:[[B

    .line 1206
    return-void

    .line 1200
    .end local v0    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v2, "data is not a valid ERROR_NOT_SUBMITTED result"

    invoke-direct {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1195
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    const-string v1, "data should not be null"

    invoke-direct {v0, v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$NotSubmittedException-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$NotSubmittedException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/signatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$NotSubmittedException;->signatures:[[B

    .line 1212
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1211
    return-object v0
.end method
