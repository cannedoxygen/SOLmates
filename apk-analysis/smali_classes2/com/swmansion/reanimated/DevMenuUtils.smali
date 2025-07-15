.class public Lcom/swmansion/reanimated/DevMenuUtils;
.super Ljava/lang/Object;
.source "DevMenuUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDevMenuOption(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
    .locals 3
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "handler"    # Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    .line 12
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/ReactApplication;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isBridgeless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    nop

    .line 16
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    .line 17
    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/facebook/react/ReactHost;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    .local v0, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    goto :goto_0

    .line 20
    .end local v0    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    nop

    .line 21
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    .line 22
    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    .line 27
    .restart local v0    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    const-string v1, "Toggle slow animations (Reanimated)"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    goto :goto_1

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "[Reanimated] DevSupportManager is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    .end local v0    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_2
    :goto_1
    return-void
.end method
