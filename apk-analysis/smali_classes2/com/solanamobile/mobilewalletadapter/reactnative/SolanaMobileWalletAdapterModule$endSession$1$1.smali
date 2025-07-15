.class final Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SolanaMobileWalletAdapterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->endSession(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.solanamobile.mobilewalletadapter.reactnative.SolanaMobileWalletAdapterModule$endSession$1$1"
    f = "SolanaMobileWalletAdapterModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field label:I

.field final synthetic this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;


# direct methods
.method constructor <init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;",
            "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;",
            "Lcom/facebook/react/bridge/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    iput-object p2, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$it:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    iput-object p3, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;

    iget-object v1, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    iget-object v2, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$it:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    iget-object v3, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;-><init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "Failed to end session"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 172
    iget v1, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 173
    .local v1, "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "endSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    nop

    .line 175
    :try_start_0
    iget-object v2, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$it:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    invoke-virtual {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;->getLocalAssociation()Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->close()Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v2

    .line 177
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2710

    invoke-interface {v2, v4, v5, v3}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 178
    iget-object v2, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 179
    iget-object v2, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v3}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    iget-object v3, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v3}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 187
    iget-object v3, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v3, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    iget-object v3, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v3}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Timed out waiting for local association to close"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    iget-object v3, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v3}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 183
    iget-object v3, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v3, v0, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
