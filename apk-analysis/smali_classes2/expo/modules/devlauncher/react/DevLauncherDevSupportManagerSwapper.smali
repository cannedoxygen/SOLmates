.class public final Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;
.super Ljava/lang/Object;
.source "DevLauncherDevSupportManagerSwapper.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherDevSupportManagerSwapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherDevSupportManagerSwapper.kt\nexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,175:1\n56#2,6:176\n*S KotlinDebug\n*F\n+ 1 DevLauncherDevSupportManagerSwapper.kt\nexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper\n*L\n24#1:176,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001c\u0010\u000f\u001a\u00020\u00102\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J$\u0010\u0012\u001a\u00020\u00132\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u000eH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "()V",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "getController",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "controller$delegate",
        "Lkotlin/Lazy;",
        "closeExistingConnection",
        "",
        "devManagerClass",
        "Ljava/lang/Class;",
        "devSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "createDevLauncherBridgeDevSupportManager",
        "Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;",
        "currentDevSupportManager",
        "createDevLauncherBridgelessDevSupportManager",
        "Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "swapDevSupportManagerImpl",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "tryToStopShakeDetector",
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
.field private final controller$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 176
    .local v0, "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 177
    const/4 v1, 0x0

    .line 176
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 178
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 176
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 179
    const/4 v3, 0x0

    .line 176
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 181
    .local v4, "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$special$$inlined$inject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 24
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->controller$delegate:Lkotlin/Lazy;

    .line 23
    return-void
.end method

.method public static final synthetic access$tryToStopShakeDetector(Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;
    .param p1, "currentDevSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 23
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->tryToStopShakeDetector(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method

.method private final closeExistingConnection(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 7
    .param p1, "devManagerClass"    # Ljava/lang/Class;
    .param p2, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p1, v2}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper$closeExistingConnection$1;-><init>(Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 160
    return-void
.end method

.method private final createDevLauncherBridgeDevSupportManager(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;
    .locals 10
    .param p1, "devManagerClass"    # Ljava/lang/Class;
    .param p2, "currentDevSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            ")",
            "Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;"
        }
    .end annotation

    .line 89
    new-instance v9, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;

    .line 90
    const-string v0, "mApplicationContext"

    invoke-static {p1, p2, v0}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 91
    sget-object v0, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;->Companion:Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager$Companion;->getDevHelperInternalFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    .line 92
    const-string v0, "mJSAppBundleName"

    invoke-static {p1, p2, v0}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 93
    nop

    .line 94
    const-string v0, "mRedBoxHandler"

    invoke-static {p1, p2, v0}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    .line 95
    const-string v0, "mBundleDownloadListener"

    invoke-static {p1, p2, v0}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 96
    nop

    .line 97
    const-string v0, "mCustomPackagerCommandHandlers"

    invoke-static {p1, p2, v0}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    .line 89
    const/4 v4, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;)V

    return-object v9
.end method

.method private final createDevLauncherBridgelessDevSupportManager(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/react/ReactHost;)Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;
    .locals 4
    .param p1, "devManagerClass"    # Ljava/lang/Class;
    .param p2, "currentDevSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .param p3, "reactHost"    # Lcom/facebook/react/ReactHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            "Lcom/facebook/react/ReactHost;",
            ")",
            "Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;"
        }
    .end annotation

    .line 106
    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;

    .line 107
    const-string v1, "null cannot be cast to non-null type com.facebook.react.runtime.ReactHostImpl"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 108
    const-string v2, "mApplicationContext"

    invoke-static {p1, p2, v2}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 109
    const-string v3, "mJSAppBundleName"

    invoke-static {p1, p2, v3}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;-><init>(Lcom/facebook/react/runtime/ReactHostImpl;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method

.method private final swapDevSupportManagerImpl(Lcom/facebook/react/ReactHost;)V
    .locals 10
    .param p1, "reactHost"    # Lcom/facebook/react/ReactHost;

    .line 59
    invoke-interface {p1}, Lcom/facebook/react/ReactHost;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    .local v0, "currentDevSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    instance-of v1, v0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;

    if-eqz v1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    instance-of v1, v0, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;

    const-string v2, "DevLauncher"

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "DevSupportManager is disabled. So we don\'t want to override it."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_1
    :try_start_0
    const-class v1, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 70
    nop

    .line 71
    .local v1, "devManagerClass":Ljava/lang/Class;
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 71
    invoke-direct {p0, v1, v0, p1}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->createDevLauncherBridgelessDevSupportManager(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/react/ReactHost;)Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;

    move-result-object v6

    .local v6, "newDevSupportManager":Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;
    const-class v3, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 77
    const-string v5, "mDevSupportManager"

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->setProtectedDeclaredField$default(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 79
    invoke-direct {p0, v1, v0}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->closeExistingConnection(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "devManagerClass":Ljava/lang/Class;
    .end local v6    # "newDevSupportManager":Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t inject `DevLauncherDevSupportManager`."

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 59
    .end local v0    # "currentDevSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final swapDevSupportManagerImpl(Lcom/facebook/react/ReactNativeHost;)V
    .locals 11
    .param p1, "reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;

    .line 35
    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v7

    .line 36
    .local v7, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    invoke-virtual {v7}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v8

    .line 37
    .local v8, "currentDevSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    instance-of v0, v8, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;

    if-eqz v0, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    instance-of v0, v8, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;

    const-string v9, "DevLauncher"

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "DevSupportManager is disabled. So we don\'t want to override it."

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 46
    :cond_1
    :try_start_0
    const-class v0, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 47
    move-object v10, v0

    .line 48
    .local v10, "devManagerClass":Ljava/lang/Class;
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v10, v8}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->createDevLauncherBridgeDevSupportManager(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;

    move-result-object v3

    .local v3, "newDevSupportManager":Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;
    const-class v0, Lcom/facebook/react/ReactInstanceManager;

    .line 50
    const-string v2, "mDevSupportManager"

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->setProtectedDeclaredField$default(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 52
    invoke-direct {p0, v10, v8}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->closeExistingConnection(Ljava/lang/Class;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "newDevSupportManager":Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;
    .end local v10    # "devManagerClass":Ljava/lang/Class;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t inject `DevLauncherDevSupportManager`."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v9, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final tryToStopShakeDetector(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 4
    .param p1, "currentDevSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 163
    :try_start_0
    const-class v0, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 166
    nop

    .line 167
    const-string v1, "mShakeDetector"

    .line 165
    invoke-static {v0, p1, v1}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/common/ShakeDetector;

    .line 164
    nop

    .line 169
    .local v0, "shakeDetector":Lcom/facebook/react/common/ShakeDetector;
    invoke-virtual {v0}, Lcom/facebook/react/common/ShakeDetector;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "shakeDetector":Lcom/facebook/react/common/ShakeDetector;
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t stop shake detector."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "DevLauncher"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 23
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final swapDevSupportManagerImpl(Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 1
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    const-string v0, "reactHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->swapDevSupportManagerImpl(Lcom/facebook/react/ReactHost;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->swapDevSupportManagerImpl(Lcom/facebook/react/ReactNativeHost;)V

    .line 32
    :goto_0
    return-void
.end method
