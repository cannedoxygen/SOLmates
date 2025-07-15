.class public Lcom/neovisionaries/ws/client/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# instance fields
.field private final mHeaders:Ljava/util/Map;
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

.field private mHost:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mSecure:Z

.field private mServerNames:[Ljava/lang/String;

.field private final mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

.field private final mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;


# direct methods
.method constructor <init>(Lcom/neovisionaries/ws/client/WebSocketFactory;)V
    .locals 2
    .param p1, "factory"    # Lcom/neovisionaries/ws/client/WebSocketFactory;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    .line 103
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    .line 104
    new-instance v0, Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 106
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ProxySettings;->reset()Lcom/neovisionaries/ws/client/ProxySettings;

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/neovisionaries/ws/client/WebSocketFactory;Lcom/neovisionaries/ws/client/ProxySettings;)V
    .locals 4
    .param p1, "factory"    # Lcom/neovisionaries/ws/client/WebSocketFactory;
    .param p2, "settings"    # Lcom/neovisionaries/ws/client/ProxySettings;

    .line 123
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ProxySettings;-><init>(Lcom/neovisionaries/ws/client/WebSocketFactory;)V

    .line 125
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    iget-object v1, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    iget-boolean v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    .line 127
    iget-object v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    .line 128
    iget v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    iput v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    .line 129
    iget-object v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    .line 130
    iget-object v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    .line 132
    iget-object v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    .line 135
    iget-object v0, p2, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :cond_0
    return-void
.end method

.method private setByScheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .line 551
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    goto :goto_0

    .line 555
    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    .line 559
    :cond_1
    :goto_0
    return-void
.end method

.method private setByUserInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "userInfo"    # Ljava/lang/String;

    .line 564
    if-nez p1, :cond_0

    .line 566
    return-void

    .line 569
    :cond_0
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "pair":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 586
    return-void

    .line 576
    :pswitch_0
    aget-object v1, v0, v2

    .line 577
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 578
    .local v2, "pw":Ljava/lang/String;
    goto :goto_0

    .line 581
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "pw":Ljava/lang/String;
    :pswitch_1
    aget-object v1, v0, v2

    .line 582
    .restart local v1    # "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 583
    .restart local v2    # "pw":Ljava/lang/String;
    nop

    .line 589
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 591
    return-void

    .line 594
    :cond_1
    iput-object v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    .line 595
    iput-object v2, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    .line 596
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .line 540
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ProxySettings;->setByScheme(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p2}, Lcom/neovisionaries/ws/client/ProxySettings;->setByUserInfo(Ljava/lang/String;)V

    .line 542
    iput-object p3, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    .line 543
    iput p4, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    .line 545
    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 629
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 636
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 639
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    return-object p0

    .line 631
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    return v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerNames()[Ljava/lang/String;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getWebSocketFactory()Lcom/neovisionaries/ws/client/WebSocketFactory;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    return v0
.end method

.method public reset()Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 2

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    .line 209
    const/4 v1, -0x1

    iput v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    .line 210
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 213
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method selectSocketFactory()Ljavax/net/SocketFactory;
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->selectSocketFactory(Z)Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 422
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/ProxySettings;->setId(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/ProxySettings;->setPassword(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object v0

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 282
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mHost:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 370
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mId:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPassword:Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public setPort(I)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0
    .param p1, "port"    # I

    .line 324
    iput p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mPort:I

    .line 326
    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;

    .line 731
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    .line 733
    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 702
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 704
    return-object p0
.end method

.method public setSecure(Z)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0
    .param p1, "secure"    # Z

    .line 244
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSecure:Z

    .line 246
    return-object p0
.end method

.method public setServer(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 442
    if-nez p1, :cond_0

    .line 444
    return-object p0

    .line 447
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ProxySettings;->setServer(Ljava/net/URI;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object v0

    return-object v0
.end method

.method public setServer(Ljava/net/URI;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;

    .line 524
    if-nez p1, :cond_0

    .line 526
    return-object p0

    .line 529
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "userInfo":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 534
    .local v3, "port":I
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/neovisionaries/ws/client/ProxySettings;->setServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object v4

    return-object v4
.end method

.method public setServer(Ljava/net/URL;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .line 467
    if-nez p1, :cond_0

    .line 469
    return-object p0

    .line 474
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ProxySettings;->setServer(Ljava/net/URI;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 476
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setServerName(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 2
    .param p1, "serverName"    # Ljava/lang/String;

    .line 798
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ProxySettings;->setServerNames([Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;

    move-result-object v0

    return-object v0
.end method

.method public setServerNames([Ljava/lang/String;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 0
    .param p1, "serverNames"    # [Ljava/lang/String;

    .line 775
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mServerNames:[Ljava/lang/String;

    .line 777
    return-object p0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/neovisionaries/ws/client/ProxySettings;
    .locals 1
    .param p1, "factory"    # Ljavax/net/SocketFactory;

    .line 672
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxySettings;->mSocketFactorySettings:Lcom/neovisionaries/ws/client/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/SocketFactorySettings;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 674
    return-object p0
.end method
