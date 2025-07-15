.class Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;
.super Ljava/lang/Object;
.source "ReactInstance.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/runtime/ReactInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BridgelessViewManagerResolver"
.end annotation


# instance fields
.field private final mBridgelessReactContext:Lcom/facebook/react/runtime/BridgelessReactContext;

.field private mEagerViewManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLazyViewManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/facebook/react/runtime/BridgelessReactContext;)V
    .locals 1
    .param p2, "context"    # Lcom/facebook/react/runtime/BridgelessReactContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;",
            "Lcom/facebook/react/runtime/BridgelessReactContext;",
            ")V"
        }
    .end annotation

    .line 552
    .local p1, "reactPackages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mLazyViewManagerMap:Ljava/util/Map;

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mEagerViewManagerMap:Ljava/util/Map;

    .line 553
    iput-object p1, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mReactPackages:Ljava/util/List;

    .line 554
    iput-object p2, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mBridgelessReactContext:Lcom/facebook/react/runtime/BridgelessReactContext;

    .line 555
    return-void
.end method

.method private getLazyViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 4
    .param p1, "viewManagerName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mLazyViewManagerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mLazyViewManagerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    return-object v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mReactPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/ReactPackage;

    .line 607
    .local v1, "reactPackage":Lcom/facebook/react/ReactPackage;
    instance-of v2, v1, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    if-eqz v2, :cond_1

    .line 608
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    iget-object v3, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mBridgelessReactContext:Lcom/facebook/react/runtime/BridgelessReactContext;

    .line 610
    invoke-interface {v2, v3, p1}, Lcom/facebook/react/ViewManagerOnDemandReactPackage;->createViewManager(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2

    .line 611
    .local v2, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v2, :cond_1

    .line 614
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mLazyViewManagerMap:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    return-object v2

    .line 618
    .end local v1    # "reactPackage":Lcom/facebook/react/ReactPackage;
    .end local v2    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_1
    goto :goto_0

    .line 620
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getEagerViewManagerMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mEagerViewManagerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mEagerViewManagerMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 582
    .end local p0    # "this":Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v0, "viewManagerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/uimanager/ViewManager;>;"
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mReactPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactPackage;

    .line 584
    .local v2, "reactPackage":Lcom/facebook/react/ReactPackage;
    instance-of v3, v2, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    if-eqz v3, :cond_1

    .line 585
    goto :goto_0

    .line 588
    :cond_1
    iget-object v3, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mBridgelessReactContext:Lcom/facebook/react/runtime/BridgelessReactContext;

    .line 589
    invoke-interface {v2, v3}, Lcom/facebook/react/ReactPackage;->createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v3

    .line 590
    .local v3, "viewManagersInPackage":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/uimanager/ViewManager;

    .line 593
    .local v5, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    nop

    .end local v5    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    goto :goto_1

    .line 595
    .end local v2    # "reactPackage":Lcom/facebook/react/ReactPackage;
    .end local v3    # "viewManagersInPackage":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    :cond_2
    goto :goto_0

    .line 597
    :cond_3
    iput-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mEagerViewManagerMap:Ljava/util/Map;

    .line 598
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mEagerViewManagerMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 577
    .end local v0    # "viewManagerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/uimanager/ViewManager;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getLazyViewManagerNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 624
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 625
    .local v0, "uniqueNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mReactPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactPackage;

    .line 626
    .local v2, "reactPackage":Lcom/facebook/react/ReactPackage;
    instance-of v3, v2, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    if-eqz v3, :cond_0

    .line 627
    move-object v3, v2

    check-cast v3, Lcom/facebook/react/ViewManagerOnDemandReactPackage;

    iget-object v4, p0, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->mBridgelessReactContext:Lcom/facebook/react/runtime/BridgelessReactContext;

    .line 629
    invoke-interface {v3, v4}, Lcom/facebook/react/ViewManagerOnDemandReactPackage;->getViewManagerNames(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Collection;

    move-result-object v3

    .line 630
    .local v3, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 631
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .end local v2    # "reactPackage":Lcom/facebook/react/ReactPackage;
    .end local v3    # "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;
    :cond_0
    goto :goto_0

    .line 635
    :cond_1
    monitor-exit p0

    return-object v0

    .line 623
    .end local v0    # "uniqueNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 2
    .param p1, "viewManagerName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 559
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->getLazyViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_0

    .line 561
    monitor-exit p0

    return-object v0

    .line 566
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->getEagerViewManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 558
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local p0    # "this":Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;
    .end local p1    # "viewManagerName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getViewManagerNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 571
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 572
    .local v0, "allViewManagerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->getLazyViewManagerNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 573
    invoke-virtual {p0}, Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;->getEagerViewManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-object v0

    .line 570
    .end local v0    # "allViewManagerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/facebook/react/runtime/ReactInstance$BridgelessViewManagerResolver;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
