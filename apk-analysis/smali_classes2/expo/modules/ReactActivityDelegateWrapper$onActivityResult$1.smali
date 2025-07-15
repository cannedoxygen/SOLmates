.class final Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->onActivityResult(IILandroid/content/Intent;)V
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
    c = "expo.modules.ReactActivityDelegateWrapper$onActivityResult$1"
    f = "ReactActivityDelegateWrapper.kt"
    i = {}
    l = {
        0x116
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Landroid/content/Intent;

.field final synthetic $requestCode:I

.field final synthetic $resultCode:I

.field label:I

.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;IILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ReactActivityDelegateWrapper;",
            "II",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iput p2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iput p3, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iput-object p4, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

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

    new-instance v6, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;

    iget-object v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iget v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iget v3, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iget-object v4, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;IILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 277
    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 278
    .local v1, "this":Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {v2}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getLoadAppReady$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, v1, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->label:I

    invoke-interface {v2, v3}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 277
    return-object v0

    .line 278
    :cond_0
    move-object v0, v1

    .line 279
    .end local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;
    .restart local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;
    :goto_0
    sget-object v1, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v1}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v1}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_debug()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/ReactActivityDelegate;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 280
    new-instance v1, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1$reactContextListener$1;

    iget-object v2, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iget v3, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iget v4, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iget-object v5, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

    invoke-direct {v1, v2, v3, v4, v5}, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1$reactContextListener$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;IILandroid/content/Intent;)V

    .line 286
    .local v1, "reactContextListener":Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1$reactContextListener$1;
    iget-object v2, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v2}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_debug()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/ReactActivityDelegate;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v2

    .line 287
    move-object v3, v1

    check-cast v3, Lcom/facebook/react/ReactInstanceEventListener;

    .line 286
    invoke-virtual {v2, v3}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 291
    .end local v1    # "reactContextListener":Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1$reactContextListener$1;
    :cond_1
    iget-object v1, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v1}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_debug()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v1

    iget v2, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$requestCode:I

    iget v3, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$resultCode:I

    iget-object v4, v0, Lexpo/modules/ReactActivityDelegateWrapper$onActivityResult$1;->$data:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/react/ReactActivityDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
