.class final Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevLauncherReactNativeHostHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;->onWillCreateReactInstance(Z)V
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
    c = "expo.modules.devlauncher.react.DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1"
    f = "DevLauncherReactNativeHostHandler.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;

    invoke-direct {v0, p2}, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 50
    iget v0, p0, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 51
    .local v0, "this":Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;
    .local p1, "$result":Ljava/lang/Object;
    sget-object v1, Lexpo/modules/updatesinterface/UpdatesControllerRegistry;->INSTANCE:Lexpo/modules/updatesinterface/UpdatesControllerRegistry;

    invoke-virtual {v1}, Lexpo/modules/updatesinterface/UpdatesControllerRegistry;->getController()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/updatesinterface/UpdatesInterface;

    if-eqz v1, :cond_0

    .local v1, "it":Lexpo/modules/updatesinterface/UpdatesInterface;
    const/4 v2, 0x0

    .line 52
    .local v2, "$i$a$-let-DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1$1":I
    sget-object v3, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v3}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getInstance()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v3

    invoke-interface {v3, v1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->setUpdatesInterface(Lexpo/modules/updatesinterface/UpdatesInterface;)V

    .line 53
    new-instance v3, Ljava/lang/ref/WeakReference;

    sget-object v4, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v4}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getInstance()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Lexpo/modules/updatesinterface/UpdatesInterface;->setUpdatesInterfaceCallbacks(Ljava/lang/ref/WeakReference;)V

    .line 54
    nop

    .line 51
    .end local v1    # "it":Lexpo/modules/updatesinterface/UpdatesInterface;
    .end local v2    # "$i$a$-let-DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1$1":I
    :cond_0
    nop

    .line 55
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
