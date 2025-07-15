.class public Lcom/swmansion/reanimated/ReanimatedModule;
.super Lcom/swmansion/reanimated/NativeReanimatedModuleSpec;
.source "ReanimatedModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/uimanager/UIManagerModuleListener;
.implements Lcom/facebook/react/bridge/UIManagerListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ReanimatedModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;
    }
.end annotation


# instance fields
.field private mNodesManager:Lcom/swmansion/reanimated/NodesManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$kWB81o0REDBuspaYrGLU7NaS8zw(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule;->lambda$willDispatchViewUpdates$1(Ljava/util/ArrayList;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uYjji1cSZxBc-lu6sFPyrwSSLLM(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule;->lambda$willDispatchViewUpdates$0(Ljava/util/ArrayList;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 66
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/NativeReanimatedModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method private synthetic lambda$willDispatchViewUpdates$0(Ljava/util/ArrayList;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 3
    .param p1, "operations"    # Ljava/util/ArrayList;
    .param p2, "uiBlockViewResolver"    # Lcom/facebook/react/fabric/interop/UIBlockViewResolver;

    .line 46
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    .line 47
    .local v0, "nodesManager":Lcom/swmansion/reanimated/NodesManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;

    .line 48
    .local v2, "operation":Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;
    invoke-interface {v2, v0}, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;->execute(Lcom/swmansion/reanimated/NodesManager;)V

    .line 49
    .end local v2    # "operation":Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method private synthetic lambda$willDispatchViewUpdates$1(Ljava/util/ArrayList;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 3
    .param p1, "operations"    # Ljava/util/ArrayList;
    .param p2, "nativeViewHierarchyManager"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 118
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    .line 119
    .local v0, "nodesManager":Lcom/swmansion/reanimated/NodesManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;

    .line 120
    .local v2, "operation":Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;
    invoke-interface {v2, v0}, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;->execute(Lcom/swmansion/reanimated/NodesManager;)V

    .line 121
    .end local v2    # "operation":Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;
    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .param p1, "ignoredEventName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 156
    return-void
.end method

.method public didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 24
    return-void
.end method

.method public didMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 28
    return-void
.end method

.method public didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 32
    return-void
.end method

.method public getNodesManager()Lcom/swmansion/reanimated/NodesManager;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/swmansion/reanimated/NodesManager;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 81
    .local v0, "reactCtx":Lcom/facebook/react/bridge/ReactApplicationContext;
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 82
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 83
    .local v1, "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    invoke-virtual {v1, p0}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIManagerListener(Lcom/facebook/react/uimanager/UIManagerModuleListener;)V

    .line 85
    .end local v1    # "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 86
    return-void
.end method

.method public installTurboModule(Ljava/lang/String;)Z
    .locals 4
    .param p1, "valueUnpackerCode"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 138
    nop

    .line 139
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptContextHolder;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    .line 142
    sget-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    if-nez v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/swmansion/reanimated/NodesManager;->initWithContext(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    .line 144
    return v1

    .line 146
    :cond_1
    const-string v0, "[REANIMATED]"

    const-string v1, "Unable to create Reanimated Native Module. You can ignore this message if you are using Chrome Debugger now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v2
.end method

.method public invalidate()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/swmansion/reanimated/NativeReanimatedModuleSpec;->invalidate()V

    .line 167
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->invalidate()V

    .line 170
    :cond_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 105
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->onHostPause()V

    .line 93
    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->onHostResume()V

    .line 100
    :cond_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ignoredCount"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 161
    return-void
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
    .locals 3
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 37
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 41
    .local v0, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 42
    instance-of v1, p1, Lcom/facebook/react/fabric/FabricUIManager;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/fabric/FabricUIManager;

    new-instance v2, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;)V

    .line 44
    invoke-virtual {v1, v2}, Lcom/facebook/react/fabric/FabricUIManager;->addUIBlock(Lcom/facebook/react/fabric/interop/UIBlock;)V

    .line 54
    return-void

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "[Reanimated] Failed to obtain instance of FabricUIManager."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 2
    .param p1, "uiManager"    # Lcom/facebook/react/uimanager/UIManagerModule;

    .line 111
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 115
    .local v0, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 116
    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda1;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 123
    return-void
.end method

.method public willMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 56
    return-void
.end method
