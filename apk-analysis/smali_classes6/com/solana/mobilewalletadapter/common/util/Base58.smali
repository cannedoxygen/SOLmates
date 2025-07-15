.class public Lcom/solana/mobilewalletadapter/common/util/Base58;
.super Ljava/lang/Object;
.source "Base58.java"


# static fields
.field private static final BASE58_ALPHABET:[B

.field private static final BASE58_ALPHABET_ASCII_LOOKUP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/solana/mobilewalletadapter/common/util/Base58;->BASE58_ALPHABET_ASCII_LOOKUP:[B

    .line 105
    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/solana/mobilewalletadapter/common/util/Base58;->BASE58_ALPHABET:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        -0x1t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        -0x1t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        -0x1t
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 10
    .param p0, "base58"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 16
    .local v0, "maxDecodedSize":I
    new-array v1, v0, [B

    .line 19
    .local v1, "decoded":[B
    new-array v2, v0, [B

    .line 20
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 21
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 22
    .local v4, "c":C
    sget-object v5, Lcom/solana/mobilewalletadapter/common/util/Base58;->BASE58_ALPHABET_ASCII_LOOKUP:[B

    array-length v5, v5

    const/4 v6, -0x1

    if-gt v4, v5, :cond_0

    .line 23
    sget-object v5, Lcom/solana/mobilewalletadapter/common/util/Base58;->BASE58_ALPHABET_ASCII_LOOKUP:[B

    aget-byte v5, v5, v4

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    aput-byte v5, v2, v3

    .line 24
    aget-byte v5, v2, v3

    if-eq v5, v6, :cond_1

    .line 20
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    .restart local v4    # "c":C
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' at ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is not a valid base58 character"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_2
    const/4 v3, 0x0

    .line 31
    .local v3, "start":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-byte v4, v2, v3

    if-nez v4, :cond_3

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 34
    :cond_3
    move v4, v3

    .line 36
    .local v4, "zeroes":I
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    .line 37
    .local v5, "pos":I
    :goto_3
    array-length v6, v2

    if-ge v3, v6, :cond_6

    .line 38
    aget-byte v6, v2, v3

    if-nez v6, :cond_4

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 41
    :cond_4
    const/4 v6, 0x0

    .line 42
    .local v6, "mod":I
    move v7, v3

    .local v7, "i":I
    :goto_4
    array-length v8, v2

    if-ge v7, v8, :cond_5

    .line 43
    mul-int/lit8 v8, v6, 0x3a

    aget-byte v9, v2, v7

    add-int/2addr v8, v9

    .line 44
    .end local v6    # "mod":I
    .local v8, "mod":I
    div-int/lit16 v6, v8, 0x100

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    .line 45
    rem-int/lit16 v6, v8, 0x100

    .line 42
    .end local v8    # "mod":I
    .restart local v6    # "mod":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 47
    .end local v7    # "i":I
    :cond_5
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "pos":I
    .local v7, "pos":I
    int-to-byte v8, v6

    aput-byte v8, v1, v5

    .line 48
    .end local v6    # "mod":I
    move v5, v7

    goto :goto_3

    .line 51
    .end local v7    # "pos":I
    .restart local v5    # "pos":I
    :cond_6
    array-length v6, v2

    add-int/2addr v6, v4

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [B

    .line 52
    .local v6, "result":[B
    add-int/lit8 v7, v5, 0x1

    array-length v8, v2

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    return-object v6
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .line 60
    array-length v0, p0

    mul-int/lit16 v0, v0, 0x160

    add-int/lit16 v0, v0, 0xff

    div-int/lit16 v0, v0, 0x100

    .line 61
    .local v0, "maxEncodedSize":I
    new-array v1, v0, [B

    .line 63
    .local v1, "encoded":[B
    const/4 v2, 0x0

    .line 64
    .local v2, "start":I
    :goto_0
    array-length v3, p0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    if-nez v3, :cond_0

    .line 65
    sget-object v3, Lcom/solana/mobilewalletadapter/common/util/Base58;->BASE58_ALPHABET:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 71
    .local v3, "pos":I
    move v5, v2

    .local v5, "i":I
    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_3

    .line 72
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    .line 73
    .local v6, "carry":I
    add-int/lit8 v7, v0, -0x1

    .line 74
    .local v7, "j":I
    :goto_2
    if-nez v6, :cond_2

    if-le v7, v3, :cond_1

    goto :goto_3

    .line 80
    :cond_1
    move v3, v7

    .line 71
    .end local v6    # "carry":I
    .end local v7    # "j":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 75
    .restart local v6    # "carry":I
    .restart local v7    # "j":I
    :cond_2
    :goto_3
    aget-byte v8, v1, v7

    mul-int/lit16 v8, v8, 0x100

    add-int/2addr v6, v8

    .line 76
    rem-int/lit8 v8, v6, 0x3a

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 77
    div-int/lit8 v6, v6, 0x3a

    .line 78
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 84
    .end local v5    # "i":I
    .end local v6    # "carry":I
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v0, :cond_4

    .line 85
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "start":I
    .local v6, "start":I
    sget-object v7, Lcom/solana/mobilewalletadapter/common/util/Base58;->BASE58_ALPHABET:[B

    aget-byte v8, v1, v5

    aget-byte v7, v7, v8

    aput-byte v7, v1, v2

    .line 84
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_4

    .line 88
    .end local v5    # "i":I
    .end local v6    # "start":I
    .restart local v2    # "start":I
    :cond_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v4, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v5
.end method
