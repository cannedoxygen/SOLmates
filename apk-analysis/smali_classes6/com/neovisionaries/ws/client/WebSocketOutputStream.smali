.class Lcom/neovisionaries/ws/client/WebSocketOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "WebSocketOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 28
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    return-void
.end method

.method private writeFrame0(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    move v0, v1

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    .line 62
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv2()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    or-int/2addr v0, v2

    .line 63
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv3()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x10

    :cond_3
    or-int/2addr v0, v1

    .line 64
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    .line 66
    .local v0, "b":I
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    .line 67
    return-void
.end method

.method private writeFrame1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/16 v0, 0x80

    .line 75
    .local v0, "b":I
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadLength()I

    move-result v1

    .line 77
    .local v1, "len":I
    const/16 v2, 0x7d

    if-gt v1, v2, :cond_0

    .line 79
    or-int/2addr v0, v1

    goto :goto_0

    .line 81
    :cond_0
    const v2, 0xffff

    if-gt v1, v2, :cond_1

    .line 83
    or-int/lit8 v0, v0, 0x7e

    goto :goto_0

    .line 87
    :cond_1
    or-int/lit8 v0, v0, 0x7f

    .line 90
    :goto_0
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(I)V

    .line 91
    return-void
.end method

.method private writeFrameExtendedPayloadLength(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 4
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayloadLength()I

    move-result v0

    .line 99
    .local v0, "len":I
    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    const v1, 0xffff

    if-gt v0, v1, :cond_1

    .line 106
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 108
    .local v1, "buf":[B
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 109
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    goto :goto_1

    .line 111
    .end local v1    # "buf":[B
    :cond_1
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 112
    .restart local v1    # "buf":[B
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 113
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 114
    ushr-int/lit8 v0, v0, 0x8

    .line 112
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 117
    .end local v2    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write([B)V

    .line 118
    return-void
.end method

.method private writeFramePayload(Lcom/neovisionaries/ws/client/WebSocketFrame;[B)V
    .locals 5
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .param p2, "maskingKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v0

    .line 125
    .local v0, "payload":[B
    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    array-length v1, v0

    new-array v1, v1, [B

    .line 132
    .local v1, "masked":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 135
    aget-byte v3, v0, v2

    rem-int/lit8 v4, v2, 0x4

    aget-byte v4, p2, v4

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write([B)V

    .line 139
    return-void
.end method


# virtual methods
.method public write(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFrame0(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFrame1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFrameExtendedPayloadLength(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 48
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->nextBytes(I)[B

    move-result-object v0

    .line 51
    .local v0, "maskingKey":[B
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write([B)V

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->writeFramePayload(Lcom/neovisionaries/ws/client/WebSocketFrame;[B)V

    .line 55
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 37
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write([B)V

    .line 38
    return-void
.end method
