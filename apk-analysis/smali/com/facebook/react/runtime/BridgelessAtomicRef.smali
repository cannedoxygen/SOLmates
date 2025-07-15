.class Lcom/facebook/react/runtime/BridgelessAtomicRef;
.super Ljava/lang/Object;
.source "BridgelessAtomicRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/runtime/BridgelessAtomicRef$State;,
        Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile failureMessage:Ljava/lang/String;

.field mInitialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    .local p0, "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/runtime/BridgelessAtomicRef;-><init>(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->mValue:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->mInitialValue:Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Init:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    iput-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->failureMessage:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->mValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    .end local p0    # "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAndReset()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/runtime/BridgelessAtomicRef;->get()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/facebook/react/runtime/BridgelessAtomicRef;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-object v0

    .line 112
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    .end local p0    # "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getNullable()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 129
    .end local p0    # "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getOrCreate(Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    .local p1, "provider":Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;, "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<TT;>;"
    const/4 v0, 0x0

    .line 51
    .local v0, "shouldCreate":Z
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    sget-object v2, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Success:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/facebook/react/runtime/BridgelessAtomicRef;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    sget-object v2, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Failure:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    if-eq v1, v2, :cond_6

    .line 61
    iget-object v1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    sget-object v2, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Creating:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    if-eq v1, v2, :cond_1

    .line 62
    sget-object v1, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Creating:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    iput-object v1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    .line 63
    const/4 v0, 0x1

    .line 65
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 67
    if-eqz v0, :cond_2

    .line 70
    :try_start_1
    invoke-interface {p1}, Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->mValue:Ljava/lang/Object;

    .line 72
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :try_start_2
    sget-object v1, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Success:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    iput-object v1, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/react/runtime/BridgelessAtomicRef;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "shouldCreate":Z
    .end local p1    # "provider":Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;, "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<TT;>;"
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    .restart local v0    # "shouldCreate":Z
    .restart local p1    # "provider":Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;, "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<TT;>;"
    :catch_0
    move-exception v1

    .line 78
    .local v1, "ex":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 79
    :try_start_4
    sget-object v2, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Failure:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    iput-object v2, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    .line 80
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v3, "null"

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->failureMessage:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 83
    .end local v2    # "message":Ljava/lang/String;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "BridgelessAtomicRef: Failed to create object."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 83
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 89
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    monitor-enter p0

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "wasInterrupted":Z
    :goto_0
    :try_start_6
    iget-object v2, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    sget-object v3, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Creating:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v2, v3, :cond_3

    .line 93
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 96
    :goto_1
    goto :goto_0

    .line 94
    :catch_1
    move-exception v2

    .line 95
    .local v2, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .end local v2    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 99
    :cond_3
    if-eqz v1, :cond_4

    .line 100
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    sget-object v3, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Failure:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    if-eq v2, v3, :cond_5

    .line 108
    invoke-virtual {p0}, Lcom/facebook/react/runtime/BridgelessAtomicRef;->get()Ljava/lang/Object;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 104
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BridgelessAtomicRef: Failed to create object. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->failureMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "shouldCreate":Z
    .end local p1    # "provider":Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;, "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<TT;>;"
    throw v2

    .line 109
    .end local v1    # "wasInterrupted":Z
    .restart local v0    # "shouldCreate":Z
    .restart local p1    # "provider":Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;, "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<TT;>;"
    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .line 57
    :cond_6
    :try_start_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BridgelessAtomicRef: Failed to create object. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->failureMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "shouldCreate":Z
    .end local p1    # "provider":Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;, "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<TT;>;"
    throw v1

    .line 65
    .restart local v0    # "shouldCreate":Z
    .restart local p1    # "provider":Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider;, "Lcom/facebook/react/runtime/BridgelessAtomicRef$Provider<TT;>;"
    :catchall_3
    move-exception v1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .local p0, "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->mInitialValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->mValue:Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/facebook/react/runtime/BridgelessAtomicRef$State;->Init:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    iput-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->state:Lcom/facebook/react/runtime/BridgelessAtomicRef$State;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/react/runtime/BridgelessAtomicRef;->failureMessage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 118
    .end local p0    # "this":Lcom/facebook/react/runtime/BridgelessAtomicRef;, "Lcom/facebook/react/runtime/BridgelessAtomicRef<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
