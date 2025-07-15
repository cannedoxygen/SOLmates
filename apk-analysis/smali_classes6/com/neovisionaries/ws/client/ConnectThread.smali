.class Lcom/neovisionaries/ws/client/ConnectThread;
.super Lcom/neovisionaries/ws/client/WebSocketThread;
.source "ConnectThread.java"


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 2
    .param p1, "ws"    # Lcom/neovisionaries/ws/client/WebSocket;

    .line 23
    const-string v0, "ConnectThread"

    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->CONNECT_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-direct {p0, v0, p1, v1}, Lcom/neovisionaries/ws/client/WebSocketThread;-><init>(Ljava/lang/String;Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;)V

    .line 24
    return-void
.end method

.method private handleError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 1
    .param p1, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;

    .line 43
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ConnectThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    .line 45
    .local v0, "manager":Lcom/neovisionaries/ws/client/ListenerManager;
    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 46
    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnConnectError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 47
    return-void
.end method


# virtual methods
.method public runMain()V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ConnectThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->connect()Lcom/neovisionaries/ws/client/WebSocket;
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lcom/neovisionaries/ws/client/WebSocketException;
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ConnectThread;->handleError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 38
    .end local v0    # "e":Lcom/neovisionaries/ws/client/WebSocketException;
    :goto_0
    return-void
.end method
