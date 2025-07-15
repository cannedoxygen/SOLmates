.class Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;
.super Ljava/lang/Object;
.source "SocketInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/SocketInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketFuture"
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mRacers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/neovisionaries/ws/client/SocketInitiator;


# direct methods
.method private constructor <init>(Lcom/neovisionaries/ws/client/SocketInitiator;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->this$0:Lcom/neovisionaries/ws/client/SocketInitiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neovisionaries/ws/client/SocketInitiator;Lcom/neovisionaries/ws/client/SocketInitiator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/neovisionaries/ws/client/SocketInitiator;
    .param p2, "x1"    # Lcom/neovisionaries/ws/client/SocketInitiator$1;

    .line 203
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;-><init>(Lcom/neovisionaries/ws/client/SocketInitiator;)V

    return-void
.end method


# virtual methods
.method await(Ljava/util/List;)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;",
            ">;)",
            "Ljava/net/Socket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    .local p1, "racers":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;>;"
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mRacers:Ljava/util/List;

    .line 284
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mRacers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 287
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mRacers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;

    .line 289
    .local v1, "racer":Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->start()V

    .line 290
    .end local v1    # "racer":Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 296
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mSocket:Ljava/net/Socket;

    return-object v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mException:Ljava/lang/Exception;

    throw v0

    .line 306
    :cond_2
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v2, "No viable interface to connect"

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized hasSocket()Z
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 213
    .end local p0    # "this":Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mRacers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 270
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mException:Ljava/lang/Exception;

    .line 274
    .end local p0    # "this":Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 264
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set exception before awaiting!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    .end local p1    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized setSocket(Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;Ljava/net/Socket;)V
    .locals 3
    .param p1, "current"    # Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
    .param p2, "socket"    # Ljava/net/Socket;

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mRacers:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_2

    .line 228
    iput-object p2, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mSocket:Ljava/net/Socket;

    .line 231
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mRacers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;

    .line 234
    .local v1, "racer":Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
    if-ne v1, p1, :cond_0

    .line 236
    goto :goto_0

    .line 238
    :cond_0
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->abort(Ljava/lang/Exception;)V

    .line 239
    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v1    # "racer":Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
    goto :goto_0

    .end local p0    # "this":Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;
    :cond_1
    goto :goto_1

    .line 246
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    .line 255
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$SocketFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 222
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set socket before awaiting!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    .end local p1    # "current":Lcom/neovisionaries/ws/client/SocketInitiator$SocketRacer;
    .end local p2    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
