.class public Lexpo/modules/core/ModuleRegistry;
.super Ljava/lang/Object;
.source "ModuleRegistry.java"


# instance fields
.field private final mExtraRegistryLifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/core/interfaces/RegistryLifecycleListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInternalModulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lexpo/modules/core/interfaces/InternalModule;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsInitialized:Z

.field private final mSingletonModulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/core/interfaces/SingletonModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lexpo/modules/core/interfaces/InternalModule;",
            ">;",
            "Ljava/util/Collection<",
            "Lexpo/modules/core/interfaces/SingletonModule;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "internalModules":Ljava/util/Collection;, "Ljava/util/Collection<Lexpo/modules/core/interfaces/InternalModule;>;"
    .local p2, "singletonModules":Ljava/util/Collection;, "Ljava/util/Collection<Lexpo/modules/core/interfaces/SingletonModule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lexpo/modules/core/ModuleRegistry;->mInternalModulesMap:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lexpo/modules/core/ModuleRegistry;->mSingletonModulesMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexpo/modules/core/ModuleRegistry;->mExtraRegistryLifecycleListeners:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexpo/modules/core/ModuleRegistry;->mIsInitialized:Z

    .line 23
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/core/interfaces/InternalModule;

    .line 24
    .local v1, "internalModule":Lexpo/modules/core/interfaces/InternalModule;
    invoke-virtual {p0, v1}, Lexpo/modules/core/ModuleRegistry;->registerInternalModule(Lexpo/modules/core/interfaces/InternalModule;)V

    .line 25
    .end local v1    # "internalModule":Lexpo/modules/core/interfaces/InternalModule;
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/core/interfaces/SingletonModule;

    .line 28
    .local v1, "singleton":Lexpo/modules/core/interfaces/SingletonModule;
    invoke-virtual {p0, v1}, Lexpo/modules/core/ModuleRegistry;->registerSingletonModule(Lexpo/modules/core/interfaces/SingletonModule;)V

    .line 29
    .end local v1    # "singleton":Lexpo/modules/core/interfaces/SingletonModule;
    goto :goto_1

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ensureIsInitialized()V
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lexpo/modules/core/ModuleRegistry;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lexpo/modules/core/ModuleRegistry;->initialize()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/core/ModuleRegistry;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local p0    # "this":Lexpo/modules/core/ModuleRegistry;
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getModule(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 40
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lexpo/modules/core/ModuleRegistry;->mInternalModulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSingletonModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "singletonName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    .local p2, "singletonClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lexpo/modules/core/ModuleRegistry;->mSingletonModulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lexpo/modules/core/ModuleRegistry;->mInternalModulesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v0, "lifecycleListeners":Ljava/util/List;, "Ljava/util/List<Lexpo/modules/core/interfaces/RegistryLifecycleListener;>;"
    iget-object v1, p0, Lexpo/modules/core/ModuleRegistry;->mExtraRegistryLifecycleListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 101
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/core/interfaces/RegistryLifecycleListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/core/interfaces/RegistryLifecycleListener;

    .line 102
    .local v3, "listener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    if-eqz v3, :cond_0

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/core/interfaces/RegistryLifecycleListener;>;"
    .end local v3    # "listener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/RegistryLifecycleListener;

    .line 108
    .local v2, "lifecycleListener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    invoke-interface {v2, p0}, Lexpo/modules/core/interfaces/RegistryLifecycleListener;->onCreate(Lexpo/modules/core/ModuleRegistry;)V

    .line 109
    .end local v2    # "lifecycleListener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    goto :goto_1

    .line 110
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lexpo/modules/core/ModuleRegistry;->mInternalModulesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v0, "lifecycleListeners":Ljava/util/List;, "Ljava/util/List<Lexpo/modules/core/interfaces/RegistryLifecycleListener;>;"
    iget-object v1, p0, Lexpo/modules/core/ModuleRegistry;->mExtraRegistryLifecycleListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 116
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/core/interfaces/RegistryLifecycleListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/core/interfaces/RegistryLifecycleListener;

    .line 117
    .local v3, "listener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/core/interfaces/RegistryLifecycleListener;>;"
    .end local v3    # "listener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/RegistryLifecycleListener;

    .line 123
    .local v2, "lifecycleListener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    invoke-interface {v2}, Lexpo/modules/core/interfaces/RegistryLifecycleListener;->onDestroy()V

    .line 124
    .end local v2    # "lifecycleListener":Lexpo/modules/core/interfaces/RegistryLifecycleListener;
    goto :goto_1

    .line 125
    :cond_2
    return-void
.end method

.method public registerExtraListener(Lexpo/modules/core/interfaces/RegistryLifecycleListener;)V
    .locals 2
    .param p1, "outerListener"    # Lexpo/modules/core/interfaces/RegistryLifecycleListener;

    .line 70
    iget-object v0, p0, Lexpo/modules/core/ModuleRegistry;->mExtraRegistryLifecycleListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public registerInternalModule(Lexpo/modules/core/interfaces/InternalModule;)V
    .locals 3
    .param p1, "module"    # Lexpo/modules/core/interfaces/InternalModule;

    .line 55
    invoke-interface {p1}, Lexpo/modules/core/interfaces/InternalModule;->getExportedInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 56
    .local v1, "exportedInterface":Ljava/lang/Class;
    iget-object v2, p0, Lexpo/modules/core/ModuleRegistry;->mInternalModulesMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v1    # "exportedInterface":Ljava/lang/Class;
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public registerSingletonModule(Lexpo/modules/core/interfaces/SingletonModule;)V
    .locals 2
    .param p1, "singleton"    # Lexpo/modules/core/interfaces/SingletonModule;

    .line 65
    invoke-interface {p1}, Lexpo/modules/core/interfaces/SingletonModule;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "singletonName":Ljava/lang/String;
    iget-object v1, p0, Lexpo/modules/core/ModuleRegistry;->mSingletonModulesMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public unregisterInternalModule(Ljava/lang/Class;)Lexpo/modules/core/interfaces/InternalModule;
    .locals 1
    .param p1, "exportedInterface"    # Ljava/lang/Class;

    .line 61
    iget-object v0, p0, Lexpo/modules/core/ModuleRegistry;->mInternalModulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/InternalModule;

    return-object v0
.end method
