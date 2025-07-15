.class public Lexpo/modules/adapters/react/ModuleRegistryAdapter;
.super Ljava/lang/Object;
.source "ModuleRegistryAdapter.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# instance fields
.field private mFabricComponentsRegistry:Lexpo/modules/adapters/react/FabricComponentsRegistry;

.field protected mModuleRegistryProvider:Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

.field protected mModulesProvider:Lexpo/modules/kotlin/ModulesProvider;

.field private mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

.field protected mReactAdapterPackage:Lexpo/modules/adapters/react/ReactAdapterPackage;

.field private mWrapperDelegateHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lexpo/modules/adapters/react/ReactModuleRegistryProvider;)V
    .locals 1
    .param p1, "moduleRegistryProvider"    # Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lexpo/modules/adapters/react/ReactAdapterPackage;

    invoke-direct {v0}, Lexpo/modules/adapters/react/ReactAdapterPackage;-><init>()V

    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mReactAdapterPackage:Lexpo/modules/adapters/react/ReactAdapterPackage;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mWrapperDelegateHolders:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mFabricComponentsRegistry:Lexpo/modules/adapters/react/FabricComponentsRegistry;

    .line 54
    iput-object p1, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModuleRegistryProvider:Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    .line 55
    return-void
.end method

.method public constructor <init>(Lexpo/modules/adapters/react/ReactModuleRegistryProvider;Lexpo/modules/kotlin/ModulesProvider;)V
    .locals 1
    .param p1, "moduleRegistryProvider"    # Lexpo/modules/adapters/react/ReactModuleRegistryProvider;
    .param p2, "modulesProvider"    # Lexpo/modules/kotlin/ModulesProvider;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lexpo/modules/adapters/react/ReactAdapterPackage;

    invoke-direct {v0}, Lexpo/modules/adapters/react/ReactAdapterPackage;-><init>()V

    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mReactAdapterPackage:Lexpo/modules/adapters/react/ReactAdapterPackage;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mWrapperDelegateHolders:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mFabricComponentsRegistry:Lexpo/modules/adapters/react/FabricComponentsRegistry;

    .line 58
    iput-object p1, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModuleRegistryProvider:Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    .line 59
    iput-object p2, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProvider:Lexpo/modules/kotlin/ModulesProvider;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Lexpo/modules/core/interfaces/Package;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lexpo/modules/adapters/react/ReactAdapterPackage;

    invoke-direct {v0}, Lexpo/modules/adapters/react/ReactAdapterPackage;-><init>()V

    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mReactAdapterPackage:Lexpo/modules/adapters/react/ReactAdapterPackage;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mWrapperDelegateHolders:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mFabricComponentsRegistry:Lexpo/modules/adapters/react/FabricComponentsRegistry;

    .line 50
    new-instance v1, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    invoke-direct {v1, p1, v0}, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModuleRegistryProvider:Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    .line 51
    return-void
.end method

