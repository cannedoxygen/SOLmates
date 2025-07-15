.class public Lcom/facebook/common/executors/ConstrainedExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ConstrainedExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mMaxConcurrency:I

.field private final mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mName:Ljava/lang/String;

.field private final mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTaskRunner:Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

.field private final mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmName(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingWorkers(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkQueue(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartWorkerIfNeeded(Lcom/facebook/common/executors/ConstrainedExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->startWorkerIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/facebook/common/executors/ConstrainedExecutorService;

    sput-object v0, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxConcurrency"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p4, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 49
    if-lez p2, :cond_0

    .line 52
    iput-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    iput p2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxConcurrency:I

    .line 55
    iput-object p4, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 56
    new-instance v0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;-><init>(Lcom/facebook/common/executors/ConstrainedExecutorService;Lcom/facebook/common/executors/ConstrainedExecutorService$Worker-IA;)V

    iput-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mTaskRunner:Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max concurrency must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newConstrainedExecutor(Ljava/lang/String;IILjava/util/concurrent/Executor;)Lcom/facebook/common/executors/ConstrainedExecutorService;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "maxConcurrency"    # I
    .param p2, "queueSize"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 73
    new-instance v0, Lcom/facebook/common/executors/ConstrainedExecutorService;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/facebook/common/executors/ConstrainedExecutorService;-><init>(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method private startWorkerIfNeeded()V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 119
    .local v0, "currentCount":I
    :goto_0
    iget v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxConcurrency:I

    if-ge v0, v1, :cond_1

    .line 120
    add-int/lit8 v1, v0, 0x1

    .line 121
    .local v1, "updatedCount":I
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    sget-object v2, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxConcurrency:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "%s: starting worker %d of %d"

    invoke-static {v2, v6, v3, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mTaskRunner:Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    goto :goto_1

    .line 128
    :cond_0
    sget-object v2, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    const-string v3, "%s: race in startWorkerIfNeeded; retrying"

    iget-object v4, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 130
    .end local v1    # "updatedCount":I
    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 93
    if-eqz p1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 102
    .local v0, "queueSize":I
    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 103
    .local v1, "maxSize":I
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "%s: max pending work in queue = %d"

    invoke-static {v2, v5, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->startWorkerIfNeeded()V

    .line 108
    return-void

    .line 98
    .end local v0    # "queueSize":I
    .end local v1    # "maxSize":I
    :cond_1
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queue is full, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "runnable parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIdle()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
