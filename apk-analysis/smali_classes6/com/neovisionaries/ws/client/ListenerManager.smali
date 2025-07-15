.class Lcom/neovisionaries/ws/client/ListenerManager;
.super Ljava/lang/Object;
.source "ListenerManager.java"


# instance fields
.field private mCopiedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncNeeded:Z

.field private final mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 1
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 35
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    .line 36
    return-void
.end method

.method private callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "listener"    # Lcom/neovisionaries/ws/client/WebSocketListener;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {p1, v0, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->handleCallbackError(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    .line 612
    :goto_0
    return-void
.end method

.method private getSynchronizedListeners()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mCopiedListeners:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 151
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    .line 152
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v1, "copiedListeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 156
    .local v3, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    nop

    .end local v3    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    goto :goto_0

    .line 160
    :cond_1
    iput-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mCopiedListeners:Ljava/util/List;

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 163
    monitor-exit v0

    return-object v1

    .line 164
    .end local v1    # "copiedListeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 47
    if-nez p1, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addListeners(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    if-nez p1, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 71
    .local v2, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    if-nez v2, :cond_1

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 78
    .end local v2    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    goto :goto_0

    .line 79
    :cond_2
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 285
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 289
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onBinaryFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    goto :goto_1

    .line 291
    :catchall_0
    move-exception v2

    .line 293
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 295
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public callOnBinaryMessage([B)V
    .locals 3
    .param p1, "message"    # [B

    .line 381
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 385
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onBinaryMessage(Lcom/neovisionaries/ws/client/WebSocket;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    goto :goto_1

    .line 387
    :catchall_0
    move-exception v2

    .line 389
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 391
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 301
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 305
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onCloseFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    goto :goto_1

    .line 307
    :catchall_0
    move-exception v2

    .line 309
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 311
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public callOnConnectError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;

    .line 202
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 206
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onConnectError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    goto :goto_1

    .line 208
    :catchall_0
    move-exception v2

    .line 210
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 212
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public callOnConnected(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 186
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 190
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onConnected(Lcom/neovisionaries/ws/client/WebSocket;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    goto :goto_1

    .line 192
    :catchall_0
    move-exception v2

    .line 194
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 196
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 253
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 257
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onContinuationFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    goto :goto_1

    .line 259
    :catchall_0
    move-exception v2

    .line 261
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 263
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method public callOnDisconnected(Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V
    .locals 3
    .param p1, "serverCloseFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .param p2, "clientCloseFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .param p3, "closedByServer"    # Z

    .line 220
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 224
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/neovisionaries/ws/client/WebSocketListener;->onDisconnected(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    goto :goto_1

    .line 227
    :catchall_0
    move-exception v2

    .line 229
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 231
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;

    .line 493
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 497
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    goto :goto_1

    .line 499
    :catchall_0
    move-exception v2

    .line 501
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 503
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 504
    :cond_0
    return-void
.end method

.method public callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 237
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 241
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    goto :goto_1

    .line 243
    :catchall_0
    move-exception v2

    .line 245
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 247
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 509
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 513
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrameError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    goto :goto_1

    .line 515
    :catchall_0
    move-exception v2

    .line 517
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 519
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method

.method public callOnFrameSent(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 413
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 417
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrameSent(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    goto :goto_1

    .line 419
    :catchall_0
    move-exception v2

    .line 421
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 423
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method public callOnFrameUnsent(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 429
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 433
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrameUnsent(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    goto :goto_1

    .line 435
    :catchall_0
    move-exception v2

    .line 437
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 439
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method public callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p2, "compressed"    # [B

    .line 541
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 545
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    goto :goto_1

    .line 547
    :catchall_0
    move-exception v2

    .line 549
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 551
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method public callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketException;",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)V"
        }
    .end annotation

    .line 525
    .local p2, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketFrame;>;"
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 529
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onMessageError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    goto :goto_1

    .line 531
    :catchall_0
    move-exception v2

    .line 533
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 535
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 536
    :cond_0
    return-void
.end method

.method public callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 317
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 321
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onPingFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    goto :goto_1

    .line 323
    :catchall_0
    move-exception v2

    .line 325
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 327
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method public callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 333
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 337
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onPongFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    goto :goto_1

    .line 339
    :catchall_0
    move-exception v2

    .line 341
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 343
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public callOnSendError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 573
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 577
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onSendError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    goto :goto_1

    .line 579
    :catchall_0
    move-exception v2

    .line 581
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 583
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 584
    :cond_0
    return-void
.end method

.method public callOnSendingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 397
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 401
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onSendingFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    goto :goto_1

    .line 403
    :catchall_0
    move-exception v2

    .line 405
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 407
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method public callOnSendingHandshake(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 617
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 621
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onSendingHandshake(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    goto :goto_1

    .line 623
    :catchall_0
    move-exception v2

    .line 625
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 627
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 628
    :cond_0
    return-void
.end method

.method public callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V
    .locals 3
    .param p1, "newState"    # Lcom/neovisionaries/ws/client/WebSocketState;

    .line 170
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 174
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onStateChanged(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    goto :goto_1

    .line 176
    :catchall_0
    move-exception v2

    .line 178
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 180
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 269
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 273
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onTextFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    goto :goto_1

    .line 275
    :catchall_0
    move-exception v2

    .line 277
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 279
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public callOnTextMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 353
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onTextMessage(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    goto :goto_1

    .line 355
    :catchall_0
    move-exception v2

    .line 357
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 359
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method public callOnTextMessage([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 365
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 369
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onTextMessage(Lcom/neovisionaries/ws/client/WebSocket;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    goto :goto_1

    .line 371
    :catchall_0
    move-exception v2

    .line 373
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 375
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method

.method public callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p2, "data"    # [B

    .line 557
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 561
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onTextMessageError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    goto :goto_1

    .line 563
    :catchall_0
    move-exception v2

    .line 565
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 567
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 568
    :cond_0
    return-void
.end method

.method public callOnThreadCreated(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 3
    .param p1, "threadType"    # Lcom/neovisionaries/ws/client/ThreadType;
    .param p2, "thread"    # Ljava/lang/Thread;

    .line 445
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 449
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onThreadCreated(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    goto :goto_1

    .line 451
    :catchall_0
    move-exception v2

    .line 453
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 455
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 456
    :cond_0
    return-void
.end method

.method public callOnThreadStarted(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 3
    .param p1, "threadType"    # Lcom/neovisionaries/ws/client/ThreadType;
    .param p2, "thread"    # Ljava/lang/Thread;

    .line 461
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 465
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onThreadStarted(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    goto :goto_1

    .line 467
    :catchall_0
    move-exception v2

    .line 469
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 471
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method

.method public callOnThreadStopping(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 3
    .param p1, "threadType"    # Lcom/neovisionaries/ws/client/ThreadType;
    .param p2, "thread"    # Ljava/lang/Thread;

    .line 477
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 481
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onThreadStopping(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    goto :goto_1

    .line 483
    :catchall_0
    move-exception v2

    .line 485
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 487
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method public callOnUnexpectedError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 3
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;

    .line 589
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 593
    .local v1, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onUnexpectedError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    goto :goto_1

    .line 595
    :catchall_0
    move-exception v2

    .line 597
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    .line 599
    .end local v1    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 600
    :cond_0
    return-void
.end method

.method public clearListeners()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 131
    monitor-exit v0

    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mCopiedListeners:Ljava/util/List;

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public removeListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 85
    if-nez p1, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 96
    :cond_1
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListeners(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 111
    .local v2, "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    if-nez v2, :cond_1

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 120
    .end local v2    # "listener":Lcom/neovisionaries/ws/client/WebSocketListener;
    :cond_2
    goto :goto_0

    .line 121
    :cond_3
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
