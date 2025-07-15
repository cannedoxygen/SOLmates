.class public Lcom/facebook/react/uimanager/UIImplementation;
.super Ljava/lang/Object;
.source "UIImplementation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;
    }
.end annotation


# instance fields
.field protected final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mLastCalculateLayoutTime:J

.field protected mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

.field private final mMeasureBuffer:[I

.field private final mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

.field private final mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

.field protected final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field protected final mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

.field private final mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

.field private volatile mViewOperationsEnabled:Z

.field protected uiImplementationThreadLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p3, "operationsQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    .line 89
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 90
    iput-object p2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 91
    iput-object p3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 92
    new-instance v0, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ShadowNodeRegistry;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    .line 94
    iput-object p4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p3, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .param p4, "minTimeLeftInFrameForNonBatchedOperationMs"    # I

    .line 74
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue;

    new-instance v1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    invoke-direct {v0, p1, v1, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;I)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/UIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 82
    return-void
.end method

.method private assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 5
    .param p1, "node"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 883
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 885
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    instance-of v1, v0, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v1, :cond_2

    .line 886
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    .line 893
    .local v1, "viewManagerWithChildren":Lcom/facebook/react/uimanager/IViewManagerWithChildren;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to measure a view using measureLayout/measureLayoutRelativeToParent relative to an ancestor that requires custom layout for it\'s children ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 897
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Use measure instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
    :cond_1
    :goto_0
    return-void

    .line 888
    .end local v1    # "viewManagerWithChildren":Lcom/facebook/react/uimanager/IViewManagerWithChildren;
    :cond_2
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to use view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 890
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a parent, but its Manager doesn\'t extends ViewGroupManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkOrAssertViewExists(ILjava/lang/String;)Z
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "operationNameForExceptionMessage"    # Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 862
    .local v0, "viewExists":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 863
    return v1

    .line 866
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute operation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on view with tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", since the view does not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "message":Ljava/lang/String;
    sget-boolean v3, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-nez v3, :cond_2

    .line 877
    const-string v3, "ReactNative"

    invoke-static {v3, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return v2

    .line 875
    :cond_2
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    invoke-direct {v2, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private dispatchViewUpdatesIfNeeded()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V

    .line 629
    :cond_0
    return-void
.end method

.method private measureLayout(II[I)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "ancestorTag"    # I
    .param p3, "outputBuffer"    # [I

    .line 797
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 798
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 799
    .local v1, "ancestor":Lcom/facebook/react/uimanager/ReactShadowNode;
    const-string v2, "Tag "

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 804
    :cond_0
    if-eq v0, v1, :cond_2

    .line 805
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    .line 806
    .local v3, "currentParent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :goto_0
    if-eq v3, v1, :cond_2

    .line 807
    if-eqz v3, :cond_1

    .line 811
    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    goto :goto_0

    .line 808
    :cond_1
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is not an ancestor of tag "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    .end local v3    # "currentParent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_2
    invoke-direct {p0, v0, v1, p3}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V

    .line 816
    return-void

    .line 800
    :cond_3
    :goto_1
    new-instance v3, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 801
    if-nez v0, :cond_4

    move v4, p1

    goto :goto_2

    :cond_4
    move v4, p2

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does not exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private measureLayoutRelativeToParent(I[I)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "outputBuffer"    # [I

    .line 819
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 820
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v0, :cond_1

    .line 823
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 824
    .local v1, "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v1, :cond_0

    .line 828
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V

    .line 829
    return-void

    .line 825
    :cond_0
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have a parent!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    .end local v1    # "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No native view for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V
    .locals 4
    .param p1, "node"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "ancestor"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p3, "outputBuffer"    # [I

    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "offsetX":I
    const/4 v1, 0x0

    .line 835
    .local v1, "offsetY":I
    if-eq p1, p2, :cond_1

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_1

    .line 836
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 837
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 838
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    .line 839
    .local v2, "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    :goto_0
    if-eq v2, p2, :cond_0

    .line 840
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/UIImplementation;->assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 842
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 843
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 844
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    goto :goto_0

    .line 846
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/UIImplementation;->assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 849
    .end local v2    # "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    const/4 v2, 0x0

    aput v0, p3, v2

    .line 850
    const/4 v2, 0x1

    aput v1, p3, v2

    .line 851
    const/4 v2, 0x2

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenWidth()I

    move-result v3

    aput v3, p3, v2

    .line 852
    const/4 v2, 0x3

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenHeight()I

    move-result v3

    aput v3, p3, v2

    .line 853
    return-void
.end method

.method private notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 903
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    return-void

    .line 906
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 907
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/UIImplementation;->notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->onBeforeLayout(Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)V

    .line 910
    return-void
.end method

.method private removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2
    .param p1, "nodeToRemove"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 788
    invoke-static {p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleRemoveNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 789
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->removeNode(I)V

    .line 790
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 791
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 790
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 793
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->removeAndDisposeAllChildren()V

    .line 794
    return-void
.end method


# virtual methods
.method public addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 966
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 967
    return-void
.end method

.method protected applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FFLjava/util/List;)V
    .locals 5
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "absoluteX"    # F
    .param p3, "absoluteY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            "FF",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;)V"
        }
    .end annotation

    .line 938
    .local p4, "onLayoutNodes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ReactShadowNode;>;"
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    return-void

    .line 942
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispatchUpdatesWillChangeLayout(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->shouldNotifyOnLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    .line 944
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 945
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->calculateLayoutOnChildren()Ljava/lang/Iterable;

    move-result-object v0

    .line 949
    .local v0, "cssChildren":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/facebook/react/uimanager/ReactShadowNode;>;"
    if-eqz v0, :cond_2

    .line 950
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 951
    .local v2, "cssChild":Lcom/facebook/react/uimanager/ReactShadowNode;
    nop

    .line 953
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v3

    add-float/2addr v3, p2

    .line 954
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v4

    add-float/2addr v4, p3

    .line 951
    invoke-virtual {p0, v2, v3, v4, p4}, Lcom/facebook/react/uimanager/UIImplementation;->applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FFLjava/util/List;)V

    .line 956
    .end local v2    # "cssChild":Lcom/facebook/react/uimanager/ReactShadowNode;
    goto :goto_0

    .line 959
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-interface {p1, p2, p3, v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispatchUpdates(FFLcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)V

    .line 961
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdateSeen()V

    .line 962
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->onViewUpdatesCompleted(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 963
    return-void
.end method

.method protected calculateRootLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 9
    .param p1, "cssRoot"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 913
    const-string v0, "cssRoot.calculateLayout"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 914
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    const-string/jumbo v4, "rootTag"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 918
    .local v3, "startTime":J
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getWidthMeasureSpec()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 919
    .local v0, "widthSpec":I
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getHeightMeasureSpec()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 920
    .local v5, "heightSpec":I
    nop

    .line 921
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x7fc00000    # Float.NaN

    if-nez v6, :cond_0

    .line 922
    move v6, v7

    goto :goto_0

    .line 923
    :cond_0
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 924
    :goto_0
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-nez v8, :cond_1

    .line 925
    goto :goto_1

    .line 926
    :cond_1
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 920
    :goto_1
    invoke-interface {p1, v6, v7}, Lcom/facebook/react/uimanager/ReactShadowNode;->calculateLayout(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    .end local v0    # "widthSpec":I
    .end local v5    # "heightSpec":I
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    .line 930
    nop

    .line 931
    return-void

    .line 928
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    .line 930
    throw v0
.end method

.method public clearJSResponder()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueClearJSResponder()V

    .line 733
    return-void
.end method

.method public configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;

    .line 713
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueConfigureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    .line 714
    return-void
.end method

.method protected createRootShadowNode()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 3

    .line 98
    new-instance v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;-><init>()V

    .line 99
    .local v0, "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v1

    .line 100
    .local v1, "sharedI18nUtilInstance":Lcom/facebook/react/modules/i18nmanager/I18nUtil;
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    sget-object v2, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setLayoutDirection(Lcom/facebook/yoga/YogaDirection;)V

    .line 103
    :cond_0
    const-string v2, "Root"

    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setViewClassName(Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method protected createShadowNode(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 109
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewManager;->createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    return-object v1
.end method

.method public createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "rootViewTag"    # I
    .param p4, "props"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 244
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/UIImplementation;->createShadowNode(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 250
    .local v1, "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v2, p3}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    .line 251
    .local v2, "rootNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setReactTag(I)V

    .line 253
    invoke-interface {v1, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setViewClassName(Ljava/lang/String;)V

    .line 254
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setRootTag(I)V

    .line 255
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 257
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v3, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->addNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    if-eqz p4, :cond_1

    .line 261
    new-instance v4, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v4, p4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    move-object v3, v4

    .line 262
    invoke-interface {v1, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 265
    :cond_1
    invoke-virtual {p0, v1, p3, v3}, Lcom/facebook/react/uimanager/UIImplementation;->handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 266
    .end local v1    # "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v2    # "rootNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v3    # "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchViewManagerCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->checkOrAssertViewExists(ILjava/lang/String;)Z

    move-result v0

    .line 740
    .local v0, "viewExists":Z
    if-nez v0, :cond_0

    .line 741
    return-void

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueDispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    .line 745
    return-void
.end method

.method public dispatchViewManagerCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchViewManagerCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->checkOrAssertViewExists(ILjava/lang/String;)Z

    move-result v0

    .line 751
    .local v0, "viewExists":Z
    if-nez v0, :cond_0

    .line 752
    return-void

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueDispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 756
    return-void
.end method

.method public dispatchViewUpdates(I)V
    .locals 11
    .param p1, "batchId"    # I

    .line 606
    const-string v0, "UIImplementation.dispatchViewUpdates"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 608
    const-string v3, "batchId"

    invoke-virtual {v0, v3, p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 612
    .local v9, "commitStartTime":J
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIImplementation;->updateViewHierarchy()V

    .line 613
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->onBatchComplete()V

    .line 614
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-wide v7, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    move v4, p1

    move-wide v5, v9

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->dispatchViewUpdates(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 617
    nop

    .line 618
    return-void

    .line 616
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 617
    throw v0
.end method

.method public findSubviewIn(IFFLcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "targetX"    # F
    .param p3, "targetY"    # F
    .param p4, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 510
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueFindTargetForTouch(IFFLcom/facebook/react/bridge/Callback;)V

    .line 511
    return-void
.end method

.method public getProfiledBatchPerfCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getProfiledBatchPerfCounters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRootViewNum()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getNativeViewHierarchyManager()Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->getRootViewNum()I

    move-result v0

    return v0
.end method

.method getUIViewOperationQueue()Lcom/facebook/react/uimanager/UIViewOperationQueue;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    return-object v0
.end method

.method protected handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 2
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "rootViewTag"    # I
    .param p3, "styles"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 271
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 274
    :cond_0
    return-void
.end method

.method protected handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "styles"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 311
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 314
    :cond_0
    return-void
.end method

.method public manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 20
    .param p1, "viewTag"    # I
    .param p2, "moveFrom"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "moveTo"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p4, "addChildTags"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p5, "addAtIndices"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p6, "removeFrom"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 332
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    iget-boolean v0, v1, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    iget-object v8, v1, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v8

    .line 337
    :try_start_0
    iget-object v0, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 339
    .local v0, "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v9, 0x0

    if-nez v3, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    :goto_0
    move v15, v10

    .line 340
    .local v15, "numToMove":I
    if-nez v5, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    invoke-interface/range {p4 .. p4}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    :goto_1
    move v14, v10

    .line 341
    .local v14, "numToAdd":I
    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p6 .. p6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    :goto_2
    move v13, v9

    .line 343
    .local v13, "numToRemove":I
    if-eqz v15, :cond_5

    if-eqz v4, :cond_4

    invoke-interface/range {p3 .. p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    if-ne v15, v9, :cond_4

    goto :goto_3

    .line 344
    :cond_4
    new-instance v9, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v10, "Size of moveFrom != size of moveTo!"

    invoke-direct {v9, v10}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v9

    .line 347
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :cond_5
    :goto_3
    if-eqz v14, :cond_7

    if-eqz v6, :cond_6

    invoke-interface/range {p5 .. p5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    if-ne v14, v9, :cond_6

    goto :goto_4

    .line 348
    :cond_6
    new-instance v9, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v10, "Size of addChildTags != size of addAtIndices!"

    invoke-direct {v9, v10}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v9

    .line 352
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :cond_7
    :goto_4
    add-int v9, v15, v14

    new-array v9, v9, [Lcom/facebook/react/uimanager/ViewAtIndex;

    move-object v12, v9

    .line 353
    .local v12, "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    add-int v9, v15, v13

    new-array v9, v9, [I

    move-object v11, v9

    .line 354
    .local v11, "indicesToRemove":[I
    array-length v9, v11

    new-array v9, v9, [I

    move-object/from16 v16, v9

    .line 355
    .local v16, "tagsToRemove":[I
    new-array v9, v13, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v10, v9

    .line 357
    .local v10, "tagsToDelete":[I
    if-lez v15, :cond_8

    .line 358
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static/range {p3 .. p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    if-ge v9, v15, :cond_8

    .line 361
    invoke-interface {v3, v9}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v17

    move/from16 v18, v17

    .line 362
    .local v18, "moveFromIndex":I
    move/from16 v3, v18

    .end local v18    # "moveFromIndex":I
    .local v3, "moveFromIndex":I
    invoke-interface {v0, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v17

    move/from16 v18, v17

    .line 363
    .local v18, "tagToMove":I
    new-instance v1, Lcom/facebook/react/uimanager/ViewAtIndex;

    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    move/from16 v4, v18

    .end local v18    # "tagToMove":I
    .local v4, "tagToMove":I
    invoke-direct {v1, v4, v2}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v1, v12, v9

    .line 364
    aput v3, v11, v9

    .line 365
    aput v4, v16, v9

    .line 360
    .end local v3    # "moveFromIndex":I
    .end local v4    # "tagToMove":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_5

    .line 431
    .end local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v9    # "i":I
    .end local v10    # "tagsToDelete":[I
    .end local v11    # "indicesToRemove":[I
    .end local v12    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v13    # "numToRemove":I
    .end local v14    # "numToAdd":I
    .end local v15    # "numToMove":I
    .end local v16    # "tagsToRemove":[I
    :catchall_0
    move-exception v0

    :goto_6
    move-object/from16 v3, p0

    goto/16 :goto_c

    .line 369
    .restart local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local v10    # "tagsToDelete":[I
    .restart local v11    # "indicesToRemove":[I
    .restart local v12    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v13    # "numToRemove":I
    .restart local v14    # "numToAdd":I
    .restart local v15    # "numToMove":I
    .restart local v16    # "tagsToRemove":[I
    :cond_8
    if-lez v14, :cond_9

    .line 370
    invoke-static/range {p4 .. p4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static/range {p5 .. p5}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v14, :cond_9

    .line 373
    invoke-interface {v5, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 374
    .local v2, "viewTagToAdd":I
    invoke-interface {v6, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    .line 375
    .local v3, "indexToAddAt":I
    add-int v4, v15, v1

    new-instance v9, Lcom/facebook/react/uimanager/ViewAtIndex;

    invoke-direct {v9, v2, v3}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v9, v12, v4

    .line 372
    .end local v2    # "viewTagToAdd":I
    .end local v3    # "indexToAddAt":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 379
    .end local v1    # "i":I
    :cond_9
    if-lez v13, :cond_a

    .line 380
    invoke-static/range {p6 .. p6}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v13, :cond_a

    .line 382
    invoke-interface {v7, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 383
    .local v2, "indexToRemove":I
    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    .line 384
    .local v3, "tagToRemove":I
    add-int v4, v15, v1

    aput v2, v11, v4

    .line 385
    add-int v4, v15, v1

    aput v3, v16, v4

    .line 386
    aput v3, v10, v1

    .line 381
    .end local v2    # "indexToRemove":I
    .end local v3    # "tagToRemove":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 399
    .end local v1    # "i":I
    :cond_a
    sget-object v1, Lcom/facebook/react/uimanager/ViewAtIndex;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 400
    invoke-static {v11}, Ljava/util/Arrays;->sort([I)V

    .line 403
    const/4 v1, -0x1

    .line 404
    .local v1, "lastIndexRemoved":I
    array-length v2, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_c

    .line 405
    :try_start_2
    aget v3, v11, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 406
    .local v3, "indexToRemove":I
    if-eq v3, v1, :cond_b

    .line 410
    :try_start_3
    aget v4, v11, v2

    invoke-interface {v0, v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->removeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 412
    aget v4, v11, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v4

    .line 404
    .end local v3    # "indexToRemove":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 407
    .restart local v3    # "indexToRemove":I
    :cond_b
    :try_start_4
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    .end local v1    # "lastIndexRemoved":I
    .local v17, "lastIndexRemoved":I
    const-string v1, "Repeated indices in Removal list for view tag: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v9, p1

    :try_start_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v4

    .line 431
    .end local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v2    # "i":I
    .end local v3    # "indexToRemove":I
    .end local v10    # "tagsToDelete":[I
    .end local v11    # "indicesToRemove":[I
    .end local v12    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v13    # "numToRemove":I
    .end local v14    # "numToAdd":I
    .end local v15    # "numToMove":I
    .end local v16    # "tagsToRemove":[I
    .end local v17    # "lastIndexRemoved":I
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :catchall_1
    move-exception v0

    move/from16 v9, p1

    goto/16 :goto_6

    .line 404
    .restart local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local v1    # "lastIndexRemoved":I
    .restart local v2    # "i":I
    .restart local v10    # "tagsToDelete":[I
    .restart local v11    # "indicesToRemove":[I
    .restart local v12    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v13    # "numToRemove":I
    .restart local v14    # "numToAdd":I
    .restart local v15    # "numToMove":I
    .restart local v16    # "tagsToRemove":[I
    :cond_c
    move/from16 v9, p1

    move/from16 v17, v1

    .line 415
    .end local v1    # "lastIndexRemoved":I
    .end local v2    # "i":I
    .restart local v17    # "lastIndexRemoved":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v12

    if-ge v1, v2, :cond_e

    .line 416
    aget-object v2, v12, v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 417
    .local v2, "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    move-object/from16 v3, p0

    :try_start_6
    iget-object v4, v3, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    iget v5, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v4, v5}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v4

    .line 418
    .local v4, "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v4, :cond_d

    .line 422
    iget v5, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-interface {v0, v4, v5}, Lcom/facebook/react/uimanager/ReactShadowNode;->addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V

    .line 415
    .end local v2    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v4    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, p4

    goto :goto_a

    .line 419
    .restart local v2    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v4    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_d
    new-instance v5, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    move/from16 v18, v1

    .end local v1    # "i":I
    .local v18, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .local v19, "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    const-string v4, "Trying to add unknown view tag: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v5

    .line 415
    .end local v2    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v18    # "i":I
    .end local v19    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local v1    # "i":I
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :cond_e
    move-object/from16 v3, p0

    move/from16 v18, v1

    .line 425
    .end local v1    # "i":I
    iget-object v1, v3, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    move-object v9, v1

    move-object v1, v10

    .end local v10    # "tagsToDelete":[I
    .local v1, "tagsToDelete":[I
    move-object v10, v0

    move-object v2, v11

    .end local v11    # "indicesToRemove":[I
    .local v2, "indicesToRemove":[I
    move-object v4, v12

    .end local v12    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .local v4, "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    move-object/from16 v12, v16

    move v5, v13

    .end local v13    # "numToRemove":I
    .local v5, "numToRemove":I
    move-object v13, v4

    move/from16 v18, v14

    .end local v14    # "numToAdd":I
    .local v18, "numToAdd":I
    move-object v14, v1

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleManageChildren(Lcom/facebook/react/uimanager/ReactShadowNode;[I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V

    .line 428
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    array-length v10, v1

    if-ge v9, v10, :cond_f

    .line 429
    iget-object v10, v3, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    aget v11, v1, v9

    invoke-virtual {v10, v11}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 428
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 431
    .end local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v1    # "tagsToDelete":[I
    .end local v2    # "indicesToRemove":[I
    .end local v4    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v5    # "numToRemove":I
    .end local v9    # "i":I
    .end local v15    # "numToMove":I
    .end local v16    # "tagsToRemove":[I
    .end local v17    # "lastIndexRemoved":I
    .end local v18    # "numToAdd":I
    :cond_f
    monitor-exit v8

    .line 432
    return-void

    .line 431
    :catchall_2
    move-exception v0

    move-object v3, v1

    :goto_c
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_c
.end method

.method public measure(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 535
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 536
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueMeasure(ILcom/facebook/react/bridge/Callback;)V

    .line 544
    return-void
.end method

.method public measureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 552
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 553
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueMeasureInWindow(ILcom/facebook/react/bridge/Callback;)V

    .line 557
    return-void
.end method

.method public measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "ancestorTag"    # I
    .param p3, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "successCallback"    # Lcom/facebook/react/bridge/Callback;

    .line 567
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 568
    return-void

    .line 572
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayout(II[I)V

    .line 573
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    .line 574
    .local v0, "relativeX":F
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    .line 575
    .local v1, "relativeY":F
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 576
    .local v2, "width":F
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 577
    .local v3, "height":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v0    # "relativeX":F
    .end local v1    # "relativeY":F
    .end local v2    # "width":F
    .end local v3    # "height":F
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 581
    .end local v0    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :goto_0
    return-void
.end method

.method public measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "successCallback"    # Lcom/facebook/react/bridge/Callback;

    .line 588
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 589
    return-void

    .line 593
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToParent(I[I)V

    .line 594
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    .line 595
    .local v0, "relativeX":F
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    .line 596
    .local v1, "relativeY":F
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 597
    .local v2, "width":F
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 598
    .local v3, "height":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "relativeX":F
    .end local v1    # "relativeY":F
    .end local v2    # "width":F
    .end local v3    # "height":F
    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 602
    .end local v0    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :goto_0
    return-void
.end method

.method public onCatalystInstanceDestroyed()V
    .locals 1

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    .line 774
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->invalidate()V

    .line 775
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 770
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->pauseFrameCallback()V

    .line 768
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->resumeFrameCallback()V

    .line 764
    return-void
.end method

.method public prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 970
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 971
    return-void
.end method

.method public profileNextBatch()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->profileNextBatch()V

    .line 236
    return-void
.end method

.method public registerRootView(Landroid/view/View;ILcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3
    .param p2, "tag"    # I
    .param p3, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;I",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ")V"
        }
    .end annotation

    .line 151
    .local p1, "rootView":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIImplementation;->createRootShadowNode()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 153
    .local v1, "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    invoke-interface {v1, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setReactTag(I)V

    .line 154
    invoke-interface {v1, p3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 156
    new-instance v2, Lcom/facebook/react/uimanager/UIImplementation$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/react/uimanager/UIImplementation$1;-><init>(Lcom/facebook/react/uimanager/UIImplementation;Lcom/facebook/react/uimanager/ReactShadowNode;)V

    invoke-virtual {p3, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 165
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v2, p2, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->addRootView(ILandroid/view/View;)V

    .line 166
    .end local v1    # "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeLayoutUpdateListener()V
    .locals 1

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    .line 997
    return-void
.end method

.method public removeRootShadowNode(I)V
    .locals 2
    .param p1, "rootViewTag"    # I

    .line 186
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->removeRootNode(I)V

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRootView(I)V
    .locals 1
    .param p1, "rootViewTag"    # I

    .line 171
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeRootShadowNode(I)V

    .line 172
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueRemoveRootView(I)V

    .line 173
    return-void
.end method

.method protected final removeShadowNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 0
    .param p1, "nodeToRemove"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 783
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 784
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispose()V

    .line 785
    return-void
.end method

.method public replaceExistingNonRootView(II)V
    .locals 13
    .param p1, "oldTag"    # I
    .param p2, "newTag"    # I

    .line 466
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 471
    .local v0, "oldNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v0, :cond_2

    .line 475
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 476
    .local v1, "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v1, :cond_1

    .line 480
    invoke-interface {v1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->indexOf(Lcom/facebook/react/uimanager/ReactShadowNode;)I

    move-result v2

    .line 481
    .local v2, "oldIndex":I
    if-ltz v2, :cond_0

    .line 485
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v10

    .line 486
    .local v10, "tagsToAdd":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v10, p2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 488
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v11

    .line 489
    .local v11, "addAtIndices":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v11, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 491
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v12

    .line 492
    .local v12, "indicesToRemove":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v12, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 494
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 495
    return-void

    .line 482
    .end local v10    # "tagsToAdd":Lcom/facebook/react/bridge/WritableArray;
    .end local v11    # "addAtIndices":Lcom/facebook/react/bridge/WritableArray;
    .end local v12    # "indicesToRemove":Lcom/facebook/react/bridge/WritableArray;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Didn\'t find child tag in parent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 477
    .end local v2    # "oldIndex":I
    :cond_1
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node is not attached to a parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    .end local v1    # "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_2
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to replace unknown view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    .end local v0    # "oldNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_3
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v1, "Trying to add or replace a root tag!"

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveRootTagFromReactTag(I)I
    .locals 4
    .param p1, "reactTag"    # I

    .line 974
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    return p1

    .line 978
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 979
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v1, 0x0

    .line 980
    .local v1, "rootTag":I
    if-eqz v0, :cond_1

    .line 981
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getRootTag()I

    move-result v1

    goto :goto_0

    .line 983
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning : attempted to resolve a non-existent react shadow node. reactTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReactNative"

    invoke-static {v3, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :goto_0
    return v1
.end method

.method public final resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .param p1, "reactTag"    # I

    .line 113
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected final resolveViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->getViewManagerIfExists(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    return-object v0
.end method

.method public sendAccessibilityEvent(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "eventType"    # I

    .line 759
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSendAccessibilityEvent(II)V

    .line 760
    return-void
.end method

.method public setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "viewTag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 442
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 449
    .local v1, "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    .line 451
    .local v3, "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v3, :cond_1

    .line 455
    invoke-interface {v1, v3, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V

    .line 449
    .end local v3    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .restart local v3    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to add unknown view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 453
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "childrenTags":Lcom/facebook/react/bridge/ReadableArray;
    throw v4

    .line 458
    .end local v2    # "i":I
    .end local v3    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local p1    # "viewTag":I
    .restart local p2    # "childrenTags":Lcom/facebook/react/bridge/ReadableArray;
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v2, v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleSetChildren(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 459
    .end local v1    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setJSResponder(IZ)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "blockNativeResponder"    # Z

    .line 717
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 719
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 722
    return-void

    .line 725
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getNativeKind()Lcom/facebook/react/uimanager/NativeKind;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/uimanager/NativeKind;->NONE:Lcom/facebook/react/uimanager/NativeKind;

    if-ne v1, v2, :cond_1

    .line 726
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    goto :goto_0

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSetJSResponder(IIZ)V

    .line 729
    return-void
.end method

.method public setLayoutAnimationEnabledExperimental(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 697
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSetLayoutAnimationEnabled(Z)V

    .line 698
    return-void
.end method

.method public setLayoutUpdateListener(Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    .line 992
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    .line 993
    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    .line 779
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    .line 780
    return-void
.end method

.method public setViewLocalData(ILjava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 224
    .local v0, "shadowNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set local data for view with unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 229
    :cond_0
    invoke-interface {v0, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setLocalData(Ljava/lang/Object;)V

    .line 231
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdatesIfNeeded()V

    .line 232
    return-void
.end method

.method public synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 305
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 306
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getNativeViewHierarchyManager()Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateProperties(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 307
    return-void
.end method

.method public updateInsetsPadding(IIIII)V
    .locals 3
    .param p1, "nodeViewTag"    # I
    .param p2, "top"    # I
    .param p3, "left"    # I
    .param p4, "bottom"    # I
    .param p5, "right"    # I

    .line 208
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 209
    .local v0, "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to update size of non-existent tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void

    .line 213
    :cond_0
    const/4 v1, 0x4

    int-to-float v2, p3

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setPadding(IF)V

    .line 214
    const/4 v1, 0x1

    int-to-float v2, p2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setPadding(IF)V

    .line 215
    const/4 v1, 0x5

    int-to-float v2, p5

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setPadding(IF)V

    .line 216
    const/4 v1, 0x3

    int-to-float v2, p4

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setPadding(IF)V

    .line 218
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdatesIfNeeded()V

    .line 219
    return-void
.end method

.method public updateNodeSize(III)V
    .locals 3
    .param p1, "nodeViewTag"    # I
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .line 196
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 197
    .local v0, "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to update size of non-existent tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    .line 201
    :cond_0
    int-to-float v1, p2

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleWidth(F)V

    .line 202
    int-to-float v1, p3

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleHeight(F)V

    .line 204
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdatesIfNeeded()V

    .line 205
    return-void
.end method

.method public updateRootView(III)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 129
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 130
    .local v0, "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to update non-existent root tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateRootView(Lcom/facebook/react/uimanager/ReactShadowNode;II)V

    .line 135
    return-void
.end method

.method public updateRootView(Lcom/facebook/react/uimanager/ReactShadowNode;II)V
    .locals 0
    .param p1, "rootCSSNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 143
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setMeasureSpecs(II)V

    .line 144
    return-void
.end method

.method public updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 278
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewOperationsEnabled:Z

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 283
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_3

    .line 286
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 287
    .local v1, "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v1, :cond_2

    .line 291
    if-eqz p3, :cond_1

    .line 292
    new-instance v2, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v2, p3}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 293
    .local v2, "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 294
    invoke-virtual {p0, v1, p2, v2}, Lcom/facebook/react/uimanager/UIImplementation;->handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 296
    .end local v2    # "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    :cond_1
    return-void

    .line 288
    :cond_2
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to update non-existent view with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    .end local v1    # "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_3
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unknown view type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateViewHierarchy()V
    .locals 17

    .line 632
    move-object/from16 v1, p0

    const-string/jumbo v0, "rootTag"

    const-string v2, "UIImplementation.updateViewHierarchy"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 635
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v5, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v5}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getRootNodeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 636
    iget-object v5, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v5, v2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getRootTag(I)I

    move-result v5

    .line 637
    .local v5, "tag":I
    iget-object v6, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v6, v5}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v6

    .line 639
    .local v6, "cssRoot":Lcom/facebook/react/uimanager/ReactShadowNode;
    invoke-interface {v6}, Lcom/facebook/react/uimanager/ReactShadowNode;->getWidthMeasureSpec()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Lcom/facebook/react/uimanager/ReactShadowNode;->getHeightMeasureSpec()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 640
    const-string v7, "UIImplementation.notifyOnBeforeLayoutRecursive"

    invoke-static {v3, v4, v7}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    .line 643
    invoke-interface {v6}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    .line 644
    invoke-virtual {v7}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 646
    :try_start_1
    invoke-direct {v1, v6}, Lcom/facebook/react/uimanager/UIImplementation;->notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 648
    :try_start_2
    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 649
    nop

    .line 651
    invoke-virtual {v1, v6}, Lcom/facebook/react/uimanager/UIImplementation;->calculateRootLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 652
    const-string v7, "UIImplementation.applyUpdatesRecursive"

    invoke-static {v3, v4, v7}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    .line 654
    invoke-interface {v6}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    .line 655
    invoke-virtual {v7}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 657
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v7, "onLayoutNodes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ReactShadowNode;>;"
    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v8, v7}, Lcom/facebook/react/uimanager/UIImplementation;->applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FFLjava/util/List;)V

    .line 660
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 661
    .local v9, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v10, v1, Lcom/facebook/react/uimanager/UIImplementation;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 664
    invoke-interface {v9}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v12

    .line 665
    invoke-interface {v9}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenX()I

    move-result v13

    .line 666
    invoke-interface {v9}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenY()I

    move-result v14

    .line 667
    invoke-interface {v9}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenWidth()I

    move-result v15

    .line 668
    invoke-interface {v9}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenHeight()I

    move-result v16

    .line 662
    const/4 v11, -0x1

    invoke-static/range {v11 .. v16}, Lcom/facebook/react/uimanager/OnLayoutEvent;->obtain(IIIIII)Lcom/facebook/react/uimanager/OnLayoutEvent;

    move-result-object v11

    .line 661
    invoke-interface {v10, v11}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    .end local v9    # "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    goto :goto_1

    .line 672
    .end local v7    # "onLayoutNodes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ReactShadowNode;>;"
    :cond_0
    :try_start_4
    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 673
    nop

    .line 675
    iget-object v7, v1, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    if-eqz v7, :cond_1

    .line 676
    iget-object v7, v1, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-object v8, v1, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    invoke-virtual {v7, v6, v8}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueLayoutUpdateFinished(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V

    goto :goto_2

    .line 672
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 673
    throw v0

    .line 648
    :catchall_1
    move-exception v0

    move-object v7, v0

    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 649
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 635
    .end local v5    # "tag":I
    .end local v6    # "cssRoot":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 681
    .end local v2    # "i":I
    :cond_2
    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 682
    nop

    .line 683
    return-void

    .line 681
    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 682
    throw v0
.end method

.method public viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "ancestorReactTag"    # I
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 522
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 523
    .local v1, "ancestorNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isDescendantOf(Lcom/facebook/react/uimanager/ReactShadowNode;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 528
    return-void

    .line 524
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 525
    return-void
.end method
