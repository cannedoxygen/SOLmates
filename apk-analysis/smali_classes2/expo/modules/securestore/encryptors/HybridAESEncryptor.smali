.class public final Lexpo/modules/securestore/encryptors/HybridAESEncryptor;
.super Ljava/lang/Object;
.source "HybridAESEncryptor.kt"

# interfaces
.implements Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/securestore/encryptors/HybridAESEncryptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/securestore/encryptors/KeyBasedEncryptor<",
        "Ljava/security/KeyStore$PrivateKeyEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J6\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u0018J6\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010 \u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/securestore/encryptors/HybridAESEncryptor;",
        "Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;",
        "Ljava/security/KeyStore$PrivateKeyEntry;",
        "mContext",
        "Landroid/content/Context;",
        "mAESEncryptor",
        "Lexpo/modules/securestore/encryptors/AESEncryptor;",
        "(Landroid/content/Context;Lexpo/modules/securestore/encryptors/AESEncryptor;)V",
        "mSecureRandom",
        "Ljava/security/SecureRandom;",
        "rSACipher",
        "Ljavax/crypto/Cipher;",
        "getRSACipher",
        "()Ljavax/crypto/Cipher;",
        "createEncryptedItem",
        "Lorg/json/JSONObject;",
        "plaintextValue",
        "",
        "keyStoreEntry",
        "requireAuthentication",
        "",
        "authenticationPrompt",
        "authenticationHelper",
        "Lexpo/modules/securestore/AuthenticationHelper;",
        "(Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "decryptItem",
        "key",
        "encryptedItem",
        "options",
        "Lexpo/modules/securestore/SecureStoreOptions;",
        "(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$PrivateKeyEntry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getExtendedKeyStoreAlias",
        "getKeyStoreAlias",
        "initializeKeyStoreEntry",
        "keyStore",
        "Ljava/security/KeyStore;",
        "Companion",
        "expo-secure-store_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/securestore/encryptors/HybridAESEncryptor$Companion;

.field private static final ENCRYPTED_SECRET_KEY_PROPERTY:Ljava/lang/String; = "esk"

.field public static final NAME:Ljava/lang/String; = "hybrid"

.field private static final RSA_CIPHER:Ljava/lang/String; = "RSA/None/PKCS1Padding"


# instance fields
.field private final mAESEncryptor:Lexpo/modules/securestore/encryptors/AESEncryptor;

.field private mContext:Landroid/content/Context;

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/securestore/encryptors/HybridAESEncryptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/securestore/encryptors/HybridAESEncryptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->Companion:Lexpo/modules/securestore/encryptors/HybridAESEncryptor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/securestore/encryptors/AESEncryptor;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAESEncryptor"    # Lexpo/modules/securestore/encryptors/AESEncryptor;

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAESEncryptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->mAESEncryptor:Lexpo/modules/securestore/encryptors/AESEncryptor;

    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->mSecureRandom:Ljava/security/SecureRandom;

    .line 41
    return-void
.end method

.method private final getRSACipher()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 109
    const-string v0, "RSA/None/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$Entry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "plaintextValue"    # Ljava/lang/String;
    .param p2, "keyStoreEntry"    # Ljava/security/KeyStore$Entry;
    .param p3, "requireAuthentication"    # Z
    .param p4, "authenticationPrompt"    # Ljava/lang/String;
    .param p5, "authenticationHelper"    # Lexpo/modules/securestore/AuthenticationHelper;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 41
    move-object v2, p2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "plaintextValue"    # Ljava/lang/String;
    .param p2, "keyStoreEntry"    # Ljava/security/KeyStore$PrivateKeyEntry;
    .param p3, "requireAuthentication"    # Z
    .param p4, "authenticationPrompt"    # Ljava/lang/String;
    .param p5, "authenticationHelper"    # Lexpo/modules/securestore/AuthenticationHelper;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            "Z",
            "Ljava/lang/String;",
            "Lexpo/modules/securestore/AuthenticationHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    new-instance v7, Lexpo/modules/securestore/EncryptException;

    .line 76
    nop

    .line 78
    nop

    .line 79
    nop

    .line 75
    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "HybridAESEncryption should not be used on Android SDK >= 23. This shouldn\'t happen. If you see this message report an issue at https://github.com/expo/expo."

    const-string v2, "unknown"

    const-string v3, "unknown"

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lexpo/modules/securestore/EncryptException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v7
.end method

