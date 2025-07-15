.class public final Lexpo/modules/securestore/encryptors/AESEncryptor;
.super Ljava/lang/Object;
.source "AESEncryptor.kt"

# interfaces
.implements Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/securestore/encryptors/AESEncryptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/securestore/encryptors/KeyBasedEncryptor<",
        "Ljava/security/KeyStore$SecretKeyEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0003J6\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000eJ%\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J6\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0017\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/securestore/encryptors/AESEncryptor;",
        "Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;",
        "Ljava/security/KeyStore$SecretKeyEntry;",
        "()V",
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
        "(Ljava/lang/String;Ljava/security/KeyStore$SecretKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createEncryptedItemWithCipher",
        "cipher",
        "Ljavax/crypto/Cipher;",
        "gcmSpec",
        "Ljavax/crypto/spec/GCMParameterSpec;",
        "createEncryptedItemWithCipher$expo_secure_store_debug",
        "decryptItem",
        "key",
        "encryptedItem",
        "options",
        "Lexpo/modules/securestore/SecureStoreOptions;",
        "(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$SecretKeyEntry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final AES_CIPHER:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final AES_KEY_SIZE_BITS:I = 0x100

.field private static final CIPHERTEXT_PROPERTY:Ljava/lang/String; = "ct"

.field public static final Companion:Lexpo/modules/securestore/encryptors/AESEncryptor$Companion;

.field private static final GCM_AUTHENTICATION_TAG_LENGTH_PROPERTY:Ljava/lang/String; = "tlen"

.field public static final IV_PROPERTY:Ljava/lang/String; = "iv"

.field private static final MIN_GCM_AUTHENTICATION_TAG_LENGTH:I = 0x60

