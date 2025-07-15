.class public final Lexpo/modules/kotlin/activityresult/ActivityResultsManager;
.super Ljava/lang/Object;
.source "ActivityResultsManager.kt"

# interfaces
.implements Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;
.implements Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityResultsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultsManager.kt\nexpo/modules/kotlin/activityresult/ActivityResultsManager\n+ 2 AppCompatActivityAware.kt\nexpo/modules/kotlin/activityaware/AppCompatActivityAwareKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,99:1\n38#2:100\n39#2,13:110\n314#3,9:101\n323#3,2:123\n*S KotlinDebug\n*F\n+ 1 ActivityResultsManager.kt\nexpo/modules/kotlin/activityresult/ActivityResultsManager\n*L\n76#1:100\n76#1:110,13\n76#1:101,9\n76#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018JR\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001d0\u001b\"\u0008\u0008\u0000\u0010\u001c*\u00020\u001e\"\u0004\u0008\u0001\u0010\u001d2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001d0 2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001d0\"H\u0096@\u00a2\u0006\u0002\u0010#J\u0010\u0010$\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/kotlin/activityresult/ActivityResultsManager;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultCaller;",
        "Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;",
        "currentActivityProvider",
        "Lexpo/modules/kotlin/providers/CurrentActivityProvider;",
        "(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V",
        "activityAwareHelper",
        "Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;",
        "nextLocalRequestCode",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "registry",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;",
        "addOnActivityAvailableListener",
        "",
        "listener",
        "Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onHostDestroy",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "onHostResume",
        "registerForActivityResult",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;",
        "I",
        "O",
        "Ljava/io/Serializable;",
        "contract",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "fallbackCallback",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;",
        "(Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeOnActivityAvailableListener",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activityAwareHelper:Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;

.field private final nextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final registry:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V
    .locals 7
    .param p1, "currentActivityProvider"    # Lexpo/modules/kotlin/providers/CurrentActivityProvider;

    const-string v0, "currentActivityProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;-><init>(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->registry:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->nextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;

    invoke-direct {v0}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->activityAwareHelper:Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;

    .line 41
    nop

    .line 42
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$1;-><init>(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 47
    nop

    .line 24
    return-void
.end method

.method public static final synthetic access$getNextLocalRequestCode$p(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    .line 23
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->nextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$getRegistry$p(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    .line 23
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->registry:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    return-object v0
.end method


# virtual methods
.method public addOnActivityAvailableListener(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;)V
    .locals 1
    .param p1, "listener"    # Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->activityAwareHelper:Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;->addOnActivityAvailableListener(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;)V

    .line 91
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->registry:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    .line 53
    return-void
.end method

.method public final onHostDestroy(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->registry:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->persistInstanceState(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public final onHostResume(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->activityAwareHelper:Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;->dispatchOnActivityAvailable(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 62
    return-void
.end method

.method public registerForActivityResult(Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .param p1, "contract"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;
    .param p2, "fallbackCallback"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Ljava/io/Serializable;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
            "TI;TO;>;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback<",
            "TI;TO;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher<",
            "TI;TO;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    move-object v6, p0

    check-cast v6, Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;

    .local v6, "$this$withActivityAvailable$iv":Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;
    const/4 v7, 0x0

    .line 100
    .local v7, "$i$f$withActivityAvailable":I
    const/4 v8, 0x0

    .line 101
    .local v8, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v9, p3

    .local v9, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v10, 0x0

    .line 102
    .local v10, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v9}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v11, v0

    .line 108
    .local v11, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 109
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/CancellableContinuation;

    .local v12, "continuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v13, 0x0

    .line 110
    .local v13, "$i$a$-suspendCancellableCoroutine-AppCompatActivityAwareKt$withActivityAvailable$2$iv":I
    new-instance v14, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$registerForActivityResult$$inlined$withActivityAvailable$1;

    move-object v0, v14

    move-object v1, v12

    move-object v2, v6

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$registerForActivityResult$$inlined$withActivityAvailable$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;Lexpo/modules/kotlin/activityresult/ActivityResultsManager;Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;)V

    .line 118
    .local v0, "listener$iv":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$registerForActivityResult$$inlined$withActivityAvailable$1;
    move-object v1, v0

    check-cast v1, Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

    invoke-interface {v6, v1}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;->addOnActivityAvailableListener(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;)V

    .line 119
    new-instance v1, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$registerForActivityResult$$inlined$withActivityAvailable$2;

    invoke-direct {v1, v6, v0}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager$registerForActivityResult$$inlined$withActivityAvailable$2;-><init>(Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;Lexpo/modules/kotlin/activityresult/ActivityResultsManager$registerForActivityResult$$inlined$withActivityAvailable$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 122
    nop

    .line 109
    .end local v0    # "listener$iv":Lexpo/modules/kotlin/activityresult/ActivityResultsManager$registerForActivityResult$$inlined$withActivityAvailable$1;
    .end local v12    # "continuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v13    # "$i$a$-suspendCancellableCoroutine-AppCompatActivityAwareKt$withActivityAvailable$2$iv":I
    nop

    .line 123
    invoke-virtual {v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 101
    .end local v9    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v10    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    .end local v11    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 124
    :cond_0
    nop

    .line 122
    .end local v8    # "$i$f$suspendCancellableCoroutine":I
    nop

    .line 83
    .end local v6    # "$this$withActivityAvailable$iv":Lexpo/modules/kotlin/activityaware/AppCompatActivityAware;
    .end local v7    # "$i$f$withActivityAvailable":I
    return-object v0
.end method

.method public removeOnActivityAvailableListener(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;)V
    .locals 1
    .param p1, "listener"    # Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->activityAwareHelper:Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;->removeOnActivityAvailableListener(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;)V

    .line 95
    return-void
.end method
