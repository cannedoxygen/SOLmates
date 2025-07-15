.class Lcom/neovisionaries/ws/client/WebSocketInputStream;
.super Ljava/io/FilterInputStream;
.source "WebSocketInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    return-void
.end method

.method private readPayload(JZ[B)[B
    .locals 5
    .param p1, "payloadLength"    # J
    .param p3, "mask"    # Z
    .param p4, "maskingKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 192
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    long-to-int v0, p1

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v0, "payload":[B
    nop

    .line 215
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    .line 218
    if-eqz p3, :cond_1

    .line 221
    invoke-static {p4, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->mask([B[B)[B

    .line 224
    :cond_1
    return-object v0

    .line 204
    .end local v0    # "payload":[B
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-direct {p0, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->skipQuietly(J)V

    .line 209
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError occurred during a trial to allocate a memory area for a frame\'s payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private skipQuietly(J)V
    .locals 1
    .param p1, "length"    # J

    .line 182
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 187
    :goto_0
    return-void
.end method


# virtual methods
.method readBytes([BI)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "total":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 165
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->read([BII)I

    move-result v1

    .line 167
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 173
    add-int/2addr v0, v1

    .line 174
    .end local v1    # "count":I
    goto :goto_0

    .line 170
    .restart local v1    # "count":I
    :cond_0
    new-instance v2, Lcom/neovisionaries/ws/client/InsufficientDataException;

    invoke-direct {v2, p2, v0}, Lcom/neovisionaries/ws/client/InsufficientDataException;-><init>(II)V

    throw v2

    .line 175
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method public readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 41
    move-object/from16 v1, p0

    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 46
    .local v2, "buffer":[B
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/InsufficientDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 64
    const/4 v4, 0x0

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0x80

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v4

    .line 67
    .local v5, "fin":Z
    :goto_0
    aget-byte v7, v2, v4

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    .line 68
    .local v7, "rsv1":Z
    :goto_1
    aget-byte v8, v2, v4

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v4

    .line 69
    .local v8, "rsv2":Z
    :goto_2
    aget-byte v9, v2, v4

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v4

    .line 72
    .local v9, "rsv3":Z
    :goto_3
    aget-byte v10, v2, v4

    and-int/lit8 v10, v10, 0xf

    .line 79
    .local v10, "opcode":I
    aget-byte v11, v2, v6

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_4

    move v11, v6

    goto :goto_4

    :cond_4
    move v11, v4

    .line 82
    .local v11, "mask":Z
    :goto_4
    aget-byte v12, v2, v6

    and-int/lit8 v12, v12, 0x7f

    int-to-long v12, v12

    .line 84
    .local v12, "payloadLength":J
    const-wide/16 v14, 0x7e

    cmp-long v14, v12, v14

    const/4 v15, 0x4

    if-nez v14, :cond_5

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    .line 91
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v3, 0x8

    aget-byte v3, v2, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-long v12, v0

    goto :goto_5

    .line 94
    :cond_5
    const-wide/16 v16, 0x7f

    cmp-long v14, v12, v16

    if-nez v14, :cond_7

    .line 98
    invoke-virtual {v1, v2, v0}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    .line 104
    aget-byte v14, v2, v4

    and-int/lit16 v14, v14, 0x80

    if-nez v14, :cond_6

    .line 113
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x38

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x30

    or-int/2addr v4, v6

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x28

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x20

    or-int/2addr v3, v4

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    const/4 v4, 0x5

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x6

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    const/4 v3, 0x7

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-long v12, v0

    goto :goto_5

    .line 107
    :cond_6
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->INVALID_PAYLOAD_LENGTH:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v4, "The payload length of a frame is invalid."

    invoke-direct {v0, v3, v4}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_7
    :goto_5
    const/4 v0, 0x0

    .line 126
    .local v0, "maskingKey":[B
    if-eqz v11, :cond_8

    .line 129
    new-array v0, v15, [B

    .line 130
    invoke-virtual {v1, v0, v15}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V

    .line 133
    :cond_8
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v3, v12

    if-ltz v3, :cond_9

    .line 144
    invoke-direct {v1, v12, v13, v11, v0}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readPayload(JZ[B)[B

    move-result-object v3

    .line 147
    .local v3, "payload":[B
    new-instance v4, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-direct {v4}, Lcom/neovisionaries/ws/client/WebSocketFrame;-><init>()V

    .line 148
    invoke-virtual {v4, v5}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 149
    invoke-virtual {v4, v7}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setRsv1(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v8}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setRsv2(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 151
    invoke-virtual {v4, v9}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setRsv3(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 152
    invoke-virtual {v4, v10}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setOpcode(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 153
    invoke-virtual {v4, v11}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setMask(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 154
    invoke-virtual {v4, v3}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setPayload([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 147
    return-object v4

    .line 137
    .end local v3    # "payload":[B
    :cond_9
    invoke-direct {v1, v12, v13}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->skipQuietly(J)V

    .line 138
    new-instance v3, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v4, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v6, "The payload length of a frame exceeds the maximum array size in Java."

    invoke-direct {v3, v4, v6}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v0    # "maskingKey":[B
    .end local v5    # "fin":Z
    .end local v7    # "rsv1":Z
    .end local v8    # "rsv2":Z
    .end local v9    # "rsv3":Z
    .end local v10    # "opcode":I
    .end local v11    # "mask":Z
    .end local v12    # "payloadLength":J
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 50
    .local v0, "e":Lcom/neovisionaries/ws/client/InsufficientDataException;
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/InsufficientDataException;->getReadByteCount()I

    move-result v3

    if-nez v3, :cond_a

    .line 54
    new-instance v3, Lcom/neovisionaries/ws/client/NoMoreFrameException;

    invoke-direct {v3}, Lcom/neovisionaries/ws/client/NoMoreFrameException;-><init>()V

    throw v3

    .line 59
    :cond_a
    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/neovisionaries/ws/client/Misc;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
