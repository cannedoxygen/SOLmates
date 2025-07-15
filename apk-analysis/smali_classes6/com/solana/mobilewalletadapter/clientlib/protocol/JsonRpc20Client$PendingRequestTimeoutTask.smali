.class Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;
.super Ljava/util/TimerTask;
.source "JsonRpc20Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingRequestTimeoutTask"
.end annotation


# instance fields
.field private final mFuture:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

.field final synthetic this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;


# direct methods
.method public constructor <init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;)V
    .locals 0
    .param p2, "future"    # Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    .line 267
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->mFuture:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    .line 269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->-$$Nest$fgetmOutstandingRequest(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->mFuture:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    if-ne v1, v2, :cond_0

    .line 275
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->-$$Nest$mclearOutstandingRequest(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;)V

    .line 277
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->mFuture:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timed out waiting for response with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;->mFuture:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    invoke-static {v3}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->-$$Nest$fgetmId(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->completeExceptionally(Ljava/lang/Exception;)Z

    .line 280
    return-void

    .line 277
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
