.class final Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SolanaMobileWalletAdapterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->startSession(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$WhenMappings;
    }
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSolanaMobileWalletAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SolanaMobileWalletAdapterModule.kt\ncom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
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
    c = "com.solanamobile.mobilewalletadapter.reactnative.SolanaMobileWalletAdapterModule$startSession$1"
    f = "SolanaMobileWalletAdapterModule.kt"
    i = {}
    l = {
        0x46
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field label:I

.field final synthetic this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;


# direct methods
.method constructor <init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Lcom/facebook/react/bridge/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    iput-object p2, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$config:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

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

    new-instance v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;

    iget-object v1, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    iget-object v2, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$config:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v3, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;-><init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 70
    .local v1, "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$getMutex$cp()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->label:I

    invoke-static {v3, v2, v4, v5, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 69
    return-object v0

    .line 70
    :cond_0
    move-object v0, v1

    .line 71
    .end local v1    # "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .restart local v0    # "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    :goto_0
    iget-object v1, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v1}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$config:Lcom/facebook/react/bridge/ReadableMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSession with config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    nop

    .line 73
    :try_start_0
    iget-object v1, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$config:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v1, :cond_1

    const-string v3, "baseUri"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 203
    .local v1, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$a$-let-SolanaMobileWalletAdapterModule$startSession$1$uriPrefix$1":I
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .end local v1    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-SolanaMobileWalletAdapterModule$startSession$1$uriPrefix$1":I
    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    move-object v1, v4

    .line 75
    .local v1, "uriPrefix":Landroid/net/Uri;
    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    .line 76
    nop

    .line 75
    const v4, 0x15f90

    invoke-direct {v3, v4}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;-><init>(I)V

    .line 74
    nop

    .line 80
    .local v3, "localAssociation":Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;
    nop

    .line 81
    .end local v1    # "uriPrefix":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->getPort()I

    move-result v4

    .line 82
    invoke-virtual {v3}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->getSession()Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    move-result-object v5

    .line 79
    invoke-static {v1, v4, v5}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationIntentCreator;->createAssociationIntent(Landroid/net/Uri;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "createAssociationIntent(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    nop

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->Companion:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$Companion;

    new-instance v4, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;

    iget-object v5, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    iget-object v6, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {v4, v5, v6, v3}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$1;-><init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/facebook/react/bridge/Promise;Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$setAssociationResultCallback$cp(Lkotlin/jvm/functions/Function1;)V

    .line 96
    iget-object v4, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v4}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$getCurrentActivity(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    nop

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v2, :cond_3

    .line 101
    nop

    .line 102
    invoke-virtual {v3}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->start()Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v1

    .line 103
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2710

    invoke-interface {v1, v4, v5, v2}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;

    .line 100
    nop

    .line 104
    .local v1, "client":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
    sget-object v2, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->Companion:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$Companion;

    new-instance v2, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1, v3}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    invoke-static {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$setSessionState$cp(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;)V

    .line 105
    .end local v1    # "client":Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    .line 106
    .local v1, "sessionPropertiesMap":Lcom/facebook/react/bridge/WritableMap;
    nop

    .line 107
    const-string v2, "protocol_version"

    .line 108
    invoke-virtual {v3}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->getSession()Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->getSessionProperties()Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    move-result-object v4

    iget-object v4, v4, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;->protocolVersion:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    .end local v3    # "localAssociation":Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;
    sget-object v3, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 110
    .end local v1    # "sessionPropertiesMap":Lcom/facebook/react/bridge/WritableMap;
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_3

    .restart local v1    # "sessionPropertiesMap":Lcom/facebook/react/bridge/WritableMap;
    :pswitch_2
    const-string v3, "v1"

    goto :goto_2

    .line 109
    :pswitch_3
    const-string v3, "legacy"

    .line 106
    :goto_2
    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .end local v1    # "sessionPropertiesMap":Lcom/facebook/react/bridge/WritableMap;
    goto/16 :goto_4

    .line 110
    :goto_3
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v0    # "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v1

    .line 97
    .restart local v0    # "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    .line 98
    const-string v2, "Could not find a current activity from which to launch a local association"

    .line 97
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .restart local v0    # "this":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to start session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 133
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 126
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed establishing local association with wallet"

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 129
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_4

    .line 122
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interrupted while waiting for local association to be ready"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 125
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 118
    :catch_2
    move-exception v1

    .line 119
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Timed out waiting for local association to be ready"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 121
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_4

    .line 114
    :catch_3
    move-exception v1

    .line 115
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-virtual {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Found no installed wallet that supports the mobile wallet protocol"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->this$0:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    invoke-static {v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V

    .line 117
    iget-object v2, v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const-string v3, "ERROR_WALLET_NOT_FOUND"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
