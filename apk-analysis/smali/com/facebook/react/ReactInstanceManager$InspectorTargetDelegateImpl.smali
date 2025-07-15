.class Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/ReactInstanceManagerInspectorTarget$TargetDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/ReactInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InspectorTargetDelegateImpl"
.end annotation


# instance fields
.field private mReactInstanceManagerWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/ReactInstanceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aRJkGgZoycuhXmOtPRvTq4lyKDk(Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;->lambda$onReload$0()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 1
    .param p1, "inspectorTarget"    # Lcom/facebook/react/ReactInstanceManager;

    .line 1575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;->mReactInstanceManagerWeak:Ljava/lang/ref/WeakReference;

    .line 1577
    return-void
.end method

.method private synthetic lambda$onReload$0()V
    .locals 2

    .line 1591
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;->mReactInstanceManagerWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactInstanceManager;

    .line 1592
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    if-eqz v0, :cond_0

    .line 1593
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->-$$Nest$fgetmDevSupportManager(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    .line 1595
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1581
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;->mReactInstanceManagerWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactInstanceManager;

    .line 1584
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->-$$Nest$fgetmApplicationContext(Lcom/facebook/react/ReactInstanceManager;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1583
    :goto_0
    invoke-static {v1}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getInspectorHostMetadata(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public loadNetworkResource(Ljava/lang/String;Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;

    .line 1623
    invoke-static {p1, p2}, Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper;->loadNetworkResource(Ljava/lang/String;Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;)V

    .line 1624
    return-void
.end method

.method public onReload()V
    .locals 1

    .line 1589
    new-instance v0, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 1596
    return-void
.end method

.method public onSetPausedInDebuggerMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;->mReactInstanceManagerWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactInstanceManager;

    .line 1601
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    if-nez v0, :cond_0

    .line 1602
    return-void

    .line 1604
    :cond_0
    if-nez p1, :cond_1

    .line 1605
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->-$$Nest$fgetmDevSupportManager(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->hidePausedInDebuggerOverlay()V

    goto :goto_0

    .line 1607
    :cond_1
    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->-$$Nest$fgetmDevSupportManager(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl$1;-><init>(Lcom/facebook/react/ReactInstanceManager$InspectorTargetDelegateImpl;Lcom/facebook/react/ReactInstanceManager;)V

    invoke-interface {v1, p1, v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->showPausedInDebuggerOverlay(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;)V

    .line 1619
    :goto_0
    return-void
.end method
