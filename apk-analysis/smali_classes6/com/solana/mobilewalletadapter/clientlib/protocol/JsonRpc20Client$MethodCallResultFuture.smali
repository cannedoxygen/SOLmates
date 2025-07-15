.class Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
.super Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;
.source "JsonRpc20Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodCallResultFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mId:I

.field final synthetic this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;


# direct methods
.method static bridge synthetic -$$Nest$fgetmId(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;)I
    .locals 0

    iget p0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->mId:I

    return p0
.end method

.method public constructor <init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;I)V
    .locals 0
    .param p2, "id"    # I

    .line 247
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;-><init>()V

    .line 248
    iput p2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->mId:I

    .line 249
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 253
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->-$$Nest$fgetmOutstandingRequest(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->this$0:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->-$$Nest$mclearOutstandingRequest(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;)V

    .line 257
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-super {p0, p1}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->cancel(Z)Z

    move-result v0

    return v0

    .line 257
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