.method public bridge synthetic decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$Entry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "encryptedItem"    # Lorg/json/JSONObject;
    .param p3, "keyStoreEntry"    # Ljava/security/KeyStore$Entry;
    .param p4, "options"    # Lexpo/modules/securestore/SecureStoreOptions;
    .param p5, "authenticationHelper"    # Lexpo/modules/securestore/AuthenticationHelper;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 41
    move-object v3, p3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$PrivateKeyEntry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$PrivateKeyEntry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "encryptedItem"    # Lorg/json/JSONObject;
    .param p3, "keyStoreEntry"    # Ljava/security/KeyStore$PrivateKeyEntry;
    .param p4, "options"    # Lexpo/modules/securestore/SecureStoreOptions;
    .param p5, "authenticationHelper"    # Lexpo/modules/securestore/AuthenticationHelper;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            "Lexpo/modules/securestore/SecureStoreOptions;",
            "Lexpo/modules/securestore/AuthenticationHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 92
    const-string v0, "esk"

    move-object/from16 v8, p2

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "encryptedSecretKeyString":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 94
    .local v9, "encryptedSecretKeyBytes":[B
    invoke-direct {p0}, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->getRSACipher()Ljavax/crypto/Cipher;

    move-result-object v10

    .line 95
    .local v10, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual/range {p3 .. p3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    const/4 v2, 0x2

    invoke-virtual {v10, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    invoke-virtual {v10, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    .line 100
    .local v11, "secretKeyBytes":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v11, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v12, v1

    check-cast v12, Ljavax/crypto/SecretKey;

    .line 103
    .local v12, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v12}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 104
    .local v4, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    move-object v13, p0

    iget-object v1, v13, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->mAESEncryptor:Lexpo/modules/securestore/encryptors/AESEncryptor;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/securestore/encryptors/AESEncryptor;->decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$SecretKeyEntry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getExtendedKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;Z)Ljava/lang/String;
    .locals 3
    .param p1, "options"    # Lexpo/modules/securestore/SecureStoreOptions;
    .param p2, "requireAuthentication"    # Z

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    if-eqz p2, :cond_0

    .line 45
    const-string v0, "keystoreAuthenticated"

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "keystoreUnauthenticated"

    .line 44
    :goto_0
    nop

    .line 49
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->getKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;)Ljava/lang/String;
    .locals 3
    .param p1, "options"    # Lexpo/modules/securestore/SecureStoreOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lexpo/modules/securestore/SecureStoreOptions;->getKeychainService()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "baseAlias":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSA/None/PKCS1Padding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic initializeKeyStoreEntry(Ljava/security/KeyStore;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$Entry;
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "options"    # Lexpo/modules/securestore/SecureStoreOptions;

    .line 41
    invoke-virtual {p0, p1, p2}, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;->initializeKeyStoreEntry(Ljava/security/KeyStore;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$Entry;

    return-object v0
.end method

.method public initializeKeyStoreEntry(Ljava/security/KeyStore;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 2
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "options"    # Lexpo/modules/securestore/SecureStoreOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "keyStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lexpo/modules/securestore/KeyStoreException;

    .line 61
    nop

    .line 60
    const-string v1, "Tried to initialize HybridAESEncryptor key store entry on Android SDK >= 23. This shouldn\'t happen. If you see this message report an issue at https://github.com/expo/expo."

    invoke-direct {v0, v1}, Lexpo/modules/securestore/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
