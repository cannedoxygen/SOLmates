.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;
.super Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
.source "MobileWalletAdapterSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAssociationKey:Ljava/security/KeyPair;

.field private mSessionProperties:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

.field private final mSupportedProtocolVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;)V
    .locals 2
    .param p1, "decryptedPayloadReceiver"    # Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;
    .param p2, "stateCallbacks"    # Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    .line 44
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->LEGACY:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->V1:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    .line 45
    invoke-static {v0, v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;-><init>(Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;Ljava/util/Set;)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;Ljava/util/Set;)V
    .locals 1
    .param p1, "decryptedPayloadReceiver"    # Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;
    .param p2, "stateCallbacks"    # Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;",
            "Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;",
            "Ljava/util/Set<",
            "Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p3, "supportedProtocolVersions":Ljava/util/Set;, "Ljava/util/Set<Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;>;"
    invoke-direct {p0, p1, p2}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;-><init>(Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;)V

    .line 52
    invoke-static {}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->generateECP256KeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mAssociationKey:Ljava/security/KeyPair;

    .line 53
    iput-object p3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSupportedProtocolVersions:Ljava/util/Set;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSessionProperties:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    .line 55
    return-void
.end method

.method private static createHelloReq(Ljava/security/KeyPair;Ljava/security/interfaces/ECPublicKey;)[B
    .locals 7
    .param p0, "associationKeyPair"    # Ljava/security/KeyPair;
    .param p1, "ourPublicKey"    # Ljava/security/interfaces/ECPublicKey;

    .line 93
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSAKeys;->encodeP256PublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v0

    .line 97
    .local v0, "ourPublicKeyEncoded":[B
    :try_start_0
    const-string v1, "SHA256withECDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 98
    .local v1, "ecdsaSignature":Ljava/security/Signature;
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 99
    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 100
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 103
    .local v1, "sig":[B
    nop

    .line 107
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSASignatures;->convertECP256SignatureDERtoP1363([BI)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .local v3, "p1363Sig":[B
    nop

    .line 112
    array-length v4, v0

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 114
    .local v4, "concatenated":[B
    array-length v5, v0

    array-length v6, v3

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-object v4

    .line 108
    .end local v3    # "p1363Sig":[B
    .end local v4    # "concatenated":[B
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Error converting DER ECDSA signature to P1363"

    invoke-direct {v3, v4, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 101
    .end local v1    # "sig":[B
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 102
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Failed signing HELLO_REQ public key payload"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseHelloRsp([B)Ljava/security/interfaces/ECPublicKey;
    .locals 4
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
        }
    .end annotation

    .line 146
    :try_start_0
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSAKeys;->decodeP256PublicKey([B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v0, "otherPublicKey":Ljava/security/interfaces/ECPublicKey;
    nop

    .line 151
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received public key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v0

    .line 147
    .end local v0    # "otherPublicKey":Ljava/security/interfaces/ECPublicKey;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;

    const-string v2, "Failed creating EC public key from HELLO_RSP"

    invoke-direct {v1, v2, v0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseSessionProps([B)Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
    .locals 4
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
        }
    .end annotation

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->decryptSessionPayload([B)[B

    move-result-object v0

    .line 161
    .local v0, "sessionProps":[B
    invoke-static {v0}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;->deserialize([B)Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 164
    .local v0, "properties":Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
    nop

    .line 166
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received session properties: version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;->protocolVersion:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v0

    .line 162
    .end local v0    # "properties":Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;

    const-string v2, "Failed to parse SESSION_PROPS"

    invoke-direct {v1, v2, v0}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected getAssociationPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mAssociationKey:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method public getEncodedAssociationPublicKey()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mAssociationKey:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-static {v0}, Lcom/solana/mobilewalletadapter/common/crypto/ECDSAKeys;->encodeP256PublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSessionProperties()Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSessionProperties:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSessionProperties:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "session properties unknown, no session has been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedProtocolVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSupportedProtocolVersions:Ljava/util/Set;

    return-object v0
.end method

.method protected handleSessionEstablishmentMessage([B)V
    .locals 5
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$SessionMessageException;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->TAG:Ljava/lang/String;

    const-string v1, "handleSessionEstablishmentMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->parseHelloRsp([B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 124
    .local v0, "theirPublicKey":Ljava/security/interfaces/ECPublicKey;
    invoke-virtual {p0, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->generateSessionECDHSecret(Ljava/security/interfaces/ECPublicKey;)V

    .line 126
    new-instance v1, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    sget-object v2, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->LEGACY:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    invoke-direct {v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;-><init>(Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;)V

    .line 128
    .local v1, "sessionProperties":Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
    :try_start_0
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSupportedProtocolVersions:Ljava/util/Set;

    sget-object v3, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->V1:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    array-length v2, p1

    .line 130
    const/16 v3, 0x41

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 131
    .local v2, "encryptedSessionProperties":[B
    invoke-direct {p0, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->parseSessionProps([B)Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 136
    .end local v2    # "encryptedSessionProperties":[B
    :cond_0
    nop

    :goto_0
    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSessionProperties:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    .line 137
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "ignored":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    sget-object v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->TAG:Ljava/lang/String;

    const-string v4, "could not parse session properties, falling back on legacy session"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    nop

    .end local v2    # "ignored":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->doSessionEstablished()V

    .line 140
    return-void

    .line 136
    :goto_2
    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mSessionProperties:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    .line 137
    throw v2
.end method

.method protected onReceiverConnected()V
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->generateSessionECDHKeyPair()Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 83
    .local v0, "publicKey":Ljava/security/interfaces/ECPublicKey;
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mMessageSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->mAssociationKey:Ljava/security/KeyPair;

    invoke-static {v2, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->createHelloReq(Ljava/security/KeyPair;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;->send([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->TAG:Ljava/lang/String;

    const-string v3, "Failed to send HELLO_REQ; terminating session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->onSessionError()V

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
