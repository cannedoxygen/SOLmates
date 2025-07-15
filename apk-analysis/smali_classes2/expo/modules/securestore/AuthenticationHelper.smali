.class public final Lexpo/modules/securestore/AuthenticationHelper;
.super Ljava/lang/Object;
.source "AuthenticationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/securestore/AuthenticationHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ&\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/securestore/AuthenticationHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "moduleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "(Landroid/content/Context;Lexpo/modules/core/ModuleRegistry;)V",
        "isAuthenticating",
        "",
        "assertBiometricsSupport",
        "",
        "authenticateCipher",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "requiresAuthentication",
        "title",
        "",
        "(Ljavax/crypto/Cipher;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCurrentActivity",
        "Landroid/app/Activity;",
        "openAuthenticationPrompt",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        "(Ljavax/crypto/Cipher;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lexpo/modules/securestore/AuthenticationHelper$Companion;

.field public static final REQUIRE_AUTHENTICATION_PROPERTY:Ljava/lang/String; = "requireAuthentication"


# instance fields
.field private final context:Landroid/content/Context;

.field private isAuthenticating:Z

.field private final moduleRegistry:Lexpo/modules/core/ModuleRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/securestore/AuthenticationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/securestore/AuthenticationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/securestore/AuthenticationHelper;->Companion:Lexpo/modules/securestore/AuthenticationHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/core/ModuleRegistry;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moduleRegistry"    # Lexpo/modules/core/ModuleRegistry;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lexpo/modules/securestore/AuthenticationHelper;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lexpo/modules/securestore/AuthenticationHelper;->moduleRegistry:Lexpo/modules/core/ModuleRegistry;

    .line 16
    return-void
.end method

.method public static final synthetic access$openAuthenticationPrompt(Lexpo/modules/securestore/AuthenticationHelper;Ljavax/crypto/Cipher;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/securestore/AuthenticationHelper;
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/securestore/AuthenticationHelper;->openAuthenticationPrompt(Ljavax/crypto/Cipher;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setAuthenticating$p(Lexpo/modules/securestore/AuthenticationHelper;Z)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/securestore/AuthenticationHelper;
    .param p1, "<set-?>"    # Z

    .line 16
    iput-boolean p1, p0, Lexpo/modules/securestore/AuthenticationHelper;->isAuthenticating:Z

    return-void
.end method

.method private final getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .line 82
    iget-object v0, p0, Lexpo/modules/securestore/AuthenticationHelper;->moduleRegistry:Lexpo/modules/core/ModuleRegistry;

    const-class v1, Lexpo/modules/core/interfaces/ActivityProvider;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getModule(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/core/interfaces/ActivityProvider;

    .line 83
    .local v0, "activityProvider":Lexpo/modules/core/interfaces/ActivityProvider;
    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method private final openAuthenticationPrompt(Ljavax/crypto/Cipher;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/Cipher;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    nop

    .line 37
    iget-boolean v0, p0, Lexpo/modules/securestore/AuthenticationHelper;->isAuthenticating:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/securestore/AuthenticationHelper;->isAuthenticating:Z

    .line 43
    invoke-virtual {p0}, Lexpo/modules/securestore/AuthenticationHelper;->assertBiometricsSupport()V

    .line 44
    invoke-direct {p0}, Lexpo/modules/securestore/AuthenticationHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v3, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 47
    .local v0, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    new-instance v1, Lexpo/modules/securestore/AuthenticationPrompt;

    iget-object v3, p0, Lexpo/modules/securestore/AuthenticationHelper;->context:Landroid/content/Context;

    invoke-direct {v1, v0, v3, p2}, Lexpo/modules/securestore/AuthenticationPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .local v1, "authenticationPrompt":Lexpo/modules/securestore/AuthenticationPrompt;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;

    invoke-direct {v4, v1, p1, p0, v2}, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;-><init>(Lexpo/modules/securestore/AuthenticationPrompt;Ljavax/crypto/Cipher;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 45
    .end local v0    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    .end local v1    # "authenticationPrompt":Lexpo/modules/securestore/AuthenticationPrompt;
    :cond_1
    new-instance v0, Lexpo/modules/securestore/AuthenticationException;

    const-string v3, "Cannot display biometric prompt when the app is not in the foreground"

    invoke-direct {v0, v3, v2, v1, v2}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 38
    :cond_2
    new-instance v0, Lexpo/modules/securestore/AuthenticationException;

    const-string v3, "Authentication is already in progress"

    invoke-direct {v0, v3, v2, v1, v2}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method public final assertBiometricsSupport()V
    .locals 5

    .line 60
    iget-object v0, p0, Lexpo/modules/securestore/AuthenticationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .local v0, "biometricManager":Landroidx/biometric/BiometricManager;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 79
    return-void

    .line 70
    :sswitch_0
    new-instance v1, Lexpo/modules/securestore/AuthenticationException;

    const-string v4, "An update is required before the biometrics can be used"

    invoke-direct {v1, v4, v3, v2, v3}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 67
    :sswitch_1
    new-instance v1, Lexpo/modules/securestore/AuthenticationException;

    const-string v4, "No biometrics are currently enrolled"

    invoke-direct {v1, v4, v3, v2, v3}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 64
    :sswitch_2
    new-instance v1, Lexpo/modules/securestore/AuthenticationException;

    const-string v4, "No hardware available for biometric authentication. Use expo-local-authentication to check if the device supports it"

    invoke-direct {v1, v4, v3, v2, v3}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 76
    :sswitch_3
    new-instance v1, Lexpo/modules/securestore/AuthenticationException;

    const-string v4, "Biometric authentication status is unknown"

    invoke-direct {v1, v4, v3, v2, v3}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 73
    :sswitch_4
    new-instance v1, Lexpo/modules/securestore/AuthenticationException;

    const-string v4, "Biometric authentication is unsupported"

    invoke-direct {v1, v4, v3, v2, v3}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
        0x1 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public final authenticateCipher(Ljavax/crypto/Cipher;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/Cipher;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljavax/crypto/Cipher;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;

    iget v1, v0, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;-><init>(Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 22
    iget v2, p4, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 23
    .local v2, "this":Lexpo/modules/securestore/AuthenticationHelper;
    .local p1, "cipher":Ljavax/crypto/Cipher;
    .local p2, "requiresAuthentication":Z
    .local p3, "title":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 24
    .end local p2    # "requiresAuthentication":Z
    const/4 p2, 0x1

    iput p2, p4, Lexpo/modules/securestore/AuthenticationHelper$authenticateCipher$1;->label:I

    invoke-direct {v2, p1, p3, p4}, Lexpo/modules/securestore/AuthenticationHelper;->openAuthenticationPrompt(Ljavax/crypto/Cipher;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lexpo/modules/securestore/AuthenticationHelper;
    .end local p1    # "cipher":Ljavax/crypto/Cipher;
    .end local p3    # "title":Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 22
    return-object v1

    .line 24
    :cond_1
    :goto_1
    check-cast p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    if-eqz p1, :cond_3

    return-object p1

    .line 25
    :cond_3
    new-instance p1, Lexpo/modules/securestore/AuthenticationException;

    const-string p3, "Couldn\'t get cipher from authentication result"

    const/4 v1, 0x2

    invoke-direct {p1, p3, p2, v1, p2}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 27
    .restart local p1    # "cipher":Ljavax/crypto/Cipher;
    :cond_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
