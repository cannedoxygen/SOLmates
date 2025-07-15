.class public final Lexpo/modules/devmenu/DevMenuManager;
.super Ljava/lang/Object;
.source "DevMenuManager.kt"

# interfaces
.implements Lexpo/interfaces/devmenu/DevMenuManagerInterface;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devmenu/DevMenuManager$Callback;,
        Lexpo/modules/devmenu/DevMenuManager$KeyCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuManager.kt\nexpo/modules/devmenu/DevMenuManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n11065#2:449\n11400#2,3:450\n1#3:453\n*S KotlinDebug\n*F\n+ 1 DevMenuManager.kt\nexpo/modules/devmenu/DevMenuManager\n*L\n203#1:449\n203#1:450,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0004\u0085\u0001\u0086\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010K\u001a\u00020LH\u0016J\u0006\u0010M\u001a\u00020NJ\u0006\u0010O\u001a\u00020NJ\u0008\u0010P\u001a\u0004\u0018\u00010QJ\u0008\u0010R\u001a\u00020\u0018H\u0016J\u0006\u0010S\u001a\u00020NJ\u0008\u0010T\u001a\u0004\u0018\u00010\u0018J\n\u0010U\u001a\u0004\u0018\u000107H\u0016J\u0010\u0010V\u001a\u00020L2\u0006\u0010W\u001a\u00020$H\u0002J\u0010\u0010X\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u0011H\u0002J\u0008\u0010Z\u001a\u00020LH\u0016J\u0010\u0010[\u001a\u00020L2\u0006\u0010\\\u001a\u00020\u0018H\u0016J\u0008\u0010]\u001a\u00020\u0005H\u0016J\u000e\u0010^\u001a\u00020L2\u0006\u0010_\u001a\u00020`J\u0010\u0010a\u001a\u00020L2\u0006\u0010b\u001a\u00020cH\u0002J\u0010\u0010d\u001a\u00020L2\u0006\u0010_\u001a\u00020`H\u0002J\u0008\u0010e\u001a\u00020LH\u0016J\u0008\u0010f\u001a\u00020LH\u0016J\u0008\u0010g\u001a\u00020LH\u0016J\u0018\u0010h\u001a\u00020\u00052\u0006\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020lH\u0016J\u0008\u0010m\u001a\u00020LH\u0002J\u0008\u0010n\u001a\u00020LH\u0002J\u0012\u0010o\u001a\u00020L2\u0008\u0010p\u001a\u0004\u0018\u00010qH\u0016J\u0006\u0010r\u001a\u00020LJ\u001a\u0010s\u001a\u00020L2\u0006\u0010t\u001a\u00020 2\u0008\u0010u\u001a\u0004\u0018\u00010\u0011H\u0016J\u0006\u0010v\u001a\u00020LJ\u001a\u0010w\u001a\u00020L2\u0006\u0010x\u001a\u00020\u00112\u0008\u0010y\u001a\u0004\u0018\u00010zH\u0016J\u0010\u0010{\u001a\u00020L2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010|\u001a\u00020L2\u0006\u0010}\u001a\u00020\u001aH\u0016J\u0010\u0010~\u001a\u00020L2\u0006\u0010\\\u001a\u00020\u0018H\u0002J\u0008\u0010\u007f\u001a\u00020LH\u0016J\u0007\u0010\u0080\u0001\u001a\u00020LJ\u0007\u0010\u0081\u0001\u001a\u00020LJ\u0011\u0010\u0082\u0001\u001a\u00020L2\u0006\u0010t\u001a\u00020 H\u0016J\u0007\u0010\u0083\u0001\u001a\u00020LJ\u0007\u0010\u0084\u0001\u001a\u00020LR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u0004\u0018\u00010 8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0016\u0010#\u001a\u0004\u0018\u00010$8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u000e\u0010\'\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010)\u001a\u0004\u0018\u00010 8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\"R\u0016\u0010+\u001a\u0004\u0018\u00010$8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010&R\u001c\u0010-\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0013\"\u0004\u0008/\u0010\u0015R\u001b\u00100\u001a\u0002018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00082\u00103R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u00108\u001a\u0008\u0012\u0004\u0012\u00020:09X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0010\u0010?\u001a\u0004\u0018\u00010@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010B\u001a\u00020CX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u0010\u0010H\u001a\u0004\u0018\u00010IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuManager;",
        "Lexpo/interfaces/devmenu/DevMenuManagerInterface;",
        "Lcom/facebook/react/bridge/LifecycleEventListener;",
        "()V",
        "canLaunchDevMenuOnStart",
        "",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "currentManifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "getCurrentManifest",
        "()Lexpo/modules/manifests/core/Manifest;",
        "setCurrentManifest",
        "(Lexpo/modules/manifests/core/Manifest;)V",
        "currentManifestURL",
        "",
        "getCurrentManifestURL",
        "()Ljava/lang/String;",
        "setCurrentManifestURL",
        "(Ljava/lang/String;)V",
        "currentReactInstance",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "delegate",
        "Lexpo/interfaces/devmenu/DevMenuDelegateInterface;",
        "getDelegate$expo_dev_menu_debug",
        "()Lexpo/interfaces/devmenu/DevMenuDelegateInterface;",
        "setDelegate$expo_dev_menu_debug",
        "(Lexpo/interfaces/devmenu/DevMenuDelegateInterface;)V",
        "delegateActivity",
        "Landroid/app/Activity;",
        "getDelegateActivity",
        "()Landroid/app/Activity;",
        "delegateReactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getDelegateReactContext",
        "()Lcom/facebook/react/bridge/ReactContext;",
        "devMenuHost",
        "fontsWereLoaded",
        "hostActivity",
        "getHostActivity",
        "hostReactContext",
        "getHostReactContext",
        "launchUrl",
        "getLaunchUrl",
        "setLaunchUrl",
        "metroClient",
        "Lexpo/modules/devmenu/api/DevMenuMetroClient;",
        "getMetroClient",
        "()Lexpo/modules/devmenu/api/DevMenuMetroClient;",
        "metroClient$delegate",
        "Lkotlin/Lazy;",
        "preferences",
        "Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;",
        "registeredCallbacks",
        "",
        "Lexpo/modules/devmenu/DevMenuManager$Callback;",
        "getRegisteredCallbacks",
        "()Ljava/util/List;",
        "setRegisteredCallbacks",
        "(Ljava/util/List;)V",
        "shakeDetector",
        "Lexpo/modules/devmenu/detectors/ShakeDetector;",
        "shouldLaunchDevMenuOnStart",
        "testInterceptor",
        "Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;",
        "getTestInterceptor",
        "()Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;",
        "setTestInterceptor",
        "(Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;)V",
        "threeFingerLongPressDetector",
        "Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;",
        "useDeveloperSupport",
        "closeMenu",
        "",
        "getAppInfo",
        "Landroid/os/Bundle;",
        "getDevSettings",
        "getDevToolsDelegate",
        "Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;",
        "getMenuHost",
        "getMenuPreferences",
        "getReactHost",
        "getSettings",
        "handleLoadedDelegateContext",
        "reactContext",
        "hasDisableOnboardingQueryParam",
        "urlString",
        "hideMenu",
        "initializeWithReactHost",
        "reactHost",
        "isInitialized",
        "loadFonts",
        "context",
        "Landroid/content/Context;",
        "maybeInitDevMenuHost",
        "application",
        "Landroid/app/Application;",
        "maybeStartDetectors",
        "onHostDestroy",
        "onHostPause",
        "onHostResume",
        "onKeyEvent",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onShakeGesture",
        "onThreeFingerLongPress",
        "onTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "openJSInspector",
        "openMenu",
        "activity",
        "screen",
        "reload",
        "sendEventToDelegateBridge",
        "eventName",
        "eventData",
        "",
        "setCanLaunchDevMenuOnStart",
        "setDelegate",
        "newDelegate",
        "setUpReactInstance",
        "synchronizeDelegate",
        "toggleFastRefresh",
        "toggleInspector",
        "toggleMenu",
        "togglePerformanceMonitor",
        "toggleRemoteDebug",
        "Callback",
        "KeyCommand",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

