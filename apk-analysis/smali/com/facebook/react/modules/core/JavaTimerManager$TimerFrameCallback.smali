.class final Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;
.super Ljava/lang/Object;
.source "JavaTimerManager.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/JavaTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimerFrameCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;",
        "Landroid/view/Choreographer$FrameCallback;",
        "(Lcom/facebook/react/modules/core/JavaTimerManager;)V",
        "timersToCall",
        "Lcom/facebook/react/bridge/WritableArray;",
        "doFrame",
        "",
        "frameTimeNanos",
        "",
        "ReactAndroid_debug"
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
.field final synthetic this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

.field private timersToCall:Lcom/facebook/react/bridge/WritableArray;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/core/JavaTimerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/core/JavaTimerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 8
    .param p1, "frameTimeNanos"    # J

    .line 276
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {v0}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$isPaused$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {v0}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$isRunningTasks$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    const v0, 0xf4240

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 280
    .local v0, "frameTimeMillis":J
    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {v2}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getTimerGuard$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    monitor-enter v2

    const/4 v4, 0x0

    .line 281
    .local v4, "$i$a$-synchronized-JavaTimerManager$TimerFrameCallback$doFrame$1":I
    :goto_0
    :try_start_0
    invoke-static {v3}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getTimers$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/PriorityQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v3}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getTimers$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/PriorityQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;

    invoke-virtual {v5}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->getTargetTime()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_5

    .line 282
    invoke-static {v3}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getTimers$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/PriorityQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;

    .line 283
    .local v5, "timer":Lcom/facebook/react/modules/core/JavaTimerManager$Timer;
    if-nez v5, :cond_1

    .line 284
    goto :goto_1

    .line 286
    :cond_1
    iget-object v6, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->timersToCall:Lcom/facebook/react/bridge/WritableArray;

    if-nez v6, :cond_2

    .line 287
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->timersToCall:Lcom/facebook/react/bridge/WritableArray;

    .line 289
    :cond_2
    iget-object v6, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->timersToCall:Lcom/facebook/react/bridge/WritableArray;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->getTimerId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 290
    :cond_3
    invoke-virtual {v5}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->getRepeat()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 291
    invoke-virtual {v5}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->getInterval()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->setTargetTime(J)V

    .line 292
    invoke-static {v3}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getTimers$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/PriorityQueue;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_4
    invoke-static {v3}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getTimerIdsToTimers$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v5}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->getTimerId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    .end local v5    # "timer":Lcom/facebook/react/modules/core/JavaTimerManager$Timer;
    goto :goto_0

    .line 297
    :cond_5
    :goto_1
    nop

    .end local v4    # "$i$a$-synchronized-JavaTimerManager$TimerFrameCallback$doFrame$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v2

    .line 298
    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->timersToCall:Lcom/facebook/react/bridge/WritableArray;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    .local v2, "it":Lcom/facebook/react/bridge/WritableArray;
    const/4 v4, 0x0

    .line 299
    .local v4, "$i$a$-let-JavaTimerManager$TimerFrameCallback$doFrame$2":I
    invoke-static {v3}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getJavaScriptTimerExecutor$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;->callTimers(Lcom/facebook/react/bridge/WritableArray;)V

    .line 300
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->timersToCall:Lcom/facebook/react/bridge/WritableArray;

    .line 301
    nop

    .line 298
    .end local v2    # "it":Lcom/facebook/react/bridge/WritableArray;
    .end local v4    # "$i$a$-let-JavaTimerManager$TimerFrameCallback$doFrame$2":I
    nop

    .line 302
    :cond_6
    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {v2}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getReactChoreographer$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    move-object v4, p0

    check-cast v4, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Landroid/view/Choreographer$FrameCallback;)V

    .line 303
    return-void

    .line 280
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method
