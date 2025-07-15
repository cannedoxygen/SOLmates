.class public abstract Lcom/facebook/react/bridge/GuardedResultAsyncTask;
.super Landroid/os/AsyncTask;
.source "GuardedResultAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private final mExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/JSExceptionHandler;)V
    .locals 0
    .param p1, "exceptionHandler"    # Lcom/facebook/react/bridge/JSExceptionHandler;

    .line 24
    .local p0, "this":Lcom/facebook/react/bridge/GuardedResultAsyncTask;, "Lcom/facebook/react/bridge/GuardedResultAsyncTask<TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/react/bridge/GuardedResultAsyncTask;->mExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 21
    .local p0, "this":Lcom/facebook/react/bridge/GuardedResultAsyncTask;, "Lcom/facebook/react/bridge/GuardedResultAsyncTask<TResult;>;"
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getExceptionHandler()Lcom/facebook/react/bridge/JSExceptionHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/GuardedResultAsyncTask;-><init>(Lcom/facebook/react/bridge/JSExceptionHandler;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    .local p0, "this":Lcom/facebook/react/bridge/GuardedResultAsyncTask;, "Lcom/facebook/react/bridge/GuardedResultAsyncTask<TResult;>;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/GuardedResultAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/facebook/react/bridge/GuardedResultAsyncTask;, "Lcom/facebook/react/bridge/GuardedResultAsyncTask<TResult;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/GuardedResultAsyncTask;->doInBackgroundGuarded()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/facebook/react/bridge/GuardedResultAsyncTask;->mExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/JSExceptionHandler;->handleException(Ljava/lang/Exception;)V

    .line 34
    throw v0
.end method

.method protected abstract doInBackgroundGuarded()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/facebook/react/bridge/GuardedResultAsyncTask;, "Lcom/facebook/react/bridge/GuardedResultAsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/GuardedResultAsyncTask;->onPostExecuteGuarded(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/facebook/react/bridge/GuardedResultAsyncTask;->mExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/JSExceptionHandler;->handleException(Ljava/lang/Exception;)V

    .line 45
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method protected abstract onPostExecuteGuarded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
