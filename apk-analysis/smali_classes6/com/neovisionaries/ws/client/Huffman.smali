.class Lcom/neovisionaries/ws/client/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# instance fields
.field private final mMaxCodeLen:I

.field private final mMaxCodeValsFromCodeLen:[I

.field private final mMinCodeLen:I

.field private final mSymsFromCodeVal:[I


# direct methods
.method public constructor <init>([I)V
    .locals 5
    .param p1, "codeLensFromSym"    # [I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->min([I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/neovisionaries/ws/client/Huffman;->mMinCodeLen:I

    .line 35
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->max([I)I

    move-result v0

    iput v0, p0, Lcom/neovisionaries/ws/client/Huffman;->mMaxCodeLen:I

    .line 38
    iget v0, p0, Lcom/neovisionaries/ws/client/Huffman;->mMaxCodeLen:I

    invoke-static {p1, v0}, Lcom/neovisionaries/ws/client/Huffman;->createCountsFromCodeLen([II)[I

    move-result-object v0

    .line 41
    .local v0, "countsFromCodeLen":[I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .local v2, "out":[Ljava/lang/Object;
    iget v3, p0, Lcom/neovisionaries/ws/client/Huffman;->mMaxCodeLen:I

    invoke-static {v0, v3, v2}, Lcom/neovisionaries/ws/client/Huffman;->createMaxCodeValsFromCodeLen([II[Ljava/lang/Object;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/neovisionaries/ws/client/Huffman;->mMaxCodeValsFromCodeLen:[I

    .line 45
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, [I

    check-cast v3, [I

    .line 46
    .local v3, "codeValsFromCodeLen":[I
    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    .local v1, "maxCodeVal":I
    invoke-static {p1, v3, v1}, Lcom/neovisionaries/ws/client/Huffman;->createSymsFromCodeVal([I[II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/neovisionaries/ws/client/Huffman;->mSymsFromCodeVal:[I

    .line 48
    return-void
.end method

.method private static createCountsFromCodeLen([II)[I
    .locals 4
    .param p0, "codeLensFromSym"    # [I
    .param p1, "maxCodeLen"    # I

    .line 69
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    .line 73
    .local v0, "countsFromCodeLen":[I
    const/4 v1, 0x0

    .local v1, "symbol":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 75
    aget v2, p0, v1

    .line 76
    .local v2, "codeLength":I
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 73
    .end local v2    # "codeLength":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "symbol":I
    :cond_0
    return-object v0
.end method

.method private static createIntArray(II)[I
    .locals 2
    .param p0, "size"    # I
    .param p1, "initialValue"    # I

    .line 56
    new-array v0, p0, [I

    .line 58
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 60
    aput p1, v0, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static createMaxCodeValsFromCodeLen([II[Ljava/lang/Object;)[I
    .locals 9
    .param p0, "countsFromCodeLen"    # [I
    .param p1, "maxCodeLen"    # I
    .param p2, "out"    # [Ljava/lang/Object;

    .line 88
    add-int/lit8 v0, p1, 0x1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/neovisionaries/ws/client/Huffman;->createIntArray(II)[I

    move-result-object v0

    .line 92
    .local v0, "maxCodeValsFromCodeLen":[I
    const/4 v1, 0x0

    .line 93
    .local v1, "minCodeVal":I
    const/4 v2, 0x0

    .line 94
    .local v2, "maxCodeVal":I
    const/4 v3, 0x0

    aput v3, p0, v3

    .line 95
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 96
    .local v4, "codeValsFromCodeLen":[I
    const/4 v5, 0x1

    .local v5, "codeLen":I
    :goto_0
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    .line 99
    add-int/lit8 v6, v5, -0x1

    aget v6, p0, v6

    .line 100
    .local v6, "prevCount":I
    add-int v8, v1, v6

    shl-int/lit8 v1, v8, 0x1

    .line 101
    aput v1, v4, v5

    .line 104
    aget v8, p0, v5

    add-int/2addr v8, v1

    add-int/lit8 v2, v8, -0x1

    .line 105
    aput v2, v0, v5

    .line 96
    .end local v6    # "prevCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    .end local v5    # "codeLen":I
    :cond_0
    aput-object v4, p2, v3

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v7

    .line 111
    return-object v0
.end method

.method private static createSymsFromCodeVal([I[II)[I
    .locals 5
    .param p0, "codeLensFromSym"    # [I
    .param p1, "codeValsFromCodeLen"    # [I
    .param p2, "maxCodeVal"    # I

    .line 117
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [I

    .line 122
    .local v0, "symsFromCodeVal":[I
    const/4 v1, 0x0

    .local v1, "sym":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 124
    aget v2, p0, v1

    .line 126
    .local v2, "codeLen":I
    if-nez v2, :cond_0

    .line 128
    goto :goto_1

    .line 131
    :cond_0
    aget v3, p1, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, p1, v2

    .line 132
    .local v3, "codeVal":I
    aput v1, v0, v3

    .line 122
    .end local v2    # "codeLen":I
    .end local v3    # "codeVal":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "sym":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public readSym(Lcom/neovisionaries/ws/client/ByteArray;[I)I
    .locals 6
    .param p1, "data"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p2, "bitIndex"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/neovisionaries/ws/client/Huffman;->mMinCodeLen:I

    .local v0, "codeLen":I
    :goto_0
    iget v1, p0, Lcom/neovisionaries/ws/client/Huffman;->mMaxCodeLen:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/neovisionaries/ws/client/Huffman;->mMaxCodeValsFromCodeLen:[I

    aget v1, v1, v0

    .line 147
    .local v1, "maxCodeVal":I
    if-gez v1, :cond_0

    .line 150
    goto :goto_1

    .line 154
    :cond_0
    aget v3, p2, v2

    invoke-virtual {p1, v3, v0}, Lcom/neovisionaries/ws/client/ByteArray;->getHuffmanBits(II)I

    move-result v3

    .line 156
    .local v3, "codeVal":I
    if-ge v1, v3, :cond_1

    .line 172
    nop

    .line 141
    .end local v1    # "maxCodeVal":I
    .end local v3    # "codeVal":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .restart local v1    # "maxCodeVal":I
    .restart local v3    # "codeVal":I
    :cond_1
    iget-object v4, p0, Lcom/neovisionaries/ws/client/Huffman;->mSymsFromCodeVal:[I

    aget v4, v4, v3

    .line 179
    .local v4, "sym":I
    aget v5, p2, v2

    add-int/2addr v5, v0

    aput v5, p2, v2

    .line 181
    return v4

    .line 185
    .end local v0    # "codeLen":I
    .end local v1    # "maxCodeVal":I
    .end local v3    # "codeVal":I
    .end local v4    # "sym":I
    :cond_2
    nop

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aget v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 185
    const-string v1, "[%s] Bad code at the bit index \'%d\'."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/neovisionaries/ws/client/FormatException;

    invoke-direct {v1, v0}, Lcom/neovisionaries/ws/client/FormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
