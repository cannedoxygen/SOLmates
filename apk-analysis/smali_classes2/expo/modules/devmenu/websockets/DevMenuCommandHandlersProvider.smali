.class public final Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;
.super Ljava/lang/Object;
.source "DevMenuCommandHandlersProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000*\u0003\u000e\u0011\u0014\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017R\u001c\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00050\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;",
        "",
        "manager",
        "Lexpo/interfaces/devmenu/DevMenuManagerInterface;",
        "reactHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V",
        "_host",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "host",
        "getHost",
        "()Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "onDevCommand",
        "expo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1",
        "Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;",
        "onDevMenu",
        "expo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevMenu$1",
        "Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevMenu$1;",
        "onReload",
        "expo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onReload$1",
        "Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onReload$1;",
        "createCommandHandlers",
        "",
        "",
        "Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;",
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


# instance fields
.field private final _host:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/interfaces/devmenu/ReactHostWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;

.field private final onDevCommand:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;

.field private final onDevMenu:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevMenu$1;

.field private final onReload:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onReload$1;


# direct methods
.method public constructor <init>(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 1
    .param p1, "manager"    # Lexpo/interfaces/devmenu/DevMenuManagerInterface;
    .param p2, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->_host:Ljava/lang/ref/WeakReference;

    .line 21
    new-instance v0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onReload$1;

    invoke-direct {v0, p0}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onReload$1;-><init>(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)V

    iput-object v0, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->onReload:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onReload$1;

    .line 30
    new-instance v0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevMenu$1;

    invoke-direct {v0, p0}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevMenu$1;-><init>(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)V

    iput-object v0, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->onDevMenu:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevMenu$1;

    .line 37
    new-instance v0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;

    invoke-direct {v0, p0}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;-><init>(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)V

    iput-object v0, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->onDevCommand:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;

    .line 13
    return-void
.end method

.method public static final synthetic access$getHost(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    .line 13
    invoke-direct {p0}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->getHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getManager$p(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)Lexpo/interfaces/devmenu/DevMenuManagerInterface;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    .line 13
    iget-object v0, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    return-object v0
.end method

.method private final getHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->_host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/interfaces/devmenu/ReactHostWrapper;

    return-object v0
.end method


# virtual methods
.method public final createCommandHandlers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;",
            ">;"
        }
    .end annotation

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "reload"

    iget-object v2, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->onReload:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onReload$1;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    const-string v1, "devMenu"

    iget-object v2, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->onDevMenu:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevMenu$1;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 71
    nop

    .line 73
    const-string v1, "sendDevCommand"

    iget-object v2, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->onDevCommand:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    nop

    .line 70
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
