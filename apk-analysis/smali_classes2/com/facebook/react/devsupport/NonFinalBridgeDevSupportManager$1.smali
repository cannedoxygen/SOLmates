.class Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;
.super Ljava/lang/Object;
.source "NonFinalBridgeDevSupportManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;

.field final synthetic val$bundlePath:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->this$0:Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;

    iput-object p2, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->val$bundlePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 145
    iget-object v0, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public onSuccess(Lcom/facebook/react/bridge/JSBundleLoader;)V
    .locals 3
    .param p1, "bundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;

    .line 136
    iget-object v0, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->this$0:Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getCurrentContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/JSBundleLoader;->loadScript(Lcom/facebook/react/bridge/JSBundleLoaderDelegate;)Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->this$0:Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getCurrentContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/devsupport/HMRClient;

    .line 138
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/HMRClient;

    iget-object v1, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->this$0:Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;

    .line 139
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager;->getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->val$bundlePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/HMRClient;->registerBundle(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/react/devsupport/NonFinalBridgeDevSupportManager$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;->onSuccess()V

    .line 141
    return-void
.end method
