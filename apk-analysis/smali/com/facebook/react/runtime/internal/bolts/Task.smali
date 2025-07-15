.class public Lcom/facebook/react/runtime/internal/bolts/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/facebook/react/interfaces/TaskInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/react/interfaces/TaskInterface<",
        "TTResult;>;"
    }
.end annotation


# static fields
.field public static final IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static TASK_CANCELLED:Lcom/facebook/react/runtime/internal/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "*>;"
        }
    .end annotation
.end field

.field private static TASK_FALSE:Lcom/facebook/react/runtime/internal/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static TASK_NULL:Lcom/facebook/react/runtime/internal/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "*>;"
        }
    .end annotation
.end field

.field private static TASK_TRUE:Lcom/facebook/react/runtime/internal/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile unobservedExceptionHandler:Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private errorHasBeenObserved:Z

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private unobservedErrorNotifier:Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;


# direct methods
.method static bridge synthetic -$$Nest$smcompleteAfterTask(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/runtime/internal/bolts/Task;->completeAfterTask(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcompleteImmediately(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/runtime/internal/bolts/Task;->completeImmediately(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Executors;->IMMEDIATE:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 33
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Executors;->UI_THREAD:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 551
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/runtime/internal/bolts/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_NULL:Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 552
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/react/runtime/internal/bolts/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_TRUE:Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 553
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/react/runtime/internal/bolts/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_FALSE:Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 554
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task;

    invoke-direct {v0, v1}, Lcom/facebook/react/runtime/internal/bolts/Task;-><init>(Z)V

    sput-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_CANCELLED:Lcom/facebook/react/runtime/internal/bolts/Task;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 84
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->continuations:Ljava/util/List;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->continuations:Ljava/util/List;

    .line 87
    invoke-virtual {p0, p1}, Lcom/facebook/react/runtime/internal/bolts/Task;->trySetResult(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "cancelled"    # Z

    .line 90
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->continuations:Ljava/util/List;

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->trySetCancelled()Z

    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->trySetResult(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    return-void
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 262
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 233
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;-><init>()V

    .line 235
    .local v0, "tcs":Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;, "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<TTResult;>;"
    :try_start_0
    new-instance v1, Lcom/facebook/react/runtime/internal/bolts/Task$2;

    invoke-direct {v1, v0, p0}, Lcom/facebook/react/runtime/internal/bolts/Task$2;-><init>(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/facebook/react/runtime/internal/bolts/ExecutorException;

    invoke-direct {v2, v1}, Lcom/facebook/react/runtime/internal/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->getTask()Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static cancelled()Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_CANCELLED:Lcom/facebook/react/runtime/internal/bolts/Task;

    return-object v0
.end method

.method private static completeAfterTask(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<",
            "TTContinuationResult;>;",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 455
    .local p0, "tcs":Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;, "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<TTContinuationResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;Lcom/facebook/react/runtime/internal/bolts/Task<TTContinuationResult;>;>;"
    .local p2, "task":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    :try_start_0
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task$8;

    invoke-direct {v0, p1, p2, p0}, Lcom/facebook/react/runtime/internal/bolts/Task$8;-><init>(Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/facebook/react/runtime/internal/bolts/ExecutorException;

    invoke-direct {v1, v0}, Lcom/facebook/react/runtime/internal/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static completeImmediately(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<",
            "TTContinuationResult;>;",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 418
    .local p0, "tcs":Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;, "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<TTContinuationResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;TTContinuationResult;>;"
    .local p2, "task":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    :try_start_0
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task$7;

    invoke-direct {v0, p1, p2, p0}, Lcom/facebook/react/runtime/internal/bolts/Task$7;-><init>(Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/facebook/react/runtime/internal/bolts/ExecutorException;

    invoke-direct {v1, v0}, Lcom/facebook/react/runtime/internal/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static create()Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task;

    invoke-direct {v0}, Lcom/facebook/react/runtime/internal/bolts/Task;-><init>()V

    .line 100
    .local v0, "task":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    new-instance v1, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;

    invoke-direct {v1}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;-><init>()V

    return-object v1
.end method

.method public static forError(Ljava/lang/Exception;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 2
    .param p0, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;-><init>()V

    .line 204
    .local v0, "tcs":Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;, "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {v0, p0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 205
    invoke-virtual {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->getTask()Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static forResult(Ljava/lang/Object;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 190
    .local p0, "value":Ljava/lang/Object;, "TTResult;"
    if-nez p0, :cond_0

    .line 191
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_NULL:Lcom/facebook/react/runtime/internal/bolts/Task;

    return-object v0

    .line 193
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 194
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_TRUE:Lcom/facebook/react/runtime/internal/bolts/Task;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->TASK_FALSE:Lcom/facebook/react/runtime/internal/bolts/Task;

    :goto_0
    return-object v0

    .line 196
    :cond_2
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;-><init>()V

    .line 197
    .local v0, "tcs":Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;, "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {v0, p0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->getTask()Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static getUnobservedExceptionHandler()Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;
    .locals 1

    .line 62
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->unobservedExceptionHandler:Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;

    return-object v0
.end method

.method private runContinuations()V
    .locals 4

    .line 492
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->continuations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/runtime/internal/bolts/Continuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    .local v2, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;*>;"
    :try_start_1
    invoke-interface {v2, p0}, Lcom/facebook/react/runtime/internal/bolts/Continuation;->then(Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    nop

    .line 501
    .end local v2    # "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;*>;"
    goto :goto_0

    .line 498
    .restart local v2    # "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;*>;"
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 502
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;*>;"
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->continuations:Ljava/util/List;

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static setUnobservedExceptionHandler(Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;)V
    .locals 0
    .param p0, "eh"    # Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;

    .line 72
    sput-object p0, Lcom/facebook/react/runtime/internal/bolts/Task;->unobservedExceptionHandler:Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;

    .line 73
    return-void
.end method


# virtual methods
.method public continueWith(Lcom/facebook/react/runtime/internal/bolts/Continuation;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->continueWith(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;-><init>()V

    .line 274
    .local v0, "tcs":Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;, "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<TTContinuationResult;>;"
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->isCompleted()Z

    move-result v2

    .line 276
    .local v2, "completed":Z
    if-nez v2, :cond_0

    .line 277
    iget-object v3, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->continuations:Ljava/util/List;

    new-instance v4, Lcom/facebook/react/runtime/internal/bolts/Task$3;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/facebook/react/runtime/internal/bolts/Task$3;-><init>(Lcom/facebook/react/runtime/internal/bolts/Task;Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    if-eqz v2, :cond_1

    .line 288
    invoke-static {v0, p1, p0, p2}, Lcom/facebook/react/runtime/internal/bolts/Task;->completeImmediately(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V

    .line 290
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->getTask()Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1

    .line 286
    .end local v2    # "completed":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public continueWithTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;Lcom/facebook/react/runtime/internal/bolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->continueWithTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;Lcom/facebook/react/runtime/internal/bolts/Task<TTContinuationResult;>;>;"
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;-><init>()V

    .line 311
    .local v0, "tcs":Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;, "Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource<TTContinuationResult;>;"
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->isCompleted()Z

    move-result v2

    .line 313
    .local v2, "completed":Z
    if-nez v2, :cond_0

    .line 314
    iget-object v3, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->continuations:Ljava/util/List;

    new-instance v4, Lcom/facebook/react/runtime/internal/bolts/Task$4;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/facebook/react/runtime/internal/bolts/Task$4;-><init>(Lcom/facebook/react/runtime/internal/bolts/Task;Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    if-eqz v2, :cond_1

    .line 325
    invoke-static {v0, p1, p0, p2}, Lcom/facebook/react/runtime/internal/bolts/Task;->completeAfterTask(Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;Lcom/facebook/react/runtime/internal/bolts/Continuation;Lcom/facebook/react/runtime/internal/bolts/Task;Ljava/util/concurrent/Executor;)V

    .line 327
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/react/runtime/internal/bolts/TaskCompletionSource;->getTask()Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1

    .line 323
    .end local v2    # "completed":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getError()Ljava/lang/Exception;
    .locals 2

    .line 149
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->error:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->errorHasBeenObserved:Z

    .line 152
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->unobservedErrorNotifier:Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->unobservedErrorNotifier:Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;

    invoke-virtual {v1}, Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;->setObserved()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->unobservedErrorNotifier:Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->error:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->result:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 2

    .line 119
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->cancelled:Z

    monitor-exit v0

    return v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCompleted()Z
    .locals 2

    .line 109
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->complete:Z

    monitor-exit v0

    return v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFaulted()Z
    .locals 2

    .line 129
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeVoid()Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/runtime/internal/bolts/Task$1;-><init>(Lcom/facebook/react/runtime/internal/bolts/Task;)V

    invoke-virtual {p0, v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->continueWithTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/facebook/react/runtime/internal/bolts/Continuation;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->onSuccess(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task$5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/runtime/internal/bolts/Task$5;-><init>(Lcom/facebook/react/runtime/internal/bolts/Task;Lcom/facebook/react/runtime/internal/bolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/runtime/internal/bolts/Task;->continueWithTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;Lcom/facebook/react/runtime/internal/bolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/facebook/react/runtime/internal/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->onSuccessTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/react/runtime/internal/bolts/Continuation;, "Lcom/facebook/react/runtime/internal/bolts/Continuation<TTResult;Lcom/facebook/react/runtime/internal/bolts/Task<TTContinuationResult;>;>;"
    new-instance v0, Lcom/facebook/react/runtime/internal/bolts/Task$6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/runtime/internal/bolts/Task$6;-><init>(Lcom/facebook/react/runtime/internal/bolts/Task;Lcom/facebook/react/runtime/internal/bolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/runtime/internal/bolts/Task;->continueWithTask(Lcom/facebook/react/runtime/internal/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method trySetCancelled()Z
    .locals 3

    .line 508
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->complete:Z

    if-eqz v1, :cond_0

    .line 510
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->complete:Z

    .line 513
    iput-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->cancelled:Z

    .line 514
    iget-object v2, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 515
    invoke-direct {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->runContinuations()V

    .line 516
    monitor-exit v0

    return v1

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method trySetError(Ljava/lang/Exception;)Z
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .line 536
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->complete:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 538
    monitor-exit v0

    return v2

    .line 540
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->complete:Z

    .line 541
    iput-object p1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->error:Ljava/lang/Exception;

    .line 542
    iput-boolean v2, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->errorHasBeenObserved:Z

    .line 543
    iget-object v2, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 544
    invoke-direct {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->runContinuations()V

    .line 545
    iget-boolean v2, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->errorHasBeenObserved:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/facebook/react/runtime/internal/bolts/Task;->getUnobservedExceptionHandler()Lcom/facebook/react/runtime/internal/bolts/Task$UnobservedExceptionHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 546
    new-instance v2, Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;

    invoke-direct {v2, p0}, Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;-><init>(Lcom/facebook/react/runtime/internal/bolts/Task;)V

    iput-object v2, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->unobservedErrorNotifier:Lcom/facebook/react/runtime/internal/bolts/UnobservedErrorNotifier;

    .line 547
    :cond_1
    monitor-exit v0

    return v1

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method trySetResult(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 522
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->complete:Z

    if-eqz v1, :cond_0

    .line 524
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->complete:Z

    .line 527
    iput-object p1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->result:Ljava/lang/Object;

    .line 528
    iget-object v2, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 529
    invoke-direct {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->runContinuations()V

    .line 530
    monitor-exit v0

    return v1

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 168
    :cond_0
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForCompletion(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/facebook/react/runtime/internal/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/runtime/internal/bolts/Task;->isCompleted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
