.class final Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->onCreate(Landroid/os/Bundle;)V
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
    c = "expo.modules.ReactActivityDelegateWrapper$onCreate$1"
    f = "ReactActivityDelegateWrapper.kt"
    i = {}
    l = {
        0x97,
        0xb9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ReactActivityDelegateWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;

    iget-object v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-direct {v0, v1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 150
    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 151
    .restart local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iget-object v4, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {v4}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getDelayLoadAppHandler(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->label:I

    invoke-static {v3, v4, v5}, Lexpo/modules/ReactActivityDelegateWrapper;->access$awaitDelayLoadAppWhenReady(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 150
    return-object v0

    .line 152
    :cond_0
    :goto_0
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getLoadAppReady$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v4}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 154
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->isWideColorGamutEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getActivity$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setColorMode(I)V

    .line 158
    :cond_1
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->composeLaunchOptions()Landroid/os/Bundle;

    move-result-object v5

    .line 159
    .local v5, "launchOptions":Landroid/os/Bundle;
    nop

    .line 160
    sget-object v3, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v3}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    .line 161
    new-instance v3, Lcom/facebook/react/ReactDelegate;

    .line 162
    iget-object v4, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v4}, Lexpo/modules/ReactActivityDelegateWrapper;->getPlainActivity()Landroid/app/Activity;

    move-result-object v4

    .line 163
    iget-object v6, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v6}, Lexpo/modules/ReactActivityDelegateWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v6

    .line 164
    iget-object v7, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v7}, Lexpo/modules/ReactActivityDelegateWrapper;->getMainComponentName()Ljava/lang/String;

    move-result-object v7

    .line 165
    nop

    .line 161
    .end local v5    # "launchOptions":Landroid/os/Bundle;
    invoke-direct {v3, v4, v6, v7, v5}, Lcom/facebook/react/ReactDelegate;-><init>(Landroid/app/Activity;Lcom/facebook/react/ReactHost;Ljava/lang/String;Landroid/os/Bundle;)V

    .local v3, "reactDelegate":Lcom/facebook/react/ReactDelegate;
    goto :goto_2

    .line 168
    .end local v3    # "reactDelegate":Lcom/facebook/react/ReactDelegate;
    .restart local v5    # "launchOptions":Landroid/os/Bundle;
    :cond_2
    nop

    .line 169
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->getPlainActivity()Landroid/app/Activity;

    move-result-object v7

    .line 168
    nop

    .line 170
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v8

    .line 168
    nop

    .line 171
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->getMainComponentName()Ljava/lang/String;

    move-result-object v9

    .line 168
    nop

    .line 173
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->isFabricEnabled()Z

    move-result v3

    .line 168
    new-instance v12, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1$1;

    iget-object v6, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    if-eqz v3, :cond_3

    move v10, v2

    goto :goto_1

    :cond_3
    move v10, v11

    .end local v5    # "launchOptions":Landroid/os/Bundle;
    :goto_1
    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1$1;-><init>(Landroid/os/Bundle;Lexpo/modules/ReactActivityDelegateWrapper;Landroid/app/Activity;Lcom/facebook/react/ReactNativeHost;Ljava/lang/String;Z)V

    move-object v3, v12

    check-cast v3, Lcom/facebook/react/ReactDelegate;

    .restart local v3    # "reactDelegate":Lcom/facebook/react/ReactDelegate;
    :goto_2
    const-class v4, Lcom/facebook/react/ReactActivityDelegate;

    .line 181
    const-string v5, "mReactDelegate"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 182
    .local v4, "mReactDelegate":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 183
    iget-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v2}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_debug()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .end local v3    # "reactDelegate":Lcom/facebook/react/ReactDelegate;
    .end local v4    # "mReactDelegate":Ljava/lang/reflect/Field;
    iget-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v2}, Lexpo/modules/ReactActivityDelegateWrapper;->getMainComponentName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 185
    iget-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->getMainComponentName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, v1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;->label:I

    invoke-static {v2, v3, v11, v4}, Lexpo/modules/ReactActivityDelegateWrapper;->access$loadAppImpl(Lexpo/modules/ReactActivityDelegateWrapper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    .line 150
    return-object v0

    .line 185
    :cond_4
    move-object v0, v1

    .line 187
    .end local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    .restart local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    :goto_3
    move-object v1, v0

    .end local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    .restart local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onCreate$1;
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
