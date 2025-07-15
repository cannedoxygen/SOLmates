.class public Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
.super Ljava/lang/Object;
.source "MobileWalletAdapterWebSocket.java"

# interfaces
.implements Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;,
        Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConnectTimeoutMs:I

.field private final mListener:Lcom/neovisionaries/ws/client/WebSocketListener;

.field private final mMessageReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

.field private mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

.field private final mStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

.field private final mUri:Ljava/net/URI;

.field private mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMessageReceiver(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;
    .locals 0

    iget-object p0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mMessageReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;
    .locals 0

    iget-object p0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCallbacks(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWebSocket(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    iget-object p0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;)V
    .locals 0

    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWebSocket(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;I)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "messageReceiver"    # Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;
    .param p3, "stateCallbacks"    # Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;
    .param p4, "connectTimeoutMs"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->NOT_CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    .line 55
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;

    invoke-direct {v0, p0}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$1;-><init>(Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;)V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mListener:Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 47
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "MobileWalletAdapterWebSocket-ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mUri:Ljava/net/URI;

    .line 49
    iput-object p2, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mMessageReceiver:Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;

    .line 50
    iput-object p3, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    .line 51
    iput p4, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mConnectTimeoutMs:I

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 185
    :try_start_0
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$2;->$SwitchMap$com$solana$mobilewalletadapter$clientlib$transport$websockets$MobileWalletAdapterWebSocket$State:[I

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    invoke-virtual {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .end local p0    # "this":Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
    :pswitch_0
    goto :goto_0

    .line 198
    .restart local p0    # "this":Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
    :pswitch_1
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    .line 200
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect()Lcom/neovisionaries/ws/client/WebSocket;

    .line 201
    goto :goto_0

    .line 189
    .end local p0    # "this":Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
    :pswitch_2
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "closing (before connection established)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    .line 192
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    invoke-interface {v0}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;->onConnectionClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized connect()V
    .locals 3

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->NOT_CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-ne v0, v1, :cond_1

    .line 164
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFactory;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;-><init>()V

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mUri:Ljava/net/URI;

    iget v2, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mConnectTimeoutMs:I

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setDirectTextMessage(Z)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    const-string v1, "com.solana.mobilewalletadapter.v1"

    .line 171
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->addProtocol(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    const-string v1, "permessage-deflate"

    .line 172
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->addExtension(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mListener:Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 173
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    .line 174
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->connectAsynchronously()Lcom/neovisionaries/ws/client/WebSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    goto :goto_0

    .line 175
    .end local p0    # "this":Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    const-string v2, "Failed creating WebSocket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    .line 178
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    invoke-interface {v1}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;->onConnectionFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connect has already been called for this WebSocket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized send([B)V
    .locals 2
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_0
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "send"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mState:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;->CONNECTED:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$State;

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendBinary([B)Lcom/neovisionaries/ws/client/WebSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 214
    .end local p0    # "this":Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Send failed; not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    .end local p1    # "payload":[B
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
