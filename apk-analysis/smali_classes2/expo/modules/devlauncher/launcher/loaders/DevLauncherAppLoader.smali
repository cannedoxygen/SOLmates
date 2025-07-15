.class public abstract Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
.super Ljava/lang/Object;
.source "DevLauncherAppLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eJ\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000bH&J\u0016\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0096@\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u000fH\u0014J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u000fH\u0014J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u001dH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
        "",
        "appHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "context",
        "Landroid/content/Context;",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "(Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "",
        "reactContextWasInitialized",
        "createOnDelegateWillBeCreatedListener",
        "Lkotlin/Function1;",
        "Lcom/facebook/react/ReactActivity;",
        "",
        "getAppName",
        "",
        "injectBundleLoader",
        "launch",
        "intent",
        "Landroid/content/Intent;",
        "(Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "launchIntent",
        "onCreate",
        "activity",
        "onDelegateWillBeCreated",
        "onReactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "expo-dev-launcher_debug"
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
.field private final appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

.field private final context:Landroid/content/Context;

.field private continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

.field private reactContextWasInitialized:Z


# direct methods
.method public constructor <init>(Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V
    .locals 1
    .param p1, "appHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "controller"    # Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    const-string v0, "appHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 39
    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    .line 37
    return-void
.end method

.method public static final synthetic access$getAppHost$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    .line 37
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    return-object v0
.end method

.method public static final synthetic access$getContinuation$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lkotlin/coroutines/Continuation;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    .line 37
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->continuation:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static final synthetic access$getController$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    .line 37
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method

.method public static final synthetic access$getReactContextWasInitialized$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    .line 37
    iget-boolean v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->reactContextWasInitialized:Z

    return v0
.end method

.method public static final synthetic access$launchIntent(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 37
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$setContinuation$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
    .param p1, "<set-?>"    # Lkotlin/coroutines/Continuation;

    .line 37
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->continuation:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method public static final synthetic access$setReactContextWasInitialized$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Z)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
    .param p1, "<set-?>"    # Z

    .line 37
    iput-boolean p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->reactContextWasInitialized:Z

    return-void
.end method

.method static synthetic launch$suspendImpl(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$launch$2;-><init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method private final launchIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method


# virtual methods
.method public final createOnDelegateWillBeCreatedListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/facebook/react/ReactActivity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;

    invoke-direct {v0, p0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;-><init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract injectBundleLoader()Z
.end method

.method public launch(Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->launch$suspendImpl(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lcom/facebook/react/ReactActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected onDelegateWillBeCreated(Lcom/facebook/react/ReactActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onReactContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    return-void
.end method
