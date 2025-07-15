.class public final Lexpo/modules/devlauncher/DevLauncherController;
.super Ljava/lang/Object;
.source "DevLauncherController.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
.implements Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/DevLauncherController$Companion;,
        Lexpo/modules/devlauncher/DevLauncherController$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherController.kt\nexpo/modules/devlauncher/DevLauncherController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 DevLauncherKoinComponent.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt\n+ 4 Koin.kt\norg/koin/core/Koin\n+ 5 Scope.kt\norg/koin/core/scope/Scope\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,462:1\n56#2,6:463\n56#2,6:469\n56#2,6:475\n56#2,6:481\n56#2,6:487\n41#2,6:510\n47#2:517\n14#3,12:493\n117#4,4:505\n107#4:518\n158#5:509\n133#5:516\n1#6:519\n*S KotlinDebug\n*F\n+ 1 DevLauncherController.kt\nexpo/modules/devlauncher/DevLauncherController\n*L\n67#1:463,6\n68#1:469,6\n69#1:475,6\n70#1:481,6\n71#1:487,6\n153#1:510,6\n153#1:517\n72#1:493,12\n151#1:505,4\n153#1:518\n151#1:509\n153#1:516\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u0083\u00012\u00020\u00012\u00020\u0002:\u0004\u0083\u0001\u0084\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u00052\u0008\u0010^\u001a\u0004\u0018\u00010_H\u0003J\u0008\u0010`\u001a\u00020\\H\u0016J\u0008\u0010a\u001a\u00020bH\u0002J\u0008\u0010c\u001a\u00020bH\u0002J\u0008\u0010d\u001a\u00020bH\u0002J\u001c\u0010e\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u00052\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010_H\u0002J\u0018\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020_2\u0006\u0010i\u001a\u00020jH\u0016J\u000e\u0010k\u001a\u0008\u0012\u0004\u0012\u00020m0lH\u0016J\u0010\u0010n\u001a\u00020\u000b2\u0006\u0010o\u001a\u00020bH\u0002J\u001c\u0010p\u001a\u00020\u000b2\u0008\u0010o\u001a\u0004\u0018\u00010b2\u0008\u0010^\u001a\u0004\u0018\u00010_H\u0016J\u0010\u0010q\u001a\u00020\\2\u0006\u0010h\u001a\u00020_H\u0002J\u0008\u0010r\u001a\u00020\\H\u0002J\u0010\u0010s\u001a\u00020\u000b2\u0006\u0010t\u001a\u000203H\u0002J*\u0010u\u001a\u00020\\2\u0006\u0010t\u001a\u0002032\u0008\u0010v\u001a\u0004\u0018\u0001032\u0008\u0010w\u001a\u0004\u0018\u00010_H\u0096@\u00a2\u0006\u0002\u0010xJ \u0010u\u001a\u00020\\2\u0006\u0010t\u001a\u0002032\u0008\u0010w\u001a\u0004\u0018\u00010_H\u0096@\u00a2\u0006\u0002\u0010yJ\u0008\u0010z\u001a\u00020\\H\u0016J\u0010\u0010{\u001a\u00020\\2\u0006\u0010\u0011\u001a\u00020|H\u0016J\u0008\u0010}\u001a\u00020\\H\u0016J\u0008\u0010~\u001a\u00020\\H\u0016J\u0012\u0010\u007f\u001a\u00020\\2\u0008\u0010o\u001a\u0004\u0018\u00010bH\u0002J\u0013\u0010\u0080\u0001\u001a\u00020\\2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\t\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001a\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\t\u001a\u0004\u0008\u001b\u0010\u0007R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001b\u0010#\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\t\u001a\u0004\u0008%\u0010&R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\t\u001a\u0004\u0008*\u0010+R\u001d\u0010-\u001a\u0004\u0018\u00010.8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\t\u001a\u0004\u0008/\u00100R\u001c\u00102\u001a\u0004\u0018\u000103X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001b\u00108\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010\t\u001a\u0004\u0008:\u0010;R\"\u0010?\u001a\u0004\u0018\u00010>2\u0008\u0010=\u001a\u0004\u0018\u00010>@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010AR\"\u0010B\u001a\u0004\u0018\u0001032\u0008\u0010=\u001a\u0004\u0018\u000103@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u00105R\u001a\u0010D\u001a\u00020EX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u0010\u0010J\u001a\u0004\u0018\u00010KX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010L\u001a\u00020M8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010\t\u001a\u0004\u0008N\u0010OR\u000e\u0010Q\u001a\u00020RX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010T\u001a\u0004\u0018\u00010.2\u0008\u0010S\u001a\u0004\u0018\u00010.8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008U\u00100\"\u0004\u0008V\u0010WR\u001a\u0010X\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u000e\"\u0004\u0008Z\u0010\u0010\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lexpo/modules/devlauncher/DevLauncherController;",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "()V",
        "appHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "getAppHost",
        "()Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "appHost$delegate",
        "Lkotlin/Lazy;",
        "appIsLoading",
        "",
        "canLaunchDevMenuOnStart",
        "getCanLaunchDevMenuOnStart",
        "()Z",
        "setCanLaunchDevMenuOnStart",
        "(Z)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context$delegate",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "devClientHost",
        "getDevClientHost",
        "devClientHost$delegate",
        "devMenuManager",
        "Lexpo/modules/devmenu/DevMenuManager;",
        "getDevMenuManager",
        "()Lexpo/modules/devmenu/DevMenuManager;",
        "setDevMenuManager",
        "(Lexpo/modules/devmenu/DevMenuManager;)V",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "getHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "httpClient$delegate",
        "installationIDHelper",
        "Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;",
        "getInstallationIDHelper",
        "()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;",
        "installationIDHelper$delegate",
        "internalUpdatesInterface",
        "Lexpo/modules/updatesinterface/UpdatesInterface;",
        "getInternalUpdatesInterface",
        "()Lexpo/modules/updatesinterface/UpdatesInterface;",
        "internalUpdatesInterface$delegate",
        "latestLoadedApp",
        "Landroid/net/Uri;",
        "getLatestLoadedApp",
        "()Landroid/net/Uri;",
        "setLatestLoadedApp",
        "(Landroid/net/Uri;)V",
        "lifecycle",
        "Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;",
        "getLifecycle",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;",
        "lifecycle$delegate",
        "<set-?>",
        "Lexpo/modules/manifests/core/Manifest;",
        "manifest",
        "getManifest",
        "()Lexpo/modules/manifests/core/Manifest;",
        "manifestURL",
        "getManifestURL",
        "mode",
        "Lexpo/modules/devlauncher/DevLauncherController$Mode;",
        "getMode",
        "()Lexpo/modules/devlauncher/DevLauncherController$Mode;",
        "setMode",
        "(Lexpo/modules/devlauncher/DevLauncherController$Mode;)V",
        "networkInterceptor",
        "Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;",
        "pendingIntentRegistry",
        "Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;",
        "getPendingIntentRegistry",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;",
        "pendingIntentRegistry$delegate",
        "recentlyOpedAppsRegistry",
        "Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;",
        "value",
        "updatesInterface",
        "getUpdatesInterface",
        "setUpdatesInterface",
        "(Lexpo/modules/updatesinterface/UpdatesInterface;)V",
        "useDeveloperSupport",
        "getUseDeveloperSupport",
        "setUseDeveloperSupport",
        "clearHost",
        "",
        "host",
        "activityToBeInvalidated",
        "Lcom/facebook/react/ReactActivity;",
        "clearRecentlyOpenedApps",
        "createAppIntent",
        "Landroid/content/Intent;",
        "createBasicAppIntent",
        "createLauncherIntent",
        "ensureHostWasCleared",
        "getCurrentReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "activity",
        "delegateSupplierDevLauncher",
        "Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;",
        "getRecentlyOpenedApps",
        "",
        "Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;",
        "handleExternalIntent",
        "intent",
        "handleIntent",
        "invalidateActivity",
        "invalidateDevMenu",
        "isEASUpdateURL",
        "url",
        "loadApp",
        "projectUrl",
        "mainActivity",
        "(Landroid/net/Uri;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "navigateToLauncher",
        "onAppLoaded",
        "Lcom/facebook/react/bridge/ReactContext;",
        "onAppLoadedWithError",
        "onRequestRelaunch",
        "redirectFromStartActivity",
        "setupDevMenu",
        "launchUrl",
        "",
        "Companion",
        "Mode",
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


