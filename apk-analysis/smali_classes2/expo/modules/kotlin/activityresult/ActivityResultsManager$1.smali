.class final Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActivityResultsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/activityresult/ActivityResultsManager;-><init>(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V
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
    value = "SMAP\nActivityResultsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultsManager.kt\nexpo/modules/kotlin/activityresult/ActivityResultsManager$1\n+ 2 AppCompatActivityAware.kt\nexpo/modules/kotlin/activityaware/AppCompatActivityAwareKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,99:1\n38#2:100\n39#2,13:110\n314#3,9:101\n323#3,2:123\n*S KotlinDebug\n*F\n+ 1 ActivityResultsManager.kt\nexpo/modules/kotlin/activityresult/ActivityResultsManager$1\n*L\n43#1:100\n43#1:110,13\n43#1:101,9\n43#1:123,2\n*E\n"
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
    c = "expo.modules.kotlin.activityresult.ActivityResultsManager$1"
    f = "ActivityResultsManager.kt"
    i = {
        0x0
    }
    l = {
        0x65
    }
    m = "invokeSuspend"
    n = {
        "$this$withActivityAvailable$iv"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/activityresult/ActivityResultsManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->this$0:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

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

    new-instance v0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;

    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->this$0:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    invoke-direct {v0, v1, p2}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;-><init>(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$withActivityAvailable":I
    const/4 v2, 0x0

    .local v2, "$i$f$suspendCancellableCoroutine":I
    iget-object v3, v0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    iget-object v3, v0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;
    .end local v1    # "$i$f$withActivityAvailable":I
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 43
    .local v1, "this":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->this$0:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    check-cast v2, Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;

    .local v2, "$this$withActivityAvailable$iv":Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;
    iget-object v3, v1, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->this$0:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    const/4 v4, 0x0

    .line 100
    .local v4, "$i$f$withActivityAvailable":I
    const/4 v5, 0x0

    .line 101
    .local v5, "$i$f$suspendCancellableCoroutine":I
    iput-object v2, v1, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v1, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;->label:I

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    .local v7, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v8, 0x0

    .line 102
    .local v8, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v9, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v7}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v6, v9

    .line 108
    .local v6, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 109
    move-object v9, v6

    check-cast v9, Lkotlinx/coroutines/CancellableContinuation;

    .local v9, "continuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v10, 0x0

    .line 110
    .local v10, "$i$a$-suspendCancellableCoroutine-AppCompatActivityAwareKt$withActivityAvailable$2$iv":I
    new-instance v11, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;

    invoke-direct {v11, v9, v2, v3}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;Lexpo/modules/kotlin/activityresult/ActivityResultsManager;)V

    move-object v3, v11

    .line 118
    .local v3, "listener$iv":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;
    move-object v11, v3

    check-cast v11, Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

    invoke-interface {v2, v11}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;->addOnActivityAvailableListener(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;)V

    .line 119
    new-instance v11, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;

    invoke-direct {v11, v2, v3}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$2;-><init>(Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v11}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 122
    .end local v2    # "$this$withActivityAvailable$iv":Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;
    nop

    .line 109
    .end local v3    # "listener$iv":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1$invokeSuspend$$inlined$withActivityAvailable$1;
    .end local v9    # "continuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v10    # "$i$a$-suspendCancellableCoroutine-AppCompatActivityAwareKt$withActivityAvailable$2$iv":I
    nop

    .line 123
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 101
    .end local v6    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v7    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v8    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    if-ne v2, v0, :cond_1

    .line 42
    return-object v0

    .line 101
    :cond_1
    move-object v0, v1

    move v1, v4

    move v2, v5

    .line 124
    .end local v4    # "$i$f$withActivityAvailable":I
    .end local v5    # "$i$f$suspendCancellableCoroutine":I
    .restart local v0    # "this":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;
    .local v1, "$i$f$withActivityAvailable":I
    .local v2, "$i$f$suspendCancellableCoroutine":I
    :goto_0
    nop

    .line 122
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    nop

    .line 46
    .end local v1    # "$i$f$withActivityAvailable":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
