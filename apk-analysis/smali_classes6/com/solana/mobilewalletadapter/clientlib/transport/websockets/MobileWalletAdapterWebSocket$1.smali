.class Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;
.super Lcom/neovisionaries/ws/client/WebSocketAdapter;
.source "MobileWalletAdapterWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    return-void
.end method

.method constructor <init>(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    .line 55
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocketAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinaryMessage(Lcom/neovisionaries/ws/client/WebSocket;[B)V
    .locals 3
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "binary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .end local p2    # "binary":[B
    throw v1

    .line 114
    .restart local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .restart local p2    # "binary":[B
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_2

    .line 115
    monitor-exit v0

    return-void

    .line 118
    :cond_2
    invoke-static {}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBinaryMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmMessageReceiver(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverMessageReceived([B)V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1
.end method

.method public onConnected(Lcom/neovisionaries/ws/client/WebSocket;Ljava/util/Map;)V
    .locals 3
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

    .line 59
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .end local p2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    throw v1

    .line 61
    .restart local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .restart local p2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_2

    .line 62
    monitor-exit v0

    return-void

    .line 65
    :cond_2
    invoke-static {}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;)V

    .line 67
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;->onConnected()V

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmMessageReceiver(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-interface {v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverConnected(Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;)V

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1
.end method

.method public onDisconnected(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V
    .locals 3
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "serverCloseFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .param p3, "clientCloseFrame"    # Lcom/neovisionaries/ws/client/WebSocketFrame;
    .param p4, "closedByServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .end local p2    # "serverCloseFrame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    .end local p3    # "clientCloseFrame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    .end local p4    # "closedByServer":Z
    throw v1

    .line 83
    .restart local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .restart local p2    # "serverCloseFrame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    .restart local p3    # "clientCloseFrame":Lcom/neovisionaries/ws/client/WebSocketFrame;
    .restart local p4    # "closedByServer":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_2

    .line 84
    monitor-exit v0

    return-void

    .line 87
    :cond_2
    invoke-static {}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;)V

    .line 89
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmWebSocket(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 90
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmMessageReceiver(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    move-result-object v1

    invoke-interface {v1}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverDisconnected()V

    .line 91
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;->onConnectionClosed()V

    .line 94
    :cond_3
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1
.end method

.method public onError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 4
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "cause"    # Lcom/neovisionaries/ws/client/WebSocketException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .end local p2    # "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    throw v1

    .line 129
    .restart local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .restart local p2    # "cause":Lcom/neovisionaries/ws/client/WebSocketException;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSockets error"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$2;->$SwitchMap$com$solana$mobilewalletadapter$clientlib$transport$websockets$MobileWalletAdapterWebSocket$State:[I

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    sget-object v3, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    invoke-static {v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;)V

    .line 145
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmWebSocket(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 146
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmMessageReceiver(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    move-result-object v1

    invoke-interface {v1}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverDisconnected()V

    .line 147
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;->onConnectionClosed()V

    goto :goto_1

    .line 139
    :pswitch_1
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;)V

    .line 140
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmWebSocket(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect()Lcom/neovisionaries/ws/client/WebSocket;

    .line 141
    goto :goto_1

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    sget-object v3, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    invoke-static {v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;)V

    .line 133
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fputmWebSocket(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 134
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;->onConnectionFailed()V

    .line 155
    :cond_2
    :goto_1
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTextMessage(Lcom/neovisionaries/ws/client/WebSocket;[B)V
    .locals 3
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .end local p2    # "data":[B
    throw v1

    .line 101
    .restart local p1    # "websocket":Lcom/neovisionaries/ws/client/WebSocket;
    .restart local p2    # "data":[B
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    move-result-object v1

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-eq v1, v2, :cond_2

    .line 102
    monitor-exit v0

    return-void

    .line 105
    :cond_2
    invoke-static {}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTextMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->-$$Nest$fgetmMessageReceiver(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;->receiverMessageReceived([B)V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1
.end method
