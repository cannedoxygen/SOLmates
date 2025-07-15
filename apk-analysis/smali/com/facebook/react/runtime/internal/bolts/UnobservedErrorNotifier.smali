.class Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;
.super Ljava/lang/Object;
.source "UnobservedErrorNotifier.java"


# instance fields
.field private task:Lcom/facebook/react/runtime/internal/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/runtime/internal/bolts/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "*>;)V"
        }
    .end annotation

    .line 20
    .local p1, "task":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;->task:Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 22
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;->task:Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 28
    .local v0, "faultedTask":Lcom/facebook/react/runtime/internal/bolts/Task;
    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/facebook/react/runtime/internal/bolts/Task;->getUnobservedExceptionHandler()Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;

    move-result-object v1

    .line 30
    .local v1, "ueh":Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;
    if-eqz v1, :cond_0

    .line 31
    new-instance v2, Lcom/facebook/react/runtime/internal/bolts/UnobservedTaskException;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/runtime/internal/bolts/UnobservedTaskException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;->unobservedException(Lcom/facebook/react/runtime/internal/bolts/Task;Lcom/facebook/react/runtime/internal/bolts/UnobservedTaskException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v0    # "faultedTask":Lcom/facebook/react/runtime/internal/bolts/Task;
    .end local v1    # "ueh":Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    nop

    .line 37
    return-void

    .line 35
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    throw v0
.end method

.method public setObserved()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;->task:Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 41
    return-void
.end method
