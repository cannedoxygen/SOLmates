.class final Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AESEncryptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/securestore/encryptors/AESEncryptor;->createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$SecretKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.securestore.encryptors.AESEncryptor"
    f = "AESEncryptor.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x58
    }
    m = "createEncryptedItem"
    n = {
        "this",
        "plaintextValue",
        "gcmSpec"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/securestore/encryptors/AESEncryptor;


# direct methods
.method constructor <init>(Lexpo/modules/securestore/encryptors/AESEncryptor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/securestore/encryptors/AESEncryptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->this$0:Lexpo/modules/securestore/encryptors/AESEncryptor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->result:Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->label:I

    iget-object v1, p0, Lexpo/modules/securestore/encryptors/AESEncryptor$createEncryptedItem$1;->this$0:Lexpo/modules/securestore/encryptors/AESEncryptor;

    const/4 v6, 0x0

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lexpo/modules/securestore/encryptors/AESEncryptor;->createEncryptedItem(Ljava/lang/String;Ljava/security/KeyStore$SecretKeyEntry;ZLjava/lang/String;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
