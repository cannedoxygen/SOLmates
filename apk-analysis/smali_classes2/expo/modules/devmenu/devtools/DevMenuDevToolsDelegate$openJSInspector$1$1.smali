.class final Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevMenuDevToolsDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->openJSInspector()V
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
    c = "expo.modules.devmenu.devtools.DevMenuDevToolsDelegate$openJSInspector$1$1"
    f = "DevMenuDevToolsDelegate.kt"
    i = {}
    l = {
        0x52
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $metroHost:Ljava/lang/String;

.field final synthetic $reactContext:Lcom/facebook/react/bridge/ReactContext;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/ReactContext;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->$metroHost:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->$reactContext:Lcom/facebook/react/bridge/ReactContext;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;

    iget-object v1, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->$metroHost:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->$reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, v1, v2, p2}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/ReactContext;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 80
    iget v1, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    goto :goto_1

    .line 80
    .end local v0    # "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 81
    .local v1, "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 82
    :try_start_1
    sget-object v2, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v2}, Lexpo/modules/devmenu/DevMenuManager;->getMetroClient()Lexpo/modules/devmenu/api/DevMenuMetroClient;

    move-result-object v2

    iget-object v3, v1, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->$metroHost:Ljava/lang/String;

    iget-object v4, v1, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->$reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getPackageName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;->label:I

    invoke-virtual {v2, v3, v4, v5}, Lexpo/modules/devmenu/api/DevMenuMetroClient;->openJSInspector(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v0, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    .restart local v0    # "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    :goto_0
    goto :goto_2

    .line 83
    .end local v0    # "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    .restart local v1    # "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    :catch_1
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 84
    .restart local v0    # "this":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open js inspector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "ExpoDevMenu"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
