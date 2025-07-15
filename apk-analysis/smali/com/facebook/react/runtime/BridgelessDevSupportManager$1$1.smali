.class Lcom/facebook/react/runtime/BridgelessDevSupportManager$1$1;
.super Ljava/lang/Object;
.source "BridgelessDevSupportManager.java"

# interfaces
.implements Lcom/facebook/react/runtime/internal/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;->onSuccess(Lcom/facebook/react/bridge/JSBundleLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/runtime/internal/bolts/Continuation<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;


# direct methods
.method constructor <init>(Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;

    .line 72
    iput-object p1, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1$1;->this$1:Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1$1;->then(Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/runtime/internal/bolts/Task<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 75
    .local p1, "task":Lcom/facebook/react/runtime/internal/bolts/Task;, "Lcom/facebook/react/runtime/internal/bolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/facebook/react/runtime/internal/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1$1;->this$1:Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;

    iget-object v0, v0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;->this$0:Lcom/facebook/react/runtime/BridgelessDevSupportManager;

    .line 77
    invoke-virtual {v0}, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1$1;->this$1:Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;

    iget-object v1, v1, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;->val$bundlePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "bundleURL":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1$1;->this$1:Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;

    iget-object v1, v1, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;->this$0:Lcom/facebook/react/runtime/BridgelessDevSupportManager;

    invoke-static {v1}, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->-$$Nest$fgetmReactHost(Lcom/facebook/react/runtime/BridgelessDevSupportManager;)Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/runtime/ReactHostImpl;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 79
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v1, :cond_0

    .line 80
    const-class v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v2, v0}, Lcom/facebook/react/devsupport/HMRClient;->registerBundle(Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1$1;->this$1:Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;

    iget-object v2, v2, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;->val$callback:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;->onSuccess()V

    .line 84
    .end local v0    # "bundleURL":Ljava/lang/String;
    .end local v1    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
