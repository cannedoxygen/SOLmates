.class final Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevLauncherErrorActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->reload()V
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
    c = "expo.modules.devlauncher.launcher.errors.DevLauncherErrorActivity$reload$2"
    f = "DevLauncherErrorActivity.kt"
    i = {}
    l = {
        0x56
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $appUrl:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->$appUrl:Landroid/net/Uri;

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

    new-instance v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;

    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->$appUrl:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;-><init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 85
    .local v1, "this":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    invoke-static {v2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$getController(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v2

    .line 87
    iget-object v3, v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->$appUrl:Landroid/net/Uri;

    .line 88
    iget-object v4, v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    invoke-static {v4}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$getController(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    instance-of v6, v4, Lcom/facebook/react/ReactActivity;

    if-eqz v6, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/facebook/react/ReactActivity;

    :cond_1
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 86
    const/4 v6, 0x1

    iput v6, v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;->label:I

    invoke-interface {v2, v3, v5, v4}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->loadApp(Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 84
    return-object v0

    .line 86
    :cond_2
    move-object v0, v1

    .line 90
    .end local v1    # "this":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;
    .restart local v0    # "this":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
