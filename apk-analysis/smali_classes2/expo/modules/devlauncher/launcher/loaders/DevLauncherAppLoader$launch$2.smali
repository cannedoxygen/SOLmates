.class final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevLauncherAppLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->launch$suspendImpl(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "expo.modules.devlauncher.launcher.loaders.DevLauncherAppLoader$launch$2"
    f = "DevLauncherAppLoader.kt"
    i = {}
    l = {
        0x4a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $intent:Landroid/content/Intent;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->$intent:Landroid/content/Intent;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;

    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->$intent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, p2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;-><init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v1, v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_1

    .end local v0    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 74
    .local v1, "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    iget-object v3, v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->$intent:Landroid/content/Intent;

    iput-object v2, v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->L$1:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;->label:I

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    new-instance v5, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v5, v4}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v5

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local v4, "callback":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 75
    .local v6, "$i$a$-suspendCoroutine-DevLauncherAppLoader$launch$2$1":I
    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->injectBundleLoader()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    invoke-static {v2, v4}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$setContinuation$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Lkotlin/coroutines/Continuation;)V

    .line 77
    invoke-static {v2, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$launchIntent(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;)V

    .line 78
    goto :goto_0

    .line 80
    :cond_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 81
    nop

    .line 74
    .end local v4    # "callback":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$a$-suspendCoroutine-DevLauncherAppLoader$launch$2$1":I
    :goto_0
    invoke-virtual {v5}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    if-ne v2, v0, :cond_2

    .line 73
    return-object v0

    .line 74
    :cond_2
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;
    .restart local v0    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;
    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
