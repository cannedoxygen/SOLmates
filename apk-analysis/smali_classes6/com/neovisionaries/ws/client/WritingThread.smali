.class Lcom/neovisionaries/ws/client/WritingThread;
.super Lcom/neovisionaries/ws/client/WebSocketThread;
.source "WritingThread.java"


# static fields
.field private static final FLUSH_THRESHOLD:I = 0x3e8

.field private static final SHOULD_CONTINUE:I = 0x2

.field private static final SHOULD_FLUSH:I = 0x3

.field private static final SHOULD_SEND:I = 0x0

.field private static final SHOULD_STOP:I = 0x1


# instance fields
.field private mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

.field private mFlushNeeded:Z

.field private final mFrames:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

.field private mStopRequested:Z

.field private mStopped:Z


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 2
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;

    .line 43
    const-string v0, "WritingThread"

    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->WRITING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-direct {p0, v0, p1, v1}, Lcom/neovisionaries/ws/client/WebSocketThread;-><init>(Ljava/lang/String;Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;)V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    .line 46
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocket;->getPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    .line 47
    return-void
.end method

.method private addHighPriorityFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 4
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 226
    const/4 v0, 0x0

    .line 230
    .local v0, "index":I
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 233
    .local v2, "f":Lcom/neovisionaries/ws/client/WebSocketFrame;
    invoke-static {v2}, Lcom/neovisionaries/ws/client/WritingThread;->isHighPriorityFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    goto :goto_1

    .line 238
    :cond_0
    nop

    .end local v2    # "f":Lcom/neovisionaries/ws/client/WebSocketFrame;
    add-int/lit8 v0, v0, 0x1

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 242
    return-void
.end method

.method private changeToClosing()V
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getStateManager()Lcom/neovisionaries/ws/client/StateManager;

    move-result-object v0

    .line 512
    .local v0, "manager":Lcom/neovisionaries/ws/client/StateManager;
    const/4 v1, 0x0

    .line 514
    .local v1, "stateChanged":Z
    monitor-enter v0

    .line 517
    :try_start_0
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v2

    .line 520
    .local v2, "state":Lcom/neovisionaries/ws/client/WebSocketState;
    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v2, v3, :cond_0

    .line 523
    sget-object v3, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-virtual {v0, v3}, Lcom/neovisionaries/ws/client/StateManager;->changeToClosing(Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;)V

    .line 525
    const/4 v1, 0x1

    .line 527
    .end local v2    # "state":Lcom/neovisionaries/ws/client/WebSocketState;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    if-eqz v1, :cond_1

    .line 532
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v2

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v2, v3}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 534
    :cond_1
    return-void

    .line 527
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private doFlush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->flush()V

    .line 424
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFlushNeeded:Z

    .line 427
    monitor-exit p0

    .line 442
    nop

    .line 443
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 429
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->FLUSH_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flushing frames to the server failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 434
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    .local v1, "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v2

    .line 438
    .local v2, "manager":Lcom/neovisionaries/ws/client/ListenerManager;
    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 439
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnSendError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 441
    throw v1
.end method

.method private flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getOutput()Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->flush()V

    .line 272
    return-void
.end method

.method private flushIfLongInterval(J)J
    .locals 6
    .param p1, "lastFlushAt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    .local v0, "current":J
    const-wide/16 v2, 0x3e8

    sub-long v4, v0, p1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->doFlush()V

    .line 407
    return-wide v0

    .line 412
    :cond_0
    return-wide p1
.end method

.method private flushIgnoreError()V
    .locals 1

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 266
    :goto_0
    return-void
.end method

.method private isFlushNeeded(Z)Z
    .locals 1
    .param p1, "last"    # Z

    .line 391
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->isAutoFlush()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFlushNeeded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isHighPriorityFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 1
    .param p0, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 220
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isPingFrame()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isPongFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private main()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->onWritingThreadStarted()V

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->waitForFrames()I

    move-result v0

    .line 91
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    goto :goto_1

    .line 95
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->flushIgnoreError()V

    .line 98
    goto :goto_0

    .line 100
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 102
    goto :goto_0

    .line 108
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/neovisionaries/ws/client/WritingThread;->sendFrames(Z)V
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 115
    .end local v0    # "result":I
    goto :goto_0

    .line 110
    .restart local v0    # "result":I
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Lcom/neovisionaries/ws/client/WebSocketException;
    nop

    .line 120
    .end local v0    # "result":I
    .end local v2    # "e":Lcom/neovisionaries/ws/client/WebSocketException;
    :goto_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/WritingThread;->sendFrames(Z)V
    :try_end_1
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    .line 126
    :goto_2
    return-void