.field private static canLaunchDevMenuOnStart:Z

.field private static final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private static currentManifest:Lexpo/modules/manifests/core/Manifest;

.field private static currentManifestURL:Ljava/lang/String;

.field private static currentReactInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/interfaces/devmenu/ReactHostWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

.field private static devMenuHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

.field private static fontsWereLoaded:Z

.field private static launchUrl:Ljava/lang/String;

.field private static final metroClient$delegate:Lkotlin/Lazy;

.field private static preferences:Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

.field private static registeredCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/devmenu/DevMenuManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static shakeDetector:Lexpo/modules/devmenu/detectors/ShakeDetector;

.field private static shouldLaunchDevMenuOnStart:Z

.field private static testInterceptor:Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;

.field private static threeFingerLongPressDetector:Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;

.field private static final useDeveloperSupport:Z


# direct methods
.method public static synthetic $r8$lambda$Clpjb43xroMttqA4dBMIiCEMFvI()V
    .locals 0

    invoke-static {}, Lexpo/modules/devmenu/DevMenuManager;->maybeInitDevMenuHost$lambda$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GWeNtGYa1YJr-lu-XBNOS40ZB-o(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/devmenu/DevMenuManager;->onHostResume$lambda$9$lambda$8(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMOFwtOrv-27zHz2ChBsq2BmFDA()V
    .locals 0

    invoke-static {}, Lexpo/modules/devmenu/DevMenuManager;->setUpReactInstance$lambda$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devmenu/DevMenuManager;

    invoke-direct {v0}, Lexpo/modules/devmenu/DevMenuManager;-><init>()V

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    .line 44
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager$metroClient$2;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager$metroClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->metroClient$delegate:Lkotlin/Lazy;

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->currentReactInstance:Ljava/lang/ref/WeakReference;

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lexpo/modules/devmenu/DevMenuManager;->canLaunchDevMenuOnStart:Z

    .line 58
    new-instance v0, Lexpo/modules/devmenu/tests/DevMenuDisabledTestInterceptor;

    invoke-direct {v0}, Lexpo/modules/devmenu/tests/DevMenuDisabledTestInterceptor;-><init>()V

    check-cast v0, Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->testInterceptor:Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->registeredCallbacks:Ljava/util/List;

    .line 423
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentReactInstance$p()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 39
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->currentReactInstance:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getUseDeveloperSupport$p()Z
    .locals 1

    .line 39
    sget-boolean v0, Lexpo/modules/devmenu/DevMenuManager;->useDeveloperSupport:Z

    return v0
.end method

.method public static final synthetic access$handleLoadedDelegateContext(Lexpo/modules/devmenu/DevMenuManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devmenu/DevMenuManager;
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 39
    invoke-direct {p0, p1}, Lexpo/modules/devmenu/DevMenuManager;->handleLoadedDelegateContext(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method public static final synthetic access$onShakeGesture(Lexpo/modules/devmenu/DevMenuManager;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devmenu/DevMenuManager;

    .line 39
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->onShakeGesture()V

    return-void
.end method

.method public static final synthetic access$onThreeFingerLongPress(Lexpo/modules/devmenu/DevMenuManager;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devmenu/DevMenuManager;

    .line 39
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->onThreeFingerLongPress()V

    return-void
.end method

.method private final getDelegateActivity()Landroid/app/Activity;
    .locals 1

    .line 79
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getDelegateReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 76
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getHostActivity()Landroid/app/Activity;
    .locals 1

    .line 85
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getHostReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getHostReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 82
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->devMenuHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    if-nez v0, :cond_0

    const-string v0, "devMenuHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    return-object v0
.end method

.method private final handleLoadedDelegateContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 7
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 145
    const-string v0, "ExpoDevMenu"

    const-string v1, "Delegate\'s context was loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    nop

    .line 148
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Application;

    .line 147
    :cond_1
    invoke-direct {p0, v0}, Lexpo/modules/devmenu/DevMenuManager;->maybeInitDevMenuHost(Landroid/app/Application;)V

    .line 151
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lexpo/modules/devmenu/DevMenuManager;->maybeStartDetectors(Landroid/content/Context;)V

    .line 152
    nop

    .line 153
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->testInterceptor:Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;

    invoke-interface {v0}, Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;->overrideSettings()Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;-><init>(Landroid/content/Context;)V

    check-cast v0, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    .line 155
    :cond_2
    move-object v1, v0

    .local v1, "it":Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;
    const/4 v2, 0x0

    .line 156
    .local v2, "$i$a$-also-DevMenuManager$handleLoadedDelegateContext$1":I
    sget-object v3, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    sget-object v4, Lexpo/modules/devmenu/DevMenuManager;->currentManifestURL:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_3

    move-object v4, v5

    :cond_3
    invoke-direct {v3, v4}, Lexpo/modules/devmenu/DevMenuManager;->hasDisableOnboardingQueryParam(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    sget-object v3, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    sget-object v6, Lexpo/modules/devmenu/DevMenuManager;->launchUrl:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v5, v6

    :goto_1
    invoke-direct {v3, v5}, Lexpo/modules/devmenu/DevMenuManager;->hasDisableOnboardingQueryParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 157
    :cond_5
    invoke-interface {v1, v4}, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;->setOnboardingFinished(Z)V

    .line 159
    :cond_6
    nop

    .line 155
    .end local v1    # "it":Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;
    .end local v2    # "$i$a$-also-DevMenuManager$handleLoadedDelegateContext$1":I
    nop

    .line 159
    move-object v1, v0

    .restart local v1    # "it":Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;
    const/4 v2, 0x0

    .line 160
    .local v2, "$i$a$-also-DevMenuManager$handleLoadedDelegateContext$2":I
    sget-boolean v3, Lexpo/modules/devmenu/DevMenuManager;->canLaunchDevMenuOnStart:Z

    if-eqz v3, :cond_8

    invoke-interface {v1}, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;->getShowsAtLaunch()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;->isOnboardingFinished()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    sput-boolean v4, Lexpo/modules/devmenu/DevMenuManager;->shouldLaunchDevMenuOnStart:Z

    .line 161
    sget-boolean v3, Lexpo/modules/devmenu/DevMenuManager;->shouldLaunchDevMenuOnStart:Z

    if-eqz v3, :cond_9

    .line 162
    move-object v3, p0

    check-cast v3, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p1, v3}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 164
    :cond_9
    nop

    .line 159
    .end local v1    # "it":Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;
    .end local v2    # "$i$a$-also-DevMenuManager$handleLoadedDelegateContext$2":I
    nop

    .line 152
    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->preferences:Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    .line 165
    return-void
.end method

.method private final hasDisableOnboardingQueryParam(Ljava/lang/String;)Z
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;

    .line 136
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "disableOnboarding=1"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final maybeInitDevMenuHost(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .line 93
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->devMenuHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 95
    new-instance v1, Lexpo/modules/devmenu/DevMenuReactNativeHost;

    sget-boolean v2, Lexpo/modules/devmenu/DevMenuManager;->useDeveloperSupport:Z

    invoke-direct {v1, p1, v2}, Lexpo/modules/devmenu/DevMenuReactNativeHost;-><init>(Landroid/app/Application;Z)V

    check-cast v1, Lcom/facebook/react/ReactNativeHost;

    .line 94
    new-instance v2, Lexpo/modules/devmenu/DevMenuManager$maybeInitDevMenuHost$1;

    invoke-direct {v2, p1}, Lexpo/modules/devmenu/DevMenuManager$maybeInitDevMenuHost$1;-><init>(Landroid/app/Application;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lexpo/interfaces/devmenu/ReactHostWrapper;-><init>(Lcom/facebook/react/ReactNativeHost;Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->devMenuHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    new-instance v0, Lexpo/modules/devmenu/DevMenuManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lexpo/modules/devmenu/DevMenuManager$$ExternalSyntheticLambda1;-><init>()V

    .line 98
    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 102
    :cond_0
    return-void
.end method

.method private static final maybeInitDevMenuHost$lambda$0()V
    .locals 1

    .line 99
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->devMenuHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    if-nez v0, :cond_0

    const-string v0, "devMenuHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->start()V

    .line 100
    return-void
.end method

.method private final maybeStartDetectors(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 222
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->shakeDetector:Lexpo/modules/devmenu/detectors/ShakeDetector;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lexpo/modules/devmenu/detectors/ShakeDetector;

    new-instance v1, Lexpo/modules/devmenu/DevMenuManager$maybeStartDetectors$1;

    invoke-direct {v1, p0}, Lexpo/modules/devmenu/DevMenuManager$maybeStartDetectors$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lexpo/modules/devmenu/detectors/ShakeDetector;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v1, v0

    .local v1, "$this$maybeStartDetectors_u24lambda_u245":Lexpo/modules/devmenu/detectors/ShakeDetector;
    const/4 v2, 0x0

    .line 224
    .local v2, "$i$a$-apply-DevMenuManager$maybeStartDetectors$2":I
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Lexpo/modules/devmenu/detectors/ShakeDetector;->start(Landroid/hardware/SensorManager;)V

    .line 225
    nop

    .line 223
    .end local v1    # "$this$maybeStartDetectors_u24lambda_u245":Lexpo/modules/devmenu/detectors/ShakeDetector;
    .end local v2    # "$i$a$-apply-DevMenuManager$maybeStartDetectors$2":I
    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->shakeDetector:Lexpo/modules/devmenu/detectors/ShakeDetector;

    .line 228
    :cond_0
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->threeFingerLongPressDetector:Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;

    new-instance v1, Lexpo/modules/devmenu/DevMenuManager$maybeStartDetectors$3;

    invoke-direct {v1, p0}, Lexpo/modules/devmenu/DevMenuManager$maybeStartDetectors$3;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->threeFingerLongPressDetector:Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;

    .line 231
    :cond_1
    return-void
.end method

.method private static final onHostResume$lambda$9$lambda$8(Landroid/app/Activity;)V
    .locals 3
    .param p0, "$activity"    # Landroid/app/Activity;

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    check-cast v0, Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lexpo/interfaces/devmenu/DevMenuManagerInterface$DefaultImpls;->openMenu$default(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method private final onShakeGesture()V
    .locals 3

    .line 237
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->preferences:Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;->getMotionGestureEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 238
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 239
    .local v1, "$i$a$-let-DevMenuManager$onShakeGesture$1":I
    sget-object v2, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v2, v0}, Lexpo/modules/devmenu/DevMenuManager;->toggleMenu(Landroid/app/Activity;)V

    .line 240
    nop

    .line 238
    .end local v0    # "it":Landroid/app/Activity;
    .end local v1    # "$i$a$-let-DevMenuManager$onShakeGesture$1":I
    nop

    .line 242
    :cond_1
    return-void
.end method

.method private final onThreeFingerLongPress()V
    .locals 3

    .line 248
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->preferences:Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;->getTouchGestureEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 249
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 250
    .local v1, "$i$a$-let-DevMenuManager$onThreeFingerLongPress$1":I
    sget-object v2, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v2, v0}, Lexpo/modules/devmenu/DevMenuManager;->toggleMenu(Landroid/app/Activity;)V

    .line 251
    nop

    .line 249
    .end local v0    # "it":Landroid/app/Activity;
    .end local v1    # "$i$a$-let-DevMenuManager$onThreeFingerLongPress$1":I
    nop

    .line 253
    :cond_1
    return-void
.end method

.method private final setUpReactInstance(Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 3
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/devmenu/DevMenuManager;->currentReactInstance:Ljava/lang/ref/WeakReference;

    .line 107
    new-instance v0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    move-object v1, p0

    check-cast v1, Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    invoke-direct {v0, v1, p1}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;-><init>(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 108
    invoke-virtual {v0}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->createCommandHandlers()Ljava/util/Map;

    move-result-object v0

    .line 107
    nop

    .line 110
    .local v0, "handlers":Ljava/util/Map;
    new-instance v1, Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper;

    invoke-direct {v1}, Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper;-><init>()V

    .line 112
    nop

    .line 113
    nop

    .line 111
    invoke-virtual {v1, p1, v0}, Lexpo/modules/devmenu/react/DevMenuPackagerCommandHandlersSwapper;->swapPackagerCommandHandlers(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/util/Map;)V

    .line 116
    new-instance v1, Lexpo/modules/devmenu/react/DevMenuShakeDetectorListenerSwapper;

    invoke-direct {v1}, Lexpo/modules/devmenu/react/DevMenuShakeDetectorListenerSwapper;-><init>()V

    .line 118
    new-instance v2, Lexpo/modules/devmenu/DevMenuManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lexpo/modules/devmenu/DevMenuManager$$ExternalSyntheticLambda0;-><init>()V

    .line 117
    invoke-virtual {v1, p1, v2}, Lexpo/modules/devmenu/react/DevMenuShakeDetectorListenerSwapper;->swapShakeDetectorListener(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/common/ShakeDetector$ShakeListener;)V

    .line 121
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lexpo/modules/devmenu/DevMenuManager$setUpReactInstance$2;

    invoke-direct {v1, p1}, Lexpo/modules/devmenu/DevMenuManager$setUpReactInstance$2;-><init>(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    check-cast v1, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {p1, v1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lexpo/modules/devmenu/DevMenuManager;->handleLoadedDelegateContext(Lcom/facebook/react/bridge/ReactContext;)V

    .line 133
    :goto_0
    return-void
.end method

.method private static final setUpReactInstance$lambda$1()V
    .locals 0

    .line 119
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 2

    .line 288
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lexpo/modules/devmenu/DevMenuActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lexpo/modules/devmenu/DevMenuActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 289
    .local v0, "activity":Lexpo/modules/devmenu/DevMenuActivity;
    :cond_1
    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuActivity;->closeBottomSheet()V

    .line 292
    :cond_2
    return-void
.end method

.method public final getAppInfo()Landroid/os/Bundle;
    .locals 3

    .line 168
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const-string v1, "EMPTY"

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 169
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :cond_0
    sget-object v2, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 171
    .local v1, "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    sget-object v2, Lexpo/modules/devmenu/DevMenuAppInfo;->INSTANCE:Lexpo/modules/devmenu/DevMenuAppInfo;

    invoke-virtual {v2, v1, v0}, Lexpo/modules/devmenu/DevMenuAppInfo;->getAppInfo(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/bridge/ReactContext;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 169
    .end local v1    # "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    :cond_2
    :goto_0
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 423
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getCurrentManifest()Lexpo/modules/manifests/core/Manifest;
    .locals 1

    .line 60
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->currentManifest:Lexpo/modules/manifests/core/Manifest;

    return-object v0
.end method

.method public final getCurrentManifestURL()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->currentManifestURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getDelegate$expo_dev_menu_debug()Lexpo/interfaces/devmenu/DevMenuDelegateInterface;
    .locals 1

    .line 53
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    return-object v0
.end method

.method public final getDevSettings()Landroid/os/Bundle;
    .locals 3

    .line 175
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    :goto_0
    if-eqz v0, :cond_1

    .line 177
    sget-object v1, Lexpo/modules/devmenu/DevMenuDevSettings;->INSTANCE:Lexpo/modules/devmenu/DevMenuDevSettings;

    invoke-virtual {v1, v0}, Lexpo/modules/devmenu/DevMenuDevSettings;->getDevSettings(Lexpo/interfaces/devmenu/ReactHostWrapper;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 180
    :cond_1
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v2, "EMPTY"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getDevToolsDelegate()Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    .locals 3

    .line 71
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->getReactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    .local v0, "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    :cond_0
    new-instance v1, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    move-object v2, p0

    check-cast v2, Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    invoke-direct {v1, v2, v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;-><init>(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    return-object v1
.end method

.method public final getLaunchUrl()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->launchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1

    .line 427
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->devMenuHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    if-nez v0, :cond_0

    const-string v0, "devMenuHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getMenuPreferences()Landroid/os/Bundle;
    .locals 5

    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "$this$getMenuPreferences_u24lambda_u2413":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 442
    .local v2, "$i$a$-apply-DevMenuManager$getMenuPreferences$1":I
    sget-object v3, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v3}, Lexpo/modules/devmenu/DevMenuManager;->getSettings()Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;->isOnboardingFinished()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "isOnboardingFinished"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    nop

    .line 441
    .end local v1    # "$this$getMenuPreferences_u24lambda_u2413":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-DevMenuManager$getMenuPreferences$1":I
    return-object v0
.end method

.method public final getMetroClient()Lexpo/modules/devmenu/api/DevMenuMetroClient;
    .locals 1

    .line 44
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->metroClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devmenu/api/DevMenuMetroClient;

    return-object v0
.end method

.method public final getReactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1

    .line 67
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getRegisteredCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/devmenu/DevMenuManager$Callback;",
            ">;"
        }
    .end annotation

    .line 212
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->registeredCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getSettings()Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;
    .locals 1

    .line 425
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->preferences:Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    return-object v0
.end method

.method public final getTestInterceptor()Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;
    .locals 1

    .line 58
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->testInterceptor:Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;

    return-object v0
.end method

.method public hideMenu()V
    .locals 1

    .line 295
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 296
    :cond_0
    return-void
.end method

.method public initializeWithReactHost(Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 1
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    const-string v0, "reactHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lexpo/modules/devmenu/DevMenuDefaultDelegate;

    invoke-direct {v0, p1}, Lexpo/modules/devmenu/DevMenuDefaultDelegate;-><init>(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    check-cast v0, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/DevMenuManager;->setDelegate(Lexpo/interfaces/devmenu/DevMenuDelegateInterface;)V

    .line 411
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 420
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final loadFonts(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-boolean v0, Lexpo/modules/devmenu/DevMenuManager;->fontsWereLoaded:Z

    if-eqz v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lexpo/modules/devmenu/DevMenuManager;->fontsWereLoaded:Z

    .line 190
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Inter-Black"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 191
    const-string v3, "Inter-ExtraBold"

    aput-object v3, v2, v0

    .line 190
    nop

    .line 192
    const-string v0, "Inter-Bold"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 190
    nop

    .line 193
    const-string v0, "Inter-SemiBold"

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 190
    nop

    .line 194
    const-string v0, "Inter-Medium"

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 190
    nop

    .line 195
    const-string v0, "Inter-Regular"

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 190
    nop

    .line 196
    const-string v0, "Inter-Light"

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 190
    nop

    .line 197
    const-string v0, "Inter-ExtraLight"

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 190
    nop

    .line 198
    const-string v0, "Inter-Thin"

    const/16 v3, 0x8

    aput-object v0, v2, v3

    .line 190
    nop

    .line 189
    move-object v0, v2

    .line 201
    .local v0, "fonts":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 203
    .local v2, "assets":Landroid/content/res/AssetManager;
    move-object v3, v0

    .local v3, "$this$map$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 449
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 450
    .local v8, "$i$f$mapTo":I
    array-length v9, v7

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v7, v10

    .line 451
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "familyName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 204
    .local v13, "$i$a$-map-DevMenuManager$loadFonts$1":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".otf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    .line 205
    .local v14, "font":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v15

    invoke-virtual {v15, v12, v4, v14}, Lcom/facebook/react/views/text/ReactFontManager;->setTypeface(Ljava/lang/String;ILandroid/graphics/Typeface;)V

    .line 206
    nop

    .end local v12    # "familyName":Ljava/lang/String;
    .end local v13    # "$i$a$-map-DevMenuManager$loadFonts$1":I
    .end local v14    # "font":Landroid/graphics/Typeface;
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 451
    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 452
    :cond_1
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$mapTo":I
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    .line 449
    nop

    .line 207
    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$map":I
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 274
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 272
    return-void
.end method

.method public onHostResume()V
    .locals 3

    .line 260
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 262
    :cond_0
    sget-boolean v0, Lexpo/modules/devmenu/DevMenuManager;->shouldLaunchDevMenuOnStart:Z

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Lexpo/modules/devmenu/DevMenuManager;->shouldLaunchDevMenuOnStart:Z

    .line 264
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 265
    .local v1, "$i$a$-let-DevMenuManager$onHostResume$1":I
    new-instance v2, Lexpo/modules/devmenu/DevMenuManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lexpo/modules/devmenu/DevMenuManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    nop

    .line 264
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "$i$a$-let-DevMenuManager$onHostResume$1":I
    nop

    .line 270
    :cond_1
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 316
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-nez v4, :cond_3

    .line 317
    return v3

    .line 320
    :cond_3
    new-instance v4, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    .line 321
    nop

    .line 322
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    and-int/lit16 v5, v5, 0xc1

    if-lez v5, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v3

    .line 320
    :goto_3
    invoke-direct {v4, p1, v5}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;-><init>(IZ)V

    .line 325
    .local v4, "keyCommand":Lexpo/modules/devmenu/DevMenuManager$KeyCommand;
    new-instance v5, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    const/16 v6, 0x52

    const/4 v7, 0x2

    invoke-direct {v5, v6, v3, v7, v1}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 326
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 453
    .local v3, "it":Landroid/app/Activity;
    const/4 v5, 0x0

    .line 326
    .local v5, "$i$a$-let-DevMenuManager$onKeyEvent$1":I
    sget-object v6, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    check-cast v6, Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    invoke-static {v6, v3, v1, v7, v1}, Lexpo/interfaces/devmenu/DevMenuManagerInterface$DefaultImpls;->openMenu$default(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 327
    .end local v3    # "it":Landroid/app/Activity;
    .end local v5    # "$i$a$-let-DevMenuManager$onKeyEvent$1":I
    :cond_5
    return v2

    .line 330
    :cond_6
    sget-object v5, Lexpo/modules/devmenu/DevMenuManager;->preferences:Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;->getKeyCommandsEnabled()Z

    move-result v5

    if-ne v5, v2, :cond_7

    move v5, v2

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-nez v5, :cond_8

    .line 331
    return v3

    .line 334
    :cond_8
    nop

    .line 335
    new-instance v5, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    const/16 v6, 0x2e

    invoke-direct {v5, v6, v3, v7, v1}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v1, Lexpo/modules/devmenu/DevMenuManager$onKeyEvent$action$1;

    invoke-direct {v1, p0}, Lexpo/modules/devmenu/DevMenuManager$onKeyEvent$action$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    goto :goto_5

    .line 336
    :cond_9
    new-instance v5, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    const/16 v6, 0x2c

    invoke-direct {v5, v6, v3, v7, v1}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v1, Lexpo/modules/devmenu/DevMenuManager$onKeyEvent$action$2;

    invoke-direct {v1, p0}, Lexpo/modules/devmenu/DevMenuManager$onKeyEvent$action$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    goto :goto_5

    .line 337
    :cond_a
    new-instance v5, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;

    const/16 v6, 0x25

    invoke-direct {v5, v6, v3, v7, v1}, Lexpo/modules/devmenu/DevMenuManager$KeyCommand;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lexpo/modules/devmenu/DevMenuManager$onKeyEvent$action$3;

    invoke-direct {v1, p0}, Lexpo/modules/devmenu/DevMenuManager$onKeyEvent$action$3;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    .line 334
    :goto_5
    nop

    .line 341
    .local v1, "action":Lkotlin/reflect/KFunction;
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 342
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->closeMenu()V

    .line 343
    return v2

    .line 338
    .end local v1    # "action":Lkotlin/reflect/KFunction;
    :cond_b
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 307
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->threeFingerLongPressDetector:Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 308
    :cond_0
    return-void
.end method

.method public final openJSInspector()V
    .locals 2

    .line 369
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDevToolsDelegate()Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    move-result-object v0

    .line 371
    .local v0, "devToolsDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevInternalSettings$expo_dev_menu_debug()Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 372
    return-void

    .line 374
    :cond_1
    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->openJSInspector()V

    .line 375
    return-void
.end method

.method public openMenu(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Ljava/lang/String;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lexpo/modules/devmenu/DevMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public final reload()V
    .locals 1

    .line 347
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDevToolsDelegate()Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    move-result-object v0

    .line 348
    .local v0, "devToolsDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->reload()V

    .line 349
    :cond_0
    return-void
.end method

.method public sendEventToDelegateBridge(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/Object;

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    nop

    .line 414
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_0

    .line 414
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 415
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 416
    if-eqz v0, :cond_0

    .line 415
    nop

    .line 416
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 415
    :cond_0
    nop

    .line 417
    :goto_0
    return-void
.end method

.method public setCanLaunchDevMenuOnStart(Z)V
    .locals 0
    .param p1, "canLaunchDevMenuOnStart"    # Z

    .line 430
    sput-boolean p1, Lexpo/modules/devmenu/DevMenuManager;->canLaunchDevMenuOnStart:Z

    .line 431
    return-void
.end method

.method public final setCurrentManifest(Lexpo/modules/manifests/core/Manifest;)V
    .locals 0
    .param p1, "<set-?>"    # Lexpo/modules/manifests/core/Manifest;

    .line 60
    sput-object p1, Lexpo/modules/devmenu/DevMenuManager;->currentManifest:Lexpo/modules/manifests/core/Manifest;

    return-void
.end method

.method public final setCurrentManifestURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 61
    sput-object p1, Lexpo/modules/devmenu/DevMenuManager;->currentManifestURL:Ljava/lang/String;

    return-void
.end method

.method public setDelegate(Lexpo/interfaces/devmenu/DevMenuDelegateInterface;)V
    .locals 4
    .param p1, "newDelegate"    # Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    const-string v0, "newDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set new dev-menu delegate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpoDevMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 404
    :cond_0
    move-object v0, p1

    .local v0, "$this$setDelegate_u24lambda_u2412":Lexpo/interfaces/devmenu/DevMenuDelegateInterface;
    const/4 v1, 0x0

    .line 405
    .local v1, "$i$a$-apply-DevMenuManager$setDelegate$1":I
    sget-object v2, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v3

    invoke-direct {v2, v3}, Lexpo/modules/devmenu/DevMenuManager;->setUpReactInstance(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 406
    nop

    .line 404
    .end local v0    # "$this$setDelegate_u24lambda_u2412":Lexpo/interfaces/devmenu/DevMenuDelegateInterface;
    .end local v1    # "$i$a$-apply-DevMenuManager$setDelegate$1":I
    sput-object p1, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    .line 407
    return-void
.end method

.method public final setDelegate$expo_dev_menu_debug(Lexpo/interfaces/devmenu/DevMenuDelegateInterface;)V
    .locals 0
    .param p1, "<set-?>"    # Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    .line 53
    sput-object p1, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    return-void
.end method

.method public final setLaunchUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 62
    sput-object p1, Lexpo/modules/devmenu/DevMenuManager;->launchUrl:Ljava/lang/String;

    return-void
.end method

.method public final setRegisteredCallbacks(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/devmenu/DevMenuManager$Callback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sput-object p1, Lexpo/modules/devmenu/DevMenuManager;->registeredCallbacks:Ljava/util/List;

    return-void
.end method

.method public final setTestInterceptor(Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;)V
    .locals 1
    .param p1, "<set-?>"    # Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sput-object p1, Lexpo/modules/devmenu/DevMenuManager;->testInterceptor:Lexpo/modules/devmenu/tests/DevMenuTestInterceptor;

    return-void
.end method

.method public synchronizeDelegate()V
    .locals 2

    .line 434
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->delegate:Lexpo/interfaces/devmenu/DevMenuDelegateInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lexpo/interfaces/devmenu/DevMenuDelegateInterface;->reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    .line 435
    .local v0, "newReactInstance":Lexpo/interfaces/devmenu/ReactHostWrapper;
    sget-object v1, Lexpo/modules/devmenu/DevMenuManager;->currentReactInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-direct {p0, v0}, Lexpo/modules/devmenu/DevMenuManager;->setUpReactInstance(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 438
    :cond_0
    return-void

    .line 434
    .end local v0    # "newReactInstance":Lexpo/interfaces/devmenu/ReactHostWrapper;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toggleFastRefresh()V
    .locals 7

    .line 378
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDevToolsDelegate()Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    move-result-object v0

    .line 379
    .local v0, "devToolsDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevInternalSettings$expo_dev_menu_debug()Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 382
    .local v1, "internalSettings":Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->isHotModuleReplacementEnabled()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 383
    .local v2, "nextEnabled":Z
    invoke-virtual {v1, v2}, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->setHotModuleReplacementEnabled(Z)V

    .line 385
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    instance-of v6, v4, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v6, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/facebook/react/bridge/ReactApplicationContext;

    :cond_2
    move-object v4, v5

    .line 386
    .local v4, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    if-eqz v4, :cond_4

    .line 387
    if-eqz v2, :cond_3

    .line 388
    const-class v5, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v5}, Lcom/facebook/react/devsupport/HMRClient;->enable()V

    goto :goto_1

    .line 390
    :cond_3
    const-class v5, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v5}, Lcom/facebook/react/devsupport/HMRClient;->disable()V

    .line 393
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->isJSDevModeEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 394
    invoke-virtual {v1, v3}, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->setJSDevModeEnabled(Z)V

    .line 395
    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->reload()V

    .line 397
    :cond_5
    return-void

    .line 380
    .end local v1    # "internalSettings":Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;
    .end local v2    # "nextEnabled":Z
    .end local v4    # "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    :cond_6
    :goto_2
    return-void
.end method

.method public final toggleInspector()V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDevToolsDelegate()Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    move-result-object v0

    .line 360
    .local v0, "devToolsDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->toggleElementInspector()V

    .line 361
    :cond_0
    return-void
.end method

.method public toggleMenu(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->closeMenu()V

    goto :goto_0

    .line 302
    :cond_1
    move-object v0, p0

    check-cast v0, Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lexpo/interfaces/devmenu/DevMenuManagerInterface$DefaultImpls;->openMenu$default(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 304
    :goto_0
    return-void
.end method

.method public final togglePerformanceMonitor()V
    .locals 4

    .line 352
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDevToolsDelegate()Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    move-result-object v0

    .line 353
    .local v0, "devToolsDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDelegateActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "it":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 354
    .local v2, "$i$a$-let-DevMenuManager$togglePerformanceMonitor$1":I
    if-eqz v0, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->togglePerformanceMonitor(Landroid/content/Context;)V

    .line 353
    .end local v1    # "it":Landroid/app/Activity;
    .end local v2    # "$i$a$-let-DevMenuManager$togglePerformanceMonitor$1":I
    :cond_0
    nop

    .line 356
    return-void
.end method

.method public final toggleRemoteDebug()V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager;->getDevToolsDelegate()Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    move-result-object v0

    .line 365
    .local v0, "devToolsDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->toggleRemoteDebugging()V

    .line 366
    :cond_0
    return-void
.end method
