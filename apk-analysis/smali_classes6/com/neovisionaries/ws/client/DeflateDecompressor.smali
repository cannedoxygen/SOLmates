.class Lcom/neovisionaries/ws/client/DeflateDecompressor;
.super Ljava/lang/Object;
.source "DeflateDecompressor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decompress(Lcom/neovisionaries/ws/client/ByteArray;ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 3
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "index"    # I
    .param p2, "output"    # Lcom/neovisionaries/ws/client/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 35
    .local v0, "bitIndex":[I
    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 39
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public static decompress(Lcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/ByteArray;)V
    .locals 1
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "output"    # Lcom/neovisionaries/ws/client/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->decompress(Lcom/neovisionaries/ws/client/ByteArray;ILcom/neovisionaries/ws/client/ByteArray;)V

    .line 28
    return-void
.end method

.method private static duplicate(IILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 6
    .param p0, "length"    # I
    .param p1, "distance"    # I
    .param p2, "output"    # Lcom/neovisionaries/ws/client/ByteArray;

    .line 210
    invoke-virtual {p2}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result v0

    .line 213
    .local v0, "sourceLength":I
    new-array v1, p0, [B

    .line 216
    .local v1, "target":[B
    sub-int v2, v0, p1

    .line 217
    .local v2, "initialPosition":I
    move v3, v2

    .line 219
    .local v3, "sourceIndex":I
    const/4 v4, 0x0

    .local v4, "targetIndex":I
    :goto_0
    if-ge v4, p0, :cond_1

    .line 221
    if-gt v0, v3, :cond_0

    .line 234
    move v3, v2

    .line 237
    :cond_0
    invoke-virtual {p2, v3}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v5

    aput-byte v5, v1, v4

    .line 219
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v4    # "targetIndex":I
    :cond_1
    invoke-virtual {p2, v1}, Lcom/neovisionaries/ws/client/ByteArray;->put([B)V

    .line 242
    return-void
.end method

.method private static inflateBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)Z
    .locals 4
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "output"    # Lcom/neovisionaries/ws/client/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/ByteArray;->readBit([I)Z

    move-result v0

    .line 60
    .local v0, "last":Z
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v1

    .line 62
    .local v1, "type":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 82
    nop

    .line 84
    const-class v3, Lcom/neovisionaries/ws/client/DeflateDecompressor;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 82
    const-string v3, "[%s] Bad compression type \'11\' at the bit index \'%d\'."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/neovisionaries/ws/client/FormatException;

    invoke-direct {v3, v2}, Lcom/neovisionaries/ws/client/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateDynamicBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V

    .line 77
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateFixedBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V

    .line 72
    goto :goto_0

    .line 66
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflatePlainBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V

    .line 67
    nop

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result v3

    aget v2, p1, v2

    div-int/lit8 v2, v2, 0x8

    if-gt v3, v2, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 97
    :cond_0
    xor-int/lit8 v2, v0, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static inflateData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V
    .locals 3
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "output"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p3, "literalLengthHuffman"    # Lcom/neovisionaries/ws/client/Huffman;
    .param p4, "distanceHuffman"    # Lcom/neovisionaries/ws/client/Huffman;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 176
    nop

    :goto_0
    invoke-virtual {p3, p0, p1}, Lcom/neovisionaries/ws/client/Huffman;->readSym(Lcom/neovisionaries/ws/client/ByteArray;[I)I

    move-result v0

    .line 179
    .local v0, "literalLength":I
    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 182
    nop

    .line 204
    .end local v0    # "literalLength":I
    return-void

    .line 186
    .restart local v0    # "literalLength":I
    :cond_0
    if-ltz v0, :cond_1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 189
    invoke-virtual {p2, v0}, Lcom/neovisionaries/ws/client/ByteArray;->put(I)V

    .line 190
    goto :goto_0

    .line 196
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/neovisionaries/ws/client/DeflateUtil;->readLength(Lcom/neovisionaries/ws/client/ByteArray;[II)I

    move-result v1

    .line 199
    .local v1, "length":I
    invoke-static {p0, p1, p4}, Lcom/neovisionaries/ws/client/DeflateUtil;->readDistance(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/Huffman;)I

    move-result v2

    .line 202
    .local v2, "distance":I
    invoke-static {v1, v2, p2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->duplicate(IILcom/neovisionaries/ws/client/ByteArray;)V

    .line 203
    .end local v0    # "literalLength":I
    .end local v1    # "length":I
    .end local v2    # "distance":I
    goto :goto_0
.end method

.method private static inflateDynamicBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 3
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "output"    # Lcom/neovisionaries/ws/client/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/neovisionaries/ws/client/Huffman;

    .line 159
    .local v0, "tables":[Lcom/neovisionaries/ws/client/Huffman;
    invoke-static {p0, p1, v0}, Lcom/neovisionaries/ws/client/DeflateUtil;->readDynamicTables(Lcom/neovisionaries/ws/client/ByteArray;[I[Lcom/neovisionaries/ws/client/Huffman;)V

    .line 163
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, p1, p2, v1, v2}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V

    .line 164
    return-void
.end method

.method private static inflateFixedBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 2
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "output"    # Lcom/neovisionaries/ws/client/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 144
    nop

    .line 145
    invoke-static {}, Lcom/neovisionaries/ws/client/FixedLiteralLengthHuffman;->getInstance()Lcom/neovisionaries/ws/client/FixedLiteralLengthHuffman;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;->getInstance()Lcom/neovisionaries/ws/client/FixedDistanceHuffman;

    move-result-object v1

    .line 144
    invoke-static {p0, p1, p2, v0, v1}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->inflateData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V

    .line 147
    return-void
.end method

.method private static inflatePlainBlock(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/ByteArray;)V
    .locals 5
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "output"    # Lcom/neovisionaries/ws/client/ByteArray;

    .line 106
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    .line 110
    .local v1, "bi":I
    div-int/lit8 v2, v1, 0x8

    .line 113
    .local v2, "index":I
    invoke-virtual {p0, v2}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    .line 118
    .local v3, "len":I
    add-int/lit8 v2, v2, 0x4

    .line 121
    invoke-virtual {p2, p0, v2, v3}, Lcom/neovisionaries/ws/client/ByteArray;->put(Lcom/neovisionaries/ws/client/ByteArray;II)V

    .line 125
    add-int v4, v2, v3

    mul-int/lit8 v4, v4, 0x8

    aput v4, p1, v0

    .line 126
    return-void
.end method
