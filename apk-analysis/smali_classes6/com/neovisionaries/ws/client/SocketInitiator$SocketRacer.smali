.class Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
.super Ljava/lang/Thread;
.source "SocketInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/SocketInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketRacer"
.end annotation


# instance fields
.field private final mConnectTimeout:I

.field private final mDoneSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

.field private final mFuture:Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

.field private mServerNames:[Ljava/lang/String;

.field private final mSocketAddress:Ljava/net/SocketAddress;

.field private final mSocketFactory:Ljavax/net/SocketFactory;

.field private final mStartSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

.field final synthetic this$0:Lcom/neovisionaries/ws/client/SocketInitiator;


# direct methods
.method constructor <init>(Lcom/neovisionaries/ws/client/SocketInitiator;Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;Ljavax/net/SocketFactory;Ljava/net/SocketAddress;[Ljava/lang/String;ILcom/neovisionaries/ws/client/SocketInitiator$Signal;Lcom/neovisionaries/ws/client/SocketInitiator$Signal;)V
    .locals 0
    .param p2, "future"    # Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;
    .param p3, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p4, "socketAddress"    # Ljava/net/SocketAddress;
    .param p5, "serverNames"    # [Ljava/lang/String;
    .param p6, "connectTimeout"    # I
    .param p7, "startSignal"    # Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
    .param p8, "doneSignal"    # Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    .line 92
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->this$0:Lcom/neovisionaries/ws/client/SocketInitiator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mFuture:Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

    .line 94
    iput-object p3, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 95
    iput-object p4, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mSocketAddress:Ljava/net/SocketAddress;

    .line 96
    iput-object p5, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mServerNames:[Ljava/lang/String;

    .line 97
    iput p6, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mConnectTimeout:I

    .line 98
    iput-object p7, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mStartSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    .line 99
    iput-object p8, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mDoneSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    .line 100
    return-void
.end method

.method private complete(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;

    .line 152
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mFuture:Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mDoneSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    monitor-exit v0

    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mFuture:Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

    invoke-virtual {v1, p0, p1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->setSocket(Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;Ljava/net/Socket;)V

    .line 163
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mDoneSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->done()V

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method abort(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 170
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mFuture:Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mDoneSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    monitor-exit v0

    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mFuture:Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

    invoke-virtual {v1, p1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->setException(Ljava/lang/Exception;)V

    .line 182
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mDoneSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->done()V

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 104
    const/4 v0, 0x0

    .line 108
    .local v0, "socket":Ljava/net/Socket;
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mStartSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mStartSignal:Lcom/neovisionaries/ws/client/SocketInitiator$Signal;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->await()V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mFuture:Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->hasSocket()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 123
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mServerNames:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/neovisionaries/ws/client/SNIHelper;->setServerNames(Ljava/net/Socket;[Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mSocketAddress:Ljava/net/SocketAddress;

    iget v2, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->mConnectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 129
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->complete(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->abort(Ljava/lang/Exception;)V

    .line 135
    if-eqz v0, :cond_2

    .line 139
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    goto :goto_0

    .line 141
    :catch_1
    move-exception v2

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method
