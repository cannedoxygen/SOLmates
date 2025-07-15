.class final Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthenticationHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/securestore/AuthenticationHelper;->openAuthenticationPrompt(Ljavax/crypto/Cipher;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.securestore.AuthenticationHelper$openAuthenticationPrompt$2"
    f = "AuthenticationHelper.kt"
    i = {}
    l = {
        0x33
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $authenticationPrompt:Lexpo/modules/securestore/AuthenticationPrompt;

.field final synthetic $cipher:Ljavax/crypto/Cipher;

.field label:I

.field final synthetic this$0:Lexpo/modules/securestore/AuthenticationHelper;


# direct methods
.method constructor <init>(Lexpo/modules/securestore/AuthenticationPrompt;Ljavax/crypto/Cipher;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/securestore/AuthenticationPrompt;",
            "Ljavax/crypto/Cipher;",
            "Lexpo/modules/securestore/AuthenticationHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->$authenticationPrompt:Lexpo/modules/securestore/AuthenticationPrompt;

    iput-object p2, p0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->$cipher:Ljavax/crypto/Cipher;

    iput-object p3, p0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->this$0:Lexpo/modules/securestore/AuthenticationHelper;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;

    iget-object v1, p0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->$authenticationPrompt:Lexpo/modules/securestore/AuthenticationPrompt;

    iget-object v2, p0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->$cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->this$0:Lexpo/modules/securestore/AuthenticationHelper;

    invoke-direct {v0, v1, v2, v3, p2}, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;-><init>(Lexpo/modules/securestore/AuthenticationPrompt;Ljavax/crypto/Cipher;Lexpo/modules/securestore/AuthenticationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 49
    iget v1, p0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 49
    .end local v0    # "this":Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 50
    .local v1, "this":Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 51
    :try_start_1
    iget-object v3, v1, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->$authenticationPrompt:Lexpo/modules/securestore/AuthenticationPrompt;

    iget-object v4, v1, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->$cipher:Ljavax/crypto/Cipher;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->label:I

    invoke-virtual {v3, v4, v5}, Lexpo/modules/securestore/AuthenticationPrompt;->authenticate(Ljavax/crypto/Cipher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v3, v0, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    move-object v0, p1

    move-object p1, v3

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    .line 54
    iget-object v3, v1, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->this$0:Lexpo/modules/securestore/AuthenticationHelper;

    invoke-static {v3, v2}, Lexpo/modules/securestore/AuthenticationHelper;->access$setAuthenticating$p(Lexpo/modules/securestore/AuthenticationHelper;Z)V

    .line 51
    return-object p1

    .line 52
    :cond_1
    :try_start_3
    new-instance p1, Lexpo/modules/securestore/AuthenticationException;

    const-string v3, "Couldn\'t get the authentication result"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {p1, v3, v5, v4, v5}, Lexpo/modules/securestore/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "this":Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
    :catchall_1
    move-exception p1

    move-object v7, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v7

    goto :goto_1

    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .end local v1    # "this":Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
    .local v0, "this":Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;
    :goto_1
    iget-object v3, v0, Lexpo/modules/securestore/AuthenticationHelper$openAuthenticationPrompt$2;->this$0:Lexpo/modules/securestore/AuthenticationHelper;

    invoke-static {v3, v2}, Lexpo/modules/securestore/AuthenticationHelper;->access$setAuthenticating$p(Lexpo/modules/securestore/AuthenticationHelper;Z)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
