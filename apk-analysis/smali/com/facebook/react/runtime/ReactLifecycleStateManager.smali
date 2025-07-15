.class Lcom/facebook/react/runtime/ReactLifecycleStateManager;
.super Ljava/lang/Object;
.source "ReactLifecycleStateManager.java"


# instance fields
.field private final mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

.field mState:Lcom/facebook/react/common/LifecycleState;


# direct methods
.method constructor <init>(Lcom/facebook/react/runtime/BridgelessReactStateTracker;)V
    .locals 1
    .param p1, "bridgelessReactStateTracker"    # Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    .line 25
    iput-object p1, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    .line 26
    return-void
.end method


# virtual methods
.method public getLifecycleState()Lcom/facebook/react/common/LifecycleState;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    return-object v0
.end method

.method public moveToOnHostDestroy(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3
    .param p1, "currentContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    const-string v2, "ReactContext.onHostDestroy()"

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    invoke-virtual {v0, v2}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->onHostDestroy()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    const-string v1, "ReactContext.onHostPause()"

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 83
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    invoke-virtual {v0, v2}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->onHostDestroy()V

    .line 88
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    .line 89
    return-void
.end method

.method public moveToOnHostPause(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;)V
    .locals 3
    .param p1, "currentContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 58
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    const-string v2, "ReactContext.onHostPause()"

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    const-string v1, "ReactContext.onHostResume()"

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactContext;->onHostResume(Landroid/app/Activity;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    invoke-virtual {v0, v2}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    invoke-virtual {v0, v2}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    .line 72
    return-void
.end method

.method public moveToOnHostResume(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;)V
    .locals 2
    .param p1, "currentContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 44
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    const-string v1, "ReactContext.onHostResume()"

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactContext;->onHostResume(Landroid/app/Activity;)V

    .line 52
    :cond_1
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    .line 53
    return-void
.end method

.method public resumeReactContextIfHostResumed(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;)V
    .locals 2
    .param p1, "currentContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 35
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactLifecycleStateManager;->mBridgelessReactStateTracker:Lcom/facebook/react/runtime/BridgelessReactStateTracker;

    const-string v1, "ReactContext.onHostResume()"

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/BridgelessReactStateTracker;->enterState(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactContext;->onHostResume(Landroid/app/Activity;)V

    .line 39
    :cond_0
    return-void
.end method
