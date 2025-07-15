.class public Lcom/neovisionaries/ws/client/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# static fields
.field private static final DEFAULT_CLOSE_DELAY:J = 0x2710L


# instance fields
.field private mAgreedExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mAgreedProtocol:Ljava/lang/String;

.field private mAutoFlush:Z

.field private mClientCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

.field private mDirectTextMessage:Z

.field private mExtended:Z

.field private mFrameQueueSize:I

.field private mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

.field private mInput:Lcom/neovisionaries/ws/client/WebSocketInputStream;

.field private final mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

.field private mMaxPayloadSize:I

.field private mMissingCloseFrameAllowed:Z

.field private mOnConnectedCalled:Z

.field private mOnConnectedCalledLock:Ljava/lang/Object;

.field private mOutput:Lcom/neovisionaries/ws/client/WebSocketOutputStream;

.field private mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

.field private final mPingSender:Lcom/neovisionaries/ws/client/PingSender;

.field private final mPongSender:Lcom/neovisionaries/ws/client/PongSender;

.field private mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

.field private mReadingThreadFinished:Z

.field private mReadingThreadStarted:Z

.field private mServerCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

.field private mServerHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

.field private final mStateManager:Lcom/neovisionaries/ws/client/StateManager;

.field private final mThreadsLock:Ljava/lang/Object;

.field private final mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

.field private mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

.field private mWritingThreadFinished:Z

.field private mWritingThreadStarted:Z


# direct methods
.method constructor <init>(Lcom/neovisionaries/ws/client/WebSocketFactory;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)V
    .locals 2
    .param p1, "factory"    # Lcom/neovisionaries/ws/client/WebSocketFactory;
    .param p2, "secure"    # Z
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "connector"    # Lcom/neovisionaries/ws/client/SocketConnector;

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    .line 1123
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    .line 1128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalledLock:Ljava/lang/Object;

    .line 1141
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    .line 1142
    iput-object p6, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    .line 1143
    new-instance v0, Lcom/neovisionaries/ws/client/StateManager;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/StateManager;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    .line 1144
    new-instance v0, Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/neovisionaries/ws/client/HandshakeBuilder;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    .line 1145
    new-instance v0, Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/ListenerManager;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    .line 1146
    new-instance v0, Lcom/neovisionaries/ws/client/PingSender;

    new-instance v1, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;

    invoke-direct {v1}, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/neovisionaries/ws/client/PingSender;-><init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    .line 1147
    new-instance v0, Lcom/neovisionaries/ws/client/PongSender;

    new-instance v1, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;

    invoke-direct {v1}, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/neovisionaries/ws/client/PongSender;-><init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    .line 1148
    return-void
.end method