.end method

.method private notifyFinished()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->onWritingThreadFinished(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 540
    return-void
.end method

.method private sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 6
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    invoke-static {p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->compressFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    .line 452
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnSendingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 454
    const/4 v0, 0x0

    .line 457
    .local v0, "unsent":Z
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    if-eqz v1, :cond_0

    .line 460
    const/4 v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isCloseFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 468
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 471
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnFrameUnsent(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 472
    return-void

    .line 476
    :cond_2
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isCloseFrame()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->changeToClosing()V

    .line 486
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocket;->getOutput()Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    nop

    .line 504
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnFrameSent(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 505
    return-void

    .line 488
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->IO_ERROR_IN_WRITING:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An I/O error occurred when a frame was tried to be sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 493
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    .local v2, "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    iget-object v3, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v3}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v3

    .line 497
    .local v3, "manager":Lcom/neovisionaries/ws/client/ListenerManager;
    invoke-virtual {v3, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 498
    invoke-virtual {v3, v2, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnSendError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 500
    throw v2
.end method

.method private sendFrames(Z)V
    .locals 4
    .param p1, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    .local v0, "lastFlushAt":J
    :goto_0
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 349
    .local v2, "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 352
    if-nez v2, :cond_1

    .line 355
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v2    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WritingThread;->isFlushNeeded(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->doFlush()V

    .line 386
    :cond_0
    return-void

    .line 357
    .restart local v2    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    invoke-direct {p0, v2}, Lcom/neovisionaries/ws/client/WritingThread;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 363
    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isPingFrame()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isPongFrame()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 372
    :cond_2
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WritingThread;->isFlushNeeded(Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 375
    goto :goto_0

    .line 379
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/WritingThread;->flushIfLongInterval(J)J

    move-result-wide v0

    .line 380
    .end local v2    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    goto :goto_0

    .line 366
    .restart local v2    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->doFlush()V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 368
    goto :goto_0

    .line 357
    .end local v2    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private waitForFrames()I
    .locals 4

    .line 277
    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mStopRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 282
    monitor-exit p0

    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    if-eqz v0, :cond_1

    .line 288
    monitor-exit p0

    return v1

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 295
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFlushNeeded:Z

    if-eqz v0, :cond_2

    .line 297
    iput-boolean v3, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFlushNeeded:Z

    .line 298
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 305
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 312
    :cond_3
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mStopRequested:Z

    if-eqz v0, :cond_4

    .line 314
    monitor-exit p0

    return v1

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 319
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFlushNeeded:Z

    if-eqz v0, :cond_5

    .line 321
    iput-boolean v3, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFlushNeeded:Z

    .line 322
    monitor-exit p0

    return v2

    .line 326
    :cond_5
    monitor-exit p0

    const/4 v0, 0x2

    return v0

    .line 328
    :cond_6
    monitor-exit p0

    .line 330
    return v3

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public queueFlush()V
    .locals 1

    .line 247
    monitor-enter p0

    .line 249
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFlushNeeded:Z

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 2
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 144
    monitor-enter p0

    .line 149
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mStopped:Z

    if-eqz v0, :cond_0

    .line 152
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mStopRequested:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    if-eqz v0, :cond_1

    .line 160
    goto :goto_2

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    goto :goto_2

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getFrameQueueSize()I

    move-result v0

    .line 174
    .local v0, "queueSize":I
    if-nez v0, :cond_3

    .line 177
    goto :goto_2

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v0, :cond_4

    .line 184
    goto :goto_2

    .line 190
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    goto :goto_1

    .line 192
    :catch_0
    move-exception v1

    .line 195
    .end local v0    # "queueSize":I
    :goto_1
    goto :goto_0

    .line 198
    :cond_5
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WritingThread;->isHighPriorityFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WritingThread;->addHighPriorityFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    goto :goto_3

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 210
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 211
    monitor-exit p0

    .line 214
    const/4 v0, 0x1

    return v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestStop()V
    .locals 1

    .line 131
    monitor-enter p0

    .line 134
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mStopRequested:Z

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runMain()V
    .locals 5

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->main()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An uncaught throwable was detected in the writing thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .local v1, "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WritingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v2

    .line 66
    .local v2, "manager":Lcom/neovisionaries/ws/client/ListenerManager;
    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 67
    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnUnexpectedError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 70
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    .end local v2    # "manager":Lcom/neovisionaries/ws/client/ListenerManager;
    :goto_0
    monitor-enter p0

    .line 73
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WritingThread;->mStopped:Z

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WritingThread;->notifyFinished()V

    .line 79
    return-void

    .line 75
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
