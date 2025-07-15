.class Lcom/neovisionaries/ws/client/DeflateUtil;
.super Ljava/lang/Object;
.source "DeflateUtil.java"


# static fields
.field private static INDICES_FROM_CODE_LENGTH_ORDER:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/neovisionaries/ws/client/DeflateUtil;->INDICES_FROM_CODE_LENGTH_ORDER:[I

    return-void

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static codeLengthOrderToIndex(I)I
    .locals 1
    .param p0, "order"    # I

    .line 157
    sget-object v0, Lcom/neovisionaries/ws/client/DeflateUtil;->INDICES_FROM_CODE_LENGTH_ORDER:[I

    aget v0, v0, p0

    return v0
.end method

.method private static readCodeLengths(Lcom/neovisionaries/ws/client/ByteArray;[I[ILcom/neovisionaries/ws/client/Huffman;)V
    .locals 5
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "codeLengths"    # [I
    .param p3, "codeLengthHuffman"    # Lcom/neovisionaries/ws/client/Huffman;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 94
    invoke-virtual {p3, p0, p1}, Lcom/neovisionaries/ws/client/Huffman;->readSym(Lcom/neovisionaries/ws/client/ByteArray;[I)I

    move-result v1

    .line 98
    .local v1, "codeLength":I
    if-ltz v1, :cond_0

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    .line 101
    aput v1, p2, v0

    .line 102
    goto :goto_3

    .line 107
    :cond_0
    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 132
    nop

    .line 134
    const-class v2, Lcom/neovisionaries/ws/client/DeflateUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 132
    const-string v3, "[%s] Bad code length \'%d\' at the bit index \'%d\'."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/neovisionaries/ws/client/FormatException;

    invoke-direct {v3, v2}, Lcom/neovisionaries/ws/client/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_0
    const/4 v1, 0x0

    .line 127
    const/4 v2, 0x7

    invoke-virtual {p0, p1, v2}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    .line 128
    .local v2, "repeatCount":I
    goto :goto_1

    .line 119
    .end local v2    # "repeatCount":I
    :pswitch_1
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, p1, v2}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v3

    add-int/2addr v2, v3

    .line 121
    .restart local v2    # "repeatCount":I
    goto :goto_1

    .line 112
    .end local v2    # "repeatCount":I
    :pswitch_2
    add-int/lit8 v3, v0, -0x1

    aget v1, p2, v3

    .line 113
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v3

    add-int/2addr v2, v3

    .line 114
    .restart local v2    # "repeatCount":I
    nop

    .line 140
    :goto_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v2, :cond_1

    .line 142
    add-int v4, v0, v3

    aput v1, p2, v4

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 146
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v3, v2, -0x1

    add-int/2addr v0, v3

    .line 91
    .end local v1    # "codeLength":I
    .end local v2    # "repeatCount":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readDistance(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/Huffman;)I
    .locals 5
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "distanceHuffman"    # Lcom/neovisionaries/ws/client/Huffman;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 225
    invoke-virtual {p2, p0, p1}, Lcom/neovisionaries/ws/client/Huffman;->readSym(Lcom/neovisionaries/ws/client/ByteArray;[I)I

    move-result v0

    .line 230
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 269
    nop

    .line 271
    const-class v1, Lcom/neovisionaries/ws/client/DeflateUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 269
    const-string v2, "[%s] Bad distance code \'%d\' at the bit index \'%d\'."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/neovisionaries/ws/client/FormatException;

    invoke-direct {v2, v1}, Lcom/neovisionaries/ws/client/FormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x6001

    .local v1, "baseValue":I
    const/16 v2, 0xd

    .local v2, "nBits":I
    goto/16 :goto_0

    .line 262
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_1
    const/16 v1, 0x4001

    .restart local v1    # "baseValue":I
    const/16 v2, 0xd

    .restart local v2    # "nBits":I
    goto/16 :goto_0

    .line 261
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_2
    const/16 v1, 0x3001

    .restart local v1    # "baseValue":I
    const/16 v2, 0xc

    .restart local v2    # "nBits":I
    goto/16 :goto_0

    .line 260
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_3
    const/16 v1, 0x2001

    .restart local v1    # "baseValue":I
    const/16 v2, 0xc

    .restart local v2    # "nBits":I
    goto/16 :goto_0

    .line 259
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_4
    const/16 v1, 0x1801

    .restart local v1    # "baseValue":I
    const/16 v2, 0xb

    .restart local v2    # "nBits":I
    goto/16 :goto_0

    .line 258
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_5
    const/16 v1, 0x1001

    .restart local v1    # "baseValue":I
    const/16 v2, 0xb

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 257
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_6
    const/16 v1, 0xc01

    .restart local v1    # "baseValue":I
    const/16 v2, 0xa

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 256
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_7
    const/16 v1, 0x801

    .restart local v1    # "baseValue":I
    const/16 v2, 0xa

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 255
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_8
    const/16 v1, 0x601

    .restart local v1    # "baseValue":I
    const/16 v2, 0x9

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 254
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_9
    const/16 v1, 0x401

    .restart local v1    # "baseValue":I
    const/16 v2, 0x9

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 253
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_a
    const/16 v1, 0x301

    .restart local v1    # "baseValue":I
    const/16 v2, 0x8

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 252
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_b
    const/16 v1, 0x201

    .restart local v1    # "baseValue":I
    const/16 v2, 0x8

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 251
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_c
    const/16 v1, 0x181

    .restart local v1    # "baseValue":I
    const/4 v2, 0x7

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 250
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_d
    const/16 v1, 0x101

    .restart local v1    # "baseValue":I
    const/4 v2, 0x7

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 249
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_e
    const/16 v1, 0xc1

    .restart local v1    # "baseValue":I
    const/4 v2, 0x6

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 248
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_f
    const/16 v1, 0x81

    .restart local v1    # "baseValue":I
    const/4 v2, 0x6

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 247
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_10
    const/16 v1, 0x61

    .restart local v1    # "baseValue":I
    const/4 v2, 0x5

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 246
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_11
    const/16 v1, 0x41

    .restart local v1    # "baseValue":I
    const/4 v2, 0x5

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 245
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_12
    const/16 v1, 0x31

    .restart local v1    # "baseValue":I
    const/4 v2, 0x4

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 244
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_13
    const/16 v1, 0x21

    .restart local v1    # "baseValue":I
    const/4 v2, 0x4

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 243
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_14
    const/16 v1, 0x19

    .restart local v1    # "baseValue":I
    const/4 v2, 0x3

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 242
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_15
    const/16 v1, 0x11

    .restart local v1    # "baseValue":I
    const/4 v2, 0x3

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 241
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_16
    const/16 v1, 0xd

    .restart local v1    # "baseValue":I
    const/4 v2, 0x2

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 240
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_17
    const/16 v1, 0x9

    .restart local v1    # "baseValue":I
    const/4 v2, 0x2

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 239
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_18
    const/4 v1, 0x7

    .restart local v1    # "baseValue":I
    const/4 v2, 0x1

    .restart local v2    # "nBits":I
    goto :goto_0

    .line 238
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    :pswitch_19
    const/4 v1, 0x5

    .restart local v1    # "baseValue":I
    const/4 v2, 0x1

    .line 277
    .restart local v2    # "nBits":I
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v3

    .line 279
    .local v3, "n":I
    add-int v4, v1, v3

    return v4

    .line 236
    .end local v1    # "baseValue":I
    .end local v2    # "nBits":I
    .end local v3    # "n":I
    :pswitch_1a
    add-int/lit8 v1, v0, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readDynamicTables(Lcom/neovisionaries/ws/client/ByteArray;[I[Lcom/neovisionaries/ws/client/Huffman;)V
    .locals 11
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "tables"    # [Lcom/neovisionaries/ws/client/Huffman;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v1

    add-int/lit16 v1, v1, 0x101

    .line 37
    .local v1, "hlit":I
    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 40
    .local v0, "hdist":I
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v4

    add-int/2addr v4, v3

    .line 47
    .local v4, "hclen":I
    const/16 v3, 0x13

    new-array v3, v3, [I

    .line 48
    .local v3, "codeLengthsFromCodeLengthValue":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 50
    const/4 v6, 0x3

    invoke-virtual {p0, p1, v6}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v6

    int-to-byte v6, v6

    .line 53
    .local v6, "codeLengthOfCodeLengthValue":B
    invoke-static {v5}, Lcom/neovisionaries/ws/client/DeflateUtil;->codeLengthOrderToIndex(I)I

    move-result v7

    .line 55
    .local v7, "index":I
    aput v6, v3, v7

    .line 48
    .end local v6    # "codeLengthOfCodeLengthValue":B
    .end local v7    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Lcom/neovisionaries/ws/client/Huffman;

    invoke-direct {v5, v3}, Lcom/neovisionaries/ws/client/Huffman;-><init>([I)V

    .line 64
    .local v5, "codeLengthHuffman":Lcom/neovisionaries/ws/client/Huffman;
    new-array v6, v1, [I

    .line 65
    .local v6, "codeLengthsFromLiteralLengthCode":[I
    invoke-static {p0, p1, v6, v5}, Lcom/neovisionaries/ws/client/DeflateUtil;->readCodeLengths(Lcom/neovisionaries/ws/client/ByteArray;[I[ILcom/neovisionaries/ws/client/Huffman;)V

    .line 69
    new-instance v7, Lcom/neovisionaries/ws/client/Huffman;

    invoke-direct {v7, v6}, Lcom/neovisionaries/ws/client/Huffman;-><init>([I)V

    .line 73
    .local v7, "literalLengthHuffman":Lcom/neovisionaries/ws/client/Huffman;
    new-array v8, v0, [I

    .line 74
    .local v8, "codeLengthsFromDistanceCode":[I
    invoke-static {p0, p1, v8, v5}, Lcom/neovisionaries/ws/client/DeflateUtil;->readCodeLengths(Lcom/neovisionaries/ws/client/ByteArray;[I[ILcom/neovisionaries/ws/client/Huffman;)V

    .line 78
    new-instance v9, Lcom/neovisionaries/ws/client/Huffman;

    invoke-direct {v9, v8}, Lcom/neovisionaries/ws/client/Huffman;-><init>([I)V

    .line 80
    .local v9, "distanceHuffman":Lcom/neovisionaries/ws/client/Huffman;
    const/4 v10, 0x0

    aput-object v7, p2, v10

    .line 81
    aput-object v9, p2, v2

    .line 82
    return-void
.end method

.method public static readLength(Lcom/neovisionaries/ws/client/ByteArray;[II)I
    .locals 4
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "literalLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 169
    packed-switch p2, :pswitch_data_0

    .line 204
    nop

    .line 206
    const-class v0, Lcom/neovisionaries/ws/client/DeflateUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 204
    const-string v1, "[%s] Bad literal/length code \'%d\' at the bit index \'%d\'."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/neovisionaries/ws/client/FormatException;

    invoke-direct {v1, v0}, Lcom/neovisionaries/ws/client/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_0
    const/16 v0, 0x102

    return v0

    .line 200
    :pswitch_1
    const/16 v0, 0xe3

    .local v0, "baseValue":I
    const/4 v1, 0x5

    .local v1, "nBits":I
    goto :goto_0

    .line 199
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_2
    const/16 v0, 0xc3

    .restart local v0    # "baseValue":I
    const/4 v1, 0x5

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 198
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_3
    const/16 v0, 0xa3

    .restart local v0    # "baseValue":I
    const/4 v1, 0x5

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 197
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_4
    const/16 v0, 0x83

    .restart local v0    # "baseValue":I
    const/4 v1, 0x5

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 196
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_5
    const/16 v0, 0x73

    .restart local v0    # "baseValue":I
    const/4 v1, 0x4

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 195
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_6
    const/16 v0, 0x63

    .restart local v0    # "baseValue":I
    const/4 v1, 0x4

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 194
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_7
    const/16 v0, 0x53

    .restart local v0    # "baseValue":I
    const/4 v1, 0x4

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 193
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_8
    const/16 v0, 0x43

    .restart local v0    # "baseValue":I
    const/4 v1, 0x4

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 192
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_9
    const/16 v0, 0x3b

    .restart local v0    # "baseValue":I
    const/4 v1, 0x3

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 191
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_a
    const/16 v0, 0x33

    .restart local v0    # "baseValue":I
    const/4 v1, 0x3

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 190
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_b
    const/16 v0, 0x2b

    .restart local v0    # "baseValue":I
    const/4 v1, 0x3

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 189
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0    # "baseValue":I
    const/4 v1, 0x3

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 188
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_d
    const/16 v0, 0x1f

    .restart local v0    # "baseValue":I
    const/4 v1, 0x2

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 187
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_e
    const/16 v0, 0x1b

    .restart local v0    # "baseValue":I
    const/4 v1, 0x2

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 186
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_f
    const/16 v0, 0x17

    .restart local v0    # "baseValue":I
    const/4 v1, 0x2

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 185
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_10
    const/16 v0, 0x13

    .restart local v0    # "baseValue":I
    const/4 v1, 0x2

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 184
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_11
    const/16 v0, 0x11

    .restart local v0    # "baseValue":I
    const/4 v1, 0x1

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 183
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_12
    const/16 v0, 0xf

    .restart local v0    # "baseValue":I
    const/4 v1, 0x1

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 182
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_13
    const/16 v0, 0xd

    .restart local v0    # "baseValue":I
    const/4 v1, 0x1

    .restart local v1    # "nBits":I
    goto :goto_0

    .line 181
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    :pswitch_14
    const/16 v0, 0xb

    .restart local v0    # "baseValue":I
    const/4 v1, 0x1

    .line 212
    .restart local v1    # "nBits":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v2

    .line 214
    .local v2, "n":I
    add-int v3, v0, v2

    return v3

    .line 179
    .end local v0    # "baseValue":I
    .end local v1    # "nBits":I
    .end local v2    # "n":I
    :pswitch_15
    add-int/lit16 v0, p2, -0xfe

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
