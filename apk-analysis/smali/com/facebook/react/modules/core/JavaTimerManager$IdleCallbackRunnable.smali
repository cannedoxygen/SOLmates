.class final Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;
.super Ljava/lang/Object;
.source "JavaTimerManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/JavaTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleCallbackRunnable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaTimerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaTimerManager.kt\ncom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,366:1\n1#2:367\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;",
        "Ljava/lang/Runnable;",
        "frameStartTime",
        "",
        "(Lcom/facebook/react/modules/core/JavaTimerManager;J)V",
        "isCancelled",
        "",
        "cancel",
        "",
        "run",
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
.field private final frameStartTime:J

.field private volatile isCancelled:Z

.field final synthetic this$0:Lcom/facebook/react/modules/core/JavaTimerManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/core/JavaTimerManager;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/core/JavaTimerManager;
    .param p2, "frameStartTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->frameStartTime:J

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->isCancelled:Z

    .line 347
    return-void
.end method

.method public run()V
    .locals 14

    .line 326
    iget-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->frameStartTime:J

    const v2, 0xf4240

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 330
    .local v0, "frameTimeMillis":J
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 331
    .local v2, "timeSinceBoot":J
    sub-long v4, v2, v0

    .line 332
    .local v4, "frameTimeElapsed":J
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->currentTimeMillis()J

    move-result-wide v6

    .line 333
    .local v6, "time":J
    sub-long v8, v6, v4

    .line 334
    .local v8, "absoluteFrameStartTime":J
    const v10, 0x41855555

    long-to-float v11, v4

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 335
    return-void

    .line 337
    :cond_1
    const/4 v10, 0x0

    .line 338
    .local v10, "sendIdleEvents":Z
    iget-object v11, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {v11}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getIdleCallbackGuard$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    monitor-enter v11

    .line 367
    const/4 v13, 0x0

    .line 338
    .local v13, "$i$a$-synchronized-JavaTimerManager$IdleCallbackRunnable$run$1":I
    :try_start_0
    invoke-static {v12}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getSendIdleEvents$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Z

    move-result v12

    move v10, v12

    .end local v13    # "$i$a$-synchronized-JavaTimerManager$IdleCallbackRunnable$run$1":I
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 339
    if-eqz v10, :cond_2

    .line 340
    iget-object v11, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {v11}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$getJavaScriptTimerExecutor$p(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;

    move-result-object v11

    long-to-double v12, v8

    invoke-interface {v11, v12, v13}, Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;->callIdleCallbacks(D)V

    .line 342
    :cond_2
    iget-object v11, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/facebook/react/modules/core/JavaTimerManager;->access$setCurrentIdleCallbackRunnable$p(Lcom/facebook/react/modules/core/JavaTimerManager;Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;)V

    .line 343
    return-void

    .line 338
    :catchall_0
    move-exception v12

    monitor-exit v11

    throw v12
.end method
