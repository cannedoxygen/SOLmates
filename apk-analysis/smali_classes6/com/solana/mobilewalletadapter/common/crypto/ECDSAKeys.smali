.class public Lcom/solana/mobilewalletadapter/common/crypto/ECDSAKeys;
.super Ljava/lang/Object;
.source "ECDSAKeys.java"


# static fields
.field public static final ENCODED_PUBLIC_KEY_LENGTH_BYTES:I = 0x41


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeP256PublicKey([B)Ljava/security/interfaces/ECPublicKey;
    .locals 7
    .param p0, "encodedPublicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 44
    const-string v0, "EC"

    array-length v1, p0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 49
    const/4 v1, 0x1

    const/16 v3, 0x21

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 50
    .local v4, "x":[B
    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 51
    .local v2, "y":[B
    new-instance v3, Ljava/security/spec/ECPoint;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v3

    .line 53
    .local v1, "w":Ljava/security/spec/ECPoint;
    :try_start_0
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 54
    .local v3, "algParams":Ljava/security/AlgorithmParameters;
    new-instance v5, Ljava/security/spec/ECGenParameterSpec;

    const-string v6, "secp256r1"

    invoke-direct {v5, v6}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 55
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    const-class v6, Ljava/security/spec/ECParameterSpec;

    .line 56
    invoke-virtual {v3, v6}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v6

    check-cast v6, Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v1, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 57
    .local v5, "ecPublicKeySpec":Ljava/security/spec/ECPublicKeySpec;
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    .end local v3    # "algParams":Ljava/security/AlgorithmParameters;
    .end local v5    # "ecPublicKeySpec":Ljava/security/spec/ECPublicKeySpec;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Error decoding EC P-256 public key"

    invoke-direct {v3, v5, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 46
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v1    # "w":Ljava/security/spec/ECPoint;
    .end local v2    # "y":[B
    .end local v4    # "x":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input is not an EC P-256 public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeP256PublicKey(Ljava/security/interfaces/ECPublicKey;)[B
    .locals 8
    .param p0, "ecPublicKey"    # Ljava/security/interfaces/ECPublicKey;

    .line 27
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 30
    .local v0, "w":Ljava/security/spec/ECPoint;
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 31
    .local v1, "x":[B
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 32
    .local v2, "y":[B
    const/16 v3, 0x41

    new-array v3, v3, [B

    .line 33
    .local v3, "encodedPublicKey":[B
    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-byte v5, v3, v4

    .line 34
    array-length v4, v1

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 35
    .local v4, "xLen":I
    array-length v6, v2

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 36
    .local v5, "yLen":I
    array-length v6, v1

    sub-int/2addr v6, v4

    rsub-int/lit8 v7, v4, 0x21

    invoke-static {v1, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    array-length v6, v2

    sub-int/2addr v6, v5

    rsub-int/lit8 v7, v5, 0x41

    invoke-static {v2, v6, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-object v3
.end method
