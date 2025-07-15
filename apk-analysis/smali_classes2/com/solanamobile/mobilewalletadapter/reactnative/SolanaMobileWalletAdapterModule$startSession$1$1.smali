.class final Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SolanaMobileWalletAdapterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "resultCode",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $localAssociation:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;


# direct methods
.method constructor <init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/facebook/react/bridge/Promise;Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 1

    iput-object p1, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    iput-object p2, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;->$localAssociation:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;->invoke(I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Local association cancelled by user, ending session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 88
    nop

    .line 89
    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$ConnectionFailedException;

    .line 90
    nop

    .line 89
    const-string v2, "Local association cancelled by user"

    invoke-direct {v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$ConnectionFailedException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 87
    const-string v2, "Session not established: Local association cancelled by user"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;->$localAssociation:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-virtual {v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->close()Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    .line 95
    :cond_0
    return-void
.end method
