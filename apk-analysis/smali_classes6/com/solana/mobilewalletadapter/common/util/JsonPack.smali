.class public Lcom/solana/mobilewalletadapter/common/util/JsonPack;
.super Ljava/lang/Object;
.source "JsonPack.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static packBooleans([Z)Lorg/json/JSONArray;
    .locals 4
    .param p0, "booleans"    # [Z

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v0, "arr":Lorg/json/JSONArray;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-boolean v3, p0, v2

    .line 59
    .local v3, "b":Z
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 58
    .end local v3    # "b":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method

.method public static packByteArraysToBase64PayloadsArray([[B)Lorg/json/JSONArray;
    .locals 5
    .param p0, "byteArrays"    # [[B

    .line 18
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 19
    .local v0, "arr":Lorg/json/JSONArray;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 20
    .local v3, "byteArray":[B
    if-nez v3, :cond_0

    .line 21
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 23
    :cond_0
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "b64":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 19
    .end local v3    # "byteArray":[B
    .end local v4    # "b64":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    return-object v0
.end method

.method public static packStrings([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p0, "strings"    # [Ljava/lang/String;

    .line 77
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v0, "arr":Lorg/json/JSONArray;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 79
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object v0
.end method

.method public static unpackBase64PayloadToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "b64Payload"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static unpackBase64PayloadsArrayToByteArrays(Lorg/json/JSONArray;Z)[[B
    .locals 5
    .param p0, "arr"    # Lorg/json/JSONArray;
    .param p1, "allowNulls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 35
    .local v0, "numEntries":I
    new-array v1, v0, [[B

    .line 36
    .local v1, "byteArrays":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    if-eqz p1, :cond_0

    .line 41
    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_1

    .line 39
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "null entries not allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "b64":Ljava/lang/String;
    invoke-static {v3}, Lcom/solana/mobilewalletadapter/common/util/JsonPack;->unpackBase64PayloadToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 36
    .end local v3    # "b64":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static unpackBooleans(Lorg/json/JSONArray;)[Z
    .locals 4
    .param p0, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 68
    .local v0, "numEntries":I
    new-array v1, v0, [Z

    .line 69
    .local v1, "booleans":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 70
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static unpackStrings(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4
    .param p0, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 88
    .local v0, "numEntries":I
    new-array v1, v0, [Ljava/lang/String;

    .line 89
    .local v1, "strings":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
