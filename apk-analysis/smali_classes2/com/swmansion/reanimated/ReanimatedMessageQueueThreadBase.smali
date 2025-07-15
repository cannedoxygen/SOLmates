.class public abstract Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;
.super Ljava/lang/Object;
.source "ReanimatedMessageQueueThreadBase.java"

# interfaces
.implements Lcom/facebook/react/bridge/queue/MessageQueueThread;


# instance fields
.field protected final messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    nop

    .line 23
    invoke-static {}, Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;->mainThreadSpec()Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;

    move-result-object v0

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase$$ExternalSyntheticLambda0;-><init>()V

    .line 22
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->create(Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    .line 27
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public assertIsOnThread()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->assertIsOnThread()V

    .line 42
    return-void
.end method

.method public assertIsOnThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->assertIsOnThread(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public callOnQueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 31
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->callOnQueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getPerfStats()Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->getPerfStats()Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;

    move-result-object v0

    return-object v0
.end method

.method public isOnThread()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->isOnThread()Z

    move-result v0

    return v0
.end method

.method public quitSynchronous()V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mIsFinished"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    .local v0, "mIsFinished":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    iget-object v2, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "mIsFinished":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    return-void
.end method

.method public resetPerfStats()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedMessageQueueThreadBase;->messageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->resetPerfStats()V

    .line 71
    return-void
.end method
