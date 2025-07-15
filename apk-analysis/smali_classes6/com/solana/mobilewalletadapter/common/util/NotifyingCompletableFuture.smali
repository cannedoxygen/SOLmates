.class public Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;
.super Ljava/lang/Object;
.source "NotifyingCompletableFuture.java"

# interfaces
.implements Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mIsCancelled:Z

.field private mIsComplete:Z

.field private mOnCompleteCallback:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<",
            "-",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dispatchOnCompletionNotification()V
    .locals 2

    .line 142
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mOnCompleteCallback:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;

    .line 144
    .local v0, "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<TT;>;>;"
    if-nez v0, :cond_0

    .line 145
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mOnCompleteCallback:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-interface {v0, p0}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;->onComplete(Ljava/util/concurrent/Future;)V

    .line 150
    return-void

    .line 148
    .end local v0    # "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<TT;>;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 50
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    monitor-enter p0

    .line 51
    :try_start_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-eqz v0, :cond_0

    .line 52
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    .line 55
    iput-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsCancelled:Z

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->dispatchOnCompletionNotification()V

    .line 59
    return v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-eqz v0, :cond_0

    .line 25
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    .line 28
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mResult:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->dispatchOnCompletionNotification()V

    .line 32
    return v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public completeExceptionally(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 36
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-eqz v0, :cond_0

    .line 38
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    .line 41
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mException:Ljava/lang/Exception;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->dispatchOnCompletionNotification()V

    .line 45
    return v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    monitor-enter p0

    .line 80
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsCancelled:Z

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mResult:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 84
    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    if-eqz p3, :cond_5

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 102
    .local v0, "deadline":J
    :goto_0
    iget-boolean v2, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-nez v2, :cond_1

    .line 103
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 104
    .local v2, "now":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    sub-long v4, v0, v2

    invoke-virtual {p3, p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 106
    .end local v2    # "now":J
    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-eqz v2, :cond_4

    .line 110
    iget-boolean v2, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsCancelled:Z

    if-nez v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mException:Ljava/lang/Exception;

    if-nez v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mResult:Ljava/lang/Object;

    monitor-exit p0

    return-object v2

    .line 113
    :cond_2
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mException:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v2

    .line 111
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_3
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v2

    .line 109
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_4
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v2

    .line 116
    .end local v0    # "deadline":J
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time unit specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 64
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsCancelled:Z

    monitor-exit p0

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .line 71
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    monitor-exit p0

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyOnComplete(Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<",
            "-",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    .local p1, "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<TT;>;>;"
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mOnCompleteCallback:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;

    if-nez v0, :cond_2

    .line 127
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .local v0, "completeImmediately":Z
    goto :goto_0

    .line 130
    .end local v0    # "completeImmediately":Z
    :cond_0
    const/4 v0, 0x0

    .line 131
    .restart local v0    # "completeImmediately":Z
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mOnCompleteCallback:Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;

    .line 133
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {p1, p0}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;->onComplete(Ljava/util/concurrent/Future;)V

    .line 138
    :cond_1
    return-void

    .line 124
    .end local v0    # "completeImmediately":Z
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only a single completion callback may be registered"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<TT;>;>;"
    throw v0

    .line 133
    .restart local p1    # "cb":Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback;, "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture$OnCompleteCallback<-Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<TT;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    .local p0, "this":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<TT;>;"
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "NotifyingCompletableFuture{CANCELLED}"

    .local v0, "s":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-boolean v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mIsComplete:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mResult:Ljava/lang/Object;

    const/16 v1, 0x7d

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyingCompletableFuture{COMPLETE, mResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mResult:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyingCompletableFuture{EXCEPTION, mException="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    const-string v0, "NotifyingCompletableFuture{NOT_COMPLETE}"

    .line 167
    .restart local v0    # "s":Ljava/lang/String;
    :goto_0
    return-object v0
.end method
