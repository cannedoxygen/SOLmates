.class public Lcom/neovisionaries/ws/client/WebSocketFactory;
.super Ljava/lang/Object;
.source "WebSocketFactory.java"


# instance fields
.field private mConnectionTimeout:I

.field private mDualStackFallbackDelay:I

.field private mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

.field private final mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

.field private mServerNames:[Ljava/lang/String;

.field private final mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

.field private mSocketTimeout:I

.field private mVerifyHostname:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->BOTH:Lcom/neovisionaries/ws/client/DualStackMode;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 39
    const/16 v0, 0xfa

    iput v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 49
    new-instance v0, Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 50
    new-instance v0, Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/ProxySettings;-><init>(Lcom/neovisionaries/ws/client/WebSocketFactory;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketFactory;)V
    .locals 4
    .param p1, "other"    # Lcom/neovisionaries/ws/client/WebSocketFactory;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/neovisionaries/ws/client/DualStackMode;->BOTH:Lcom/neovisionaries/ws/client/DualStackMode;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 39
    const/16 v0, 0xfa

    iput v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 67
    if-eqz p1, :cond_1

    .line 72
    new-instance v0, Lcom/neovisionaries/ws/client/SocketFactorySettings;

    iget-object v1, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-direct {v0, v1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;-><init>(Lcom/neovisionaries/ws/client/SocketFactorySettings;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 73
    new-instance v0, Lcom/neovisionaries/ws/client/ProxySettings;

    iget-object v1, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-direct {v0, p0, v1}, Lcom/neovisionaries/ws/client/ProxySettings;-><init>(Lcom/neovisionaries/ws/client/WebSocketFactory;Lcom/neovisionaries/ws/client/ProxySettings;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    .line 74
    iget v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mConnectionTimeout:I

    iput v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mConnectionTimeout:I

    .line 75
    iget v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketTimeout:I

    iput v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketTimeout:I

    .line 76
    iget-object v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 77
    iget v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    iput v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    .line 78
    iget-boolean v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 80
    iget-object v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :cond_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given WebSocketFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDirectRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "secure"    # Z
    .param p4, "timeout"    # I

    .line 906
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p3}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->selectSocketFactory(Z)Ljavax/net/SocketFactory;

    move-result-object v0

    .line 909
    .local v0, "factory":Ljavax/net/SocketFactory;
    new-instance v3, Lcom/neovisionaries/ws/client/Address;

    invoke-direct {v3, p1, p2}, Lcom/neovisionaries/ws/client/Address;-><init>(Ljava/lang/String;I)V

    .line 912
    .local v3, "address":Lcom/neovisionaries/ws/client/Address;
    new-instance v7, Lcom/neovisionaries/ws/client/SocketConnector;

    iget-object v5, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    iget v6, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketTimeout:I

    move-object v1, v7

    move-object v2, v0

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/neovisionaries/ws/client/SocketConnector;-><init>(Ljavax/net/SocketFactory;Lcom/neovisionaries/ws/client/Address;I[Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    iget v2, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    .line 913
    invoke-virtual {v7, v1, v2}, Lcom/neovisionaries/ws/client/SocketConnector;->setDualStackSettings(Lcom/neovisionaries/ws/client/DualStackMode;I)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v1

    iget-boolean v2, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 914
    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/SocketConnector;->setVerifyHostname(Z)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v1

    .line 912
    return-object v1
.end method

.method private createProxiedRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "secure"    # Z
    .param p4, "timeout"    # I

    .line 879
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/ProxySettings;->getPort()I

    move-result v2

    iget-object v3, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v3}, Lcom/neovisionaries/ws/client/ProxySettings;->isSecure()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/neovisionaries/ws/client/WebSocketFactory;->determinePort(IZ)I

    move-result v2

    .line 882
    .local v2, "proxyPort":I
    iget-object v3, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v3}, Lcom/neovisionaries/ws/client/ProxySettings;->selectSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 885
    .local v3, "factory":Ljavax/net/SocketFactory;
    new-instance v6, Lcom/neovisionaries/ws/client/Address;

    iget-object v4, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v4}, Lcom/neovisionaries/ws/client/ProxySettings;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v2}, Lcom/neovisionaries/ws/client/Address;-><init>(Ljava/lang/String;I)V

    .line 888
    .local v6, "address":Lcom/neovisionaries/ws/client/Address;
    new-instance v10, Lcom/neovisionaries/ws/client/ProxyHandshaker;

    iget-object v4, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-direct {v10, v14, v15, v4}, Lcom/neovisionaries/ws/client/ProxyHandshaker;-><init>(Ljava/lang/String;ILcom/neovisionaries/ws/client/ProxySettings;)V

    .line 891
    .local v10, "handshaker":Lcom/neovisionaries/ws/client/ProxyHandshaker;
    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 892
    invoke-virtual {v4, v1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->selectSocketFactory(Z)Ljavax/net/SocketFactory;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v11, v4

    .line 895
    .local v11, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v13, Lcom/neovisionaries/ws/client/SocketConnector;

    iget v8, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketTimeout:I

    iget-object v4, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    .line 896
    invoke-virtual {v4}, Lcom/neovisionaries/ws/client/ProxySettings;->getServerNames()[Ljava/lang/String;

    move-result-object v9

    move-object v4, v13

    move-object v5, v3

    move/from16 v7, p4

    move-object/from16 v12, p1

    move-object v1, v13

    move/from16 v13, p2

    invoke-direct/range {v4 .. v13}, Lcom/neovisionaries/ws/client/SocketConnector;-><init>(Ljavax/net/SocketFactory;Lcom/neovisionaries/ws/client/Address;II[Ljava/lang/String;Lcom/neovisionaries/ws/client/ProxyHandshaker;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V

    iget-object v4, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    iget v5, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    .line 898
    invoke-virtual {v1, v4, v5}, Lcom/neovisionaries/ws/client/SocketConnector;->setDualStackSettings(Lcom/neovisionaries/ws/client/DualStackMode;I)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v1

    iget-boolean v4, v0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 899
    invoke-virtual {v1, v4}, Lcom/neovisionaries/ws/client/SocketConnector;->setVerifyHostname(Z)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v1

    .line 895
    return-object v1
.end method

.method private createRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "secure"    # Z
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    invoke-static {p2, p3}, Lcom/neovisionaries/ws/client/WebSocketFactory;->determinePort(IZ)I

    move-result p2

    .line 855
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ProxySettings;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 860
    .local v0, "proxied":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 863
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createProxiedRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v1

    return-object v1

    .line 868
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createDirectRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v1

    return-object v1
.end method

.method private createSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 15
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    move-object/from16 v8, p3

    invoke-static/range {p1 .. p1}, Lcom/neovisionaries/ws/client/WebSocketFactory;->isSecureConnectionRequired(Ljava/lang/String;)Z

    move-result v9

    .line 792
    .local v9, "secure":Z
    if-eqz v8, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-static/range {p5 .. p5}, Lcom/neovisionaries/ws/client/WebSocketFactory;->determinePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 801
    .end local p5    # "path":Ljava/lang/String;
    .local v10, "path":Ljava/lang/String;
    move-object v11, p0

    move/from16 v12, p4

    move/from16 v13, p7

    invoke-direct {p0, v8, v12, v9, v13}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createRawSocket(Ljava/lang/String;IZI)Lcom/neovisionaries/ws/client/SocketConnector;

    move-result-object v14

    .line 804
    .local v14, "connector":Lcom/neovisionaries/ws/client/SocketConnector;
    move-object v0, p0

    move v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v10

    move-object/from16 v6, p6

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createWebSocket(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0

    .line 792
    .end local v10    # "path":Ljava/lang/String;
    .end local v14    # "connector":Lcom/neovisionaries/ws/client/SocketConnector;
    .restart local p5    # "path":Ljava/lang/String;
    :cond_0
    move-object v11, p0

    move/from16 v12, p4

    move/from16 v13, p7

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The host part is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createWebSocket(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 8
    .param p1, "secure"    # Z
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "connector"    # Lcom/neovisionaries/ws/client/SocketConnector;

    .line 941
    if-ltz p4, :cond_0

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 947
    :cond_0
    if-eqz p6, :cond_1

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 952
    :cond_1
    new-instance v7, Lcom/neovisionaries/ws/client/WebSocket;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/neovisionaries/ws/client/WebSocket;-><init>(Lcom/neovisionaries/ws/client/WebSocketFactory;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)V

    return-object v7
.end method

.method private static determinePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 831
    const-string v0, "/"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    return-object p0

    .line 842
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 833
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static determinePort(IZ)I
    .locals 1
    .param p0, "port"    # I
    .param p1, "secure"    # Z

    .line 920
    if-ltz p0, :cond_0

    .line 922
    return p0

    .line 925
    :cond_0
    if-eqz p1, :cond_1

    .line 927
    const/16 v0, 0x1bb

    return v0

    .line 931
    :cond_1
    const/16 v0, 0x50

    return v0
.end method

.method private static isSecureConnectionRequired(Ljava/lang/String;)Z
    .locals 3
    .param p0, "scheme"    # Ljava/lang/String;

    .line 810
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 815
    const-string/jumbo v0, "wss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 820
    :cond_0
    const-string/jumbo v0, "ws"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 817
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 812
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scheme part is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    if-eqz p1, :cond_1

    .line 559
    if-ltz p2, :cond_0

    .line 564
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given timeout value is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given URI is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/URI;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 14
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    if-eqz p1, :cond_1

    .line 767
    if-ltz p2, :cond_0

    .line 773
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 774
    .local v8, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    .line 775
    .local v9, "userInfo":Ljava/lang/String;
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->extractHost(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v10

    .line 776
    .local v10, "host":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v11

    .line 777
    .local v11, "port":I
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v12

    .line 778
    .local v12, "path":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v13

    .line 780
    .local v13, "query":Ljava/lang/String;
    move-object v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    move-object v6, v13

    move/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0

    .line 769
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "userInfo":Ljava/lang/String;
    .end local v10    # "host":Ljava/lang/String;
    .end local v11    # "port":I
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "query":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given timeout value is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given URI is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/URL;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URL;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/URL;I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    if-eqz p1, :cond_1

    .line 629
    if-ltz p2, :cond_0

    .line 636
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to convert the given URL into a URI."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given timeout value is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given URL is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mConnectionTimeout:I

    return v0
.end method

.method public getDualStackFallbackDelay()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    return v0
.end method

.method public getDualStackMode()Lcom/neovisionaries/ws/client/DualStackMode;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    return-object v0
.end method

.method public getProxySettings()Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mProxySettings:Lcom/neovisionaries/ws/client/ProxySettings;

    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerNames()[Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketTimeout:I

    return v0
.end method

.method public getVerifyHostname()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    return v0
.end method

.method public setConnectionTimeout(I)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 2
    .param p1, "timeout"    # I

    .line 234
    if-ltz p1, :cond_0

    .line 239
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mConnectionTimeout:I

    .line 241
    return-object p0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout value cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDualStackFallbackDelay(I)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 2
    .param p1, "delay"    # I

    .line 371
    if-ltz p1, :cond_0

    .line 376
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackFallbackDelay:I

    .line 378
    return-object p0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay value cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDualStackMode(Lcom/neovisionaries/ws/client/DualStackMode;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 0
    .param p1, "mode"    # Lcom/neovisionaries/ws/client/DualStackMode;

    .line 331
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mDualStackMode:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 333
    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;

    .line 174
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    .line 176
    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 144
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 146
    return-object p0
.end method

.method public setServerName(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 2
    .param p1, "serverName"    # Ljava/lang/String;

    .line 493
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;->setServerNames([Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public setServerNames([Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 0
    .param p1, "serverNames"    # [Ljava/lang/String;

    .line 470
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mServerNames:[Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1
    .param p1, "factory"    # Ljavax/net/SocketFactory;

    .line 113
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 115
    return-object p0
.end method

.method public setSocketTimeout(I)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 2
    .param p1, "timeout"    # I

    .line 289
    if-ltz p1, :cond_0

    .line 294
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mSocketTimeout:I

    .line 296
    return-object p0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout value cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVerifyHostname(Z)Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 0
    .param p1, "verifyHostname"    # Z

    .line 432
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocketFactory;->mVerifyHostname:Z

    .line 434
    return-object p0
.end method
