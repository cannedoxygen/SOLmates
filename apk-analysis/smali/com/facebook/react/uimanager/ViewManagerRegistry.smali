.class public final Lcom/facebook/react/uimanager/ViewManagerRegistry;
.super Ljava/lang/Object;
.source "ViewManagerRegistry.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

.field private final mViewManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerResolver;)V
    .locals 1
    .param p1, "viewManagerResolver"    # Lcom/facebook/react/uimanager/ViewManagerResolver;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "viewManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 35
    .local v0, "viewManagerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/ViewManager;

    .line 36
    .local v2, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v2    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    goto :goto_0

    .line 39
    :cond_0
    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "viewManagerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    nop

    .line 45
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

    .line 47
    return-void
.end method

.method private getViewManagerFromResolver(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerResolver;->getViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 91
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$invalidate$1(Ljava/util/List;)V
    .locals 2
    .param p0, "viewManagers"    # Ljava/util/List;

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManager;

    .line 143
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewManager;->invalidate()V

    .line 144
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic lambda$onSurfaceStopped$0(Ljava/util/List;I)V
    .locals 2
    .param p0, "viewManagers"    # Ljava/util/List;
    .param p1, "surfaceId"    # I

    .line 123
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManager;

    .line 124
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ViewManager;->onSurfaceStopped(I)V

    .line 125
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_0

    .line 59
    monitor-exit p0

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "rctViewManagerName":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/ViewManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 65
    if-eqz v0, :cond_1

    .line 66
    monitor-exit p0

    return-object v0

    .line 68
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

    if-eqz v2, :cond_4

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->getViewManagerFromResolver(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 71
    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    .line 74
    :cond_2
    :try_start_3
    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->getViewManagerFromResolver(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    .line 75
    if-eqz v0, :cond_3

    monitor-exit p0

    return-object v0

    .line 77
    :cond_3
    :try_start_4
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewManagerResolver returned null for either "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", existing names are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

    .line 83
    invoke-interface {v4}, Lcom/facebook/react/uimanager/ViewManagerResolver;->getViewManagerNames()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local p0    # "this":Lcom/facebook/react/uimanager/ViewManagerRegistry;
    :cond_4
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ViewManager found for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v1    # "rctViewManagerName":Ljava/lang/String;
    .end local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method declared-synchronized getViewManagerIfExists(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_0

    .line 107
    monitor-exit p0

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagerResolver:Lcom/facebook/react/uimanager/ViewManagerResolver;

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->getViewManagerFromResolver(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 112
    .end local p0    # "this":Lcom/facebook/react/uimanager/ViewManagerRegistry;
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 104
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public invalidate()V
    .locals 3

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v0, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    new-instance v1, Lcom/facebook/react/uimanager/ViewManagerRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/ViewManagerRegistry$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 146
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 151
    :goto_0
    return-void

    .line 139
    .end local v0    # "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 178
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->onTrimMemory(I)V

    .line 184
    return-void
.end method

.method public onSurfaceStopped(I)V
    .locals 3
    .param p1, "surfaceId"    # I

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v0, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v1, Lcom/facebook/react/uimanager/ViewManagerRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    .line 127
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 132
    :goto_0
    return-void

    .line 120
    .end local v0    # "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagerRegistry;->mViewManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    .local v0, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    new-instance v1, Lcom/facebook/react/uimanager/ViewManagerRegistry$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/react/uimanager/ViewManagerRegistry$1;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Ljava/util/List;)V

    .line 169
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 174
    :goto_0
    return-void

    .line 159
    .end local v0    # "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
