.class public Lexpo/modules/imageloader/SimpleSettableFuture;
.super Ljava/lang/Object;
.source "SimpleSettableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private final mReadyLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private checkNotSet()V
    .locals 4

    .line 116
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Result has already been set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 45
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

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
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 62
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mResult:Ljava/lang/Object;

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
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
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mResult:Ljava/lang/Object;

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timed out waiting for result"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/imageloader/SimpleSettableFuture;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOrThrow(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/imageloader/SimpleSettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 50
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 4

    .line 55
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lexpo/modules/imageloader/SimpleSettableFuture;->checkNotSet()V

    .line 29
    iput-object p1, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mResult:Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 31
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 38
    .local p0, "this":Lexpo/modules/imageloader/SimpleSettableFuture;, "Lexpo/modules/imageloader/SimpleSettableFuture<TT;>;"
    invoke-direct {p0}, Lexpo/modules/imageloader/SimpleSettableFuture;->checkNotSet()V

    .line 39
    iput-object p1, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mException:Ljava/lang/Exception;

    .line 40
    iget-object v0, p0, Lexpo/modules/imageloader/SimpleSettableFuture;->mReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    return-void
.end method
