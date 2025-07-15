.class final Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->onDestroy()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactActivityDelegateWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper$onDestroy$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n120#2,8:506\n129#2:516\n1855#3,2:514\n*S KotlinDebug\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper$onDestroy$1\n*L\n241#1:506,8\n241#1:516\n243#1:514,2\n*E\n"
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
    c = "expo.modules.ReactActivityDelegateWrapper$onDestroy$1"
    f = "ReactActivityDelegateWrapper.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x1ff,
        0xf2
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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
            "Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

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

    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;

    iget-object v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-direct {v0, v1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 240
    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$withLock":I
    const/4 v2, 0x0

    .local v2, "$i$a$-withLock$default-ReactActivityDelegateWrapper$onDestroy$1$1":I
    iget-object v3, v0, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/ReactActivityDelegateWrapper;

    const/4 v4, 0x0

    .local v4, "owner$iv":Ljava/lang/Object;
    iget-object v5, v0, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    .local v5, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 516
    .end local v2    # "$i$a$-withLock$default-ReactActivityDelegateWrapper$onDestroy$1$1":I
    :catchall_0
    move-exception v2

    goto/16 :goto_4

    .line 240
    .end local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .end local v1    # "$i$f$withLock":I
    .end local v4    # "owner$iv":Ljava/lang/Object;
    .end local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$f$withLock":I
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/ReactActivityDelegateWrapper;

    const/4 v4, 0x0

    .restart local v4    # "owner$iv":Ljava/lang/Object;
    iget-object v5, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    .restart local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .end local v2    # "$i$f$withLock":I
    .end local v4    # "owner$iv":Ljava/lang/Object;
    .end local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 241
    .restart local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {v2}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getMutex$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    .local v2, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    .line 506
    const/4 v4, 0x0

    .restart local v4    # "owner$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 507
    .local v5, "$i$f$withLock":I
    nop

    .line 511
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->label:I

    invoke-interface {v2, v4, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_0

    .line 240
    return-object v0

    .line 511
    :cond_0
    move v12, v5

    move-object v5, v2

    move v2, v12

    .line 512
    .local v2, "$i$f$withLock":I
    .local v5, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :goto_0
    nop

    .line 513
    const/4 v6, 0x0

    .line 242
    .local v6, "$i$a$-withLock$default-ReactActivityDelegateWrapper$onDestroy$1$1":I
    :try_start_1
    invoke-static {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getLoadAppReady$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v7

    iput-object v5, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v1, Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;->label:I

    invoke-interface {v7, v1}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v7, v0, :cond_1

    .line 240
    return-object v0

    .line 242
    :cond_1
    move-object v0, v1

    move v1, v2

    move v2, v6

    .line 243
    .end local v6    # "$i$a$-withLock$default-ReactActivityDelegateWrapper$onDestroy$1$1":I
    .restart local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .local v1, "$i$f$withLock":I
    .local v2, "$i$a$-withLock$default-ReactActivityDelegateWrapper$onDestroy$1$1":I
    :goto_1
    :try_start_2
    invoke-static {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getReactActivityLifecycleListeners$p(Lexpo/modules/ReactActivityDelegateWrapper;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 514
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v9, v6

    check-cast v9, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;

    .local v9, "listener":Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;
    const/4 v10, 0x0

    .line 244
    .local v10, "$i$a$-forEach-ReactActivityDelegateWrapper$onDestroy$1$1$1":I
    invoke-static {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getActivity$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactActivity;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-interface {v9, v11}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onDestroy(Landroid/app/Activity;)V

    .line 245
    nop

    .line 514
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v9    # "listener":Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;
    .end local v10    # "$i$a$-forEach-ReactActivityDelegateWrapper$onDestroy$1$1$1":I
    goto :goto_2

    .line 515
    :cond_2
    nop

    .line 246
    .end local v7    # "$i$f$forEach":I
    invoke-static {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getDelayLoadAppHandler(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    .line 247
    nop

    .line 252
    :try_start_3
    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_debug()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/ReactActivityDelegate;->onDestroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 253
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception occurred during onDestroy with delayed app loading"

    move-object v8, v3

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 257
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_debug()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/ReactActivityDelegate;->onDestroy()V

    .line 259
    :goto_3
    nop

    .end local v2    # "$i$a$-withLock$default-ReactActivityDelegateWrapper$onDestroy$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    nop

    .line 516
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 513
    .end local v4    # "owner$iv":Ljava/lang/Object;
    .end local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 260
    .end local v1    # "$i$f$withLock":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 516
    .end local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .local v1, "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .local v2, "$i$f$withLock":I
    .restart local v4    # "owner$iv":Ljava/lang/Object;
    .restart local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :catchall_1
    move-exception v0

    move v12, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v12

    .end local v2    # "$i$f$withLock":I
    .restart local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$onDestroy$1;
    .local v1, "$i$f$withLock":I
    :goto_4
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
