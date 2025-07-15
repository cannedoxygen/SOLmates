.class Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;
.super Ljava/util/TimerTask;
.source "ReadingThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/ReadingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neovisionaries/ws/client/ReadingThread;


# direct methods
.method private constructor <init>(Lcom/neovisionaries/ws/client/ReadingThread;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;->this$0:Lcom/neovisionaries/ws/client/ReadingThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neovisionaries/ws/client/ReadingThread;Lcom/neovisionaries/ws/client/ReadingThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/neovisionaries/ws/client/ReadingThread;
    .param p2, "x1"    # Lcom/neovisionaries/ws/client/ReadingThread$1;

    .line 1185
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;-><init>(Lcom/neovisionaries/ws/client/ReadingThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;->this$0:Lcom/neovisionaries/ws/client/ReadingThread;

    iget-object v0, v0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 1193
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_0
    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v0

    .line 1202
    :goto_0
    return-void
.end method