.method private declared-synchronized getOrCreateNativeModulesProxy(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;)Lexpo/modules/adapters/react/NativeModulesProxy;
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "moduleRegistry"    # Lexpo/modules/core/ModuleRegistry;

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    invoke-virtual {v0}, Lexpo/modules/adapters/react/NativeModulesProxy;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->setModulesProxy(Lexpo/modules/adapters/react/NativeModulesProxy;)V

    .line 130
    .end local p0    # "this":Lexpo/modules/adapters/react/ModuleRegistryAdapter;
    :cond_0
    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    if-nez v0, :cond_3

    .line 131
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModuleRegistryProvider:Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    invoke-virtual {v0, p1}, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;->get(Landroid/content/Context;)Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    .line 132
    .local v0, "registry":Lexpo/modules/core/ModuleRegistry;
    :goto_0
    iget-object v2, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProvider:Lexpo/modules/kotlin/ModulesProvider;

    if-eqz v2, :cond_2

    .line 133
    new-instance v2, Lexpo/modules/adapters/react/NativeModulesProxy;

    iget-object v3, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProvider:Lexpo/modules/kotlin/ModulesProvider;

    invoke-direct {v2, p1, v0, v3}, Lexpo/modules/adapters/react/NativeModulesProxy;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;Lexpo/modules/kotlin/ModulesProvider;)V

    invoke-direct {p0, v2}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->setModulesProxy(Lexpo/modules/adapters/react/NativeModulesProxy;)V

    goto :goto_1

    .line 135
    :cond_2
    new-instance v2, Lexpo/modules/adapters/react/NativeModulesProxy;

    invoke-direct {v2, p1, v0}, Lexpo/modules/adapters/react/NativeModulesProxy;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;)V

    invoke-direct {p0, v2}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->setModulesProxy(Lexpo/modules/adapters/react/NativeModulesProxy;)V

    .line 139
    .end local v0    # "registry":Lexpo/modules/core/ModuleRegistry;
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    invoke-virtual {v0}, Lexpo/modules/adapters/react/NativeModulesProxy;->getModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    if-eq p2, v0, :cond_4

    .line 140
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v2, "\u274c NativeModuleProxy was configured with a different instance of the modules registry."

    invoke-virtual {v0, v2, v1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_4
    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 126
    .end local p1    # "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local p2    # "moduleRegistry":Lexpo/modules/core/ModuleRegistry;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setModulesProxy(Lexpo/modules/adapters/react/NativeModulesProxy;)V
    .locals 2
    .param p1, "newProxy"    # Lexpo/modules/adapters/react/NativeModulesProxy;

    .line 39
    iput-object p1, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    .line 40
    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    invoke-virtual {v0}, Lexpo/modules/adapters/react/NativeModulesProxy;->getKotlinInteropModuleRegistry()Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModulesProxy:Lexpo/modules/adapters/react/NativeModulesProxy;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->setLegacyModulesProxy(Lexpo/modules/adapters/react/NativeModulesProxy;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 5
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->getOrCreateNativeModulesProxy(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;)Lexpo/modules/adapters/react/NativeModulesProxy;

    move-result-object v1

    .line 65
    .local v1, "proxy":Lexpo/modules/adapters/react/NativeModulesProxy;
    invoke-virtual {v1}, Lexpo/modules/adapters/react/NativeModulesProxy;->getModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    .line 67
    .local v2, "moduleRegistry":Lexpo/modules/core/ModuleRegistry;
    iget-object v3, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mReactAdapterPackage:Lexpo/modules/adapters/react/ReactAdapterPackage;

    invoke-virtual {v3, p1}, Lexpo/modules/adapters/react/ReactAdapterPackage;->createInternalModules(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/core/interfaces/InternalModule;

    .line 68
    .local v4, "internalModule":Lexpo/modules/core/interfaces/InternalModule;
    invoke-virtual {v2, v4}, Lexpo/modules/core/ModuleRegistry;->registerInternalModule(Lexpo/modules/core/interfaces/InternalModule;)V

    .line 69
    .end local v4    # "internalModule":Lexpo/modules/core/interfaces/InternalModule;
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, p1, v2, v0}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->getNativeModulesFromModuleRegistry(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;Lexpo/modules/core/interfaces/Consumer;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "nativeModules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    iget-object v3, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mWrapperDelegateHolders:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {v1}, Lexpo/modules/adapters/react/NativeModulesProxy;->getKotlinInteropModuleRegistry()Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    move-result-object v3

    .line 74
    .local v3, "kotlinInteropModuleRegistry":Lexpo/modules/kotlin/KotlinInteropModuleRegistry;
    iget-object v4, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mWrapperDelegateHolders:Ljava/util/List;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->updateModuleHoldersInViewManagers(Ljava/util/List;)V

    .line 77
    .end local v3    # "kotlinInteropModuleRegistry":Lexpo/modules/kotlin/KotlinInteropModuleRegistry;
    :cond_1
    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 5
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mModuleRegistryProvider:Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    invoke-virtual {v1, p1}, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;->getReactViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v0, "viewManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->getOrCreateNativeModulesProxy(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;)Lexpo/modules/adapters/react/NativeModulesProxy;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/adapters/react/NativeModulesProxy;

    .line 110
    .local v1, "modulesProxy":Lexpo/modules/adapters/react/NativeModulesProxy;
    invoke-virtual {v1}, Lexpo/modules/adapters/react/NativeModulesProxy;->getKotlinInteropModuleRegistry()Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    move-result-object v2

    .line 111
    .local v2, "kotlinInteropModuleRegistry":Lexpo/modules/kotlin/KotlinInteropModuleRegistry;
    invoke-virtual {v2}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->exportViewManagers()Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "kViewManager":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager<**>;>;"
    invoke-virtual {v2, v3}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->extractViewManagersDelegateHolders(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->mWrapperDelegateHolders:Ljava/util/List;

    .line 114
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    return-object v0
.end method

.method protected getNativeModulesFromModuleRegistry(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;Lexpo/modules/core/interfaces/Consumer;)Ljava/util/List;
    .locals 6
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "moduleRegistry"    # Lexpo/modules/core/ModuleRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Lexpo/modules/core/ModuleRegistry;",
            "Lexpo/modules/core/interfaces/Consumer<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 85
    .local p3, "appContextConsumer":Lexpo/modules/core/interfaces/Consumer;, "Lexpo/modules/core/interfaces/Consumer<Lexpo/modules/kotlin/AppContext;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "nativeModulesList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    invoke-direct {p0, p1, p2}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->getOrCreateNativeModulesProxy(Lcom/facebook/react/bridge/ReactApplicationContext;Lexpo/modules/core/ModuleRegistry;)Lexpo/modules/adapters/react/NativeModulesProxy;

    move-result-object v1

    .line 87
    .local v1, "nativeModulesProxy":Lexpo/modules/adapters/react/NativeModulesProxy;
    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {v1}, Lexpo/modules/adapters/react/NativeModulesProxy;->getKotlinInteropModuleRegistry()Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    invoke-interface {p3, v2}, Lexpo/modules/core/interfaces/Consumer;->apply(Ljava/lang/Object;)V

    .line 90
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v2, Lexpo/modules/adapters/react/ModuleRegistryReadyNotifier;

    invoke-direct {v2, p2}, Lexpo/modules/adapters/react/ModuleRegistryReadyNotifier;-><init>(Lexpo/modules/core/ModuleRegistry;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-class v2, Lexpo/modules/adapters/react/ReactPackagesProvider;

    invoke-virtual {p2, v2}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/adapters/react/ReactPackagesProvider;

    .line 96
    .local v2, "reactPackagesProvider":Lexpo/modules/adapters/react/ReactPackagesProvider;
    invoke-virtual {v2}, Lexpo/modules/adapters/react/ReactPackagesProvider;->getReactPackages()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/ReactPackage;

    .line 97
    .local v4, "reactPackage":Lcom/facebook/react/ReactPackage;
    invoke-interface {v4, p1}, Lcom/facebook/react/ReactPackage;->createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .end local v4    # "reactPackage":Lcom/facebook/react/ReactPackage;
    goto :goto_0

    .line 100
    :cond_1
    new-instance v3, Lexpo/modules/kotlin/ExpoBridgeModule;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, p1, v4}, Lexpo/modules/kotlin/ExpoBridgeModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v0
.end method
