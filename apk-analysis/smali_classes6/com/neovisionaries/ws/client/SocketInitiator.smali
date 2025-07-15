.class public Lcom/neovisionaries/ws/client/SocketInitiator;
.super Ljava/lang/Object;
.source "SocketInitiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;,
        Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;,
        Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
    }
.end annotation


# instance fields
.field private final mAddress:Lcom/neovisionaries/ws/client/Address;

.field private final mConnectTimeout:I

.field private final mFallbackDelay:I

.field private final mMode:Lcom/neovisionaries/ws/client/DualStackMode;

.field private final mServerNames:[Ljava/lang/String;

.field private final mSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/SocketFactory;Lcom/neovisionaries/ws/client/Address;I[Ljava/lang/String;Lcom/neovisionaries/ws/client/DualStackMode;I)V
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p2, "address"    # Lcom/neovisionaries/ws/client/Address;
    .param p3, "connectTimeout"    # I
    .param p4, "serverNames"    # [Ljava/lang/String;
    .param p5, "mode"    # Lcom/neovisionaries/ws/client/DualStackMode;
    .param p6, "fallbackDelay"    # I

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketInitiator;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 326
    iput-object p2, p0, Lcom/neovisionaries/ws/client/SocketInitiator;->mAddress:Lcom/neovisionaries/ws/client/Address;

    .line 327
    iput p3, p0, Lcom/neovisionaries/ws/client/SocketInitiator;->mConnectTimeout:I

    .line 328
    iput-object p4, p0, Lcom/neovisionaries/ws/client/SocketInitiator;->mServerNames:[Ljava/lang/String;

    .line 329
    iput-object p5, p0, Lcom/neovisionaries/ws/client/SocketInitiator;->mMode:Lcom/neovisionaries/ws/client/DualStackMode;

    .line 330
    iput p6, p0, Lcom/neovisionaries/ws/client/SocketInitiator;->mFallbackDelay:I

    .line 331
    return-void
.end method


# virtual methods
.method public establish([Ljava/net/InetAddress;)Ljava/net/Socket;
    .locals 19
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    new-instance v0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;-><init>(Lcom/neovisionaries/ws/client/SocketInitiator;Lcom/neovisionaries/ws/client/SocketInitiator$1;)V

    move-object v11, v0

    .line 340
    .local v11, "future":Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 341
    .local v12, "racers":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;>;"
    const/4 v0, 0x0

    .line 342
    .local v0, "delay":I
    const/4 v1, 0x0

    .line 343
    .local v1, "startSignal":Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
    array-length v13, v10

    const/4 v2, 0x0

    move-object v14, v1

    move v15, v2

    .end local v1    # "startSignal":Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
    .local v14, "startSignal":Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
    :goto_0
    if-ge v15, v13, :cond_3

    aget-object v7, v10, v15

    .line 346
    .local v7, "address":Ljava/net/InetAddress;
    iget-object v1, v9, Lcom/neovisionaries/ws/client/SocketInitiator;->mMode:Lcom/neovisionaries/ws/client/DualStackMode;

    sget-object v2, Lcom/neovisionaries/ws/client/DualStackMode;->IPV4_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;

    if-ne v1, v2, :cond_0

    instance-of v1, v7, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v9, Lcom/neovisionaries/ws/client/SocketInitiator;->mMode:Lcom/neovisionaries/ws/client/DualStackMode;

    sget-object v2, Lcom/neovisionaries/ws/client/DualStackMode;->IPV6_ONLY:Lcom/neovisionaries/ws/client/DualStackMode;

    if-ne v1, v2, :cond_1

    instance-of v1, v7, Ljava/net/Inet6Address;

    if-nez v1, :cond_1

    .line 349
    goto :goto_1

    .line 353
    :cond_1
    iget v1, v9, Lcom/neovisionaries/ws/client/SocketInitiator;->mFallbackDelay:I

    add-int v6, v0, v1

    .line 356
    .end local v0    # "delay":I
    .local v6, "delay":I
    new-instance v8, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    invoke-direct {v8, v9, v6}, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;-><init>(Lcom/neovisionaries/ws/client/SocketInitiator;I)V

    .line 359
    .local v8, "doneSignal":Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v0, v9, Lcom/neovisionaries/ws/client/SocketInitiator;->mAddress:Lcom/neovisionaries/ws/client/Address;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/Address;->getPort()I

    move-result v0

    invoke-direct {v4, v7, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 360
    .local v4, "socketAddress":Ljava/net/SocketAddress;
    new-instance v16, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;

    iget-object v3, v9, Lcom/neovisionaries/ws/client/SocketInitiator;->mSocketFactory:Ljavax/net/SocketFactory;

    iget-object v5, v9, Lcom/neovisionaries/ws/client/SocketInitiator;->mServerNames:[Ljava/lang/String;

    iget v2, v9, Lcom/neovisionaries/ws/client/SocketInitiator;->mConnectTimeout:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object v2, v11

    move/from16 v18, v6

    .end local v6    # "delay":I
    .local v18, "delay":I
    move/from16 v6, v17

    move-object/from16 v17, v7

    .end local v7    # "address":Ljava/net/InetAddress;
    .local v17, "address":Ljava/net/InetAddress;
    move-object v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;-><init>(Lcom/neovisionaries/ws/client/SocketInitiator;Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;Ljavax/net/SocketFactory;Ljava/net/SocketAddress;[Ljava/lang/String;ILcom/neovisionaries/ws/client/SocketInitiator$Signal;Lcom/neovisionaries/ws/client/SocketInitiator$Signal;)V

    .line 363
    .local v0, "racer":Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    move-object v1, v8

    move-object v14, v1

    move/from16 v0, v18

    .line 343
    .end local v4    # "socketAddress":Ljava/net/SocketAddress;
    .end local v8    # "doneSignal":Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
    .end local v17    # "address":Ljava/net/InetAddress;
    .end local v18    # "delay":I
    .local v0, "delay":I
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {v11, v12}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->await(Ljava/util/List;)Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method
