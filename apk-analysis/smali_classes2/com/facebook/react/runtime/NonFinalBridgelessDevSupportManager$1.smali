.class Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;
.super Ljava/lang/Object;
.source "NonFinalBridgelessDevSupportManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;

.field final synthetic val$bundlePath:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;


# direct methods
.method public static synthetic $r8$lambda$JvoYI5j7c8XQ7iexZfC4-aqqbQ8(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->lambda$onSuccess$0(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->this$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;

    iput-object p2, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->val$bundlePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Void;
    .locals 3
    .param p1, "bundlePath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;
    .param p3, "task"    # Lcom/facebook/react/runtime/internal/bolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-virtual {p3}, Lcom/facebook/react/runtime/internal/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->this$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;

    .line 89
    invoke-virtual {v0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "bundleURL":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->this$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;

    invoke-static {v1}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->-$$Nest$fgetmReactHost(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;)Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/runtime/ReactHostImpl;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 91
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v1, :cond_0

    .line 92
    const-class v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v2, v0}, Lcom/facebook/react/devsupport/HMRClient;->registerBundle(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;->onSuccess()V

    .line 96
    .end local v0    # "bundleURL":Ljava/lang/String;
    .end local v1    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 102
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method public onSuccess(Lcom/facebook/react/bridge/JSBundleLoader;)V
    .locals 4
    .param p1, "bundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;

    .line 83
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->this$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;

    invoke-static {v0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->-$$Nest$fgetmReactHost(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;)Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lcom/facebook/react/runtime/ReactHostImpl;->loadBundle(Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->val$bundlePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    new-instance v3, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V

    .line 85
    invoke-virtual {v0, v3}, Lcom/facebook/react/runtime/internal/bolts/Task;->onSuccess(Lcom/facebook/react/runtime/internal/bolts/Continuation;)Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 98
    return-void
.end method
