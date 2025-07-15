.class final Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevLauncherDevSupportManagerSwapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->closeExistingConnection(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
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
    c = "expo.modules.devlauncher.react.DevLauncherDevSupportManagerSwapper$closeExistingConnection$1"
    f = "DevLauncherDevSupportManagerSwapper.kt"
    i = {}
    l = {
        0x9a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $devManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

.field label:I

.field final synthetic this$0:Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->this$0:Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;

    iput-object p2, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->$devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    iput-object p3, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->$devManagerClass:Ljava/lang/Class;

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

    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;

    iget-object v1, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->this$0:Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;

    iget-object v2, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->$devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    iget-object v3, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->$devManagerClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, p2}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;-><init>(Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 120
    iget v1, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    goto :goto_2

    .line 120
    .end local v1    # "this":Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 121
    .restart local v1    # "this":Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 122
    :goto_0
    nop

    .line 124
    :try_start_1
    iget-object v2, v1, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->this$0:Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;

    iget-object v3, v1, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->$devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-static {v2, v3}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->access$tryToStopShakeDetector(Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    .line 126
    iget-object v2, v1, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->$devManagerClass:Ljava/lang/Class;

    .line 127
    iget-object v3, v1, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->$devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 128
    const-string v4, "mDevServerHelper"

    .line 126
    invoke-static {v2, v3, v4}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/devsupport/DevServerHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .local v2, "devServerHelper":Lcom/facebook/react/devsupport/DevServerHelper;
    :try_start_2
    const-class v3, Lcom/facebook/react/devsupport/DevServerHelper;

    .line 133
    nop

    .line 134
    const-string v4, "mPackagerConnectionLock"

    .line 132
    invoke-static {v3, v2, v4}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 137
    .local v3, "packagerConnectionLock":Z
    if-nez v3, :cond_0

    .line 138
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V

    .line 139
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 141
    .end local v3    # "packagerConnectionLock":Z
    :catch_1
    move-exception v3

    :try_start_3
    const-class v3, Lcom/facebook/react/devsupport/DevServerHelper;

    .line 144
    nop

    .line 145
    const-string v4, "mPackagerClient"

    .line 143
    invoke-static {v3, v2, v4}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/packagerconnection/JSPackagerClient;

    .line 148
    .local v3, "packagerClient":Lcom/facebook/react/packagerconnection/JSPackagerClient;
    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V

    .line 150
    .end local v2    # "devServerHelper":Lcom/facebook/react/devsupport/DevServerHelper;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 154
    .end local v3    # "packagerClient":Lcom/facebook/react/packagerconnection/JSPackagerClient;
    :cond_0
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v1, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;->label:I

    const-wide/16 v3, 0x32

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v2, v0, :cond_1

    .line 120
    return-object v0

    .line 154
    :cond_1
    :goto_1
    goto :goto_0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t close the packager connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "DevLauncher"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
