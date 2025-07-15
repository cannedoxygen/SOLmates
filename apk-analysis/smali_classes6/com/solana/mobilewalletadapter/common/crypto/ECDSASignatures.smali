.class public Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;
.super Ljava/lang/Object;
.source "ECDSASignatures.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final P256_DER_SIGNATURE_COMPONENT_MAX_LEN:I = 0x21

.field public static final P256_DER_SIGNATURE_COMPONENT_MIN_LEN:I = 0x1

.field public static final P256_DER_SIGNATURE_COMPONENT_PREFIX_LEN:I = 0x2

.field public static final P256_DER_SIGNATURE_COMPONENT_PREFIX_TYPE:B = 0x2t

.field public static final P256_DER_SIGNATURE_MAX_LEN:I = 0x48

.field public static final P256_DER_SIGNATURE_MIN_LEN:I = 0x8

.field public static final P256_DER_SIGNATURE_PREFIX_LEN:I = 0x2

.field public static final P256_DER_SIGNATURE_PREFIX_TYPE:B = 0x30t

.field public static final P256_P1363_COMPONENT_LEN:I = 0x20

.field public static final P256_P1363_SIGNATURE_LEN:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDERIntLengthOfP1363Component([BI)I
    .locals 4
    .param p0, "p1363Signature"    # [B
    .param p1, "p1363Offset"    # I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    .line 115
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    .line 116
    .local v2, "val":B
    if-gez v2, :cond_0

    .line 117
    rsub-int/lit8 v3, v0, 0x20

    add-int/2addr v3, v1

    return v3

    .line 118
    :cond_0
    if-lez v2, :cond_1

    .line 119
    rsub-int/lit8 v1, v0, 0x20

    return v1

    .line 114
    .end local v2    # "val":B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static convertECP256SignatureDERtoP1363([BI)[B
    .locals 7
    .param p0, "derSignature"    # [B
    .param p1, "offset"    # I

    .line 34
    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 38
    aget-byte v0, p0, p1

    .line 39
    .local v0, "derType":B
    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 43
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    .line 45
    .local v1, "derSeqLen":I
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 46
    .local v2, "p1363Signature":[B
    add-int/lit8 v3, p1, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;->unpackDERIntegerToP1363Component([BI[BI)I

    move-result v3

    .line 48
    .local v3, "sOff":I
    const/16 v4, 0x20

    invoke-static {p0, v3, v2, v4}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;->unpackDERIntegerToP1363Component([BI[BI)I

    move-result v4

    .line 51
    .local v4, "totalOff":I
    add-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v1

    if-ne v5, v4, :cond_0

    .line 55
    return-object v2

    .line 52
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid DER signature length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    .end local v1    # "derSeqLen":I
    .end local v2    # "p1363Signature":[B
    .end local v3    # "sOff":I
    .end local v4    # "totalOff":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DER signature has invalid type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    .end local v0    # "derType":B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER signature buffer too short to define sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertECP256SignatureP1363ToDER([BI)[B
    .locals 6
    .param p0, "p1363Signature"    # [B
    .param p1, "p1363Offset"    # I

    .line 91
    add-int/lit8 v0, p1, 0x40

    array-length v1, p0

    if-gt v0, v1, :cond_1

    .line 95
    invoke-static {p0, p1}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;->calculateDERIntLengthOfP1363Component([BI)I

    move-result v0

    .line 96
    .local v0, "rDerIntLen":I
    add-int/lit8 v1, p1, 0x20

    invoke-static {p0, v1}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;->calculateDERIntLengthOfP1363Component([BI)I

    move-result v1

    .line 98
    .local v1, "sDerIntLen":I
    add-int/lit8 v2, v0, 0x6

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 100
    .local v2, "derSignature":[B
    const/4 v3, 0x0

    const/16 v4, 0x30

    aput-byte v4, v2, v3

    .line 101
    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 102
    const/4 v3, 0x2

    invoke-static {p0, p1, v0, v2, v3}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;->packP1363ComponentToDERInteger([BII[BI)I

    move-result v3

    .line 104
    .local v3, "sOff":I
    add-int/lit8 v4, p1, 0x20

    invoke-static {p0, v4, v1, v2, v3}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;->packP1363ComponentToDERInteger([BII[BI)I

    move-result v4

    .line 106
    .local v4, "totalLen":I
    array-length v5, v2

    if-ne v4, v5, :cond_0

    .line 108
    return-object v2

    .line 106
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 92
    .end local v0    # "rDerIntLen":I
    .end local v1    # "sDerIntLen":I
    .end local v2    # "derSignature":[B
    .end local v3    # "sOff":I
    .end local v4    # "totalLen":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid P1363 signature length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static packP1363ComponentToDERInteger([BII[BI)I
    .locals 5
    .param p0, "p1363Signature"    # [B
    .param p1, "p1363Offset"    # I
    .param p2, "p1363ComponentDERIntLength"    # I
    .param p3, "derSignature"    # [B
    .param p4, "derOffset"    # I

    .line 130
    const/4 v0, 0x2

    aput-byte v0, p3, p4

    .line 131
    add-int/lit8 v0, p4, 0x1

    int-to-byte v1, p2

    aput-byte v1, p3, v0

    .line 133
    add-int/lit8 v0, p2, -0x20

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 134
    .local v0, "leadingBytes":I
    const/16 v2, 0x20

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 135
    .local v2, "copyLen":I
    add-int/lit8 v3, p4, 0x2

    add-int/lit8 v4, p4, 0x2

    add-int/2addr v4, v0

    invoke-static {p3, v3, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 137
    add-int/lit8 v1, p1, 0x20

    sub-int/2addr v1, v2

    add-int/lit8 v3, p4, 0x2

    add-int/2addr v3, v0

    invoke-static {p0, v1, p3, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    add-int/lit8 v1, p4, 0x2

    add-int/2addr v1, p2

    return v1
.end method

.method private static unpackDERIntegerToP1363Component([BI[BI)I
    .locals 6
    .param p0, "derSignature"    # [B
    .param p1, "derOffset"    # I
    .param p2, "p1363Signature"    # [B
    .param p3, "p1363Offset"    # I

    .line 62
    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 66
    aget-byte v0, p0, p1

    .line 67
    .local v0, "componentDerType":B
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    .line 69
    .local v1, "componentLen":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/16 v2, 0x21

    if-gt v1, v2, :cond_1

    .line 73
    add-int/lit8 v2, p1, 0x2

    add-int/2addr v2, v1

    array-length v3, p0

    if-gt v2, v3, :cond_0

    .line 78
    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 79
    .local v2, "copyLen":I
    add-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    .line 81
    .local v3, "srcOffset":I
    add-int/lit8 v4, p3, 0x20

    sub-int/2addr v4, v2

    .line 82
    .local v4, "dstOffset":I
    const/4 v5, 0x0

    invoke-static {p2, p3, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 83
    invoke-static {p0, v3, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    add-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v1

    return v5

    .line 75
    .end local v2    # "copyLen":I
    .end local v3    # "srcOffset":I
    .end local v4    # "dstOffset":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DER signature component exceeds buffer length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DER signature component not well formed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    .end local v0    # "componentDerType":B
    .end local v1    # "componentLen":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER signature buffer too short to define component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
