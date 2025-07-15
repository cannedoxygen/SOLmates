.class public interface abstract Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;
.super Ljava/lang/Object;
.source "KeyBasedEncryptor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/security/KeyStore$Entry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J6\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u00a6@\u00a2\u0006\u0002\u0010\u000eJ6\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\rH\u00a6@\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H&J\u001d\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013H&\u00a2\u0006\u0002\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/securestore/encryptors/KeyBasedEncryptor;",
        "E",
        "Ljava/security/KeyStore$Entry;",
        "",
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
        "(Ljava/lang/String;Ljava/security/KeyStore$Entry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "decryptItem",
        "key",
        "encryptedItem",
        "options",
        "Lexpo/modules/securestore/SecureStoreOptions;",
        "(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$Entry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getExtendedKeyStoreAlias",
        "getKeyStoreAlias",
        "initializeKeyStoreEntry",
        "keyStore",
        "Ljava/security/KeyStore;",
        "(Ljava/security/KeyStore;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$Entry;",
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


# virtual methods
.method public abstract createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$Entry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;Z",
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
.end method

.method public abstract decryptItem(Ljava/lang/String;Lorg/json/JSONObject;Ljava/security/KeyStore$Entry;Lexpo/modules/securestore/SecureStoreOptions;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "TE;",
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
.end method

.method public abstract getExtendedKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;Z)Ljava/lang/String;
.end method

.method public abstract getKeyStoreAlias(Lexpo/modules/securestore/SecureStoreOptions;)Ljava/lang/String;
.end method

.method public abstract initializeKeyStoreEntry(Ljava/security/KeyStore;Lexpo/modules/securestore/SecureStoreOptions;)Ljava/security/KeyStore$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "Lexpo/modules/securestore/SecureStoreOptions;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
