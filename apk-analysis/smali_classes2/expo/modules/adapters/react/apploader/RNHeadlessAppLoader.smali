.class public final Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;
.super Ljava/lang/Object;
.source "RNHeadlessAppLoader.kt"

# interfaces
.implements Lexpo/modules/apploader/HeadlessAppLoader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0017J\u0012\u0010\t\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J4\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;",
        "Lexpo/modules/apploader/HeadlessAppLoader;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "invalidateApp",
        "",
        "appScopeKey",
        "",
        "isRunning",
        "loadApp",
        "",
        "params",
        "Lexpo/modules/apploader/HeadlessAppLoader$Params;",
        "alreadyRunning",
        "Ljava/lang/Runnable;",
        "callback",
        "Lexpo/modules/core/interfaces/Consumer;",
        "expo-modules-core_debug"
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
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$4mT1GXr0O2ruq_rPyIdybnfodwI(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;->loadApp$lambda$1(Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iEroIipFp0DwR4PhwFH5kv64kNk(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;->invalidateApp$lambda$3(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;->context:Landroid/content/Context;

    return-void
.end method

.method private static final invalidateApp$lambda$2(Lcom/facebook/react/ReactHost;Ljava/lang/String;)V
    .locals 2
    .param p0, "$reactHost"    # Lcom/facebook/react/ReactHost;
    .param p1, "$appScopeKey"    # Ljava/lang/String;

    const-string v0, "$reactHost"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Lcom/facebook/react/ReactHost;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 84
    const-string v0, "Closing headless task app"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/ReactHost;->destroy(Ljava/lang/String;Ljava/lang/Exception;)Lcom/facebook/react/interfaces/TaskInterface;

    .line 86
    :cond_0
    sget-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->INSTANCE:Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;

    invoke-virtual {v0, p1}, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->notifyAppDestroyed(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method private static final invalidateApp$lambda$3(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V
    .locals 2
    .param p0, "$reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;
    .param p1, "$appScopeKey"    # Ljava/lang/String;

    const-string v0, "$reactInstanceManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->destroy()V

    .line 101
    :cond_0
    sget-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->INSTANCE:Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;

    invoke-virtual {v0, p1}, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->notifyAppDestroyed(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private static final loadApp$lambda$0(Lcom/facebook/react/ReactHost;)V
    .locals 1
    .param p0, "$reactHost"    # Lcom/facebook/react/ReactHost;

    const-string v0, "$reactHost"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/facebook/react/ReactHost;->start()Lcom/facebook/react/interfaces/TaskInterface;

    .line 45
    return-void
.end method

.method private static final loadApp$lambda$1(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .param p0, "$reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;

    .line 61
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    .line 62
    return-void
.end method


# virtual methods
.method public invalidateApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "appScopeKey"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    return v1

    .line 76
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :cond_0
    nop

    .line 91
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.ReactApplication"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/ReactApplication;

    invoke-interface {v1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v1

    .line 92
    .local v1, "reactNativeHost":Lcom/facebook/react/ReactNativeHost;
    invoke-virtual {v1}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v2

    const-string v3, "getReactInstanceManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .local v2, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .end local v1    # "reactNativeHost":Lcom/facebook/react/ReactNativeHost;
    .end local v2    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    :cond_1
    nop

    .end local v0    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    nop

    .line 74
    :goto_0
    return v1
.end method

.method public isRunning(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appScopeKey"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 114
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :cond_0
    nop

    .line 120
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.ReactApplication"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/ReactApplication;

    invoke-interface {v1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v1

    .line 121
    .local v1, "reactNativeHost":Lcom/facebook/react/ReactNativeHost;
    invoke-virtual {v1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result v2

    return v2
.end method

.method public loadApp(Landroid/content/Context;Lexpo/modules/apploader/HeadlessAppLoader$Params;Ljava/lang/Runnable;Lexpo/modules/core/interfaces/Consumer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lexpo/modules/apploader/HeadlessAppLoader$Params;
    .param p3, "alreadyRunning"    # Ljava/lang/Runnable;
    .param p4, "callback"    # Lexpo/modules/core/interfaces/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/apploader/HeadlessAppLoader$Params;",
            "Ljava/lang/Runnable;",
            "Lexpo/modules/core/interfaces/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lexpo/modules/apploader/HeadlessAppLoader$Params;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/ReactApplication;

    if-eqz v0, :cond_2

    .line 27
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/apploader/HeadlessAppLoader$Params;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    nop

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.ReactApplication"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 49
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    nop

    .line 50
    new-instance v1, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$loadApp$3;

    invoke-direct {v1, p2, v0, p4}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$loadApp$3;-><init>(Lexpo/modules/apploader/HeadlessAppLoader$Params;Lcom/facebook/react/ReactInstanceManager;Lexpo/modules/core/interfaces/Consumer;)V

    check-cast v1, Lcom/facebook/react/ReactInstanceEventListener;

    .line 49
    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 65
    .end local v0    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your application must implement ReactApplication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be set with appScopeKey!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