.method private callOnConnectedIfNotYet()V
    .locals 2

    .line 3640
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3643
    :try_start_0
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalled:Z

    if-eqz v1, :cond_0

    .line 3646
    monitor-exit v0

    return-void

    .line 3649
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalled:Z

    .line 3650
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3653
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnConnected(Ljava/util/Map;)V

    .line 3654
    return-void

    .line 3650
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private changeStateOnConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3282
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 3285
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    if-ne v1, v2, :cond_0

    .line 3293
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 3294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3297
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 3298
    return-void

    .line 3287
    :cond_0
    :try_start_1
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->NOT_IN_CREATED_STATE:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "The current state of the WebSocket is not CREATED."

    invoke-direct {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v1

    .line 3294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private findAgreedPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;
    .locals 4

    .line 3782
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3784
    return-object v1

    .line 3787
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 3789
    .local v2, "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    instance-of v3, v2, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v3, :cond_1

    .line 3791
    move-object v0, v2

    check-cast v0, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    return-object v0

    .line 3793
    .end local v2    # "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    :cond_1
    goto :goto_0

    .line 3795
    :cond_2
    return-object v1
.end method

.method private finishAsynchronously()V
    .locals 1

    .line 3768
    new-instance v0, Lcom/neovisionaries/ws/client/FinishThread;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/FinishThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 3771
    .local v0, "thread":Lcom/neovisionaries/ws/client/WebSocketThread;
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketThread;->callOnThreadCreated()V

    .line 3773
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketThread;->start()V

    .line 3774
    return-void
.end method

.method private static generateWebSocketKey()Ljava/lang/String;
    .locals 2

    .line 3395
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 3398
    .local v0, "data":[B
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->nextBytes([B)[B

    .line 3401
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isInState(Lcom/neovisionaries/ws/client/WebSocketState;)Z
    .locals 2
    .param p1, "state"    # Lcom/neovisionaries/ws/client/WebSocketState;

    .line 1304
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 1306
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onThreadsFinished()V
    .locals 0

    .line 3724
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->finish()V

    .line 3725
    return-void
.end method

.method private onThreadsStarted()V
    .locals 1

    .line 3666
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->start()V

    .line 3669
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->start()V

    .line 3670
    return-void
.end method

.method private openInputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3341
    :try_start_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    .line 3342
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3341
    return-object v0

    .line 3344
    :catch_0
    move-exception v0

    .line 3347
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_INPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get the input stream of the raw socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3349
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private openOutputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketOutputStream;
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3364
    :try_start_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 3365
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    return-object v0

    .line 3367
    :catch_0
    move-exception v0

    .line 3370
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_OUTPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get the output stream from the raw socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3372
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readHandshake(Lcom/neovisionaries/ws/client/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "input"    # Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketInputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3440
    new-instance v0, Lcom/neovisionaries/ws/client/HandshakeReader;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/HandshakeReader;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/HandshakeReader;->readHandshake(Lcom/neovisionaries/ws/client/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private shakeHands(Ljava/net/Socket;)Ljava/util/Map;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3307
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->openInputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketInputStream;

    move-result-object v0

    .line 3310
    .local v0, "input":Lcom/neovisionaries/ws/client/WebSocketInputStream;
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->openOutputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    move-result-object v1

    .line 3313
    .local v1, "output":Lcom/neovisionaries/ws/client/WebSocketOutputStream;
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocket;->generateWebSocketKey()Ljava/lang/String;

    move-result-object v2

    .line 3316
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocket;->writeHandshake(Lcom/neovisionaries/ws/client/WebSocketOutputStream;Ljava/lang/String;)V

    .line 3319
    invoke-direct {p0, v0, v2}, Lcom/neovisionaries/ws/client/WebSocket;->readHandshake(Lcom/neovisionaries/ws/client/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 3323
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mInput:Lcom/neovisionaries/ws/client/WebSocketInputStream;

    .line 3324
    iput-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOutput:Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    .line 3327
    return-object v3
.end method

.method private splitIfNecessary(Lcom/neovisionaries/ws/client/WebSocketFrame;)Ljava/util/List;
    .locals 2
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ")",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;"
        }
    .end annotation

    .line 2802
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMaxPayloadSize:I

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    invoke-static {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->splitIfNecessary(Lcom/neovisionaries/ws/client/WebSocketFrame;ILcom/neovisionaries/ws/client/PerMessageCompressionExtension;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private startThreads()V
    .locals 4

    .line 3457
    new-instance v0, Lcom/neovisionaries/ws/client/ReadingThread;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/ReadingThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 3458
    .local v0, "readingThread":Lcom/neovisionaries/ws/client/ReadingThread;
    new-instance v1, Lcom/neovisionaries/ws/client/WritingThread;

    invoke-direct {v1, p0}, Lcom/neovisionaries/ws/client/WritingThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 3460
    .local v1, "writingThread":Lcom/neovisionaries/ws/client/WritingThread;
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3462
    :try_start_0
    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

    .line 3463
    iput-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    .line 3464
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3467
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnThreadCreated()V

    .line 3468
    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WritingThread;->callOnThreadCreated()V

    .line 3470
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ReadingThread;->start()V

    .line 3471
    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WritingThread;->start()V

    .line 3472
    return-void

    .line 3464
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private stopThreads(J)V
    .locals 4
    .param p1, "closeDelay"    # J

    .line 3491
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3493
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

    .line 3494
    .local v1, "readingThread":Lcom/neovisionaries/ws/client/ReadingThread;
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    .line 3496
    .local v2, "writingThread":Lcom/neovisionaries/ws/client/WritingThread;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

    .line 3497
    iput-object v3, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    .line 3498
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3500
    if-eqz v1, :cond_0

    .line 3502
    invoke-virtual {v1, p1, p2}, Lcom/neovisionaries/ws/client/ReadingThread;->requestStop(J)V

    .line 3505
    :cond_0
    if-eqz v2, :cond_1

    .line 3507
    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WritingThread;->requestStop()V

    .line 3509
    :cond_1
    return-void

    .line 3498
    .end local v1    # "readingThread":Lcom/neovisionaries/ws/client/ReadingThread;
    .end local v2    # "writingThread":Lcom/neovisionaries/ws/client/WritingThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeHandshake(Lcom/neovisionaries/ws/client/WebSocketOutputStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "output"    # Lcom/neovisionaries/ws/client/WebSocketOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3411
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->setKey(Ljava/lang/String;)V

    .line 3412
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->buildRequestLine()Ljava/lang/String;

    move-result-object v0

    .line 3413
    .local v0, "requestLine":Ljava/lang/String;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->buildHeaders()Ljava/util/List;

    move-result-object v1

    .line 3414
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->build(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 3417
    .local v2, "handshake":Ljava/lang/String;
    iget-object v3, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v3, v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnSendingHandshake(Ljava/lang/String;Ljava/util/List;)V

    .line 3422
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3431
    nop

    .line 3432
    return-void

    .line 3425
    :catch_0
    move-exception v3

    .line 3428
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v5, Lcom/neovisionaries/ws/client/WebSocketError;->OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send an opening handshake request to the server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3430
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public addExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "extension"    # Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 1379
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)V

    .line 1381
    return-object p0
.end method

.method public addExtension(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .line 1404
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addExtension(Ljava/lang/String;)V

    .line 1406
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1480
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    return-object p0
.end method

.method public addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "listener"    # Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 2142
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V

    .line 2144
    return-object p0
.end method

.method public addListeners(Ljava/util/List;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)",
            "Lcom/neovisionaries/ws/client/WebSocket;"
        }
    .end annotation

    .line 2162
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->addListeners(Ljava/util/List;)V

    .line 2164
    return-object p0
.end method

.method public addProtocol(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .line 1327
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addProtocol(Ljava/lang/String;)V

    .line 1329
    return-object p0
.end method

.method public clearExtensions()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearExtensions()V

    .line 1461
    return-object p0
.end method

.method public clearHeaders()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearHeaders()V

    .line 1517
    return-object p0
.end method

.method public clearListeners()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2217
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ListenerManager;->clearListeners()V

    .line 2219
    return-object p0
.end method

.method public clearProtocols()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearProtocols()V

    .line 1364
    return-object p0
.end method

.method public clearUserInfo()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearUserInfo()V

    .line 1571
    return-object p0
.end method

.method public connect()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 2343
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->changeStateOnConnect()V

    .line 2351
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->connect()Ljava/net/Socket;

    move-result-object v0

    .line 2354
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->shakeHands(Ljava/net/Socket;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2369
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    nop

    .line 2372
    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerHeaders:Ljava/util/Map;

    .line 2375
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->findAgreedPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    .line 2378
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2381
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2384
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->startThreads()V

    .line 2386
    return-object p0

    .line 2356
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Lcom/neovisionaries/ws/client/WebSocketException;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketConnector;->closeSilently()V

    .line 2362
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2365
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2368
    throw v0
.end method

.method public connect(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            ">;"
        }
    .end annotation

    .line 2418
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->connectable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public connectAsynchronously()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3

    .line 2454
    new-instance v0, Lcom/neovisionaries/ws/client/ConnectThread;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/ConnectThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 2457
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    .line 2459
    .local v1, "lm":Lcom/neovisionaries/ws/client/ListenerManager;
    if-eqz v1, :cond_0

    .line 2461
    sget-object v2, Lcom/neovisionaries/ws/client/ThreadType;->CONNECT_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-virtual {v1, v2, v0}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnThreadCreated(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V

    .line 2464
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2466
    return-object p0
.end method

.method public connectable()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            ">;"
        }
    .end annotation

    .line 2437
    new-instance v0, Lcom/neovisionaries/ws/client/Connectable;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/Connectable;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    return-object v0
.end method

.method public disconnect()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2

    .line 2483
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "closeCode"    # I

    .line 2507
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2
    .param p1, "closeCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2572
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;J)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(ILjava/lang/String;J)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3
    .param p1, "closeCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "closeDelay"    # J

    .line 2620
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 2622
    :try_start_0
    sget-object v1, Lcom/neovisionaries/ws/client/WebSocket$1;->$SwitchMap$com$neovisionaries$ws$client$WebSocketState:[I

    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2641
    monitor-exit v0

    goto :goto_0

    .line 2629
    :pswitch_0
    nop

    .line 2645
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->changeToClosing(Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;)V

    .line 2648
    invoke-static {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v1

    .line 2651
    .local v1, "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 2652
    nop

    .end local v1    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2658
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 2661
    const-wide/16 p3, 0x2710

    .line 2665
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/neovisionaries/ws/client/WebSocket;->stopThreads(J)V

    .line 2667
    return-object p0

    .line 2625
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->finishAsynchronously()V

    .line 2626
    monitor-exit v0

    return-object p0

    .line 2641
    :goto_0
    return-object p0

    .line 2652
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 2535
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1242
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->isInState(Lcom/neovisionaries/ws/client/WebSocketState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->finish()V

    .line 1248
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1249
    return-void
.end method

.method finish()V
    .locals 5

    .line 3731
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->stop()V

    .line 3732
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->stop()V

    .line 3735
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 3736
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 3740
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3745
    goto :goto_0

    .line 3742
    :catchall_0
    move-exception v1

    .line 3748
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v1

    .line 3751
    :try_start_1
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v2, v3}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 3752
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3755
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 3758
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    iget-object v3, p0, Lcom/neovisionaries/ws/client/WebSocket;->mClientCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    iget-object v4, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    .line 3759
    invoke-virtual {v4}, Lcom/neovisionaries/ws/client/StateManager;->getClosedByServer()Z

    move-result v4

    .line 3758
    invoke-virtual {v1, v2, v3, v4}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnDisconnected(Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V

    .line 3760
    return-void

    .line 3752
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public flush()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3

    .line 1766
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 1768
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    .line 1770
    .local v1, "state":Lcom/neovisionaries/ws/client/WebSocketState;
    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_0

    .line 1772
    monitor-exit v0

    return-object p0

    .line 1774
    .end local v1    # "state":Lcom/neovisionaries/ws/client/WebSocketState;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    .line 1780
    .local v0, "wt":Lcom/neovisionaries/ws/client/WritingThread;
    if-eqz v0, :cond_1

    .line 1783
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WritingThread;->queueFlush()V

    .line 1786
    :cond_1
    return-object p0

    .line 1774
    .end local v0    # "wt":Lcom/neovisionaries/ws/client/WritingThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAgreedExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;"
        }
    .end annotation

    .line 2684
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getAgreedProtocol()Ljava/lang/String;
    .locals 1

    .line 2701
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 2257
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getConnectedSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getFrameQueueSize()I
    .locals 1

    .line 1801
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    return v0
.end method

.method getHandshakeBuilder()Lcom/neovisionaries/ws/client/HandshakeBuilder;
    .locals 1

    .line 3553
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    return-object v0
.end method

.method getInput()Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .locals 1

    .line 3517
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mInput:Lcom/neovisionaries/ws/client/WebSocketInputStream;

    return-object v0
.end method

.method getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;
    .locals 1

    .line 3544
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    return-object v0
.end method

.method public getMaxPayloadSize()I
    .locals 1

    .line 1862
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMaxPayloadSize:I

    return v0
.end method

.method getOutput()Lcom/neovisionaries/ws/client/WebSocketOutputStream;
    .locals 1

    .line 3526
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOutput:Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    return-object v0
.end method

.method getPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;
    .locals 1

    .line 3806
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    return-object v0
.end method

.method public getPingInterval()J
    .locals 2

    .line 1912
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->getInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPingPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->getPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getPingSenderName()Ljava/lang/String;
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->getTimerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPongInterval()J
    .locals 2

    .line 1956
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->getInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPongPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->getPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getPongSenderName()Ljava/lang/String;
    .locals 1

    .line 2108
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->getTimerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 2242
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/neovisionaries/ws/client/WebSocketState;
    .locals 2

    .line 1277
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 1279
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStateManager()Lcom/neovisionaries/ws/client/StateManager;
    .locals 1

    .line 3535
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 2272
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public isAutoFlush()Z
    .locals 1

    .line 1627
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    return v0
.end method

.method public isDirectTextMessage()Z
    .locals 1

    .line 1722
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mDirectTextMessage:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 1594
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    return v0
.end method

.method public isMissingCloseFrameAllowed()Z
    .locals 1

    .line 1671
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1295
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->isInState(Lcom/neovisionaries/ws/client/WebSocketState;)Z

    move-result v0

    return v0
.end method

.method onReadingThreadFinished(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2
    .param p1, "closeFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 3678
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3680
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadFinished:Z

    .line 3681
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 3683
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadFinished:Z

    if-nez v1, :cond_0

    .line 3686
    monitor-exit v0

    return-void

    .line 3688
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3691
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsFinished()V

    .line 3692
    return-void

    .line 3688
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onReadingThreadStarted()V
    .locals 3

    .line 3580
    const/4 v0, 0x0

    .line 3582
    .local v0, "bothStarted":Z
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3584
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadStarted:Z

    .line 3586
    iget-boolean v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadStarted:Z

    if-eqz v2, :cond_0

    .line 3589
    const/4 v0, 0x1

    .line 3591
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3594
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->callOnConnectedIfNotYet()V

    .line 3597
    if-eqz v0, :cond_1

    .line 3599
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsStarted()V

    .line 3601
    :cond_1
    return-void

    .line 3591
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onWritingThreadFinished(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2
    .param p1, "closeFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 3700
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3702
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadFinished:Z

    .line 3703
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mClientCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 3705
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadFinished:Z

    if-nez v1, :cond_0

    .line 3708
    monitor-exit v0

    return-void

    .line 3710
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3713
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsFinished()V

    .line 3714
    return-void

    .line 3710
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onWritingThreadStarted()V
    .locals 3

    .line 3609
    const/4 v0, 0x0

    .line 3611
    .local v0, "bothStarted":Z
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3613
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadStarted:Z

    .line 3615
    iget-boolean v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadStarted:Z

    if-eqz v2, :cond_0

    .line 3618
    const/4 v0, 0x1

    .line 3620
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3623
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->callOnConnectedIfNotYet()V

    .line 3626
    if-eqz v0, :cond_1

    .line 3628
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsStarted()V

    .line 3630
    :cond_1
    return-void

    .line 3620
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recreate()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1178
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->recreate(I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public recreate(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    if-ltz p1, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    .line 1217
    .local v0, "instance":Lcom/neovisionaries/ws/client/WebSocket;
    new-instance v1, Lcom/neovisionaries/ws/client/HandshakeBuilder;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-direct {v1, v2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;-><init>(Lcom/neovisionaries/ws/client/HandshakeBuilder;)V

    iput-object v1, v0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    .line 1218
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPingInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocket;->setPingInterval(J)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1219
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPongInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocket;->setPongInterval(J)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1220
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPingPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setPingPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1221
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPongPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setPongPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1222
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    iput-boolean v1, v0, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    .line 1223
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    iput-boolean v1, v0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    .line 1224
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    iput-boolean v1, v0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    .line 1225
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mDirectTextMessage:Z

    iput-boolean v1, v0, Lcom/neovisionaries/ws/client/WebSocket;->mDirectTextMessage:Z

    .line 1226
    iget v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    iput v1, v0, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    .line 1229
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/ListenerManager;->getListeners()Ljava/util/List;

    move-result-object v1

    .line 1230
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    monitor-enter v1

    .line 1232
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->addListeners(Ljava/util/List;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1233
    monitor-exit v1

    .line 1235
    return-object v0

    .line 1233
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1211
    .end local v0    # "instance":Lcom/neovisionaries/ws/client/WebSocket;
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given timeout value is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "extension"    # Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 1423
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)V

    .line 1425
    return-object p0
.end method

.method public removeExtensions(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1443
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeExtensions(Ljava/lang/String;)V

    .line 1445
    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1499
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeHeaders(Ljava/lang/String;)V

    .line 1501
    return-object p0
.end method

.method public removeListener(Lcom/neovisionaries/ws/client/WebSocketListener;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "listener"    # Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 2181
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->removeListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V

    .line 2183
    return-object p0
.end method

.method public removeListeners(Ljava/util/List;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)",
            "Lcom/neovisionaries/ws/client/WebSocket;"
        }
    .end annotation

    .line 2201
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketListener;>;"
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->removeListeners(Ljava/util/List;)V

    .line 2203
    return-object p0
.end method

.method public removeProtocol(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .line 1346
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeProtocol(Ljava/lang/String;)V

    .line 1348
    return-object p0
.end method

.method public sendBinary([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "message"    # [B

    .line 3042
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createBinaryFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendBinary([BZ)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # [B
    .param p2, "fin"    # Z

    .line 3068
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createBinaryFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendClose()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 3086
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendClose(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "closeCode"    # I

    .line 3110
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendClose(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "closeCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 3140
    invoke-static {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendContinuation()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2827
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendContinuation(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;

    .line 2879
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendContinuation(Ljava/lang/String;Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "fin"    # Z

    .line 2905
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendContinuation(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "fin"    # Z

    .line 2850
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendContinuation([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # [B

    .line 2934
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendContinuation([BZ)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # [B
    .param p2, "fin"    # Z

    .line 2960
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 4
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 2743
    if-nez p1, :cond_0

    .line 2745
    return-object p0

    .line 2748
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 2750
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    .line 2752
    .local v1, "state":Lcom/neovisionaries/ws/client/WebSocketState;
    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_1

    .line 2754
    monitor-exit v0

    return-object p0

    .line 2756
    .end local v1    # "state":Lcom/neovisionaries/ws/client/WebSocketState;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2761
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    .line 2769
    .local v0, "wt":Lcom/neovisionaries/ws/client/WritingThread;
    if-nez v0, :cond_2

    .line 2772
    return-object p0

    .line 2776
    :cond_2
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->splitIfNecessary(Lcom/neovisionaries/ws/client/WebSocketFrame;)Ljava/util/List;

    move-result-object v1

    .line 2782
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketFrame;>;"
    if-nez v1, :cond_3

    .line 2785
    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WritingThread;->queueFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    goto :goto_1

    .line 2789
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 2792
    .local v3, "f":Lcom/neovisionaries/ws/client/WebSocketFrame;
    invoke-virtual {v0, v3}, Lcom/neovisionaries/ws/client/WritingThread;->queueFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    .line 2793
    .end local v3    # "f":Lcom/neovisionaries/ws/client/WebSocketFrame;
    goto :goto_0

    .line 2796
    :cond_4
    :goto_1
    return-object p0

    .line 2756
    .end local v0    # "wt":Lcom/neovisionaries/ws/client/WritingThread;
    .end local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketFrame;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendPing()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 3158
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendPing(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;

    .line 3208
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendPing([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # [B

    .line 3183
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendPong()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 3226
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendPong(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;

    .line 3276
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendPong([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # [B

    .line 3251
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendText(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 2988
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createTextFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendText(Ljava/lang/String;Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "fin"    # Z

    .line 3014
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createTextFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method setAgreedExtensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;)V"
        }
    .end annotation

    .line 3562
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketExtension;>;"
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    .line 3563
    return-void
.end method

.method setAgreedProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .line 3571
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedProtocol:Ljava/lang/String;

    .line 3572
    return-void
.end method

.method public setAutoFlush(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0
    .param p1, "auto"    # Z

    .line 1645
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    .line 1647
    return-object p0
.end method

.method public setDirectTextMessage(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0
    .param p1, "direct"    # Z

    .line 1750
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mDirectTextMessage:Z

    .line 1752
    return-object p0
.end method

.method public setExtended(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0
    .param p1, "extended"    # Z

    .line 1609
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    .line 1611
    return-object p0
.end method

.method public setFrameQueueSize(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1839
    if-ltz p1, :cond_0

    .line 1844
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    .line 1846
    return-object p0

    .line 1841
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxPayloadSize(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1889
    if-ltz p1, :cond_0

    .line 1894
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMaxPayloadSize:I

    .line 1896
    return-object p0

    .line 1891
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMissingCloseFrameAllowed(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0
    .param p1, "allowed"    # Z

    .line 1695
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    .line 1697
    return-object p0
.end method

.method public setPingInterval(J)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "interval"    # J

    .line 1938
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/PingSender;->setInterval(J)V

    .line 1940
    return-object p0
.end method

.method public setPingPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "generator"    # Lcom/neovisionaries/ws/client/PayloadGenerator;

    .line 2029
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PingSender;->setPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    .line 2031
    return-object p0
.end method

.method public setPingSenderName(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2092
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PingSender;->setTimerName(Ljava/lang/String;)V

    .line 2094
    return-object p0
.end method

.method public setPongInterval(J)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "interval"    # J

    .line 1999
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/PongSender;->setInterval(J)V

    .line 2001
    return-object p0
.end method

.method public setPongPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "generator"    # Lcom/neovisionaries/ws/client/PayloadGenerator;

    .line 2059
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PongSender;->setPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    .line 2061
    return-object p0
.end method

.method public setPongSenderName(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2125
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PongSender;->setTimerName(Ljava/lang/String;)V

    .line 2127
    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "userInfo"    # Ljava/lang/String;

    .line 1533
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->setUserInfo(Ljava/lang/String;)V

    .line 1535
    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 1553
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    return-object p0
.end method
