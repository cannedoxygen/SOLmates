.class Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;
.super Ljava/lang/Object;
.source "LocalAssociationScenario.java"

# interfaces
.implements Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;


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

    .line 334
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionClosed()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$fgetmLock(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$mdoSessionClosed(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSessionError()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$fgetmLock(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$mdoSessionError(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSessionEstablished()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$fgetmLock(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;->this$0:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->-$$Nest$mdoSessionEstablished(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
