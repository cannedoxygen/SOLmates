.class final Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevLauncherController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherController;->handleIntent(Landroid/content/Intent;Lcom/facebook/react/ReactActivity;)Z
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
    c = "expo.modules.devlauncher.DevLauncherController$handleIntent$1$1"
    f = "DevLauncherController.kt"
    i = {}
    l = {
        0xfb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activityToBeInvalidated:Lcom/facebook/react/ReactActivity;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lexpo/modules/devlauncher/DevLauncherController;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/DevLauncherController;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/DevLauncherController;",
            "Landroid/net/Uri;",
            "Lcom/facebook/react/ReactActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    iput-object p2, p0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->$activityToBeInvalidated:Lcom/facebook/react/ReactActivity;

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

    new-instance v0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;

    iget-object v1, p0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    iget-object v2, p0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->$uri:Landroid/net/Uri;

    iget-object v3, p0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->$activityToBeInvalidated:Lcom/facebook/react/ReactActivity;

    invoke-direct {v0, v1, v2, v3, p2}, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 249
    iget v1, p0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 249
    .end local v0    # "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 250
    .local v1, "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 251
    :try_start_1
    iget-object v2, v1, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    iget-object v3, v1, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->$uri:Landroid/net/Uri;

    const-string v4, "$uri"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->$activityToBeInvalidated:Lcom/facebook/react/ReactActivity;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->label:I

    invoke-virtual {v2, v3, v4, v5}, Lexpo/modules/devlauncher/DevLauncherController;->loadApp(Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_0

    .line 249
    return-object v0

    .line 251
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    .restart local v0    # "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    :goto_0
    goto :goto_2

    .line 252
    .end local v0    # "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    .restart local v1    # "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    :catchall_1
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 253
    .restart local v0    # "this":Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    iget-object v3, v0, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-static {v3}, Lexpo/modules/devlauncher/DevLauncherController;->access$getContext(Lexpo/modules/devlauncher/DevLauncherController;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;->showFatalError(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 255
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
