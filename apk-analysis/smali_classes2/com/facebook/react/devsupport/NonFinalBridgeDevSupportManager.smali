.class public Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;
.super Lcom/facebook/react/devsupport/DevSupportManagerBase;
.source "NonFinalBridgeDevSupportManager.java"


# instance fields
.field private mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

.field private mIsSamplingProfilerEnabled:Z

.field private mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;


# direct methods
.method public static synthetic $r8$lambda$ItxnFtbtqsO4gMhYbyxuUzZDt8o(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->toggleJSSamplingProfiler()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZD2YI4_-3Kx8teMC_ALiJFyatvo(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->lambda$handleReloadJS$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$fYS71y6hGneUA9P1Y0vI8yTboJY(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;)Lcom/facebook/react/bridge/JavaJSExecutor;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->lambda$reloadJSInProxyMode$0()Lcom/facebook/react/bridge/JavaJSExecutor;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "reactInstanceManagerHelper"    # Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .param p3, "packagerPathForJSBundleName"    # Ljava/lang/String;
    .param p4, "enableOnCreate"    # Z
    .param p5, "redBoxHandler"    # Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;
    .param p6, "devBundleDownloadListener"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .param p7, "minNumShakes"    # I
    .param p9, "surfaceDelegateFactory"    # Lcom/facebook/react/common/SurfaceDelegateFactory;
    .param p10, "devLoadingViewManager"    # Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;
    .param p11, "pausedInDebuggerOverlayManager"    # Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/devsupport/ReactInstanceDevHelper;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
            "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;",
            "Lcom/facebook/react/common/SurfaceDelegateFactory;",
            "Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;",
            "Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;",
            ")V"
        }
    .end annotation

    .line 92
    .local p8, "customPackagerCommandHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/packagerconnection/RequestHandler;>;"
    invoke-direct/range {p0 .. p11}, Lcom/facebook/react/devsupport/DevSupportManagerBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->mIsSamplingProfilerEnabled:Z

    .line 105
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isStartSamplingProfilerOnInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->mIsSamplingProfilerEnabled:Z

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->toggleJSSamplingProfiler()V

    goto :goto_0

    .line 110
    :cond_0
    const-string v0, "JS Sampling Profiler was already running, so did not start the sampling profiler"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_1
    :goto_0
    sget v0, Lcom/facebook/react/R$string;->catalyst_sample_profiler_toggle:I

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;)V

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    .line 121
    return-void
.end method

.method private getExecutorConnectCallback(Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/common/futures/SimpleSettableFuture<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;"
        }
    .end annotation

    .line 152
    .local p1, "future":Lcom/facebook/react/common/futures/SimpleSettableFuture;, "Lcom/facebook/react/common/futures/SimpleSettableFuture<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$2;-><init>(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;Lcom/facebook/react/common/futures/SimpleSettableFuture;)V

    return-object v0
.end method

.method private synthetic lambda$handleReloadJS$1()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/devsupport/ReactInstanceDevHelper;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method private synthetic lambda$reloadJSInProxyMode$0()Lcom/facebook/react/bridge/JavaJSExecutor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;

    invoke-direct {v0}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;-><init>()V

    .line 179
    .local v0, "executor":Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;
    new-instance v1, Lcom/facebook/react/common/futures/SimpleSettableFuture;

    invoke-direct {v1}, Lcom/facebook/react/common/futures/SimpleSettableFuture;-><init>()V

    .line 180
    .local v1, "future":Lcom/facebook/react/common/futures/SimpleSettableFuture;, "Lcom/facebook/react/common/futures/SimpleSettableFuture<Ljava/lang/Boolean;>;"
    nop

    .line 181
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevServerHelper;->getWebsocketProxyURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getExecutorConnectCallback(Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;

    move-result-object v3

    .line 180
    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;->connect(Ljava/lang/String;Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;)V

    .line 184
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5a

    invoke-virtual {v1, v3, v4, v2}, Lcom/facebook/react/common/futures/SimpleSettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-object v0

    .line 188
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 187
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3
.end method

.method private reloadJSInProxyMode()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->launchJSDevtools()V

    .line 176
    new-instance v0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;)V

    .line 192
    .local v0, "factory":Lcom/facebook/react/bridge/JavaJSExecutor$Factory;
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    .line 193
    return-void
.end method

.method private toggleJSSamplingProfiler()V
    .locals 7

    .line 228
    nop

    .line 229
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v0

    .line 230
    .local v0, "javaScriptExecutorFactory":Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->mIsSamplingProfilerEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 232
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;->startSamplingProfiler()V

    .line 233
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "Starting Sampling Profiler"

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :goto_0
    iput-boolean v3, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->mIsSamplingProfilerEnabled:Z

    .line 243
    goto/16 :goto_3

    .line 242
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    nop

    .line 237
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support Sampling Profiler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 242
    :goto_1
    iput-boolean v3, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->mIsSamplingProfilerEnabled:Z

    .line 243
    throw v1

    .line 246
    :cond_0
    :try_start_2
    const-string v1, "sampling-profiler-trace"

    const-string v4, ".cpuprofile"

    .line 248
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 247
    invoke-static {v1, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "outputPath":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;->stopSamplingProfiler(Ljava/lang/String;)V

    .line 251
    nop

    .line 252
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved results from Profiler to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 255
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "outputPath":Ljava/lang/String;
    goto :goto_2

    .line 267
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 260
    :catch_1
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    nop

    .line 262
    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "does not support Sampling Profiler"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_2

    .line 256
    :catch_2
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ReactNative"

    const-string v4, "Could not create temporary file for saving results from Sampling Profiler"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    iput-boolean v2, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->mIsSamplingProfilerEnabled:Z

    .line 268
    nop

    .line 270
    :goto_3
    return-void

    .line 267
    :goto_4
    iput-boolean v2, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->mIsSamplingProfilerEnabled:Z

    .line 268
    throw v1
.end method


# virtual methods
.method protected getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "Bridge"

    return-object v0
.end method

.method public handleReloadJS()V
    .locals 3

    .line 198
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 200
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->RELOAD:Lcom/facebook/react/bridge/ReactMarkerConstants;

    .line 202
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->hideRedboxDialog()V

    .line 207
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    .line 209
    const-string v2, "RNCore: load from Proxy"

    invoke-interface {v0, v1, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->showDevLoadingViewForRemoteJSEnabled()V

    .line 211
    invoke-direct {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->reloadJSInProxyMode()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    .line 214
    const-string v2, "RNCore: load from Server"

    invoke-interface {v0, v1, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 215
    nop

    .line 216
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getJSAppBundleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "bundleURL":Ljava/lang/String;
    new-instance v1, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V

    .line 222
    .end local v0    # "bundleURL":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 1
    .param p1, "bundlePath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    .line 131
    new-instance v0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;-><init>(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    .line 148
    return-void
.end method
