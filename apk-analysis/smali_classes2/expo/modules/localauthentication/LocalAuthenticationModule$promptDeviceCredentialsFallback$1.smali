.class final Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalAuthenticationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;->promptDeviceCredentialsFallback(Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "expo.modules.localauthentication.LocalAuthenticationModule$promptDeviceCredentialsFallback$1"
    f = "LocalAuthenticationModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $promptMessage:Ljava/lang/String;

.field final synthetic $requireConfirmation:Z

.field label:I

.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/kotlin/Promise;ZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/localauthentication/LocalAuthenticationModule;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lexpo/modules/kotlin/Promise;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iput-object p2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-boolean p5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$requireConfirmation:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;

    iget-object v1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iget-object v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    iget-object v3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v4, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-boolean v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$requireConfirmation:Z

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/kotlin/Promise;ZLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 255
    iget v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 257
    .local v0, "this":Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;
    .local p1, "$result":Ljava/lang/Object;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 258
    iget-object v1, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getKeyguardManager(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/app/KeyguardManager;

    move-result-object v1

    iget-object v2, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 259
    .local v1, "credentialConfirmationIntent":Landroid/content/Intent;
    iget-object v2, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 263
    .end local v1    # "credentialConfirmationIntent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "newSingleThreadExecutor(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 264
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v2, Landroidx/biometric/BiometricPrompt;

    iget-object v3, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v4}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getAuthenticationCallback$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    move-object v1, v2

    .line 266
    .local v1, "localBiometricPrompt":Landroidx/biometric/BiometricPrompt;
    iget-object v2, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v2, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    .line 268
    new-instance v2, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    iget-object v3, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    iget-boolean v4, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$requireConfirmation:Z

    move-object v5, v2

    .local v5, "$this$invokeSuspend_u24lambda_u240":Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    const/4 v6, 0x0

    .line 269
    .local v6, "$i$a$-apply-LocalAuthenticationModule$promptDeviceCredentialsFallback$1$promptInfoBuilder$1":I
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 270
    const v3, 0x8000

    invoke-virtual {v5, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 271
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .end local v5    # "$this$invokeSuspend_u24lambda_u240":Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 272
    nop

    .line 268
    .end local v6    # "$i$a$-apply-LocalAuthenticationModule$promptDeviceCredentialsFallback$1$promptInfoBuilder$1":I
    nop

    .line 274
    .local v2, "promptInfoBuilder":Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    invoke-virtual {v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v3

    .end local v2    # "promptInfoBuilder":Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    const-string v2, "build(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 275
    .local v2, "promptInfo":Landroidx/biometric/BiometricPrompt$PromptInfo;
    nop

    .line 276
    :try_start_0
    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "localBiometricPrompt":Landroidx/biometric/BiometricPrompt;
    .end local v2    # "promptInfo":Landroidx/biometric/BiometricPrompt$PromptInfo;
    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v3, Lexpo/modules/kotlin/exception/UnexpectedException;

    const-string v4, "Canceled authentication due to an internal error"

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {v2, v3}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 280
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
