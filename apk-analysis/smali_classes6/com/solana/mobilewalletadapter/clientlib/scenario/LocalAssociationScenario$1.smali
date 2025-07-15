.class Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;
.super Ljava/lang/Object;
.source "LocalAssociationScenario.java"

# interfaces
.implements Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;


# direct methods
.method constructor <init>(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0
    .param p1, "this$0"    # Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    .line 311
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$fgetmLock(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$mdoConnected(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    .line 316
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionClosed()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$fgetmLock(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$mdoDisconnected(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionFailed()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$fgetmLock(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$mdoConnectionFailed(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
