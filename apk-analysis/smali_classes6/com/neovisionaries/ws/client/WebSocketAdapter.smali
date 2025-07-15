.class public Lcom/neovisionaries/ws/client/WebSocketAdapter;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"

# interfaces
.implements Lcom/neovisionaries/ws/client/WebSocketListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCallbackError(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public onBinaryFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public onBinaryMessage(Lcom/neovisionaries/ws/client/WebSocket;[B)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "binary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public onCloseFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public onConnectError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "exception"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public onConnected(Lcom/neovisionaries/ws/client/WebSocket;Ljava/util/Map;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public onContinuationFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public onDisconnected(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "serverCloseFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .param p3, "clientCloseFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .param p4, "closedByServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public onError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public onFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public onFrameError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p3, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public onFrameSent(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public onFrameUnsent(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public onMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p3, "compressed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public onMessageError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            "Lcom/neovisionaries/ws/client/WebSocketException;",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    .local p3, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketFrame;>;"
    return-void
.end method

.method public onPingFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public onPongFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public onSendError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p3, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public onSendingFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public onSendingHandshake(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    return-void
.end method

.method public onStateChanged(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketState;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "newState"    # Lcom/neovisionaries/ws/client/WebSocketState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public onTextFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "frame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public onTextMessage(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public onTextMessage(Lcom/neovisionaries/ws/client/WebSocket;[B)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public onTextMessageError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    return-void
.end method

.method public onThreadCreated(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "threadType"    # Lcom/neovisionaries/ws/client/ThreadType;
    .param p3, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    return-void
.end method

.method public onThreadStarted(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "threadType"    # Lcom/neovisionaries/ws/client/ThreadType;
    .param p3, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    return-void
.end method

.method public onThreadStopping(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "threadType"    # Lcom/neovisionaries/ws/client/ThreadType;
    .param p3, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public onUnexpectedError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    return-void
.end method
