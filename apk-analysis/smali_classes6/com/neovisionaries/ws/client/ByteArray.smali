.class Lcom/neovisionaries/ws/client/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# static fields
.field private static final ADDITIONAL_BUFFER_SIZE:I = 0x400


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 46
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    .line 59
    array-length v0, p1

    iput v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 60
    return-void
.end method

.method private expandBuffer(I)V
    .locals 4
    .param p1, "newBufferSize"    # I

    .line 94
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 98
    .local v1, "oldPosition":I
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    .line 104
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    iput v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 227
    return-void
.end method

.method public clearBit(I)V
    .locals 1
    .param p1, "bitIndex"    # I

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->setBit(IZ)V

    .line 347
    return-void
.end method

.method public get(I)B
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 77
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    if-le v0, p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bad index: index=%d, length=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBit(I)Z
    .locals 5
    .param p1, "bitIndex"    # I

    .line 250
    div-int/lit8 v0, p1, 0x8

    .line 251
    .local v0, "index":I
    rem-int/lit8 v1, p1, 0x8

    .line 252
    .local v1, "shift":I
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v2

    .line 255
    .local v2, "value":I
    const/4 v3, 0x1

    shl-int v4, v3, v1

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public getBits(II)I
    .locals 4
    .param p1, "bitIndex"    # I
    .param p2, "nBits"    # I

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "number":I
    const/4 v1, 0x1

    .line 265
    .local v1, "weight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 268
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/neovisionaries/ws/client/ByteArray;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    add-int/2addr v0, v1

    .line 265
    :cond_0
    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 274
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public getHuffmanBits(II)I
    .locals 4
    .param p1, "bitIndex"    # I
    .param p2, "nBits"    # I

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "number":I
    const/4 v1, 0x1

    .line 292
    .local v1, "weight":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 295
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/neovisionaries/ws/client/ByteArray;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    add-int/2addr v0, v1

    .line 292
    :cond_0
    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 301
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public length()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    return v0
.end method

.method public put(I)V
    .locals 2
    .param p1, "data"    # I

    .line 113
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 115
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->expandBuffer(I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 120
    return-void
.end method

.method public put(Lcom/neovisionaries/ws/client/ByteArray;II)V
    .locals 1
    .param p1, "source"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 181
    iget-object v0, p1, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/neovisionaries/ws/client/ByteArray;->put([BII)V

    .line 182
    return-void
.end method

.method public put([B)V
    .locals 3
    .param p1, "source"    # [B

    .line 132
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    array-length v2, p1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 134
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->expandBuffer(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 138
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 139
    return-void
.end method

.method public put([BII)V
    .locals 2
    .param p1, "source"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 157
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_0

    .line 159
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/2addr v0, p3

    add-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->expandBuffer(I)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 163
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 164
    return-void
.end method

.method public readBit([I)Z
    .locals 3
    .param p1, "bitIndex"    # [I

    .line 307
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/ByteArray;->getBit(I)Z

    move-result v1

    .line 309
    .local v1, "result":Z
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    .line 311
    return v1
.end method

.method public readBits([II)I
    .locals 3
    .param p1, "bitIndex"    # [I
    .param p2, "nBits"    # I

    .line 317
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/neovisionaries/ws/client/ByteArray;->getBits(II)I

    move-result v1

    .line 319
    .local v1, "number":I
    aget v2, p1, v0

    add-int/2addr v2, p2

    aput v2, p1, v0

    .line 321
    return v1
.end method

.method public setBit(IZ)V
    .locals 5
    .param p1, "bitIndex"    # I
    .param p2, "bit"    # Z

    .line 327
    div-int/lit8 v0, p1, 0x8

    .line 328
    .local v0, "index":I
    rem-int/lit8 v1, p1, 0x8

    .line 329
    .local v1, "shift":I
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v2

    .line 331
    .local v2, "value":I
    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 333
    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    goto :goto_0

    .line 337
    :cond_0
    shl-int/2addr v3, v1

    not-int v3, v3

    and-int/2addr v2, v3

    .line 340
    :goto_0
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 341
    return-void
.end method

.method public shrink(I)V
    .locals 5
    .param p1, "size"    # I

    .line 232
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    iget v0, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 238
    .local v0, "endIndex":I
    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    sub-int/2addr v1, p1

    .line 240
    .local v1, "beginIndex":I
    invoke-virtual {p0, v1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(II)[B

    move-result-object v2

    .line 242
    .local v2, "bytes":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    .line 243
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    array-length v3, v2

    iput v3, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    .line 245
    return-void
.end method

.method public toBytes()[B
    .locals 1

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public toBytes(I)[B
    .locals 1
    .param p1, "beginIndex"    # I

    .line 196
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(II)[B

    move-result-object v0

    return-object v0
.end method

.method public toBytes(II)[B
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 202
    sub-int v0, p2, p1

    .line 204
    .local v0, "len":I
    if-ltz v0, :cond_1

    if-ltz p1, :cond_1

    iget v1, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    if-lt v1, p2, :cond_1

    .line 211
    new-array v1, v0, [B

    .line 213
    .local v1, "bytes":[B
    if-eqz v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ByteArray;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    :cond_0
    return-object v1

    .line 206
    .end local v1    # "bytes":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/neovisionaries/ws/client/ByteArray;->mLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 207
    const-string v3, "Bad range: beginIndex=%d, endIndex=%d, length=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
