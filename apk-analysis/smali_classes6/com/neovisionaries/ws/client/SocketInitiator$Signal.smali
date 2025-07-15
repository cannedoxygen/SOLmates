.class Lcom/neovisionaries/ws/client/SocketInitiator$Signal;
.super Ljava/lang/Object;
.source "SocketInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/SocketInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Signal"
.end annotation


# instance fields
.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mMaxDelay:I

.field final synthetic this$0:Lcom/neovisionaries/ws/client/SocketInitiator;


# direct methods
.method constructor <init>(Lcom/neovisionaries/ws/client/SocketInitiator;I)V
    .locals 1
    .param p2, "maxDelay"    # I

    .line 42
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->this$0:Lcom/neovisionaries/ws/client/SocketInitiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 44
    iput p2, p0, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->mMaxDelay:I

    .line 45
    return-void
.end method


# virtual methods
.method await()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->mMaxDelay:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 57
    return-void
.end method

.method done()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    return-void
.end method

.method isDone()Z
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketInitiator$Signal;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
