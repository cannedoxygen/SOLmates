.class final Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->launchLifecycleScopeWithLock(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V
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
    value = "SMAP\nReactActivityDelegateWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,505:1\n120#2,10:506\n*S KotlinDebug\n*F\n+ 1 ReactActivityDelegateWrapper.kt\nexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1\n*L\n484#1:506,10\n*E\n"
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
    c = "expo.modules.ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1"
    f = "ReactActivityDelegateWrapper.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x1ff,
        0x1e5
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ReactActivityDelegateWrapper;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iput-object p2, p0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->$block:Lkotlin/jvm/functions/Function2;

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

    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;

    iget-object v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    iget-object v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 483
    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$withLock":I
    const/4 v2, 0x0

    .local v2, "$i$a$-withLock$default-ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1$1":I
    const/4 v3, 0x0

    .local v3, "owner$iv":Ljava/lang/Object;
    iget-object v4, v0, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .local v4, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 515
    .end local v2    # "$i$a$-withLock$default-ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1$1":I
    :catchall_0
    move-exception v2

    goto/16 :goto_2

    .line 483
    .end local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$f$withLock":I
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    .local v4, "owner$iv":Ljava/lang/Object;
    iget-object v5, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    .local v5, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v6, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .local v6, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .end local v2    # "$i$f$withLock":I
    .end local v4    # "owner$iv":Ljava/lang/Object;
    .end local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$0:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 484
    .restart local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    iget-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {v2}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getMutex$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    .local v2, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->$block:Lkotlin/jvm/functions/Function2;

    .line 506
    const/4 v4, 0x0

    .restart local v4    # "owner$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 507
    .local v5, "$i$f$withLock":I
    nop

    .line 511
    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->label:I

    invoke-interface {v2, v4, v7}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_0

    .line 483
    return-object v0

    .line 511
    :cond_0
    move v9, v5

    move-object v5, v2

    move v2, v9

    .line 512
    .local v2, "$i$f$withLock":I
    .local v5, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :goto_0
    nop

    .line 513
    const/4 v7, 0x0

    .line 485
    .local v7, "$i$a$-withLock$default-ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1$1":I
    :try_start_1
    iput-object v5, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v1, Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;->label:I

    invoke-interface {v3, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    if-ne v3, v0, :cond_1

    .line 483
    return-object v0

    .line 485
    :cond_1
    move-object v0, v1

    move v1, v2

    move-object v3, v4

    move-object v4, v5

    move v2, v7

    .end local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v7    # "$i$a$-withLock$default-ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1$1":I
    .restart local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .local v1, "$i$f$withLock":I
    .local v2, "$i$a$-withLock$default-ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1$1":I
    .restart local v3    # "owner$iv":Ljava/lang/Object;
    .local v4, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :goto_1
    nop

    .line 486
    nop

    .end local v2    # "$i$a$-withLock$default-ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1$1":I
    :try_start_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    nop

    .line 515
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 513
    .end local v3    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 487
    .end local v1    # "$i$f$withLock":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 515
    .end local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .local v1, "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .local v2, "$i$f$withLock":I
    .local v4, "owner$iv":Ljava/lang/Object;
    .restart local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move v9, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v9

    .end local v2    # "$i$f$withLock":I
    .end local v5    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v0    # "this":Lexpo/modules/ReactActivityDelegateWrapper$launchLifecycleScopeWithLock$1;
    .local v1, "$i$f$withLock":I
    .restart local v3    # "owner$iv":Ljava/lang/Object;
    .local v4, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :goto_2
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
