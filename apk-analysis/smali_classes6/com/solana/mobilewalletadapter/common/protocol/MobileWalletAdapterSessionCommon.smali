.class public abstract Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
.super Ljava/lang/Object;
.source "MobileWalletAdapterSessionCommon.java"

# interfaces
.implements Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;
.implements Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;,
        Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;,
        Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AES_IV_LENGTH_BYTES:I = 0xc

.field private static final AES_TAG_LENGTH_BYTES:I = 0x10

.field private static final SEQ_NUM_LENGTH_BYTES:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachedEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mDecryptedPayloadReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

.field private mECDHKeypair:Ljava/security/KeyPair;

.field protected mMessageSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

.field private mSeqNumberRx:I

.field private mSeqNumberTx:I

.field private mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

.field private final mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    nop

    .line 41
    const-class v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;)V
    .locals 1
    .param p1, "decryptedPayloadReceiver"    # Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;
    .param p2, "stateCallbacks"    # Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->WAITING_FOR_CONNECTION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    .line 61
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mDecryptedPayloadReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    .line 62
    iput-object p2, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    .line 63
    return-void
.end method

.method private static createEncryptionKey([BLjava/security/interfaces/ECPublicKey;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "ecdhSecret"    # [B
    .param p1, "associationPublicKey"    # Ljava/security/interfaces/ECPublicKey;

    .line 235
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSAKeys;->encodeP256PublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v0

    .line 236
    .local v0, "salt":[B
    invoke-static {p0, v0}, Lcom/solana/mobilewalletadapter/common/crypto/HKDF;->hkdfSHA256L16([B[B)[B

    move-result-object v1

    .line 237
    .local v1, "aes128KeyMaterial":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private doClose()V
    .locals 1

    .line 111
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->CLOSED:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mMessageSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    .line 113
    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mECDHKeypair:Ljava/security/KeyPair;

    .line 114
    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mCachedEncryptionKey:Ljavax/crypto/SecretKey;

    .line 115
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mDecryptedPayloadReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverDisconnected()V

    .line 116
    return-void
.end method

.method protected static generateECP256KeyPair()Ljava/security/KeyPair;
    .locals 4

    .line 243
    const-string v0, "EC"

    :try_start_0
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 244
    .local v1, "algParams":Ljava/security/AlgorithmParameters;
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "secp256r1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 245
    const-class v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/ECParameterSpec;

    .line 247
    .local v2, "ecParameterSpec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 248
    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 249
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 250
    .end local v0    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v1    # "algParams":Ljava/security/AlgorithmParameters;
    .end local v2    # "ecParameterSpec":Ljava/security/spec/ECParameterSpec;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 252
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed generating an EC P-256 keypair for ECDH"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleEncryptedSessionPayload([B)V
    .locals 2
    .param p1, "encryptedPayload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "handleEncryptedSessionMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->decryptSessionPayload([B)[B

    move-result-object v0

    .line 154
    .local v0, "payload":[B
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mDecryptedPayloadReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    invoke-interface {v1, v0}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverMessageReceived([B)V

    .line 155
    return-void
.end method


# virtual methods
.method protected decryptSessionPayload([B)[B
    .locals 8
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mCachedEncryptionKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 212
    .local v2, "seqNum":I
    iget v3, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mSeqNumberRx:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_0

    .line 215
    iput v2, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mSeqNumberRx:I

    .line 218
    :try_start_0
    const-string v3, "AES/GCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 219
    .local v3, "aesCipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    const/16 v6, 0xc

    invoke-direct {v4, v5, p1, v1, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 221
    .local v4, "gcmParameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    iget-object v5, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mCachedEncryptionKey:Ljavax/crypto/SecretKey;

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 222
    invoke-virtual {v3, p1, v0, v1}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 223
    array-length v0, p1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    const/16 v1, 0x10

    invoke-virtual {v3, p1, v1, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 225
    .end local v3    # "aesCipher":Ljavax/crypto/Cipher;
    .end local v4    # "gcmParameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    .line 228
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;

    const-string v3, "Failed decrypting payload"

    invoke-direct {v1, v3, v0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 213
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;

    const-string v1, "Encrypted messages has invalid sequence number"

    invoke-direct {v0, v1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    .end local v2    # "seqNum":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decrypt, no session key has been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doSessionEstablished()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;->onSessionEstablished()V

    .line 299
    :cond_0
    return-void
.end method

.method protected encryptSessionPayload([B)[B
    .locals 14
    .param p1, "payload"    # [B

    .line 177
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mCachedEncryptionKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 182
    .local v1, "seqNum":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mSeqNumberTx:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mSeqNumberTx:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 185
    :try_start_0
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 186
    .local v2, "aesCipher":Ljavax/crypto/Cipher;
    const/16 v3, 0xc

    new-array v5, v3, [B

    move-object v11, v5

    .line 187
    .local v11, "iv":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 188
    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v6, 0x80

    invoke-direct {v5, v6, v11}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v12, v5

    .line 190
    .local v12, "gcmParameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    iget-object v5, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mCachedEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v4, v5, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 192
    array-length v5, p1

    .line 193
    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    .line 192
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v13, v5

    .line 194
    .local v13, "encryptedMessage":[B
    invoke-static {v11, v4, v13, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    array-length v8, p1

    const/16 v10, 0x10

    const/4 v7, 0x0

    move-object v5, v2

    move-object v6, p1

    move-object v9, v13

    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-object v13

    .line 198
    .end local v2    # "aesCipher":Ljavax/crypto/Cipher;
    .end local v11    # "iv":[B
    .end local v12    # "gcmParameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    .end local v13    # "encryptedMessage":[B
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    .line 201
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Error encrypting session payload"

    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 178
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v1    # "seqNum":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decrypt, no session key has been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateSessionECDHKeyPair()Ljava/security/interfaces/ECPublicKey;
    .locals 2

    .line 258
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "generateSessionECDHKeyPair"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-ne v0, v1, :cond_0

    .line 264
    invoke-static {}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->generateECP256KeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mECDHKeypair:Ljava/security/KeyPair;

    .line 265
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mECDHKeypair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    return-object v0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect state for generating session ECDH keypair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateSessionECDHSecret(Ljava/security/interfaces/ECPublicKey;)V
    .locals 3
    .param p1, "otherPublicKey"    # Ljava/security/interfaces/ECPublicKey;

    .line 269
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "generateSessionECDHSecret"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-ne v0, v1, :cond_0

    .line 276
    :try_start_0
    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 277
    .local v0, "keyAgreement":Ljavax/crypto/KeyAgreement;
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mECDHKeypair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 279
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v1

    .line 280
    .local v1, "ecdhSecret":[B
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->getAssociationPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->createEncryptionKey([BLjava/security/interfaces/ECPublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mCachedEncryptionKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0    # "keyAgreement":Ljavax/crypto/KeyAgreement;
    .end local v1    # "ecdhSecret":[B
    nop

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mSeqNumberTx:I

    .line 286
    iput v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mSeqNumberRx:I

    .line 288
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ENCRYPTED_SESSION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    .line 290
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "Encrypted session established"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mDecryptedPayloadReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    invoke-interface {v0, p0}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverConnected(Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;)V

    .line 293
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 282
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed generating an ECDH secret"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 272
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect state for generating session ECDH secret"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getAssociationPublicKey()Ljava/security/interfaces/ECPublicKey;
.end method

.method protected abstract getSessionProperties()Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
.end method

.method protected abstract handleSessionEstablishmentMessage([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
        }
    .end annotation
.end method

.method protected onReceiverConnected()V
    .locals 0

    .line 80
    return-void
.end method

.method protected onSessionError()V
    .locals 2

    .line 99
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "onSessionError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ENCRYPTED_SESSION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->doClose()V

    .line 103
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "mobile-wallet-adapter session closed due to error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;->onSessionError()V

    .line 108
    :cond_2
    return-void
.end method

.method public declared-synchronized receiverConnected(Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;)V
    .locals 2
    .param p1, "messageSender"    # Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    monitor-enter p0

    .line 73
    :try_start_0
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "receiverConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->WAITING_FOR_CONNECTION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-ne v0, v1, :cond_0

    .line 75
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    .line 76
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mMessageSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    .line 77
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->onReceiverConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    .end local p1    # "messageSender":Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized receiverDisconnected()V
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "receiverDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->WAITING_FOR_CONNECTION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-eq v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->CLOSED:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-eq v0, v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->doClose()V

    .line 90
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "mobile-wallet-adapter session closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;->onSessionClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local p0    # "this":Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized receiverMessageReceived([B)V
    .locals 3
    .param p1, "payload"    # [B

    monitor-enter p0

    .line 120
    :try_start_0
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiverMessageReceived: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_1
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$1;->$SwitchMap$com$solana$mobilewalletadapter$common$protocol$MobileWalletAdapterSessionCommon$State:[I

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-virtual {v1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .end local p0    # "this":Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
    goto :goto_0

    .line 138
    .restart local p0    # "this":Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
    :pswitch_0
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "message received after closed, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local p0    # "this":Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->handleEncryptedSessionPayload([B)V

    .line 136
    goto :goto_0

    .line 132
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->handleSessionEstablishmentMessage([B)V

    .line 133
    goto :goto_0

    .line 130
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a message before connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "payload":[B
    throw v0
    :try_end_1
    .catch Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .restart local p1    # "payload":[B
    :goto_0
    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
    :try_start_2
    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v2, "Invalid message received; terminating session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->onSessionError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .end local v0    # "e":Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
    :goto_1
    monitor-exit p0

    return-void

    .line 119
    .end local p1    # "payload":[B
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public send([B)V
    .locals 3
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->TAG:Ljava/lang/String;

    const-string v1, "send"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ENCRYPTED_SESSION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->encryptSessionPayload([B)[B

    move-result-object v0

    .line 169
    .local v0, "encryptedPayload":[B
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mMessageSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    invoke-interface {v1, v0}, Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;->send([B)V

    .line 173
    return-void

    .line 165
    .end local v0    # "encryptedPayload":[B
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot send in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;->mState:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "message":[B
    throw v0

    .line 169
    .restart local p1    # "message":[B
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
