.class final Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevLauncherInternalModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->loadUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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
    c = "expo.modules.devlauncher.modules.DevLauncherInternalModule$loadUpdate$1"
    f = "DevLauncherInternalModule.kt"
    i = {}
    l = {
        0x63
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $projectUrlString:Ljava/lang/String;

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->this$0:Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    iput-object p2, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$projectUrlString:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;

    iget-object v1, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->this$0:Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    iget-object v2, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$projectUrlString:Ljava/lang/String;

    iget-object v4, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$promise:Lcom/facebook/react/bridge/Promise;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;-><init>(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v1, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_1

    .line 92
    .end local v0    # "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 93
    .local v1, "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 94
    :try_start_1
    iget-object v2, v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->this$0:Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    iget-object v3, v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$url:Ljava/lang/String;

    invoke-static {v2, v3}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->access$sanitizeUrlString(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 95
    .local v5, "appUrl":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 96
    .local v2, "projectUrl":Landroid/net/Uri;
    iget-object v3, v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$projectUrlString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 97
    .end local v2    # "projectUrl":Landroid/net/Uri;
    iget-object v2, v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->this$0:Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    iget-object v3, v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$projectUrlString:Ljava/lang/String;

    invoke-static {v2, v3}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->access$sanitizeUrlString(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 99
    .restart local v2    # "projectUrl":Landroid/net/Uri;
    :cond_0
    iget-object v3, v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->this$0:Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    invoke-static {v3}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->access$getController(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v4

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v6, v2

    invoke-static/range {v4 .. v10}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface$DefaultImpls;->loadApp$default(Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Landroid/net/Uri;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "projectUrl":Landroid/net/Uri;
    .end local v5    # "appUrl":Landroid/net/Uri;
    if-ne v3, v0, :cond_1

    .line 92
    return-object v0

    .line 99
    :cond_1
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    .restart local v0    # "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    :goto_0
    nop

    .line 104
    iget-object v1, v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 105
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 100
    .end local v0    # "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    .restart local v1    # "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    :catch_1
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 101
    .restart local v0    # "this":Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "ERR_DEV_LAUNCHER_CANNOT_LOAD_APP"

    invoke-interface {v2, v5, v3, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
