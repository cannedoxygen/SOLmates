.class Lcom/neovisionaries/ws/client/SocketConnector;
.super Ljava/lang/Object;
.source "SocketConnector.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAddress:Lcom/neovisionaries/ws/client/Address;

.field private final mConnectionTimeout:I

.field private mDualStackFallbackDelay:I

.field private mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

.field private final mHost:Ljava/lang/String;

.field private final mPort:I

.field private final mProxyHandshaker:Lcom/neovisionaries/ws/client/ProxyHandshaker;

.field private final mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mServerNames:[Ljava/lang/String;

.field private mSocket:Ljava/net/Socket;

.field private final mSocketFactory:Ljavax/net/SocketFactory;

.field private final mSocketTimeout:I

.field private mVerifyHostname:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 37
    return-void
.end method

.method constructor <init>(Ljavax/net/SocketFactory;Lcom/neovisionaries/ws/client/Address;II[Ljava/lang/String;Lcom/neovisionaries/ws/client/ProxyHandshaker;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p2, "address"    # Lcom/neovisionaries/ws/client/Address;
    .param p3, "timeout"    # I
    .param p4, "socketTimeout"    # I
    .param p5, "serverNames"    # [Ljava/lang/String;
    .param p6, "handshaker"    # Lcom/neovisionaries/ws/client/ProxyHandshaker;
    .param p7, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p8, "host"    # Ljava/lang/String;
    .param p9, "port"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->BOTH:Lcom/neovisionaries/ws/client/DualStackMode;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 49
    const/16 v0, 0xfa

    iput v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mDualStackFallbackDelay:I

    .line 64
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 65
    iput-object p2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    .line 66
    iput p3, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mConnectionTimeout:I

    .line 67
    iput p4, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocketTimeout:I

    .line 68
    iput-object p5, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mServerNames:[Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mProxyHandshaker:Lcom/neovisionaries/ws/client/ProxyHandshaker;

    .line 70
    iput-object p7, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 71
    iput-object p8, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mHost:Ljava/lang/String;

    .line 72
    iput p9, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mPort:I

    .line 73
    return-void
.end method

.method constructor <init>(Ljavax/net/SocketFactory;Lcom/neovisionaries/ws/client/Address;I[Ljava/lang/String;I)V
    .locals 10
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p2, "address"    # Lcom/neovisionaries/ws/client/Address;
    .param p3, "timeout"    # I
    .param p4, "serverNames"    # [Ljava/lang/String;
    .param p5, "socketTimeout"    # I

    .line 55
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Lcom/neovisionaries/ws/client/SocketConnector;-><init>(Ljavax/net/SocketFactory;Lcom/neovisionaries/ws/client/Address;II[Ljava/lang/String;Lcom/neovisionaries/ws/client/ProxyHandshaker;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method private connectSocket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 103
    new-instance v7, Lcom/neovisionaries/ws/client/SocketInitiator;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocketFactory:Ljavax/net/SocketFactory;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    iget v3, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mConnectionTimeout:I

    iget-object v4, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mServerNames:[Ljava/lang/String;

    iget-object v5, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    iget v6, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mDualStackFallbackDelay:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/neovisionaries/ws/client/SocketInitiator;-><init>(Ljavax/net/SocketFactory;Lcom/neovisionaries/ws/client/Address;I[Ljava/lang/String;Lcom/neovisionaries/ws/client/DualStackMode;I)V

    .line 108
    .local v0, "socketInitiator":Lcom/neovisionaries/ws/client/SocketInitiator;
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/SocketConnector;->resolveHostname()[Ljava/net/InetAddress;

    move-result-object v1

    .line 114
    .local v1, "addresses":[Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/SocketInitiator;->establish([Ljava/net/InetAddress;)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 128
    return-void

    .line 116
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mProxyHandshaker:Lcom/neovisionaries/ws/client/ProxyHandshaker;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 122
    .local v3, "proxied":Z
    :goto_0
    if-eqz v3, :cond_1

    const-string/jumbo v4, "the proxy "

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    iget-object v5, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    .line 123
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 122
    const-string v5, "Failed to connect to %s\'%s\': %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v6, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v5, v6, v4, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private doConnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mProxyHandshaker:Lcom/neovisionaries/ws/client/ProxyHandshaker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, "proxied":Z
    :goto_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/SocketConnector;->connectSocket()V

    .line 239
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_4

    .line 241
    iget v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocketTimeout:I

    if-lez v1, :cond_1

    .line 244
    iget v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocketTimeout:I

    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/SocketConnector;->setSoTimeout(I)V

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    instance-of v1, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/Address;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/SocketConnector;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 255
    :cond_2
    if-eqz v0, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/SocketConnector;->handshake()V

    .line 261
    :cond_3
    return-void

    .line 239
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private handshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mProxyHandshaker:Lcom/neovisionaries/ws/client/ProxyHandshaker;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->perform(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 329
    nop

    .line 331
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mHost:Ljava/lang/String;

    iget v3, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mPort:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    nop

    .line 355
    :try_start_2
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 359
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mProxyHandshaker:Lcom/neovisionaries/ws/client/ProxyHandshaker;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->getProxiedHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/SocketConnector;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 369
    nop

    .line 370
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    .line 365
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 364
    const-string v2, "SSL handshake with the WebSocket endpoint (%s) failed: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->SSL_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v2, v3, v1, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 345
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to overlay an existing socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_OVERLAY_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v2, v3, v1, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "message":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    .line 325
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 324
    const-string v2, "Handshake with the proxy server (%s) failed: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->PROXY_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v2, v3, v1, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private resolveHostname()[Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "addresses":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 139
    .local v1, "exception":Ljava/net/UnknownHostException;
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/Address;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    move-object v0, v2

    .line 142
    new-instance v2, Lcom/neovisionaries/ws/client/SocketConnector$1;

    invoke-direct {v2, p0}, Lcom/neovisionaries/ws/client/SocketConnector$1;-><init>(Lcom/neovisionaries/ws/client/SocketConnector;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/net/UnknownHostException;
    move-object v1, v2

    .line 165
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 167
    return-object v0

    .line 170
    :cond_0
    if-nez v1, :cond_1

    .line 172
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "No IP addresses found"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mAddress:Lcom/neovisionaries/ws/client/Address;

    .line 177
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 176
    const-string v3, "Failed to resolve hostname %s: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v4, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v3, v4, v2, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private setSoTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    nop

    .line 279
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/net/SocketException;
    nop

    .line 276
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 275
    const-string v2, "Failed to set SO_TIMEOUT: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v2, v3, v1, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 267
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/HostnameUnverifiedException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mVerifyHostname:Z

    if-nez v0, :cond_0

    .line 287
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/neovisionaries/ws/client/OkHostnameVerifier;->INSTANCE:Lcom/neovisionaries/ws/client/OkHostnameVerifier;

    .line 294
    .local v0, "verifier":Lcom/neovisionaries/ws/client/OkHostnameVerifier;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 297
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-virtual {v0, p2, v1}, Lcom/neovisionaries/ws/client/OkHostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    return-void

    .line 304
    :cond_1
    new-instance v2, Lcom/neovisionaries/ws/client/HostnameUnverifiedException;

    invoke-direct {v2, p1, p2}, Lcom/neovisionaries/ws/client/HostnameUnverifiedException;-><init>(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method closeSilently()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    .line 386
    :cond_0
    :goto_0
    return-void
.end method

.method public connect()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/SocketConnector;->doConnect()V

    .line 190
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lcom/neovisionaries/ws/client/WebSocketException;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 202
    :try_start_1
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    goto :goto_0

    .line 204
    :catch_1
    move-exception v1

    .line 210
    :cond_1
    :goto_0
    throw v0
.end method

.method public getConnectedSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/SocketConnector;->connectSocket()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mConnectionTimeout:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method setDualStackSettings(Lcom/neovisionaries/ws/client/DualStackMode;I)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 0
    .param p1, "mode"    # Lcom/neovisionaries/ws/client/DualStackMode;
    .param p2, "fallbackDelay"    # I

    .line 217
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 218
    iput p2, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mDualStackFallbackDelay:I

    .line 220
    return-object p0
.end method

.method setVerifyHostname(Z)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 0
    .param p1, "verifyHostname"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/SocketConnector;->mVerifyHostname:Z

    .line 228
    return-object p0
.end method
