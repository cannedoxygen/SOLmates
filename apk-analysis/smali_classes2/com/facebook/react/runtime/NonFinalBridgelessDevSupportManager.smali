.class public Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;
.super Lcom/facebook/react/devsupport/DevSupportManagerBase;
.source "NonFinalBridgelessDevSupportManager.java"


# instance fields
.field private final mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;


# direct methods
.method public static synthetic $r8$lambda$0p16IS1apiVJ8s8ff7aVCWZ2Kjg(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->lambda$handleReloadJS$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wcKbM7elBaTnBjT_Ovh0tJ0IAcI(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->lambda$handleReloadJS$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmReactHost(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;)Lcom/facebook/react/runtime/ReactHostImpl;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/runtime/ReactHostImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "host"    # Lcom/facebook/react/runtime/ReactHostImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packagerPathForJSBundleName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    nop

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->createInstanceDevHelper(Lcom/facebook/react/runtime/ReactHostImpl;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v2

    .line 55
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v11}, Lcom/facebook/react/devsupport/DevSupportManagerBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)V

    .line 67
    iput-object p1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    .line 68
    return-void
.end method

.method private static createInstanceDevHelper(Lcom/facebook/react/runtime/ReactHostImpl;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .locals 1
    .param p0, "reactHost"    # Lcom/facebook/react/runtime/ReactHostImpl;

    .line 127
    new-instance v0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;-><init>(Lcom/facebook/react/runtime/ReactHostImpl;)V

    return-object v0
.end method

.method private synthetic lambda$handleReloadJS$0()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/devsupport/ReactInstanceDevHelper;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method private synthetic lambda$handleReloadJS$1(Z)V
    .locals 2
    .param p1, "isMetroRunning"    # Z

    .line 117
    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->getJSAppBundleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "bundleURL":Ljava/lang/String;
    new-instance v1, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V

    .line 123
    .end local v0    # "bundleURL":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "Bridgeless"

    return-object v0
.end method

.method public handleReloadJS()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 112
    invoke-virtual {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->hideRedboxDialog()V

    .line 113
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    const-string v1, "BridgelessDevSupportManager.handleReloadJS()"

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/ReactHostImpl;->reload(Ljava/lang/String;)Lcom/facebook/react/interfaces/TaskInterface;

    .line 116
    new-instance v0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;)V

    invoke-virtual {p0, v0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    .line 124
    return-void
.end method

.method public loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 1
    .param p1, "bundlePath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    .line 78
    new-instance v0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;-><init>(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    .line 105
    return-void
.end method
