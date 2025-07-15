.class public final Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;
.super Ljava/lang/Object;
.source "DevLauncherReactNativeHostHandler.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactNativeHostHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u000f\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0016R\u001c\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00030\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;",
        "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "contextHolder",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "getDevSupportManagerFactory",
        "Lcom/facebook/react/devsupport/DevSupportManagerFactory;",
        "getJavaScriptExecutorFactory",
        "Lcom/facebook/react/bridge/JavaScriptExecutorFactory;",
        "getUseDeveloperSupport",
        "",
        "()Ljava/lang/Boolean;",
        "onWillCreateReactInstance",
        "",
        "useDeveloperSupport",
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
.field private final contextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;->contextHolder:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method


# virtual methods
.method public getDevSupportManagerFactory()Lcom/facebook/react/devsupport/DevSupportManagerFactory;
    .locals 1

    .line 21
    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerFactory;

    invoke-direct {v0}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerFactory;-><init>()V

    check-cast v0, Lcom/facebook/react/devsupport/DevSupportManagerFactory;

    return-object v0
.end method

.method public bridge synthetic getDevSupportManagerFactory()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;->getDevSupportManagerFactory()Lcom/facebook/react/devsupport/DevSupportManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 6

    .line 29
    iget-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;->contextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 30
    .local v0, "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 32
    .local v2, "applicationContext":Landroid/content/Context;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 33
    const-string v3, "libv8android.so"

    invoke-static {v3}, Lcom/facebook/soloader/SoLoader;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 36
    return-object v1

    .line 38
    :cond_1
    const-string v1, "libjsc.so"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPackageName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getFriendlyDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getFriendlyDeviceName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    return-object v1

    .line 41
    :cond_2
    new-instance v1, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;

    invoke-direct {v1}, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;-><init>()V

    check-cast v1, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    return-object v1
.end method

.method public getUseDeveloperSupport()Ljava/lang/Boolean;
    .locals 1

    .line 25
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->wasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getInstance()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getUseDeveloperSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onWillCreateReactInstance(Z)V
    .locals 7
    .param p1, "useDeveloperSupport"    # Z

    .line 45
    invoke-super {p0, p1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onWillCreateReactInstance(Z)V

    .line 50
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler$onWillCreateReactInstance$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 56
    return-void
.end method
