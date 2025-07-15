.class public Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;
.super Ljava/lang/Object;
.source "SignInWithSolana.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation
.end field

.field public addressRaw:[B

.field public final chainId:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public final expirationTime:Ljava/lang/String;

.field public final issuedAt:Ljava/lang/String;

.field public final nonce:Ljava/lang/String;

.field public final notBefore:Ljava/lang/String;

.field public final requestId:Ljava/lang/String;

.field public final resources:[Landroid/net/Uri;

.field public final statement:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "statement"    # Ljava/lang/String;

    .line 98
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v12}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;-><init>(Ljava/lang/String;[BLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/net/Uri;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/net/Uri;)V
    .locals 16
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "statement"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "chainId"    # Ljava/lang/String;
    .param p7, "nonce"    # Ljava/lang/String;
    .param p8, "issuedAt"    # Ljava/lang/String;
    .param p9, "expirationTime"    # Ljava/lang/String;
    .param p10, "notBefore"    # Ljava/lang/String;
    .param p11, "requestId"    # Ljava/lang/String;
    .param p12, "resources"    # [Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    .line 172
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;-><init>(Ljava/lang/String;[BLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/net/Uri;)V

    .line 175
    if-nez v15, :cond_0

    return-void

    .line 176
    :cond_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/solana/mobilewalletadapter/common/util/Base58;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v14, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 177
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v15, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v14, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    nop

    .line 182
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iput-object v15, v14, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->address:Ljava/lang/String;

    .line 183
    return-void

    .line 178
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e2":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/net/Uri;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "address"    # [B
    .param p3, "statement"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "chainId"    # Ljava/lang/String;
    .param p7, "nonce"    # Ljava/lang/String;
    .param p8, "issuedAt"    # Ljava/lang/String;
    .param p9, "expirationTime"    # Ljava/lang/String;
    .param p10, "notBefore"    # Ljava/lang/String;
    .param p11, "requestId"    # Ljava/lang/String;
    .param p12, "resources"    # [Landroid/net/Uri;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->domain:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    .line 116
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/solana/mobilewalletadapter/common/util/Base58;->encode([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->address:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->statement:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    .line 119
    iput-object p5, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->version:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->chainId:Ljava/lang/String;

    .line 121
    iput-object p11, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->requestId:Ljava/lang/String;

    .line 122
    iput-object p12, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    .line 124
    if-eqz p7, :cond_2

    .line 125
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const-string v0, "[A-Za-z0-9]+"

    invoke-virtual {p7, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nonce must be at least 8 alphanumeric characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    :goto_1
    iput-object p7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->nonce:Ljava/lang/String;

    .line 131
    if-eqz p8, :cond_3

    .line 133
    :try_start_0
    invoke-static {p8}, Lcom/solana/mobilewalletadapter/common/datetime/Iso8601DateTime;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "issuedAt must be a valid ISO 8601 date time string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_3
    :goto_2
    iput-object p8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->issuedAt:Ljava/lang/String;

    .line 140
    if-eqz p9, :cond_4

    .line 142
    :try_start_1
    invoke-static {p9}, Lcom/solana/mobilewalletadapter/common/datetime/Iso8601DateTime;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    goto :goto_3

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "expirationTime must be a valid ISO 8601 date time string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_4
    :goto_3
    iput-object p9, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->expirationTime:Ljava/lang/String;

    .line 149
    if-eqz p10, :cond_5

    .line 151
    :try_start_2
    invoke-static {p10}, Lcom/solana/mobilewalletadapter/common/datetime/Iso8601DateTime;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    goto :goto_4

    .line 152
    :catch_2
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "notBefore must be a valid ISO 8601 date time string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_5
    :goto_4
    iput-object p10, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->notBefore:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;
    .locals 18
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 286
    move-object/from16 v0, p0

    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 287
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 288
    .local v4, "domain":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 290
    .local v1, "addressStr":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/common/util/Base58;->decode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 292
    .local v5, "address":[B
    :goto_2
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_URI:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 293
    .local v16, "uriString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v7, v3

    .line 295
    .local v7, "uri":Landroid/net/Uri;
    :goto_3
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_STATEMENT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_STATEMENT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 297
    .local v6, "statement":Ljava/lang/String;
    :goto_4
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 298
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_5

    :cond_5
    move-object v8, v2

    .line 299
    .local v8, "version":Ljava/lang/String;
    :goto_5
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 300
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_6

    :cond_6
    move-object v9, v2

    .line 301
    .local v9, "chainId":Ljava/lang/String;
    :goto_6
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NONCE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 302
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NONCE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_7

    :cond_7
    move-object v10, v2

    .line 303
    .local v10, "nonce":Ljava/lang/String;
    :goto_7
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ISSUED_AT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 304
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ISSUED_AT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_8

    :cond_8
    move-object v11, v2

    .line 305
    .local v11, "issuedAt":Ljava/lang/String;
    :goto_8
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_EXPIRATION_TIME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 306
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_EXPIRATION_TIME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_9

    :cond_9
    move-object v12, v2

    .line 307
    .local v12, "expirationTime":Ljava/lang/String;
    :goto_9
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NOT_BEFORE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 308
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NOT_BEFORE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_a

    :cond_a
    move-object v13, v2

    .line 309
    .local v13, "notBefore":Ljava/lang/String;
    :goto_a
    sget-object v3, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 310
    sget-object v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_b
    nop

    :goto_b
    move-object v14, v2

    .line 312
    .local v14, "requestId":Ljava/lang/String;
    const-string v2, "resources"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 314
    .local v2, "resourcesArr":Lorg/json/JSONArray;
    if-eqz v2, :cond_d

    .line 315
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Landroid/net/Uri;

    .line 316
    .local v3, "resources":[Landroid/net/Uri;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_c

    .line 317
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v15

    .line 316
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_c

    :cond_c
    move-object v0, v3

    .end local v15    # "i":I
    goto :goto_d

    .line 320
    .end local v3    # "resources":[Landroid/net/Uri;
    :cond_d
    const/4 v3, 0x0

    move-object v0, v3

    .line 323
    .local v0, "resources":[Landroid/net/Uri;
    :goto_d
    new-instance v17, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;

    move-object/from16 v3, v17

    move-object v15, v0

    invoke-direct/range {v3 .. v15}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;-><init>(Ljava/lang/String;[BLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/net/Uri;)V

    return-object v17
.end method

.method public static fromMessage(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 280
    invoke-static {p0}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Parser;->parseMessage(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;

    move-result-object v0

    return-object v0
.end method

.method private generateNonce()Ljava/lang/String;
    .locals 4

    .line 353
    const v0, 0x989680

    .line 354
    .local v0, "min":I
    const v1, 0x7fffffff

    .line 355
    .local v1, "max":I
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 356
    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private toV1Message()Ljava/lang/String;
    .locals 11

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wants you to sign in with your Solana account:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "header":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v4, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    invoke-static {v4}, Lcom/solana/mobilewalletadapter/common/util/Base58;->encode([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "\n"

    invoke-static {v4, v2}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "prefix":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v6, "suffixArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "uriField":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v7    # "uriField":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->version:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "versionField":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v7    # "versionField":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->chainId:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Chain ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->chainId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "chainField":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v7    # "chainField":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->nonce:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 234
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Nonce: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->nonce:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "nonceField":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v7    # "nonceField":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->issuedAt:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Issued At: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->issuedAt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "issuedAtField":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v7    # "issuedAtField":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->expirationTime:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expiration Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->expirationTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "expirationTimeField":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v7    # "expirationTimeField":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->notBefore:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not Before: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->notBefore:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "expirationTime":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v7    # "expirationTime":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->requestId:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->requestId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_7
    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    array-length v7, v7

    if-lez v7, :cond_9

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Resources:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v7, "resourcesBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v9, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    array-length v9, v9

    if-ge v8, v9, :cond_8

    .line 260
    const-string v9, "\n- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v9, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 263
    .end local v8    # "i":I
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v7    # "resourcesBuilder":Ljava/lang/StringBuilder;
    :cond_9
    invoke-static {v4, v6}, Lcom/facebook/systrace/SystraceMessage$StartSectionBuilder$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "suffix":Ljava/lang/String;
    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->statement:Ljava/lang/String;

    const-string v9, "\n\n"

    if-eqz v8, :cond_a

    .line 269
    new-array v8, v1, [Ljava/lang/CharSequence;

    aput-object v2, v8, v3

    iget-object v10, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->statement:Ljava/lang/String;

    aput-object v10, v8, v5

    invoke-static {v9, v8}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 272
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_b
    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    aput-object v7, v1, v5

    invoke-static {v4, v1}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 361
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 362
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 363
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;

    .line 364
    .local v2, "payload":Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;
    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->domain:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->domain:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    .line 365
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->statement:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->statement:Ljava/lang/String;

    .line 366
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    .line 367
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->version:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->version:Ljava/lang/String;

    .line 368
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->chainId:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->chainId:Ljava/lang/String;

    .line 369
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->nonce:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->nonce:Ljava/lang/String;

    .line 370
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->issuedAt:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->issuedAt:Ljava/lang/String;

    .line 371
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->expirationTime:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->expirationTime:Ljava/lang/String;

    .line 372
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->notBefore:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->notBefore:Ljava/lang/String;

    .line 373
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->requestId:Ljava/lang/String;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->requestId:Ljava/lang/String;

    .line 374
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    iget-object v4, v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    .line 375
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 364
    :goto_0
    return v0

    .line 362
    .end local v2    # "payload":Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 10

    .line 380
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->statement:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->version:Ljava/lang/String;

    iget-object v4, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->chainId:Ljava/lang/String;

    iget-object v5, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->nonce:Ljava/lang/String;

    iget-object v6, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->issuedAt:Ljava/lang/String;

    iget-object v7, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->expirationTime:Ljava/lang/String;

    iget-object v8, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->notBefore:Ljava/lang/String;

    iget-object v9, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->requestId:Ljava/lang/String;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 382
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 383
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public prepareMessage()Ljava/lang/String;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->domain:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->toV1Message()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot prepare sign in message, no address provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot prepare sign in message, no domain provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    .line 192
    :try_start_0
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/util/Base58;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    nop

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->address:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->prepareMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e2":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public prepareMessage([B)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # [B

    .line 186
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    .line 187
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->prepareMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 328
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v0, "json":Lorg/json/JSONObject;
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_DOMAIN:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ADDRESS:Ljava/lang/String;

    .line 331
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->addressRaw:[B

    invoke-static {v2}, Lcom/solana/mobilewalletadapter/common/util/Base58;->encode([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 330
    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_STATEMENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->statement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_URI:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_VERSION:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->chainId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NONCE:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ISSUED_AT:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->issuedAt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_EXPIRATION_TIME:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->expirationTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NOT_BEFORE:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->notBefore:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    sget-object v1, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_REQUEST_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 342
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 343
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolana$Payload;->resources:[Landroid/net/Uri;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 344
    .local v5, "resource":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 343
    .end local v5    # "resource":Landroid/net/Uri;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    :cond_2
    sget-object v2, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_RESOURCES:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    return-object v0
.end method