# static fields
.field public static final Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

.field private static sAdditionalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static sErrorHandlerWasInitialized:Z

.field private static sLauncherClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final appHost$delegate:Lkotlin/Lazy;

.field private appIsLoading:Z

.field private canLaunchDevMenuOnStart:Z

.field private final context$delegate:Lkotlin/Lazy;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final devClientHost$delegate:Lkotlin/Lazy;

.field private devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

.field private final httpClient$delegate:Lkotlin/Lazy;

.field private final installationIDHelper$delegate:Lkotlin/Lazy;

.field private final internalUpdatesInterface$delegate:Lkotlin/Lazy;

.field private latestLoadedApp:Landroid/net/Uri;

.field private final lifecycle$delegate:Lkotlin/Lazy;

.field private manifest:Lexpo/modules/manifests/core/Manifest;

.field private manifestURL:Landroid/net/Uri;

.field private mode:Lexpo/modules/devlauncher/DevLauncherController$Mode;

.field private networkInterceptor:Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;

.field private final pendingIntentRegistry$delegate:Lkotlin/Lazy;

.field private final recentlyOpedAppsRegistry:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;

.field private useDeveloperSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devlauncher/DevLauncherController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController$context$2;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherController$context$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->context$delegate:Lkotlin/Lazy;

    .line 67
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 463
    .local v0, "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 464
    const/4 v1, 0x0

    .line 463
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 465
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 463
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 466
    const/4 v3, 0x0

    .line 463
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 468
    .local v4, "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 67
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->appHost$delegate:Lkotlin/Lazy;

    .line 68
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 469
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 470
    const/4 v1, 0x0

    .line 469
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 471
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 469
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 472
    const/4 v3, 0x0

    .line 469
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 474
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$2;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 68
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->httpClient$delegate:Lkotlin/Lazy;

    .line 69
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 475
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 476
    const/4 v1, 0x0

    .line 475
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 477
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 475
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 478
    const/4 v3, 0x0

    .line 475
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 480
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$3;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 69
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->lifecycle$delegate:Lkotlin/Lazy;

    .line 70
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 481
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 482
    const/4 v1, 0x0

    .line 481
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 483
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 481
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 484
    const/4 v3, 0x0

    .line 481
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 486
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$4;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 70
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->pendingIntentRegistry$delegate:Lkotlin/Lazy;

    .line 71
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 487
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 488
    const/4 v1, 0x0

    .line 487
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 489
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 487
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 490
    const/4 v3, 0x0

    .line 487
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 492
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$5;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 71
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->installationIDHelper$delegate:Lkotlin/Lazy;

    .line 72
    move-object v0, p0

    check-cast v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;

    .line 493
    .local v0, "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    nop

    .line 494
    const/4 v1, 0x0

    .line 493
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 495
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 493
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 496
    const/4 v3, 0x0

    .line 493
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 498
    .local v4, "$i$f$optInject":I
    new-instance v5, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$optInject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/DevLauncherController$special$$inlined$optInject$default$1;-><init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 504
    nop

    .line 72
    .end local v0    # "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$optInject":I
    iput-object v5, p0, Lexpo/modules/devlauncher/DevLauncherController;->internalUpdatesInterface$delegate:Lkotlin/Lazy;

    .line 73
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    .line 83
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 85
    new-instance v0, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;

    invoke-direct {v0, p0}, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;-><init>(Lexpo/modules/devlauncher/DevLauncherController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devClientHost$delegate:Lkotlin/Lazy;

    .line 92
    new-instance v0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;

    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->recentlyOpedAppsRegistry:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->useDeveloperSupport:Z

    .line 106
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController$Mode;->LAUNCHER:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    iput-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->mode:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    .line 62
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearHost(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/DevLauncherController;
    .param p1, "host"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "activityToBeInvalidated"    # Lcom/facebook/react/ReactActivity;

    .line 62
    invoke-direct {p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController;->clearHost(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V

    return-void
.end method

.method public static final synthetic access$getContext(Lexpo/modules/devlauncher/DevLauncherController;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/DevLauncherController;

    .line 62
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getNetworkInterceptor$p(Lexpo/modules/devlauncher/DevLauncherController;)Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/DevLauncherController;

    .line 62
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->networkInterceptor:Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;

    return-object v0
.end method

.method public static final synthetic access$getSAdditionalPackages$cp()Ljava/util/List;
    .locals 1

    .line 62
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->sAdditionalPackages:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSErrorHandlerWasInitialized$cp()Z
    .locals 1

    .line 62
    sget-boolean v0, Lexpo/modules/devlauncher/DevLauncherController;->sErrorHandlerWasInitialized:Z

    return v0
.end method

.method public static final synthetic access$redirectFromStartActivity(Lexpo/modules/devlauncher/DevLauncherController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/DevLauncherController;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 62
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/DevLauncherController;->redirectFromStartActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$setNetworkInterceptor$p(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/DevLauncherController;
    .param p1, "<set-?>"    # Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;

    .line 62
    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController;->networkInterceptor:Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;

    return-void
.end method

.method public static final synthetic access$setSAdditionalPackages$cp(Ljava/util/List;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/List;

    .line 62
    sput-object p0, Lexpo/modules/devlauncher/DevLauncherController;->sAdditionalPackages:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setSErrorHandlerWasInitialized$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 62
    sput-boolean p0, Lexpo/modules/devlauncher/DevLauncherController;->sErrorHandlerWasInitialized:Z

    return-void
.end method

.method public static final synthetic access$setSLauncherClass$cp(Ljava/lang/Class;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/Class;

    .line 62
    sput-object p0, Lexpo/modules/devlauncher/DevLauncherController;->sLauncherClass:Ljava/lang/Class;

    return-void
.end method

.method private final clearHost(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V
    .locals 2
    .param p1, "host"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "activityToBeInvalidated"    # Lcom/facebook/react/ReactActivity;

    .line 315
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->destroy$default(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/lang/String;ILjava/lang/Object;)V

    .line 316
    if-eqz p2, :cond_0

    move-object v0, p2

    .local v0, "it":Lcom/facebook/react/ReactActivity;
    const/4 v1, 0x0

    .line 317
    .local v1, "$i$a$-let-DevLauncherController$clearHost$1":I
    invoke-direct {p0, v0}, Lexpo/modules/devlauncher/DevLauncherController;->invalidateActivity(Lcom/facebook/react/ReactActivity;)V

    .line 318
    nop

    .line 316
    .end local v0    # "it":Lcom/facebook/react/ReactActivity;
    .end local v1    # "$i$a$-let-DevLauncherController$clearHost$1":I
    nop

    .line 319
    :cond_0
    return-void
.end method

.method private final createAppIntent()Landroid/content/Intent;
    .locals 9

    .line 353
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->createBasicAppIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$createAppIntent_u24lambda_u2414":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 356
    .local v2, "$i$a$-apply-DevLauncherController$createAppIntent$1":I
    nop

    .line 354
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getPendingIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    move-result-object v3

    .line 355
    invoke-interface {v3}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;->consumePendingIntent()Landroid/content/Intent;

    move-result-object v3

    .line 356
    if-eqz v3, :cond_2

    .line 355
    nop

    .line 356
    nop

    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 357
    .local v4, "$i$a$-let-DevLauncherController$createAppIntent$1$1":I
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 359
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .local v5, "it":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 360
    .local v6, "$i$a$-let-DevLauncherController$createAppIntent$1$1$1":I
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    .end local v5    # "it":Landroid/os/Bundle;
    .end local v6    # "$i$a$-let-DevLauncherController$createAppIntent$1$1$1":I
    nop

    .line 362
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v5, "it":Ljava/util/Set;
    const/4 v6, 0x0

    .line 363
    .local v6, "$i$a$-let-DevLauncherController$createAppIntent$1$1$2":I
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 364
    nop

    .line 362
    .end local v5    # "it":Ljava/util/Set;
    .end local v6    # "$i$a$-let-DevLauncherController$createAppIntent$1$1$2":I
    nop

    .line 365
    :cond_1
    nop

    .line 356
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "$i$a$-let-DevLauncherController$createAppIntent$1$1":I
    :cond_2
    nop

    .line 366
    nop

    .line 353
    .end local v1    # "$this$createAppIntent_u24lambda_u2414":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-DevLauncherController$createAppIntent$1":I
    nop

    .line 366
    return-object v0
.end method

.method private final createBasicAppIntent()Landroid/content/Intent;
    .locals 4

    .line 369
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->sLauncherClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 371
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 373
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 374
    .local v0, "$i$a$-checkNotNull-DevLauncherController$createBasicAppIntent$1":I
    nop

    .line 370
    .end local v0    # "$i$a$-checkNotNull-DevLauncherController$createBasicAppIntent$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find the launcher class."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lexpo/modules/devlauncher/DevLauncherController;->sLauncherClass:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    :goto_0
    move-object v1, v0

    .line 519
    .local v1, "$this$createBasicAppIntent_u24lambda_u2416":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 377
    .local v2, "$i$a$-apply-DevLauncherController$createBasicAppIntent$2":I
    const v3, 0x10018000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .end local v1    # "$this$createBasicAppIntent_u24lambda_u2416":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-DevLauncherController$createBasicAppIntent$2":I
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createLauncherIntent()Landroid/content/Intent;
    .locals 4

    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    move-object v1, v0

    .line 519
    .local v1, "$this$createLauncherIntent_u24lambda_u2410":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 350
    .local v2, "$i$a$-apply-DevLauncherController$createLauncherIntent$1":I
    const v3, 0x10018000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .end local v1    # "$this$createLauncherIntent_u24lambda_u2410":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-DevLauncherController$createLauncherIntent$1":I
    return-object v0
.end method

.method private final ensureHostWasCleared(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V
    .locals 1
    .param p1, "host"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "activityToBeInvalidated"    # Lcom/facebook/react/ReactActivity;

    .line 292
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getHasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;

    invoke-direct {v0, p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lexpo/modules/devlauncher/helpers/DevLauncherCoroutinesExtensionsKt;->runBlockingOnMainThread(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 299
    :cond_0
    return-void
.end method

.method static synthetic ensureHostWasCleared$default(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;ILjava/lang/Object;)V
    .locals 0

    .line 291
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController;->ensureHostWasCleared(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 64
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->context$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private final getHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 68
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->httpClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final getInstallationIDHelper()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;
    .locals 1

    .line 71
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->installationIDHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    return-object v0
.end method

.method public static final getInstance()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getInstance()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    return-object v0
.end method

.method private final getLifecycle()Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;
    .locals 1

    .line 69
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->lifecycle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;

    return-object v0
.end method

.method public static final getMetadataValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getMetadataValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getPendingIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;
    .locals 1

    .line 70
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->pendingIntentRegistry$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    return-object v0
.end method

.method private final handleExternalIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getMode()Lexpo/modules/devlauncher/DevLauncherController$Mode;

    move-result-object v0

    sget-object v1, Lexpo/modules/devlauncher/DevLauncherController$Mode;->APP:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getPendingIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;->setIntent(Landroid/content/Intent;)V

    .line 288
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final initialize(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/interfaces/devmenu/ReactHostWrapper;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->initialize(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/lang/Class;)V

    return-void
.end method

.method public static final initialize(Lcom/facebook/react/ReactApplication;Ljava/util/List;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/ReactApplication;",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/ReactPackage;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->initialize(Lcom/facebook/react/ReactApplication;Ljava/util/List;Ljava/lang/Class;)V

    return-void
.end method

.method public static final initialize$expo_dev_launcher_debug(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0, p0, p1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->initialize$expo_dev_launcher_debug(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    return-void
.end method

.method private final invalidateActivity(Lcom/facebook/react/ReactActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mDelegate"

    invoke-static {v0, v1}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getFieldInClassHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 343
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 345
    new-instance v1, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityNOPDelegate;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityNOPDelegate;-><init>(Lcom/facebook/react/ReactActivity;)V

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    return-void

    .line 519
    :cond_0
    const/4 v1, 0x0

    .line 343
    .local v1, "$i$a$-requireNotNull-DevLauncherController$invalidateActivity$1":I
    nop

    .end local v1    # "$i$a$-requireNotNull-DevLauncherController$invalidateActivity$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot find mDelegate field in activity."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final invalidateDevMenu()V
    .locals 2

    .line 308
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/DevMenuManager;->setCurrentManifest(Lexpo/modules/manifests/core/Manifest;)V

    .line 309
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/DevMenuManager;->setCurrentManifestURL(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/DevMenuManager;->setLaunchUrl(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private final isEASUpdateURL(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;

    .line 113
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u.expo.dev"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "staging-u.expo.dev"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private final redirectFromStartActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lexpo/modules/devlauncher/DevLauncherController;->handleIntent(Landroid/content/Intent;Lcom/facebook/react/ReactActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->navigateToLauncher()V

    .line 333
    :cond_0
    return-void
.end method

.method private final setupDevMenu(Ljava/lang/String;)V
    .locals 2
    .param p1, "launchUrl"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/DevMenuManager;->setCurrentManifest(Lexpo/modules/manifests/core/Manifest;)V

    .line 303
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getManifestURL()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/DevMenuManager;->setCurrentManifestURL(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p1}, Lexpo/modules/devmenu/DevMenuManager;->setLaunchUrl(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static final tryToHandleIntent(Lcom/facebook/react/ReactActivity;Landroid/content/Intent;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0, p0, p1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->tryToHandleIntent(Lcom/facebook/react/ReactActivity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static final wasInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->wasInitialized()Z

    move-result v0

    return v0
.end method

.method public static final wrapReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;)Lcom/facebook/react/ReactActivityDelegate;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0, p0, p1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->wrapReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;)Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearRecentlyOpenedApps()V
    .locals 1

    .line 210
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->recentlyOpedAppsRegistry:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->clearRegistry()V

    .line 211
    return-void
.end method

.method public getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1

    .line 67
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->appHost$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/interfaces/devmenu/ReactHostWrapper;

    return-object v0
.end method

.method public final getCanLaunchDevMenuOnStart()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->canLaunchDevMenuOnStart:Z

    return v0
.end method

.method public getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 83
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public getCurrentReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;)Lcom/facebook/react/ReactActivityDelegate;
    .locals 2
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;
    .param p2, "delegateSupplierDevLauncher"    # Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateSupplierDevLauncher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getMode()Lexpo/modules/devlauncher/DevLauncherController$Mode;

    move-result-object v0

    sget-object v1, Lexpo/modules/devlauncher/DevLauncherController$Mode;->LAUNCHER:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    if-ne v0, v1, :cond_0

    .line 323
    new-instance v0, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;

    new-instance v1, Lexpo/modules/devlauncher/DevLauncherController$getCurrentReactActivityDelegate$1;

    invoke-direct {v1, p0}, Lexpo/modules/devlauncher/DevLauncherController$getCurrentReactActivityDelegate$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p1, v1}, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;-><init>(Lcom/facebook/react/ReactActivity;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcom/facebook/react/ReactActivityDelegate;

    goto :goto_0

    .line 325
    :cond_0
    invoke-interface {p2}, Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;->get()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0
.end method

.method public getDevClientHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1

    .line 85
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devClientHost$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/interfaces/devmenu/ReactHostWrapper;

    return-object v0
.end method

.method public final getDevMenuManager()Lexpo/modules/devmenu/DevMenuManager;
    .locals 1

    .line 73
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    return-object v0
.end method

.method public final getInternalUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;
    .locals 1

    .line 72
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->internalUpdatesInterface$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updatesinterface/UpdatesInterface;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 62
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getLatestLoadedApp()Landroid/net/Uri;
    .locals 1

    .line 97
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->latestLoadedApp:Landroid/net/Uri;

    return-object v0
.end method

.method public getManifest()Lexpo/modules/manifests/core/Manifest;
    .locals 1

    .line 93
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->manifest:Lexpo/modules/manifests/core/Manifest;

    return-object v0
.end method

.method public getManifestURL()Landroid/net/Uri;
    .locals 1

    .line 95
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->manifestURL:Landroid/net/Uri;

    return-object v0
.end method

.method public getMode()Lexpo/modules/devlauncher/DevLauncherController$Mode;
    .locals 1

    .line 106
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->mode:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    return-object v0
.end method

.method public getRecentlyOpenedApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->recentlyOpedAppsRegistry:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->getRecentlyOpenedApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getInternalUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;

    move-result-object v0

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lexpo/modules/devlauncher/DevLauncherController;->useDeveloperSupport:Z

    return v0
.end method

.method public handleIntent(Landroid/content/Intent;Lcom/facebook/react/ReactActivity;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityToBeInvalidated"    # Lcom/facebook/react/ReactActivity;

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 229
    nop

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 231
    if-eqz v3, :cond_3

    .line 230
    nop

    .line 231
    nop

    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 233
    .local v4, "$i$a$-let-DevLauncherController$handleIntent$1":I
    const-string v5, "EXDevMenuDisableAutoLaunch"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    iput-boolean v2, p0, Lexpo/modules/devlauncher/DevLauncherController;->canLaunchDevMenuOnStart:Z

    .line 235
    iget-object v2, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    iget-boolean v5, p0, Lexpo/modules/devlauncher/DevLauncherController;->canLaunchDevMenuOnStart:Z

    invoke-virtual {v2, v5}, Lexpo/modules/devmenu/DevMenuManager;->setCanLaunchDevMenuOnStart(Z)V

    .line 238
    :cond_0
    invoke-static {v3}, Lexpo/modules/devlauncher/helpers/DevLauncherURLHelperKt;->isDevLauncherUrl(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/DevLauncherController;->handleExternalIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 242
    :cond_1
    invoke-static {v3}, Lexpo/modules/devlauncher/helpers/DevLauncherURLHelperKt;->hasUrlQueryParam(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->navigateToLauncher()V

    .line 246
    return v1

    .line 249
    :cond_2
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    new-instance v2, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;

    invoke-direct {v2, p0, v3, p2, v0}, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$1$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 256
    return v1

    .line 230
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "$i$a$-let-DevLauncherController$handleIntent$1":I
    :cond_3
    nop

    .line 259
    if-eqz p1, :cond_7

    move-object v3, p1

    .local v3, "it":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 261
    .local v4, "$i$a$-let-DevLauncherController$handleIntent$2":I
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getMode()Lexpo/modules/devlauncher/DevLauncherController$Mode;

    move-result-object v5

    sget-object v6, Lexpo/modules/devlauncher/DevLauncherController$Mode;->APP:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    if-eq v5, v6, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 265
    :cond_4
    sget-object v2, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "DEV_CLIENT_TRY_TO_LAUNCH_LAST_BUNDLE"

    const-string v7, "true"

    invoke-virtual {v2, v5, v6, v7}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getMetadataValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 266
    .local v2, "shouldTryToLaunchLastOpenedBundle":Z
    iget-object v5, p0, Lexpo/modules/devlauncher/DevLauncherController;->recentlyOpedAppsRegistry:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;

    invoke-virtual {v5}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->getMostRecentApp()Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;

    move-result-object v5

    .line 267
    .local v5, "lastOpenedApp":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    .line 268
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    new-instance v7, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$2$1;

    invoke-direct {v7, p0, v5, p2, v0}, Lexpo/modules/devlauncher/DevLauncherController$handleIntent$2$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)V

    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 275
    return v1

    .line 277
    :cond_5
    invoke-direct {p0, v3}, Lexpo/modules/devlauncher/DevLauncherController;->handleExternalIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 262
    .end local v2    # "shouldTryToLaunchLastOpenedBundle":Z
    .end local v5    # "lastOpenedApp":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    :cond_6
    :goto_0
    nop

    .line 259
    .end local v3    # "it":Landroid/content/Intent;
    .end local v4    # "$i$a$-let-DevLauncherController$handleIntent$2":I
    :cond_7
    nop

    .line 280
    return v2
.end method

.method public loadApp(Landroid/net/Uri;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lcom/facebook/react/ReactActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;

    iget v2, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 126
    iget v4, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .local v0, "appLoaderListener":Lkotlin/jvm/functions/Function1;
    iget-object v4, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    .local v4, "parsedUrl":Landroid/net/Uri;
    iget-object v6, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;

    .local v6, "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    iget-object v7, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lexpo/modules/devlauncher/DevLauncherController;

    .local v7, "this":Lexpo/modules/devlauncher/DevLauncherController;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    goto/16 :goto_5

    .line 178
    .end local v0    # "appLoaderListener":Lkotlin/jvm/functions/Function1;
    .end local v4    # "parsedUrl":Landroid/net/Uri;
    .end local v6    # "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 126
    .end local v7    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    :pswitch_1
    iget-object v4, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;

    .local v4, "appLoaderFactory":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;
    iget-object v6, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$4:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    .local v6, "appIntent":Landroid/content/Intent;
    iget-object v7, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$3:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    .local v7, "parsedUrl":Landroid/net/Uri;
    iget-object v8, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;

    .local v8, "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    iget-object v9, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$1:Ljava/lang/Object;

    check-cast v9, Landroid/net/Uri;

    .local v9, "url":Landroid/net/Uri;
    iget-object v10, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lexpo/modules/devlauncher/DevLauncherController;

    .local v10, "this":Lexpo/modules/devlauncher/DevLauncherController;
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v3

    goto/16 :goto_4

    .line 178
    .end local v4    # "appLoaderFactory":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;
    .end local v6    # "appIntent":Landroid/content/Intent;
    .end local v7    # "parsedUrl":Landroid/net/Uri;
    .end local v8    # "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    .end local v9    # "url":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object v7, v10

    goto/16 :goto_7

    .line 126
    .end local v10    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .local v7, "this":Lexpo/modules/devlauncher/DevLauncherController;
    move-object/from16 v4, p2

    .local v4, "projectUrl":Landroid/net/Uri;
    move-object/from16 v9, p1

    .restart local v9    # "url":Landroid/net/Uri;
    move-object/from16 v6, p3

    .line 127
    .local v6, "mainActivity":Lcom/facebook/react/ReactActivity;
    monitor-enter v7

    const/4 v8, 0x0

    .line 128
    .local v8, "$i$a$-synchronized-DevLauncherController$loadApp$2":I
    :try_start_2
    iget-boolean v10, v7, Lexpo/modules/devlauncher/DevLauncherController;->appIsLoading:Z

    if-eqz v10, :cond_1

    .line 129
    .end local v4    # "projectUrl":Landroid/net/Uri;
    .end local v6    # "mainActivity":Lcom/facebook/react/ReactActivity;
    .end local v7    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    .end local v9    # "url":Landroid/net/Uri;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v8    # "$i$a$-synchronized-DevLauncherController$loadApp$2":I
    monitor-exit v7

    return-object v0

    .line 131
    .restart local v4    # "projectUrl":Landroid/net/Uri;
    .restart local v6    # "mainActivity":Lcom/facebook/react/ReactActivity;
    .restart local v8    # "$i$a$-synchronized-DevLauncherController$loadApp$2":I
    .restart local v9    # "url":Landroid/net/Uri;
    :cond_1
    const/4 v10, 0x1

    :try_start_3
    iput-boolean v10, v7, Lexpo/modules/devlauncher/DevLauncherController;->appIsLoading:Z

    .line 132
    nop

    .end local v8    # "$i$a$-synchronized-DevLauncherController$loadApp$2":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    monitor-exit v7

    .line 134
    nop

    .line 135
    :try_start_4
    invoke-virtual {v7}, Lexpo/modules/devlauncher/DevLauncherController;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lexpo/modules/devlauncher/DevLauncherController;->ensureHostWasCleared(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V

    .line 136
    .end local v6    # "mainActivity":Lcom/facebook/react/ReactActivity;
    new-instance v6, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;

    invoke-direct {v6, v9}, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;-><init>(Landroid/net/Uri;)V

    .line 137
    .local v6, "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    invoke-virtual {v6}, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->getUrl()Landroid/net/Uri;

    move-result-object v8

    .line 138
    .local v8, "parsedUrl":Landroid/net/Uri;
    if-nez v4, :cond_2

    move-object v11, v9

    goto :goto_1

    :cond_2
    move-object v11, v4

    .line 140
    .local v11, "parsedProjectUrl":Landroid/net/Uri;
    :goto_1
    invoke-direct {v7, v9}, Lexpo/modules/devlauncher/DevLauncherController;->isEASUpdateURL(Landroid/net/Uri;)Z

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    .local v12, "isEASUpdate":Z
    if-eqz v12, :cond_3

    if-nez v4, :cond_3

    .line 144
    .end local v4    # "projectUrl":Landroid/net/Uri;
    .end local v11    # "parsedProjectUrl":Landroid/net/Uri;
    .end local v12    # "isEASUpdate":Z
    :try_start_5
    sget-object v13, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-direct {v7}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "expo.modules.updates.EXPO_UPDATE_URL"

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getMetadataValue$default(Lexpo/modules/devlauncher/DevLauncherController$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "projectUrlString":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "parse(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .restart local v11    # "parsedProjectUrl":Landroid/net/Uri;
    goto :goto_2

    .line 178
    .end local v4    # "projectUrlString":Ljava/lang/String;
    .end local v6    # "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    .end local v8    # "parsedUrl":Landroid/net/Uri;
    .end local v9    # "url":Landroid/net/Uri;
    .end local v11    # "parsedProjectUrl":Landroid/net/Uri;
    :catch_2
    move-exception v0

    goto/16 :goto_7

    .line 148
    .restart local v6    # "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    .restart local v8    # "parsedUrl":Landroid/net/Uri;
    .restart local v9    # "url":Landroid/net/Uri;
    .restart local v11    # "parsedProjectUrl":Landroid/net/Uri;
    :cond_3
    :goto_2
    :try_start_6
    new-instance v4, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;

    invoke-direct {v7}, Lexpo/modules/devlauncher/DevLauncherController;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v12

    invoke-direct {v7}, Lexpo/modules/devlauncher/DevLauncherController;->getInstallationIDHelper()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    move-result-object v13

    invoke-direct {v7}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->getOrCreateInstallationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v12, v8, v13}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;-><init>(Lokhttp3/OkHttpClient;Landroid/net/Uri;Ljava/lang/String;)V

    .line 149
    .local v4, "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    invoke-direct {v7}, Lexpo/modules/devlauncher/DevLauncherController;->createAppIntent()Landroid/content/Intent;

    move-result-object v12

    .line 151
    .local v12, "appIntent":Landroid/content/Intent;
    sget-object v13, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;

    invoke-virtual {v13}, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->getApp()Lorg/koin/core/KoinApplication;

    move-result-object v13

    invoke-virtual {v13}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v13

    .line 505
    .local v13, "$this$iv":Lorg/koin/core/Koin;
    nop

    .line 506
    const/4 v14, 0x0

    .line 505
    .local v14, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 507
    const/4 v15, 0x0

    .line 505
    .local v15, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 508
    .local v16, "$i$f$getOrNull":I
    invoke-virtual {v13}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v17

    move-object/from16 p1, v17

    .local p1, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/16 v17, 0x0

    .line 509
    .local v17, "$i$f$getOrNull":I
    const-class v18, Lexpo/modules/updatesinterface/UpdatesInterface;

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move-object/from16 v10, p1

    .end local p1    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .local v10, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    invoke-virtual {v10, v5, v14, v15}, Lorg/koin/core/scope/Scope;->getOrNull(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 508
    .end local v10    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v17    # "$i$f$getOrNull":I
    nop

    .line 151
    .end local v13    # "$this$iv":Lorg/koin/core/Koin;
    .end local v14    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v15    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$getOrNull":I
    check-cast v5, Lexpo/modules/updatesinterface/UpdatesInterface;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v5, :cond_4

    :try_start_7
    invoke-interface {v5}, Lexpo/modules/updatesinterface/UpdatesInterface;->reset()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 153
    :cond_4
    :try_start_8
    move-object v5, v7

    check-cast v5, Lorg/koin/core/component/KoinComponent;

    .line 510
    .local v5, "$this$get_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 511
    const/4 v10, 0x0

    .line 510
    .local v10, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 512
    const/4 v13, 0x0

    .line 510
    .local v13, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v14, 0x0

    .line 514
    .local v14, "$i$f$get":I
    instance-of v15, v5, Lorg/koin/core/component/KoinScopeComponent;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v15, :cond_5

    .line 515
    :try_start_9
    move-object v15, v5

    check-cast v15, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v15}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v15

    move-object v5, v15

    .local v5, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v15, 0x0

    .line 516
    .local v15, "$i$f$get":I
    const-class v16, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v5, v2, v10, v13}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .end local v5    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v10    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    goto :goto_3

    .line 517
    .local v5, "$this$get_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .restart local v10    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .restart local v13    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    :cond_5
    :try_start_a
    invoke-interface {v5}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v2

    .end local v5    # "$this$get_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .local v2, "this_$iv$iv":Lorg/koin/core/Koin;
    const/4 v5, 0x0

    .line 518
    .local v5, "$i$f$get":I
    invoke-virtual {v2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v15

    invoke-virtual {v15}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v15

    .local v15, "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    const/16 v16, 0x0

    .line 516
    .local v16, "$i$f$get":I
    const-class v17, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;

    move-object/from16 p1, v2

    .end local v2    # "this_$iv$iv":Lorg/koin/core/Koin;
    .local p1, "this_$iv$iv":Lorg/koin/core/Koin;
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v15, v2, v10, v13}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 518
    .end local v10    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v16    # "$i$f$get":I
    nop

    .line 514
    .end local v5    # "$i$f$get":I
    .end local p1    # "this_$iv$iv":Lorg/koin/core/Koin;
    :goto_3
    nop

    .line 153
    .end local v14    # "$i$f$get":I
    check-cast v2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;

    .line 154
    .local v2, "appLoaderFactory":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;
    iput-object v7, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$3:Ljava/lang/Object;

    iput-object v12, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$5:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->label:I

    invoke-interface {v2, v8, v11, v4, v1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;->createAppLoader(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .end local v4    # "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    .end local v11    # "parsedProjectUrl":Landroid/net/Uri;
    if-ne v5, v0, :cond_6

    .line 126
    return-object v0

    .line 154
    .restart local v7    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    :cond_6
    move-object v4, v2

    move-object v10, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v12

    .line 126
    .end local v2    # "appLoaderFactory":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;
    .end local v12    # "appIntent":Landroid/content/Intent;
    .local v4, "appLoaderFactory":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;
    .local v6, "appIntent":Landroid/content/Intent;
    .local v7, "parsedUrl":Landroid/net/Uri;
    .local v8, "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    .local v10, "this":Lexpo/modules/devlauncher/DevLauncherController;
    :goto_4
    :try_start_b
    check-cast v5, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    move-object v2, v5

    .line 155
    .local v2, "appLoader":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
    invoke-interface {v4}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;->shouldUseDeveloperSupport()Z

    move-result v5

    invoke-virtual {v10, v5}, Lexpo/modules/devlauncher/DevLauncherController;->setUseDeveloperSupport(Z)V

    .line 156
    invoke-interface {v4}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v5

    iput-object v5, v10, Lexpo/modules/devlauncher/DevLauncherController;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 157
    .end local v4    # "appLoaderFactory":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;
    iput-object v7, v10, Lexpo/modules/devlauncher/DevLauncherController;->manifestURL:Landroid/net/Uri;

    .line 159
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v9    # "url":Landroid/net/Uri;
    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v4}, Lexpo/modules/devlauncher/DevLauncherController;->setupDevMenu(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->createOnDelegateWillBeCreatedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 162
    .local v4, "appLoaderListener":Lkotlin/jvm/functions/Function1;
    invoke-direct {v10}, Lexpo/modules/devlauncher/DevLauncherController;->getLifecycle()Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;

    move-result-object v5

    invoke-virtual {v5, v4}, Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;->addListener(Lkotlin/jvm/functions/Function1;)V

    .line 163
    sget-object v5, Lexpo/modules/devlauncher/DevLauncherController$Mode;->APP:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    invoke-virtual {v10, v5}, Lexpo/modules/devlauncher/DevLauncherController;->setMode(Lexpo/modules/devlauncher/DevLauncherController$Mode;)V

    .line 166
    iput-object v10, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->L$5:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lexpo/modules/devlauncher/DevLauncherController$loadApp$1;->label:I

    invoke-virtual {v2, v6, v1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->launch(Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .end local v2    # "appLoader":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
    .end local v6    # "appIntent":Landroid/content/Intent;
    if-ne v5, v0, :cond_7

    .line 126
    return-object v0

    .line 166
    :cond_7
    move-object v0, v4

    move-object v4, v7

    move-object v6, v8

    move-object v7, v10

    .end local v8    # "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    .end local v10    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    .restart local v0    # "appLoaderListener":Lkotlin/jvm/functions/Function1;
    .local v4, "parsedUrl":Landroid/net/Uri;
    .local v6, "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    .local v7, "this":Lexpo/modules/devlauncher/DevLauncherController;
    :goto_5
    :try_start_c
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 167
    iget-object v2, v7, Lexpo/modules/devlauncher/DevLauncherController;->recentlyOpedAppsRegistry:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "toString(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->getQueryParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7}, Lexpo/modules/devlauncher/DevLauncherController;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->appWasOpened(Ljava/lang/String;Ljava/util/Map;Lexpo/modules/manifests/core/Manifest;)V

    .line 168
    .end local v6    # "devLauncherUrl":Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
    invoke-virtual {v7, v4}, Lexpo/modules/devlauncher/DevLauncherController;->setLatestLoadedApp(Landroid/net/Uri;)V

    .line 170
    .end local v4    # "parsedUrl":Landroid/net/Uri;
    invoke-direct {v7}, Lexpo/modules/devlauncher/DevLauncherController;->getLifecycle()Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;->removeListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_6

    .line 173
    .end local v0    # "appLoaderListener":Lkotlin/jvm/functions/Function1;
    :cond_8
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController$Mode;->LAUNCHER:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    invoke-virtual {v7, v0}, Lexpo/modules/devlauncher/DevLauncherController;->setMode(Lexpo/modules/devlauncher/DevLauncherController$Mode;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, v7, Lexpo/modules/devlauncher/DevLauncherController;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 175
    iput-object v0, v7, Lexpo/modules/devlauncher/DevLauncherController;->manifestURL:Landroid/net/Uri;

    .line 176
    invoke-direct {v7}, Lexpo/modules/devlauncher/DevLauncherController;->invalidateDevMenu()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 184
    .end local v7    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    :goto_7
    monitor-enter v7

    const/4 v2, 0x0

    .line 180
    .local v2, "$i$a$-synchronized-DevLauncherController$loadApp$3":I
    const/4 v4, 0x0

    :try_start_d
    iput-boolean v4, v7, Lexpo/modules/devlauncher/DevLauncherController;->appIsLoading:Z

    .line 181
    .end local v7    # "this":Lexpo/modules/devlauncher/DevLauncherController;
    nop

    .end local v2    # "$i$a$-synchronized-DevLauncherController$loadApp$3":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 179
    monitor-exit v7

    .line 182
    throw v0

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 127
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadApp(Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mainActivity"    # Lcom/facebook/react/ReactActivity;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/facebook/react/ReactActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lexpo/modules/devlauncher/DevLauncherController;->loadApp(Landroid/net/Uri;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 188
    return-object v0
.end method

.method public navigateToLauncher()V
    .locals 3

    .line 214
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lexpo/modules/devlauncher/DevLauncherController;->ensureHostWasCleared$default(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;ILjava/lang/Object;)V

    .line 215
    monitor-enter p0

    const/4 v0, 0x0

    .line 216
    .local v0, "$i$a$-synchronized-DevLauncherController$navigateToLauncher$1":I
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lexpo/modules/devlauncher/DevLauncherController;->appIsLoading:Z

    .line 217
    nop

    .end local v0    # "$i$a$-synchronized-DevLauncherController$navigateToLauncher$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    .line 219
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController$Mode;->LAUNCHER:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/DevLauncherController;->setMode(Lexpo/modules/devlauncher/DevLauncherController$Mode;)V

    .line 220
    iput-object v2, p0, Lexpo/modules/devlauncher/DevLauncherController;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 221
    iput-object v2, p0, Lexpo/modules/devlauncher/DevLauncherController;->manifestURL:Landroid/net/Uri;

    .line 223
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->invalidateDevMenu()V

    .line 225
    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/devlauncher/DevLauncherController;->createLauncherIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAppLoaded(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    monitor-enter p0

    const/4 v0, 0x0

    .line 192
    .local v0, "$i$a$-synchronized-DevLauncherController$onAppLoaded$1":I
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lexpo/modules/devlauncher/DevLauncherController;->appIsLoading:Z

    .line 193
    nop

    .end local v0    # "$i$a$-synchronized-DevLauncherController$onAppLoaded$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    .line 194
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getManifestURL()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 195
    .local v1, "$i$a$-let-DevLauncherController$onAppLoaded$2":I
    new-instance v2, Lexpo/modules/devlauncher/DevLauncherController$onAppLoaded$2$1;

    invoke-direct {v2, p0, v0}, Lexpo/modules/devlauncher/DevLauncherController$onAppLoaded$2$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Landroid/net/Uri;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Lexpo/modules/devlauncher/helpers/DevLauncherCoroutinesExtensionsKt;->runBlockingOnMainThread(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 198
    nop

    .line 194
    .end local v0    # "it":Landroid/net/Uri;
    .end local v1    # "$i$a$-let-DevLauncherController$onAppLoaded$2":I
    nop

    .line 199
    :cond_0
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAppLoadedWithError()V
    .locals 2

    .line 202
    monitor-enter p0

    const/4 v0, 0x0

    .line 203
    .local v0, "$i$a$-synchronized-DevLauncherController$onAppLoadedWithError$1":I
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lexpo/modules/devlauncher/DevLauncherController;->appIsLoading:Z

    .line 204
    nop

    .end local v0    # "$i$a$-synchronized-DevLauncherController$onAppLoadedWithError$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    .line 205
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRequestRelaunch()V
    .locals 7

    .line 117
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getLatestLoadedApp()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 118
    .local v0, "latestLoadedApp":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lexpo/modules/devlauncher/DevLauncherController$onRequestRelaunch$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lexpo/modules/devlauncher/DevLauncherController$onRequestRelaunch$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 124
    return-void
.end method

.method public final setCanLaunchDevMenuOnStart(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 99
    iput-boolean p1, p0, Lexpo/modules/devlauncher/DevLauncherController;->canLaunchDevMenuOnStart:Z

    return-void
.end method

.method public final setDevMenuManager(Lexpo/modules/devmenu/DevMenuManager;)V
    .locals 1
    .param p1, "<set-?>"    # Lexpo/modules/devmenu/DevMenuManager;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    return-void
.end method

.method public setLatestLoadedApp(Landroid/net/Uri;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/net/Uri;

    .line 97
    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController;->latestLoadedApp:Landroid/net/Uri;

    return-void
.end method

.method public setMode(Lexpo/modules/devlauncher/DevLauncherController$Mode;)V
    .locals 1
    .param p1, "<set-?>"    # Lexpo/modules/devlauncher/DevLauncherController$Mode;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController;->mode:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    return-void
.end method

.method public setUpdatesInterface(Lexpo/modules/updatesinterface/UpdatesInterface;)V
    .locals 5
    .param p1, "value"    # Lexpo/modules/updatesinterface/UpdatesInterface;

    .line 76
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->getApp()Lorg/koin/core/KoinApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    .line 78
    new-instance v1, Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1;-><init>(Lexpo/modules/updatesinterface/UpdatesInterface;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 76
    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/koin/core/Koin;->loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setUseDeveloperSupport(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 98
    iput-boolean p1, p0, Lexpo/modules/devlauncher/DevLauncherController;->useDeveloperSupport:Z

    return-void
.end method
