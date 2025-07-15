.class Lcom/neovisionaries/ws/client/ReadingThread;
.super Lcom/neovisionaries/ws/client/WebSocketThread;
.source "ReadingThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;
    }
.end annotation


# instance fields
.field private mCloseDelay:J

.field private mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

.field private mCloseLock:Ljava/lang/Object;

.field private mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

.field private mCloseTimer:Ljava/util/Timer;

.field private mContinuation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mNotWaitForCloseFrame:Z

.field private final mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

.field private mStopRequested:Z


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 2
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;

    .line 53
    const-string v0, "ReadingThread"

    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->READING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-direct {p0, v0, p1, v1}, Lcom/neovisionaries/ws/client/WebSocketThread;-><init>(Ljava/lang/String;Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseLock:Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocket;->getPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    .line 56
    return-void
.end method

.method private callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 191
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 192
    return-void
.end method

.method private callOnBinaryMessage([B)V
    .locals 1
    .param p1, "message"    # [B

    .line 276
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnBinaryMessage([B)V

    .line 277
    return-void
.end method

.method private callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 201
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 202
    return-void
.end method

.method private callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 171
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 172
    return-void
.end method

.method private callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 1
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;

    .line 286
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 287
    return-void
.end method

.method private callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 161
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 162
    return-void
.end method

.method private callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 296
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 297
    return-void
.end method

.method private callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 1
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p2, "compressed"    # [B

    .line 316
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    .line 317
    return-void
.end method

.method private callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V
    .locals 1
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

    .line 306
    .local p2, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketFrame;>;"
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V

    .line 307
    return-void
.end method

.method private callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 211
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 212
    return-void
.end method

.method private callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 221
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 222
    return-void
.end method

.method private callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 181
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 182
    return-void
.end method

.method private callOnTextMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnTextMessage(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private callOnTextMessage([B)V
    .locals 5
    .param p1, "data"    # [B

    .line 231
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->isDirectTextMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnTextMessage([B)V

    .line 234
    return-void

    .line 241
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->toStringUTF8([B)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    .line 249
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to convert payload data into a string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    .local v1, "wse":Lcom/neovisionaries/ws/client/WebSocketException;
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 255
    invoke-direct {p0, v1, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    .line 257
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "wse":Lcom/neovisionaries/ws/client/WebSocketException;
    :goto_0
    return-void
.end method

.method private callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 1
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p2, "data"    # [B

    .line 326
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    .line 327
    return-void
.end method

.method private cancelClose()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1164
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->cancelCloseTask()V

    .line 1165
    monitor-exit v0

    .line 1166
    return-void

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelCloseTask()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1174
    iput-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;->cancel()Z

    .line 1180
    iput-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    .line 1182
    :cond_1
    return-void
.end method

.method private concatenatePayloads(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)[B"
        }
    .end annotation

    .line 849
    .local p1, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketFrame;>;"
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 852
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 855
    .local v2, "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v3

    .line 858
    .local v3, "payload":[B
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    .line 860
    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 865
    .end local v2    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    .end local v3    # "payload":[B
    goto :goto_0

    .line 868
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 874
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v1, v0

    .local v1, "cause":Ljava/lang/Throwable;
    goto :goto_1

    .line 870
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 872
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    .line 877
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "cause":Ljava/lang/Throwable;
    nop

    .line 880
    :goto_1
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to concatenate payloads of multiple frames to construct a message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 882
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    .local v0, "wse":Lcom/neovisionaries/ws/client/WebSocketException;
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 886
    invoke-direct {p0, v0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V

    .line 890
    nop

    .line 891
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3f1

    invoke-static {v3, v2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v2

    .line 894
    .restart local v2    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v3, v2}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 897
    const/4 v3, 0x0

    return-object v3
.end method

.method private createCloseFrame(Lcom/neovisionaries/ws/client/WebSocketException;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 2
    .param p1, "wse"    # Lcom/neovisionaries/ws/client/WebSocketException;

    .line 694
    sget-object v0, Lcom/neovisionaries/ws/client/ReadingThread$1;->$SwitchMap$com$neovisionaries$ws$client$WebSocketError:[I

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketException;->getError()Lcom/neovisionaries/ws/client/WebSocketError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    const/16 v0, 0x3f0

    .local v0, "closeCode":I
    goto :goto_0

    .line 726
    .end local v0    # "closeCode":I
    :pswitch_0
    const/16 v0, 0x3f0

    .line 727
    .restart local v0    # "closeCode":I
    goto :goto_0

    .line 719
    .end local v0    # "closeCode":I
    :pswitch_1
    const/16 v0, 0x3ea

    .line 720
    .restart local v0    # "closeCode":I
    goto :goto_0

    .line 706
    .end local v0    # "closeCode":I
    :pswitch_2
    const/16 v0, 0x3f1

    .line 707
    .restart local v0    # "closeCode":I
    goto :goto_0

    .line 701
    .end local v0    # "closeCode":I
    :pswitch_3
    const/16 v0, 0x3ea

    .line 702
    .restart local v0    # "closeCode":I
    nop

    .line 736
    :goto_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decompress([B)[B
    .locals 3
    .param p1, "input"    # [B

    .line 925
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;->decompress([B)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 927
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Lcom/neovisionaries/ws/client/WebSocketException;
    nop

    .line 933
    .local v0, "wse":Lcom/neovisionaries/ws/client/WebSocketException;
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 934
    invoke-direct {p0, v0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    .line 938
    nop

    .line 939
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v2, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v1

    .line 942
    .local v1, "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 945
    const/4 v2, 0x0

    return-object v2
.end method

.method private getMessage(Lcom/neovisionaries/ws/client/WebSocketFrame;)[B
    .locals 2
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 904
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v0

    .line 908
    .local v0, "payload":[B
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->decompress([B)[B

    move-result-object v0

    .line 914
    :cond_0
    return-object v0
.end method

.method private getMessage(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)[B"
        }
    .end annotation

    .line 822
    .local p1, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketFrame;>;"
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->concatenatePayloads(Ljava/util/List;)[B

    move-result-object v0

    .line 825
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 828
    const/4 v1, 0x0

    return-object v1

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->decompress([B)[B

    move-result-object v0

    .line 839
    :cond_1
    return-object v0
.end method

.method private handleBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 2
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 979
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 982
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    return v1

    .line 993
    :cond_0
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->getMessage(Lcom/neovisionaries/ws/client/WebSocketFrame;)[B

    move-result-object v0

    .line 996
    .local v0, "payload":[B
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnBinaryMessage([B)V

    .line 999
    return v1
.end method

.method private handleCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 4
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 1006
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getStateManager()Lcom/neovisionaries/ws/client/StateManager;

    move-result-object v0

    .line 1009
    .local v0, "manager":Lcom/neovisionaries/ws/client/StateManager;
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 1011
    const/4 v1, 0x0

    .line 1013
    .local v1, "stateChanged":Z
    monitor-enter v0

    .line 1016
    :try_start_0
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v2

    .line 1019
    .local v2, "state":Lcom/neovisionaries/ws/client/WebSocketState;
    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v2, v3, :cond_0

    .line 1022
    sget-object v3, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-virtual {v0, v3}, Lcom/neovisionaries/ws/client/StateManager;->changeToClosing(Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;)V

    .line 1034
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v3, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1036
    const/4 v1, 0x1

    .line 1038
    .end local v2    # "state":Lcom/neovisionaries/ws/client/WebSocketState;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    if-eqz v1, :cond_1

    .line 1043
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v2

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v2, v3}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 1047
    :cond_1
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 1050
    const/4 v2, 0x0

    return v2

    .line 1038
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 4
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 776
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 779
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 785
    return v1

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->getMessage(Ljava/util/List;)[B

    move-result-object v0

    .line 793
    .local v0, "data":[B
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 796
    return v2

    .line 800
    :cond_1
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isTextFrame()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessage([B)V

    goto :goto_0

    .line 808
    :cond_2
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnBinaryMessage([B)V

    .line 812
    :goto_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 815
    return v1
.end method

.method private handleFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 743
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 746
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 768
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 764
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handlePongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    return v0

    .line 761
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handlePingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    return v0

    .line 758
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    return v0

    .line 755
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    return v0

    .line 752
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    return v0

    .line 749
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handlePingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 2
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 1057
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 1067
    nop

    .line 1068
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    .line 1071
    .local v0, "pong":Lcom/neovisionaries/ws/client/WebSocketFrame;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v1, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1074
    const/4 v1, 0x1

    return v1
.end method

.method private handlePongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 1081
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 1084
    const/4 v0, 0x1

    return v0
.end method

.method private handleTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 2
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 952
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 955
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    return v1

    .line 966
    :cond_0
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->getMessage(Lcom/neovisionaries/ws/client/WebSocketFrame;)[B

    move-result-object v0

    .line 969
    .local v0, "payload":[B
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessage([B)V

    .line 972
    return v1
.end method

.method private main()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->onReadingThreadStarted()V

    .line 90
    :goto_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v0, :cond_0

    .line 94
    monitor-exit p0

    goto :goto_1

    .line 96
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    .line 101
    .local v0, "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    if-nez v0, :cond_1

    .line 104
    goto :goto_1

    .line 108
    :cond_1
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->handleFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v1

    .line 110
    .local v1, "keepReading":Z
    if-nez v1, :cond_2

    .line 112
    nop

    .line 117
    .end local v0    # "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    .end local v1    # "keepReading":Z
    :goto_1
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->waitForCloseFrame()V

    .line 120
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->cancelClose()V

    .line 121
    return-void

    .line 114
    :cond_2
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyFinished()V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->onReadingThreadFinished(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 1139
    return-void
.end method

.method private readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 8

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    const/4 v1, 0x0

    .line 338
    .local v1, "wse":Lcom/neovisionaries/ws/client/WebSocketException;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v3}, Lcom/neovisionaries/ws/client/WebSocket;->getInput()Lcom/neovisionaries/ws/client/WebSocketInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v3

    move-object v0, v3

    .line 341
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    return-object v0

    .line 378
    :catch_0
    move-exception v3

    .line 381
    .local v3, "e":Lcom/neovisionaries/ws/client/WebSocketException;
    move-object v1, v3

    goto :goto_1

    .line 362
    .end local v3    # "e":Lcom/neovisionaries/ws/client/WebSocketException;
    :catch_1
    move-exception v3

    .line 364
    .local v3, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    return-object v2

    .line 373
    :cond_0
    new-instance v4, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v5, Lcom/neovisionaries/ws/client/WebSocketError;->IO_ERROR_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An I/O error occurred while a frame was being read from the web socket: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 375
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 346
    :catch_2
    move-exception v3

    .line 348
    .local v3, "e":Ljava/io/InterruptedIOException;
    iget-boolean v4, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v4, :cond_1

    .line 352
    return-object v2

    .line 357
    :cond_1
    new-instance v4, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v5, Lcom/neovisionaries/ws/client/WebSocketError;->INTERRUPTED_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interruption occurred while a frame was being read from the web socket: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 359
    invoke-virtual {v3}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 382
    .end local v3    # "e":Ljava/io/InterruptedIOException;
    :goto_0
    nop

    .line 384
    :goto_1
    const/4 v3, 0x1

    .line 388
    .local v3, "error":Z
    instance-of v4, v1, Lcom/neovisionaries/ws/client/NoMoreFrameException;

    if-eqz v4, :cond_2

    .line 391
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mNotWaitForCloseFrame:Z

    .line 394
    iget-object v4, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v4}, Lcom/neovisionaries/ws/client/WebSocket;->isMissingCloseFrameAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    const/4 v3, 0x0

    .line 400
    :cond_2
    if-eqz v3, :cond_3

    .line 403
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 404
    invoke-direct {p0, v1, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 408
    :cond_3
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread;->createCloseFrame(Lcom/neovisionaries/ws/client/WebSocketException;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v4

    .line 411
    .local v4, "closeFrame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    iget-object v5, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v5, v4}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 414
    return-object v2
.end method

.method private scheduleClose()V
    .locals 2

    .line 1144
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->cancelCloseTask()V

    .line 1147
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->scheduleCloseTask()V

    .line 1148
    monitor-exit v0

    .line 1149
    return-void

    .line 1148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleCloseTask()V
    .locals 4

    .line 1154
    new-instance v0, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;-><init>(Lcom/neovisionaries/ws/client/ReadingThread;Lcom/neovisionaries/ws/client/ReadingThread$1;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    .line 1155
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ReadingThreadCloseTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    .line 1156
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    iget-wide v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseDelay:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1157
    return-void
.end method

.method private verifyFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBits(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 424
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameOpcode(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 427
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameMask(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameFragmentation(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameSize(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 434
    return-void
.end method

.method private verifyFrameFragmentation(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 4
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 611
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    return-void

    .line 617
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->FRAGMENTED_CONTROL_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v2, "A control frame is fragmented."

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 630
    .local v0, "continuationExists":Z
    :goto_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isContinuationFrame()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 633
    if-eqz v0, :cond_3

    .line 642
    return-void

    .line 636
    :cond_3
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_CONTINUATION_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "A continuation frame was detected although a continuation had not started."

    invoke-direct {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_4
    if-nez v0, :cond_5

    .line 654
    return-void

    .line 650
    :cond_5
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->CONTINUATION_NOT_CLOSED:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "A non-control frame was detected although the existing continuation had not been closed."

    invoke-direct {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v1
.end method

.method private verifyFrameMask(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 596
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    return-void

    .line 599
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->FRAME_MASKED:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v2, "A frame from the server is masked."

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0
.end method

.method private verifyFrameOpcode(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 4
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 553
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 569
    :pswitch_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    return-void

    .line 562
    :pswitch_1
    return-void

    .line 576
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNKNOWN_OPCODE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A frame has an unknown opcode: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 578
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private verifyFrameSize(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 5
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 660
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    return-void

    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v0

    .line 674
    .local v0, "payload":[B
    if-nez v0, :cond_1

    .line 677
    return-void

    .line 680
    :cond_1
    const/16 v1, 0x7d

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 687
    return-void

    .line 683
    :cond_2
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The payload size of a control frame exceeds the maximum size (125 bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v1
.end method

.method private verifyReservedBit1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit1ForPMCE(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    .line 468
    .local v0, "verified":Z
    if-eqz v0, :cond_0

    .line 470
    return-void

    .line 474
    .end local v0    # "verified":Z
    :cond_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    return-void

    .line 481
    :cond_1
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v2, "The RSV1 bit of a frame is set unexpectedly."

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0
.end method

.method private verifyReservedBit1ForPMCE(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 493
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isTextFrame()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isBinaryFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private verifyReservedBit2(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    return-void

    .line 518
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v2, "The RSV2 bit of a frame is set unexpectedly."

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0
.end method

.method private verifyReservedBit3(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    return-void

    .line 535
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v2, "The RSV3 bit of a frame is set unexpectedly."

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0
.end method

.method private verifyReservedBits(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    return-void

    .line 451
    :cond_0
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit2(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 453
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit3(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 454
    return-void
.end method

.method private waitForCloseFrame()V
    .locals 2

    .line 1090
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mNotWaitForCloseFrame:Z

    if-eqz v0, :cond_0

    .line 1092
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    if-eqz v0, :cond_1

    .line 1098
    return-void

    .line 1101
    :cond_1
    const/4 v0, 0x0

    .line 1105
    .local v0, "frame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->scheduleClose()V

    .line 1112
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocket;->getInput()Lcom/neovisionaries/ws/client/WebSocketInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1118
    nop

    .line 1121
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isCloseFrame()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1124
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 1125
    goto :goto_0

    .line 1128
    :cond_3
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1130
    goto :goto_0

    .line 1114
    :catchall_0
    move-exception v1

    .line 1117
    .local v1, "t":Ljava/lang/Throwable;
    nop

    .line 1133
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method requestStop(J)V
    .locals 1
    .param p1, "closeDelay"    # J

    .line 126
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v0, :cond_0

    .line 130
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->interrupt()V

    .line 150
    iput-wide p1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseDelay:J

    .line 151
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->scheduleClose()V

    .line 152
    return-void

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public runMain()V
    .locals 5

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->main()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An uncaught throwable was detected in the reading thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .local v1, "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v2

    .line 75
    .local v2, "manager":Lcom/neovisionaries/ws/client/ListenerManager;
    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 76
    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnUnexpectedError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 80
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    .end local v2    # "manager":Lcom/neovisionaries/ws/client/ListenerManager;
    :goto_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->notifyFinished()V

    .line 81
    return-void
.end method
