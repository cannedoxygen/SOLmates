.class Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;
.super Ljava/lang/Object;
.source "NonFinalBridgelessDevSupportManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/ReactInstanceDevHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->createInstanceDevHelper(Lcom/facebook/react/runtime/ReactHostImpl;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private logBoxSurface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/runtime/ReactSurfaceImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$reactHost:Lcom/facebook/react/runtime/ReactHostImpl;


# direct methods
.method constructor <init>(Lcom/facebook/react/runtime/ReactHostImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->val$reactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->logBoxSurface:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public createRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "appKey"    # Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->val$reactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v1, p1}, Lcom/facebook/react/runtime/ReactHostImpl;->isSurfaceWithModuleNameAttached(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 167
    invoke-static {v0, p1, v1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->createWithView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/react/runtime/ReactSurfaceImpl;

    move-result-object v1

    .line 169
    .local v1, "reactSurface":Lcom/facebook/react/runtime/ReactSurfaceImpl;
    const-string v2, "LogBox"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->logBoxSurface:Ljava/lang/ref/WeakReference;

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->val$reactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v1, v2}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->attach(Lcom/facebook/react/runtime/ReactHostImpl;)V

    .line 174
    invoke-virtual {v1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->start()Lcom/facebook/react/interfaces/TaskInterface;

    .line 176
    invoke-virtual {v1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    return-object v2

    .line 178
    .end local v1    # "reactSurface":Lcom/facebook/react/runtime/ReactSurfaceImpl;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public destroyRootView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->logBoxSurface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/runtime/ReactSurfaceImpl;

    .line 188
    .local v0, "logBox":Lcom/facebook/react/runtime/ReactSurfaceImpl;
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->val$reactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v1, v0}, Lcom/facebook/react/runtime/ReactHostImpl;->detachSurface(Lcom/facebook/react/runtime/ReactSurfaceImpl;)V

    .line 190
    iget-object v1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->logBoxSurface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 192
    :cond_0
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->val$reactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->getLastUsedActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented for bridgeless mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onJSBundleLoadedFromServer()V
    .locals 0

    .line 138
    return-void
.end method

.method public onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 0
    .param p1, "proxyExecutorFactory"    # Lcom/facebook/react/bridge/JavaJSExecutor$Factory;

    .line 133
    return-void
.end method

.method public toggleElementInspector()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$2;->val$reactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 143
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v0, :cond_0

    .line 144
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 145
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 146
    const-string v2, "toggleElementInspector"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method
