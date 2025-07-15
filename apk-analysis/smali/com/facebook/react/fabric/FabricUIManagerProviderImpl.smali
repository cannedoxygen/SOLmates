.class public Lcom/facebook/react/fabric/FabricUIManagerProviderImpl;
.super Ljava/lang/Object;
.source "FabricUIManagerProviderImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/UIManagerProvider;


# instance fields
.field private final mComponentFactory:Lcom/facebook/react/fabric/ComponentFactory;

.field private final mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method public constructor <init>(Lcom/facebook/react/fabric/ComponentFactory;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 0
    .param p1, "componentFactory"    # Lcom/facebook/react/fabric/ComponentFactory;
    .param p2, "config"    # Lcom/facebook/react/fabric/ReactNativeConfig;
    .param p3, "viewManagerRegistry"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManagerProviderImpl;->mComponentFactory:Lcom/facebook/react/fabric/ComponentFactory;

    .line 33
    iput-object p2, p0, Lcom/facebook/react/fabric/FabricUIManagerProviderImpl;->mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    .line 34
    iput-object p3, p0, Lcom/facebook/react/fabric/FabricUIManagerProviderImpl;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 35
    return-void
.end method


# virtual methods
.method public createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/UIManager;
    .locals 14
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 38
    const-string v0, "FabricUIManagerProviderImpl.create"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 40
    new-instance v0, Lcom/facebook/react/fabric/events/EventBeatManager;

    invoke-direct {v0}, Lcom/facebook/react/fabric/events/EventBeatManager;-><init>()V

    .line 41
    .local v0, "eventBeatManager":Lcom/facebook/react/fabric/events/EventBeatManager;
    const-string v3, "FabricUIManagerProviderImpl.createUIManager"

    invoke-static {v1, v2, v3}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 44
    new-instance v3, Lcom/facebook/react/fabric/FabricUIManager;

    iget-object v4, p0, Lcom/facebook/react/fabric/FabricUIManagerProviderImpl;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v3, p1, v4, v0}, Lcom/facebook/react/fabric/FabricUIManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V

    move-object v10, v3

    .line 46
    .local v10, "fabricUIManager":Lcom/facebook/react/fabric/FabricUIManager;
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 48
    const-string v3, "FabricUIManagerProviderImpl.registerBinding"

    invoke-static {v1, v2, v3}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 50
    new-instance v3, Lcom/facebook/react/fabric/BindingImpl;

    invoke-direct {v3}, Lcom/facebook/react/fabric/BindingImpl;-><init>()V

    .line 52
    .local v3, "binding":Lcom/facebook/react/fabric/Binding;
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v11

    .line 54
    .local v11, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    invoke-interface {v11}, Lcom/facebook/react/bridge/CatalystInstance;->getRuntimeExecutor()Lcom/facebook/react/bridge/RuntimeExecutor;

    move-result-object v12

    .line 55
    .local v12, "runtimeExecutor":Lcom/facebook/react/bridge/RuntimeExecutor;
    invoke-interface {v11}, Lcom/facebook/react/bridge/CatalystInstance;->getRuntimeScheduler()Lcom/facebook/react/bridge/RuntimeScheduler;

    move-result-object v13

    .line 57
    .local v13, "runtimeScheduler":Lcom/facebook/react/bridge/RuntimeScheduler;
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 58
    iget-object v8, p0, Lcom/facebook/react/fabric/FabricUIManagerProviderImpl;->mComponentFactory:Lcom/facebook/react/fabric/ComponentFactory;

    iget-object v9, p0, Lcom/facebook/react/fabric/FabricUIManagerProviderImpl;->mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    move-object v4, v12

    move-object v5, v13

    move-object v6, v10

    move-object v7, v0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/react/fabric/Binding;->register(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/bridge/RuntimeScheduler;Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/fabric/events/EventBeatManager;Lcom/facebook/react/fabric/ComponentFactory;Lcom/facebook/react/fabric/ReactNativeConfig;)V

    .line 71
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 72
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 74
    return-object v10

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to register FabricUIManager with CatalystInstance, runtimeExecutor and runtimeScheduler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
