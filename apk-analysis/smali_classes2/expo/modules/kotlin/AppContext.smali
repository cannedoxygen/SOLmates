.class public final Lexpo/modules/kotlin/AppContext;
.super Ljava/lang/Object;
.source "AppContext.kt"

# interfaces
.implements Lexpo/modules/kotlin/providers/CurrentActivityProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppContext.kt\nexpo/modules/kotlin/AppContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 RuntimeContext.kt\nexpo/modules/kotlin/RuntimeContext\n+ 6 ModuleRegistry.kt\nexpo/modules/kotlin/ModuleRegistry\n+ 7 Utils.kt\nexpo/modules/kotlin/Utils\n*L\n1#1,364:1\n134#1,4:373\n134#1,4:377\n134#1,4:381\n134#1,4:385\n134#1,4:389\n134#1,4:393\n134#1,4:397\n134#1,4:401\n134#1,4:405\n134#1,4:411\n134#1,4:415\n1#2:365\n1#2:420\n14#3:366\n25#3:367\n14#3:421\n25#3:422\n27#4,5:368\n27#4,3:423\n31#4:427\n29#5:409\n29#5:410\n29#5:426\n29#5:428\n29#5:429\n29#5:437\n56#6:419\n10#7,7:430\n*S KotlinDebug\n*F\n+ 1 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n145#1:373,4\n151#1:377,4\n157#1:381,4\n177#1:385,4\n183#1:389,4\n189#1:393,4\n195#1:397,4\n201#1:401,4\n207#1:405,4\n225#1:411,4\n238#1:415,4\n244#1:420\n118#1:366\n118#1:367\n246#1:421\n246#1:422\n118#1:368,5\n246#1:423,3\n246#1:427\n213#1:409\n219#1:410\n247#1:426\n320#1:428\n325#1:429\n344#1:437\n244#1:419\n337#1:430,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\r\u0010m\u001a\u00020nH\u0000\u00a2\u0006\u0002\u0008oJ\u001b\u0010p\u001a\u00020n2\u000c\u0010q\u001a\u0008\u0012\u0004\u0012\u00020n0rH\u0000\u00a2\u0006\u0002\u0008sJ\u0010\u0010t\u001a\u0004\u0018\u00010!2\u0006\u0010u\u001a\u00020vJ\u000e\u0010w\u001a\u00020n2\u0006\u0010x\u001a\u00020yJ!\u0010z\u001a\u0004\u0018\u0001H{\"\u0008\u0008\u0000\u0010{*\u00020|2\u0006\u0010}\u001a\u00020~H\u0007\u00a2\u0006\u0002\u0010\u007fJ\u0007\u0010\u0080\u0001\u001a\u00020nJ\u001c\u0010\u0081\u0001\u001a\u0005\u0018\u0001H\u0082\u0001\"\u0007\u0008\u0000\u0010\u0082\u0001\u0018\u0001H\u0086\u0008\u00a2\u0006\u0003\u0010\u0083\u0001J6\u0010\u0084\u0001\u001a\u00020n2\u0007\u0010\u0085\u0001\u001a\u00020-2\u0007\u0010\u0086\u0001\u001a\u00020~2\u0007\u0010\u0087\u0001\u001a\u00020~2\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0000\u00a2\u0006\u0003\u0008\u008a\u0001J\u0007\u0010\u008b\u0001\u001a\u00020nJ\u000f\u0010\u008c\u0001\u001a\u00020nH\u0000\u00a2\u0006\u0003\u0008\u008d\u0001J\u000f\u0010\u008e\u0001\u001a\u00020nH\u0000\u00a2\u0006\u0003\u0008\u008f\u0001J\u000f\u0010\u0090\u0001\u001a\u00020nH\u0000\u00a2\u0006\u0003\u0008\u0091\u0001J\u000f\u0010\u0092\u0001\u001a\u00020nH\u0000\u00a2\u0006\u0003\u0008\u0093\u0001J\u001b\u0010\u0094\u0001\u001a\u00020n2\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0000\u00a2\u0006\u0003\u0008\u0096\u0001J\u000f\u0010\u0097\u0001\u001a\u00020nH\u0000\u00a2\u0006\u0003\u0008\u0098\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u0004\u0018\u00010!8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0013\u0010$\u001a\u0004\u0018\u00010%8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0013\u0010(\u001a\u0004\u0018\u00010)8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0016\u0010,\u001a\u0004\u0018\u00010-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0013\u00100\u001a\u0004\u0018\u0001018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0013\u00104\u001a\u0004\u0018\u0001058F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0013\u00108\u001a\u0004\u0018\u0001098F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0011\u0010<\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u000e\u0010@\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010A\u001a\u00020B\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010DR\u0013\u0010E\u001a\u0004\u0018\u00010F8F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010JR\"\u0010K\u001a\n\u0012\u0004\u0012\u00020L\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0011\u0010Q\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010\u001bR\u0011\u0010S\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010\u001bR\u000e\u0010U\u001a\u00020VX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010W\u001a\u0004\u0018\u00010X8F\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010ZR\u0011\u0010[\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010\u001fR\u0013\u0010]\u001a\u0004\u0018\u00010^8F\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`R\u000e\u0010a\u001a\u00020bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010c\u001a\u00020d8F\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010fR\u0013\u0010g\u001a\u0004\u0018\u00010h8F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010jR\u0011\u0010k\u001a\u00020-8F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010/\u00a8\u0006\u0099\u0001"
    }
    d2 = {
        "Lexpo/modules/kotlin/AppContext;",
        "Lexpo/modules/kotlin/providers/CurrentActivityProvider;",
        "modulesProvider",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "legacyModuleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V",
        "activityProvider",
        "Lexpo/modules/core/interfaces/ActivityProvider;",
        "getActivityProvider",
        "()Lexpo/modules/core/interfaces/ActivityProvider;",
        "activityResultsManager",
        "Lexpo/modules/kotlin/activityresult/ActivityResultsManager;",
        "appContextActivityResultCaller",
        "Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;",
        "getAppContextActivityResultCaller$expo_modules_core_debug",
        "()Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;",
        "appDirectories",
        "Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;",
        "getAppDirectories",
        "()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;",
        "backgroundCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getBackgroundCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "cacheDirectory",
        "Ljava/io/File;",
        "getCacheDirectory",
        "()Ljava/io/File;",
        "callbackInvoker",
        "Lexpo/modules/kotlin/events/EventEmitter;",
        "getCallbackInvoker$expo_modules_core_debug",
        "()Lexpo/modules/kotlin/events/EventEmitter;",
        "camera",
        "Lexpo/modules/interfaces/camera/CameraViewInterface;",
        "getCamera",
        "()Lexpo/modules/interfaces/camera/CameraViewInterface;",
        "constants",
        "Lexpo/modules/interfaces/constants/ConstantsInterface;",
        "getConstants",
        "()Lexpo/modules/interfaces/constants/ConstantsInterface;",
        "currentActivity",
        "Landroid/app/Activity;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "errorManager",
        "Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;",
        "getErrorManager",
        "()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;",
        "filePermission",
        "Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;",
        "getFilePermission",
        "()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;",
        "font",
        "Lexpo/modules/interfaces/font/FontManagerInterface;",
        "getFont",
        "()Lexpo/modules/interfaces/font/FontManagerInterface;",
        "hasActiveReactInstance",
        "",
        "getHasActiveReactInstance",
        "()Z",
        "hostWasDestroyed",
        "hostingRuntimeContext",
        "Lexpo/modules/kotlin/RuntimeContext;",
        "getHostingRuntimeContext",
        "()Lexpo/modules/kotlin/RuntimeContext;",
        "imageLoader",
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;",
        "getImageLoader",
        "()Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;",
        "getLegacyModuleRegistry",
        "()Lexpo/modules/core/ModuleRegistry;",
        "legacyModulesProxyHolder",
        "Lexpo/modules/adapters/react/NativeModulesProxy;",
        "getLegacyModulesProxyHolder$expo_modules_core_debug",
        "()Ljava/lang/ref/WeakReference;",
        "setLegacyModulesProxyHolder$expo_modules_core_debug",
        "(Ljava/lang/ref/WeakReference;)V",
        "mainQueue",
        "getMainQueue",
        "modulesQueue",
        "getModulesQueue",
        "modulesQueueDispatcher",
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "permissions",
        "Lexpo/modules/interfaces/permissions/Permissions;",
        "getPermissions",
        "()Lexpo/modules/interfaces/permissions/Permissions;",
        "persistentFilesDirectory",
        "getPersistentFilesDirectory",
        "reactContext",
        "Landroid/content/Context;",
        "getReactContext",
        "()Landroid/content/Context;",
        "reactLifecycleDelegate",
        "Lexpo/modules/kotlin/ReactLifecycleDelegate;",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "getRegistry",
        "()Lexpo/modules/kotlin/ModuleRegistry;",
        "taskManager",
        "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
        "getTaskManager",
        "()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
        "throwingActivity",
        "getThrowingActivity",
        "assertMainThread",
        "",
        "assertMainThread$expo_modules_core_debug",
        "dispatchOnMainUsingUIManager",
        "block",
        "Lkotlin/Function0;",
        "dispatchOnMainUsingUIManager$expo_modules_core_debug",
        "eventEmitter",
        "module",
        "Lexpo/modules/kotlin/modules/Module;",
        "executeOnJavaScriptThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "findView",
        "T",
        "Landroid/view/View;",
        "viewTag",
        "",
        "(I)Landroid/view/View;",
        "installJSIInterop",
        "legacyModule",
        "Module",
        "()Ljava/lang/Object;",
        "onActivityResult",
        "activity",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onActivityResult$expo_modules_core_debug",
        "onCreate",
        "onDestroy",
        "onDestroy$expo_modules_core_debug",
        "onHostDestroy",
        "onHostDestroy$expo_modules_core_debug",
        "onHostPause",
        "onHostPause$expo_modules_core_debug",
        "onHostResume",
        "onHostResume$expo_modules_core_debug",
        "onNewIntent",
        "intent",
        "onNewIntent$expo_modules_core_debug",
        "onUserLeaveHint",
        "onUserLeaveHint$expo_modules_core_debug",
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
.field private final activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

.field private final appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

.field private final backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private hostWasDestroyed:Z

.field private final hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

.field private final legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

.field private legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mainQueue:Lkotlinx/coroutines/CoroutineScope;

.field private final modulesQueue:Lkotlinx/coroutines/CoroutineScope;

.field private final modulesQueueDispatcher:Lkotlinx/coroutines/android/HandlerDispatcher;

.field private final reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;


# direct methods
.method public static synthetic $r8$lambda$cVeADq2DvA1DGrrixCVG0La1UhU(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/AppContext;->dispatchOnMainUsingUIManager$lambda$10(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V
    .locals 6
    .param p1, "modulesProvider"    # Lexpo/modules/kotlin/ModulesProvider;
    .param p2, "legacyModuleRegistry"    # Lexpo/modules/core/ModuleRegistry;
    .param p3, "reactContextHolder"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModulesProvider;",
            "Lexpo/modules/core/ModuleRegistry;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modulesProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyModuleRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lexpo/modules/kotlin/AppContext;->legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    .line 57
    new-instance v0, Lexpo/modules/kotlin/RuntimeContext;

    invoke-direct {v0, p0, p3}, Lexpo/modules/kotlin/RuntimeContext;-><init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .line 59
    new-instance v0, Lexpo/modules/kotlin/ReactLifecycleDelegate;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/ReactLifecycleDelegate;-><init>(Lexpo/modules/kotlin/AppContext;)V

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    .line 66
    nop

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "expo.modules.AsyncFunctionQueue"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    nop

    .line 365
    move-object v2, v0

    .local v2, "$this$modulesQueueDispatcher_u24lambda_u240":Landroid/os/HandlerThread;
    const/4 v3, 0x0

    .line 64
    .local v3, "$i$a$-apply-AppContext$modulesQueueDispatcher$1":I
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 65
    .end local v2    # "$this$modulesQueueDispatcher_u24lambda_u240":Landroid/os/HandlerThread;
    .end local v3    # "$i$a$-apply-AppContext$modulesQueueDispatcher$1":I
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 365
    nop

    .local v0, "it":Landroid/os/Looper;
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-let-AppContext$modulesQueueDispatcher$2":I
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .end local v0    # "it":Landroid/os/Looper;
    .end local v2    # "$i$a$-let-AppContext$modulesQueueDispatcher$2":I
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v3, v0, v2, v0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object v3

    iput-object v3, p0, Lexpo/modules/kotlin/AppContext;->modulesQueueDispatcher:Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 71
    nop

    .line 72
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    .line 73
    invoke-static {v0, v2, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 72
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 74
    new-instance v4, Lkotlinx/coroutines/CoroutineName;

    const-string v5, "expo.modules.BackgroundCoroutineScope"

    invoke-direct {v4, v5}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 72
    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    iput-object v3, p0, Lexpo/modules/kotlin/AppContext;->backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 80
    nop

    .line 81
    iget-object v3, p0, Lexpo/modules/kotlin/AppContext;->modulesQueueDispatcher:Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 82
    invoke-static {v0, v2, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 81
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/android/HandlerDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 83
    new-instance v4, Lkotlinx/coroutines/CoroutineName;

    invoke-direct {v4, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 81
    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/kotlin/AppContext;->modulesQueue:Lkotlinx/coroutines/CoroutineScope;

    .line 86
    nop

    .line 87
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    .line 88
    invoke-static {v0, v2, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 87
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 89
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "expo.modules.MainQueue"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 87
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->mainQueue:Lkotlinx/coroutines/CoroutineScope;

    .line 97
    new-instance v0, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/providers/CurrentActivityProvider;

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;-><init>(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    .line 98
    new-instance v0, Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;-><init>(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;)V

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    .line 100
    nop

    .line 101
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    .local v0, "$this$_init__u24lambda_u243":Lcom/facebook/react/bridge/ReactApplicationContext;
    const/4 v1, 0x0

    .line 104
    .local v1, "$i$a$-apply-AppContext$2":I
    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    check-cast v2, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 105
    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    check-cast v2, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 110
    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v2

    new-instance v3, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    invoke-direct {v3}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v2, v3}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;)V

    .line 111
    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v2

    new-instance v3, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;

    invoke-direct {v3}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;-><init>()V

    check-cast v3, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v2, v3}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;)V

    .line 112
    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v2

    invoke-virtual {v2, p1}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/ModulesProvider;)Lexpo/modules/kotlin/ModuleRegistry;

    .line 114
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v2

    const-string v3, "\u2705 AppContext was initialized"

    invoke-virtual {v2, v3}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 115
    nop

    .line 103
    .end local v0    # "$this$_init__u24lambda_u243":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local v1    # "$i$a$-apply-AppContext$2":I
    nop

    .line 116
    nop

    .line 49
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "$i$a$-requireNotNull-AppContext$1":I
    nop

    .line 101
    .end local v0    # "$i$a$-requireNotNull-AppContext$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The app context should be created with valid react context."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getReactLifecycleDelegate$p(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/ReactLifecycleDelegate;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/AppContext;

    .line 49
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    return-object v0
.end method

.method private static final dispatchOnMainUsingUIManager$lambda$10(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1
    .param p0, "$block"    # Lkotlin/jvm/functions/Function0;
    .param p1, "it"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    const-string v0, "$block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 333
    return-void
.end method

.method private final getAppDirectories()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;
    .locals 4

    .line 157
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 381
    .local v1, "$i$f$legacyModule":I
    nop

    .line 382
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v2

    .line 384
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 381
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    .line 157
    return-object v2
.end method


# virtual methods
.method public final assertMainThread$expo_modules_core_debug()V
    .locals 6

    .line 337
    sget-object v0, Lexpo/modules/kotlin/Utils;->INSTANCE:Lexpo/modules/kotlin/Utils;

    .local v0, "this_$iv":Lexpo/modules/kotlin/Utils;
    const/4 v1, 0x0

    .line 430
    .local v1, "$i$f$assertMainThread":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 436
    nop

    .line 338
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/Utils;
    .end local v1    # "$i$f$assertMainThread":I
    return-void

    .line 431
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/Utils;
    .restart local v1    # "$i$f$assertMainThread":I
    :cond_0
    new-instance v2, Lexpo/modules/kotlin/exception/Exceptions$IncorrectThreadException;

    .line 432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-direct {v2, v3, v5}, Lexpo/modules/kotlin/exception/Exceptions$IncorrectThreadException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public final dispatchOnMainUsingUIManager$expo_modules_core_debug(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .local v0, "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    const/4 v1, 0x0

    .line 429
    .local v1, "$i$f$getReactContext":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 325
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    .end local v1    # "$i$f$getReactContext":I
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 327
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 328
    nop

    .line 326
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.uimanager.UIManagerModule"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 331
    .local v1, "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    new-instance v2, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 334
    return-void

    .line 325
    .end local v0    # "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local v1    # "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method public final eventEmitter(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/events/EventEmitter;
    .locals 5
    .param p1, "module"    # Lexpo/modules/kotlin/modules/Module;

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 411
    .local v1, "$i$f$legacyModule":I
    nop

    .line 412
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v3

    const-class v4, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-virtual {v3, v4}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v3

    .line 414
    .local v3, "_$iv":Ljava/lang/Exception;
    move-object v3, v2

    .line 411
    .end local v3    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 225
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v3, Lexpo/modules/core/interfaces/services/EventEmitter;

    if-nez v3, :cond_0

    .line 226
    return-object v2

    .line 225
    :cond_0
    move-object v0, v3

    .line 227
    .local v0, "legacyEventEmitter":Lexpo/modules/core/interfaces/services/EventEmitter;
    nop

    .line 228
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v1}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    nop

    .line 232
    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 227
    new-instance v3, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;

    invoke-direct {v3, v1, v0, v2}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;-><init>(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V

    check-cast v3, Lexpo/modules/kotlin/events/EventEmitter;

    return-object v3

    .line 228
    :cond_1
    const/4 v1, 0x0

    .line 229
    .local v1, "$i$a$-requireNotNull-AppContext$eventEmitter$1":I
    nop

    .line 228
    .end local v1    # "$i$a$-requireNotNull-AppContext$eventEmitter$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create an event emitter for the module that isn\'t present in the module registry."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final executeOnJavaScriptThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .local v0, "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    const/4 v1, 0x0

    .line 437
    .local v1, "$i$f$getReactContext":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 344
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    .end local v1    # "$i$f$getReactContext":I
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    .line 345
    :cond_0
    return-void
.end method

.method public final findView(I)Landroid/view/View;
    .locals 4
    .param p1, "viewTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .local v0, "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    const/4 v1, 0x0

    .line 428
    .local v1, "$i$f$getReactContext":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 320
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    .end local v1    # "$i$f$getReactContext":I
    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    move-object v1, v2

    .line 321
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v2, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method public final getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;
    .locals 4

    .line 207
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 405
    .local v1, "$i$f$legacyModule":I
    nop

    .line 406
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/core/interfaces/ActivityProvider;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v2

    .line 408
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 405
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/core/interfaces/ActivityProvider;

    .line 207
    return-object v2
.end method

.method public final getAppContextActivityResultCaller$expo_modules_core_debug()Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;
    .locals 1

    .line 98
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    return-object v0
.end method

.method public final getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 71
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getCacheDirectory()Ljava/io/File;
    .locals 2

    .line 170
    invoke-direct {p0}, Lexpo/modules/kotlin/AppContext;->getAppDirectories()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/core/errors/ModuleNotFoundException;

    const-string v1, "expo.modules.interfaces.filesystem.AppDirectories"

    invoke-direct {v0, v1}, Lexpo/modules/core/errors/ModuleNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCallbackInvoker$expo_modules_core_debug()Lexpo/modules/kotlin/events/EventEmitter;
    .locals 5

    .line 238
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 415
    .local v1, "$i$f$legacyModule":I
    nop

    .line 416
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v3

    const-class v4, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-virtual {v3, v4}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v3

    .line 418
    .local v3, "_$iv":Ljava/lang/Exception;
    move-object v3, v2

    .line 415
    .end local v3    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 238
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v3, Lexpo/modules/core/interfaces/services/EventEmitter;

    if-nez v3, :cond_0

    .line 239
    return-object v2

    .line 238
    :cond_0
    move-object v0, v3

    .line 240
    .local v0, "legacyEventEmitter":Lexpo/modules/core/interfaces/services/EventEmitter;
    new-instance v1, Lexpo/modules/kotlin/events/KEventEmitterWrapper;

    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v2}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lexpo/modules/kotlin/events/KEventEmitterWrapper;-><init>(Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lexpo/modules/kotlin/events/EventEmitter;

    return-object v1
.end method

.method public final getCamera()Lexpo/modules/interfaces/camera/CameraViewInterface;
    .locals 4

    .line 189
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 393
    .local v1, "$i$f$legacyModule":I
    nop

    .line 394
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/camera/CameraViewInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 393
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/camera/CameraViewInterface;

    .line 189
    return-object v2
.end method

.method public final getConstants()Lexpo/modules/interfaces/constants/ConstantsInterface;
    .locals 4

    .line 145
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 373
    .local v1, "$i$f$legacyModule":I
    nop

    .line 374
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/constants/ConstantsInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v2

    .line 376
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 373
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/constants/ConstantsInterface;

    .line 145
    return-object v2
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 3

    .line 351
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 352
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 351
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    .locals 8

    .line 244
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    .local v0, "this_$iv":Lexpo/modules/kotlin/ModuleRegistry;
    const/4 v1, 0x0

    .line 419
    .local v1, "$i$f$getModule":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lexpo/modules/kotlin/ModuleHolder;

    .line 420
    .local v5, "it$iv":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v6, 0x0

    .line 419
    .local v6, "$i$a$-find-ModuleRegistry$getModule$1$iv":I
    invoke-virtual {v5}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v7

    if-eqz v7, :cond_1

    instance-of v7, v7, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    .end local v5    # "it$iv":Lexpo/modules/kotlin/ModuleHolder;
    .end local v6    # "$i$a$-find-ModuleRegistry$getModule$1$iv":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    check-cast v3, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    instance-of v3, v2, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    check-cast v4, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    .line 244
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/ModuleRegistry;
    .end local v1    # "$i$f$getModule":I
    return-object v4
.end method

.method public final getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;
    .locals 4

    .line 151
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 377
    .local v1, "$i$f$legacyModule":I
    nop

    .line 378
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v2

    .line 380
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 377
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    .line 151
    return-object v2
.end method

.method public final getFont()Lexpo/modules/interfaces/font/FontManagerInterface;
    .locals 4

    .line 195
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 397
    .local v1, "$i$f$legacyModule":I
    nop

    .line 398
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/font/FontManagerInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 397
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/font/FontManagerInterface;

    .line 195
    return-object v2
.end method

.method public final getHasActiveReactInstance()Z
    .locals 3

    .line 219
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .local v0, "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    const/4 v1, 0x0

    .line 410
    .local v1, "$i$f$getReactContext":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 219
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    .end local v1    # "$i$f$getReactContext":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;
    .locals 1

    .line 57
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    return-object v0
.end method

.method public final getImageLoader()Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;
    .locals 4

    .line 183
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 389
    .local v1, "$i$f$legacyModule":I
    nop

    .line 390
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 389
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    .line 183
    return-object v2
.end method

.method public final getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    return-object v0
.end method

.method public final getLegacyModulesProxyHolder$expo_modules_core_debug()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getMainQueue()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 86
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->mainQueue:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getModulesQueue()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 80
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->modulesQueue:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getPermissions()Lexpo/modules/interfaces/permissions/Permissions;
    .locals 4

    .line 177
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 385
    .local v1, "$i$f$legacyModule":I
    nop

    .line 386
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/permissions/Permissions;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 385
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/permissions/Permissions;

    .line 177
    return-object v2
.end method

.method public final getPersistentFilesDirectory()Ljava/io/File;
    .locals 2

    .line 163
    invoke-direct {p0}, Lexpo/modules/kotlin/AppContext;->getAppDirectories()Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/interfaces/filesystem/AppDirectoriesModuleInterface;->getPersistentFilesDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/core/errors/ModuleNotFoundException;

    const-string v1, "expo.modules.interfaces.filesystem.AppDirectories"

    invoke-direct {v0, v1}, Lexpo/modules/core/errors/ModuleNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getReactContext()Landroid/content/Context;
    .locals 3

    .line 213
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    .local v0, "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    const/4 v1, 0x0

    .line 409
    .local v1, "$i$f$getReactContext":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactApplicationContext;

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    .end local v1    # "$i$f$getReactContext":I
    check-cast v2, Landroid/content/Context;

    .line 213
    return-object v2
.end method

.method public final getRegistry()Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1

    .line 93
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    return-object v0
.end method

.method public final getTaskManager()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 4

    .line 201
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 401
    .local v1, "$i$f$legacyModule":I
    nop

    .line 402
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 401
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    .line 201
    return-object v2
.end method

.method public final getThrowingActivity()Landroid/app/Activity;
    .locals 3

    .line 357
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 358
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 357
    :cond_3
    :goto_1
    nop

    .line 359
    .local v0, "current":Landroid/app/Activity;
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;

    invoke-direct {v1}, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;-><init>()V

    throw v1
.end method

.method public final installJSIInterop()V
    .locals 1

    .line 127
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->installJSIContext()V

    .line 128
    return-void
.end method

.method public final synthetic legacyModule()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Module:",
            "Ljava/lang/Object;",
            ">()TModule;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    .local v0, "$i$f$legacyModule":I
    nop

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v1

    const-string v2, "Module"

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "_":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v1, v2

    .line 134
    .end local v1    # "_":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public final onActivityResult$expo_modules_core_debug(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    invoke-virtual {v0, p2, p3, p4}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    .line 300
    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 301
    nop

    .line 302
    new-instance v2, Lexpo/modules/kotlin/events/OnActivityResultPayload;

    .line 303
    nop

    .line 304
    nop

    .line 305
    nop

    .line 302
    invoke-direct {v2, p2, p3, p4}, Lexpo/modules/kotlin/events/OnActivityResultPayload;-><init>(IILandroid/content/Intent;)V

    .line 299
    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public final onCreate()V
    .locals 8

    .line 118
    const-string v0, "AppContext.onCreate"

    .local v0, "blockName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 366
    .local v1, "$i$f$trace":I
    const-string v2, "ExpoModulesCore"

    .local v2, "tag$iv$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 367
    .local v3, "$i$f$trace":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 368
    .local v5, "$i$f$trace":I
    invoke-static {v4}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 369
    nop

    .line 370
    const/4 v6, 0x0

    .line 119
    .local v6, "$i$a$-trace-AppContext$onCreate$1":I
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/ModuleRegistry;->postOnCreate()V

    .line 120
    nop

    .end local v6    # "$i$a$-trace-AppContext$onCreate$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    nop

    .line 372
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 370
    nop

    .line 367
    .end local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 366
    .end local v2    # "tag$iv$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    nop

    .line 120
    .end local v0    # "blockName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    return-void

    .line 372
    .restart local v0    # "blockName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "tag$iv$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    :catchall_0
    move-exception v6

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v6
.end method

.method public final onDestroy$expo_modules_core_debug()V
    .locals 11

    .line 246
    const-string v0, "AppContext.onDestroy"

    .local v0, "blockName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 421
    .local v1, "$i$f$trace":I
    const-string v2, "ExpoModulesCore"

    .local v2, "tag$iv$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 422
    .local v3, "$i$f$trace":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 423
    .local v5, "$i$f$trace":I
    invoke-static {v4}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 424
    nop

    .line 425
    const/4 v6, 0x0

    .line 247
    .local v6, "$i$a$-trace-AppContext$onDestroy$1":I
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v7

    .local v7, "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    const/4 v8, 0x0

    .line 426
    .local v8, "$i$f$getReactContext":I
    invoke-virtual {v7}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 247
    .end local v7    # "this_$iv":Lexpo/modules/kotlin/RuntimeContext;
    .end local v8    # "$i$f$getReactContext":I
    if-eqz v9, :cond_0

    invoke-static {p0}, Lexpo/modules/kotlin/AppContext;->access$getReactLifecycleDelegate$p(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/ReactLifecycleDelegate;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v9, v7}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v7

    sget-object v8, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v7, v8}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 249
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/ModuleRegistry;->cleanUp()V

    .line 250
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getModulesQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v8, Lexpo/modules/core/errors/ContextDestroyedException;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Ljava/util/concurrent/CancellationException;

    invoke-static {v7, v8}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 251
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v8, Lexpo/modules/core/errors/ContextDestroyedException;

    invoke-direct {v8, v10, v9, v10}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Ljava/util/concurrent/CancellationException;

    invoke-static {v7, v8}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 252
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v8, Lexpo/modules/core/errors/ContextDestroyedException;

    invoke-direct {v8, v10, v9, v10}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Ljava/util/concurrent/CancellationException;

    invoke-static {v7, v8}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 253
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/RuntimeContext;->deallocate()V

    .line 254
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v7

    const-string v8, "\u2705 AppContext was destroyed"

    invoke-virtual {v7, v8}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 255
    nop

    .end local v6    # "$i$a$-trace-AppContext$onDestroy$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    nop

    .line 427
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 425
    nop

    .line 422
    .end local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 421
    .end local v2    # "tag$iv$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    nop

    .line 255
    .end local v0    # "blockName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    return-void

    .line 427
    .restart local v0    # "blockName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "tag$iv$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    :catchall_0
    move-exception v6

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v6
.end method

.method public final onHostDestroy$expo_modules_core_debug()V
    .locals 6

    .line 284
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "it":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 285
    .local v1, "$i$a$-let-AppContext$onHostDestroy$1":I
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 286
    .local v2, "$i$a$-check-AppContext$onHostDestroy$1$1":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Activity is of incorrect class, expected AppCompatActivity, received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .end local v2    # "$i$a$-check-AppContext$onHostDestroy$1$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :cond_1
    iget-object v2, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2, v3}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onHostDestroy(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 290
    nop

    .line 284
    .end local v0    # "it":Landroid/app/Activity;
    .end local v1    # "$i$a$-let-AppContext$onHostDestroy$1":I
    nop

    .line 291
    :cond_2
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_DESTROYS:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    .line 295
    return-void
.end method

.method public final onHostPause$expo_modules_core_debug()V
    .locals 2

    .line 276
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 277
    return-void
.end method

.method public final onHostResume$expo_modules_core_debug()V
    .locals 5

    .line 260
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 262
    .local v1, "$i$a$-check-AppContext$onHostResume$1":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Activity is of incorrect class, expected AppCompatActivity, received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .end local v1    # "$i$a$-check-AppContext$onHostResume$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_2
    iget-boolean v1, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    if-eqz v1, :cond_3

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    .line 268
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v1}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleRegistry;->registerActivityContracts$expo_modules_core_debug()V

    .line 271
    :cond_3
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onHostResume(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 272
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v1}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v1

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 273
    return-void
.end method

.method public final onNewIntent$expo_modules_core_debug(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    .line 312
    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_NEW_INTENT:Lexpo/modules/kotlin/events/EventName;

    .line 313
    nop

    .line 311
    invoke-virtual {v0, v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public final onUserLeaveHint$expo_modules_core_debug()V
    .locals 2

    .line 280
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_USER_LEAVES_ACTIVITY:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 281
    return-void
.end method

.method public final setLegacyModulesProxyHolder$expo_modules_core_debug(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lexpo/modules/kotlin/AppContext;->legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method
