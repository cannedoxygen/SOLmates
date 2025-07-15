.class public final Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper;
.super Ljava/lang/Object;
.source "DevMenuPackagerCommandHandlersSwapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0002J\"\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper;",
        "",
        "()V",
        "swapCurrentCommandHandlers",
        "",
        "reactHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "handlers",
        "",
        "",
        "Lcom/facebook/react/packagerconnection/RequestHandler;",
        "swapPackagerCommandHandlers",
        "expo-dev-menu_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final swapCurrentCommandHandlers(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/util/Map;)V
    .locals 7
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "handlers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/interfaces/devmenu/ReactHostWrapper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;)V"
        }
    .end annotation

    .line 66
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper$swapCurrentCommandHandlers$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2}, Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper$swapCurrentCommandHandlers$1;-><init>(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 107
    return-void
.end method


# virtual methods
.method public final swapPackagerCommandHandlers(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/util/Map;)V
    .locals 5
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "handlers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/interfaces/devmenu/ReactHostWrapper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mCustomPackagerCommandHandlers"

    const-string v1, "reactHost"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "handlers"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    nop

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    .local v1, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    instance-of v2, v1, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    if-nez v2, :cond_0

    .line 26
    return-void

    :cond_0
    const-class v2, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 31
    nop

    .line 32
    nop

    .line 30
    invoke-static {v2, v0, v1}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->getPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 29
    nop

    .line 35
    .local v2, "currentCommandHandlers":Ljava/util/Map;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 36
    .local v3, "newCommandHandlers":Ljava/util/Map;
    :cond_2
    invoke-interface {v3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-class v4, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 39
    nop

    .line 40
    nop

    .line 41
    nop

    .line 38
    invoke-static {v4, v0, v1, v3}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper;->swapCurrentCommandHandlers(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/util/Map;)V

    .end local v1    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v2    # "currentCommandHandlers":Ljava/util/Map;
    .end local v3    # "newCommandHandlers":Ljava/util/Map;
    goto :goto_0

    .line 22
    :cond_3
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    .end local p2    # "handlers":Ljava/util/Map;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .restart local p1    # "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    .restart local p2    # "handlers":Ljava/util/Map;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t add packager command handlers to current client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "DevMenu"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