.field public static final NAME:Ljava/lang/String; = "aes"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/securestore/encryptors/AESEncryptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/securestore/encryptors/AESEncryptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/securestore/encryptors/AESEncryptor;->Companion:Lexpo/modules/securestore/encryptors/AESEncryptor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 33
    move-object v2, p2

    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lexpo/modules/securestore/encryptors/AESEncryptor;->createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$SecretKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$SecretKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$SecretKeyEntry;",
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
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;

    iget v1, v0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;

    invoke-direct {v0, p0, p6}, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;-><init>(Lexpo/modules/securestore/encryptors/AESEncryptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p6, v0

    .local p6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 76
    iget v2, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p6    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p6    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljavax/crypto/spec/GCMParameterSpec;

    .local p1, "gcmSpec":Ljavax/crypto/spec/GCMParameterSpec;
    iget-object p2, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .local p2, "plaintextValue":Ljava/lang/String;
    iget-object p3, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lexpo/modules/securestore/encryptors/AESEncryptor;

    .local p3, "this":Lexpo/modules/securestore/encryptors/AESEncryptor;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p3

    move-object p3, v0

    goto :goto_2

    .end local p1    # "gcmSpec":Ljavax/crypto/spec/GCMParameterSpec;
    .end local p2    # "plaintextValue":Ljava/lang/String;
    .end local p3    # "this":Lexpo/modules/securestore/encryptors/AESEncryptor;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 83
    .local v2, "this":Lexpo/modules/securestore/encryptors/AESEncryptor;
    .local p1, "plaintextValue":Ljava/lang/String;
    .local p2, "keyStoreEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .local p3, "requireAuthentication":Z
    .local p4, "authenticationPrompt":Ljava/lang/String;
    .local p5, "authenticationHelper":Lexpo/modules/securestore/AuthenticationHelper;
    invoke-virtual {p2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 84
    .local p2, "secretKey":Ljavax/crypto/SecretKey;
    const-string v3, "AES/GCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 85
    .local v3, "cipher":Ljavax/crypto/Cipher;
    move-object v4, p2

    check-cast v4, Ljava/security/Key;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 87
    .end local p2    # "secretKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p2

    const-class v4, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p2, v4}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    check-cast p2, Ljavax/crypto/spec/GCMParameterSpec;

    .line 88
    .local p2, "gcmSpec":Ljavax/crypto/spec/GCMParameterSpec;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    move p3, v5

    goto :goto_1

    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local p3    # "requireAuthentication":Z
    .end local p5    # "authenticationHelper":Lexpo/modules/securestore/AuthenticationHelper;
    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-object v2, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->L$0:Ljava/lang/Object;

    iput-object p1, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->L$1:Ljava/lang/Object;

    iput-object p2, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->L$2:Ljava/lang/Object;

    iput v5, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->label:I

    invoke-virtual {p5, v3, p3, p4, p6}, Lexpo/modules/securestore/AuthenticationHelper;->authenticateCipher(Ljavax/crypto/Cipher;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    .end local p4    # "authenticationPrompt":Ljava/lang/String;
    if-ne p3, v1, :cond_2

    .line 76
    return-object v1

    .line 88
    :cond_2
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 76
    .local p1, "gcmSpec":Ljavax/crypto/spec/GCMParameterSpec;
    .local p2, "plaintextValue":Ljava/lang/String;
    :goto_2
    check-cast p3, Ljavax/crypto/Cipher;

    .line 90
    .local p3, "authenticatedCipher":Ljavax/crypto/Cipher;
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, p3, p1}, Lexpo/modules/securestore/encryptors/AESEncryptor;->createEncryptedItemWithCipher$expo_secure_store_debug(Ljava/lang/String;Ljavax/crypto/Cipher;Ljavax/crypto/spec/GCMParameterSpec;)Lorg/json/JSONObject;

    move-result-object p4

    return-object p4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createEncryptedItemWithCipher$expo_secure_store_debug(Ljava/lang/String;Ljavax/crypto/Cipher;Ljavax/crypto/spec/GCMParameterSpec;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "plaintextValue"    # Ljava/lang/String;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;
    .param p3, "gcmSpec"    # Ljavax/crypto/spec/GCMParameterSpec;

    const-string v0, "plaintextValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcmSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .local v0, "plaintextBytes":[B
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 100
    .local v1, "ciphertextBytes":[B
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "ciphertext":Ljava/lang/String;
    invoke-virtual {p3}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "ivString":Ljava/lang/String;
    invoke-virtual {p3}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v4

    .line 104
    .local v4, "authenticationTagLength":I
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string v6, "ct"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 106
    const-string v6, "iv"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 107
    const-string v6, "tlen"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "put(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return-object v5
.end method

.method public bridge synthetic decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$Entry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "encryptedItem"    # Lorg/json/JSONObject;
    .param p3, "keyStoreEntry"    # Ljava/security/KeyStore$Entry;
    .param p4, "options"    # Lexpo/modules/securestore/SecureStoreOptions;
    .param p5, "authenticationHelper"    # Lexpo/modules/securestore/AuthenticationHelper;
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 33
    move-object v3, p3

    check-cast v3, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lexpo/modules/securestore/encryptors/AESEncryptor;->decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$SecretKeyEntry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$SecretKeyEntry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/security/KeyStore$SecretKeyEntry;",
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

    instance-of v0, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;

    iget v1, v0, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;

    invoke-direct {v0, p0, p6}, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;-><init>(Lexpo/modules/securestore/encryptors/AESEncryptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p6, v0

    .local p6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 111
    iget v2, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p6    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p6    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->L$0:Ljava/lang/Object;

    check-cast p1, [B

    .local p1, "ciphertextBytes":[B
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p5, p1

    move-object p1, v0

    goto :goto_1

    .end local p1    # "ciphertextBytes":[B
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p2, "encryptedItem":Lorg/json/JSONObject;
    .local p4, "options":Lexpo/modules/securestore/SecureStoreOptions;
    move-object v4, p1

    .local v4, "key":Ljava/lang/String;
    move-object p1, p3

    .local p1, "keyStoreEntry":Ljava/security/KeyStore$SecretKeyEntry;
    move-object p3, p5

    .line 118
    .local p3, "authenticationHelper":Lexpo/modules/securestore/AuthenticationHelper;
    const-string p5, "ct"

    invoke-virtual {p2, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 119
    .local p5, "ciphertext":Ljava/lang/String;
    const-string v2, "iv"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "ivString":Ljava/lang/String;
    const-string v3, "tlen"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "authenticationTagLength":I
    const/4 v5, 0x0

    invoke-static {p5, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p5

    .line 122
    .local p5, "ciphertextBytes":[B
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 123
    .local v2, "ivBytes":[B
    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v6, v3, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v2, v6

    .line 124
    .local v2, "gcmSpec":Ljavax/crypto/spec/GCMParameterSpec;
    const-string v6, "AES/GCM/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 125
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const-string v7, "requireAuthentication"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 127
    .local p2, "requiresAuthentication":Z
    const/16 v7, 0x60

    if-lt v3, v7, :cond_3

    .line 130
    .end local v3    # "authenticationTagLength":I
    .end local v4    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    check-cast v3, Ljava/security/Key;

    move-object v4, v2

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 131
    .end local v2    # "gcmSpec":Ljavax/crypto/spec/GCMParameterSpec;
    .end local p1    # "keyStoreEntry":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    move v5, p1

    nop

    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local p2    # "requiresAuthentication":Z
    .end local p3    # "authenticationHelper":Lexpo/modules/securestore/AuthenticationHelper;
    :cond_1
    invoke-virtual {p4}, Lexpo/modules/securestore/SecureStoreOptions;->getAuthenticationPrompt()Ljava/lang/String;

    move-result-object p2

    iput-object p5, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->L$0:Ljava/lang/Object;

    iput p1, p6, Lexpo/modules/securestore/encryptors/AESEncryptor$decryptItem$1;->label:I

    invoke-virtual {p3, v6, v5, p2, p6}, Lexpo/modules/securestore/AuthenticationHelper;->authenticateCipher(Ljavax/crypto/Cipher;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p4    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    if-ne p1, v1, :cond_2

    .line 111
    return-object v1

    :cond_2
    :goto_1
    check-cast p1, Ljavax/crypto/Cipher;

    .line 132
    .local p1, "unlockedCipher":Ljavax/crypto/Cipher;
    invoke-virtual {p1, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    const-string p3, "doFinal(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p4, "UTF_8"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p4

    .line 128
    .end local p1    # "unlockedCipher":Ljavax/crypto/Cipher;
    .end local p5    # "ciphertextBytes":[B
    .restart local v4    # "key":Ljava/lang/String;
    .restart local p4    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    :cond_3
    new-instance p1, Lexpo/modules/securestore/DecryptException;

    invoke-virtual {p4}, Lexpo/modules/securestore/SecureStoreOptions;->getKeychainService()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "Authentication tag length must be at least 96 bits long"

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lexpo/modules/securestore/DecryptException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExtendedKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;Z)Ljava/lang/String;
    .locals 3
    .param p1, "options"    # Lexpo/modules/securestore/SecureStoreOptions;
    .param p2, "requireAuthentication"    # Z

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    if-eqz p2, :cond_0

    .line 46
    const-string v0, "keystoreAuthenticated"

    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "keystoreUnauthenticated"

    .line 45
    :goto_0
    nop

    .line 50
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lexpo/modules/securestore/encryptors/AESEncryptor;->getKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;)Ljava/lang/String;

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

    .line 35
    invoke-virtual {p1}, Lexpo/modules/securestore/SecureStoreOptions;->getKeychainService()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "baseAlias":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AES/GCM/NoPadding:"

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

    .line 33
    invoke-virtual {p0, p1, p2}, Lexpo/modules/securestore/encryptors/AESEncryptor;->initializeKeyStoreEntry(Ljava/security/KeyStore;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$SecretKeyEntry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$Entry;

    return-object v0
.end method

.method public initializeKeyStoreEntry(Ljava/security/KeyStore;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$SecretKeyEntry;
    .locals 7
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

    .line 56
    invoke-virtual {p2}, Lexpo/modules/securestore/SecureStoreOptions;->getRequireAuthentication()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lexpo/modules/securestore/encryptors/AESEncryptor;->getExtendedKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;Z)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "extendedKeystoreAlias":Ljava/lang/String;
    const/4 v1, 0x3

    .line 59
    .local v1, "keyPurposes":I
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v2, v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 60
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 61
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "GCM"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 62
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "NoPadding"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {p2}, Lexpo/modules/securestore/SecureStoreOptions;->getRequireAuthentication()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    .line 59
    nop

    .line 66
    .local v2, "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v3, "AES"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v3, v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 67
    .local v3, "keyGenerator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v3, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 71
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    instance-of v6, v5, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v6, :cond_0

    move-object v4, v5

    check-cast v4, Ljava/security/KeyStore$SecretKeyEntry;

    :cond_0
    if-eqz v4, :cond_1

    return-object v4

    .line 72
    :cond_1
    new-instance v4, Ljava/security/UnrecoverableEntryException;

    const-string v5, "Could not retrieve the newly generated secret key entry"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
