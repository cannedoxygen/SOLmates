.class public Lcom/facebook/react/animated/NativeAnimatedNodesManager;
.super Ljava/lang/Object;
.source "NativeAnimatedNodesManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/EventDispatcherListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeAnimatedNodesManager"


# instance fields
.field private final mActiveAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/animated/AnimationDriver;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedGraphBFSColor:I

.field private final mAnimatedNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventDrivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/EventAnimationDriver;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListenerInitializedForFabric:Z

.field private mEventListenerInitializedForNonFabric:Z

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mRunUpdateNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private mWarnedAboutGraphTraversal:Z


# direct methods
.method static bridge synthetic -$$Nest$mhandleEvent(Lcom/facebook/react/animated/NativeAnimatedNodesManager;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->handleEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 68
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    .line 70
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    .line 71
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForNonFabric:Z

    .line 73
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    .line 76
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 77
    return-void
.end method

.method private handleEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 7
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .line 594
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 598
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v0, :cond_0

    .line 599
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 604
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getSurfaceId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(II)I

    move-result v1

    .line 602
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 605
    .local v0, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-nez v0, :cond_1

    .line 606
    return-void

    .line 609
    :cond_1
    const/4 v1, 0x0

    .line 610
    .local v1, "foundAtLeastOneDriver":Z
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventAnimationDriverMatchSpec()Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

    move-result-object v2

    .line 611
    .local v2, "matchSpec":Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/animated/EventAnimationDriver;

    .line 612
    .local v4, "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    iget v5, v4, Lcom/facebook/react/animated/EventAnimationDriver;->viewTag:I

    iget-object v6, v4, Lcom/facebook/react/animated/EventAnimationDriver;->eventName:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;->match(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 613
    const/4 v1, 0x1

    .line 614
    iget-object v5, v4, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {p0, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 615
    invoke-virtual {p1, v4}, Lcom/facebook/react/uimanager/events/Event;->dispatchModern(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V

    .line 616
    iget-object v5, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    iget-object v6, v4, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v4    # "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    :cond_2
    goto :goto_0

    .line 620
    :cond_3
    if-eqz v1, :cond_4

    .line 621
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->updateNodes(Ljava/util/List;)V

    .line 622
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 625
    .end local v0    # "uiManager":Lcom/facebook/react/bridge/UIManager;
    .end local v1    # "foundAtLeastOneDriver":Z
    .end local v2    # "matchSpec":Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;
    :cond_4
    return-void
.end method

.method private normalizeEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "eventHandlerName"    # Ljava/lang/String;

    .line 877
    move-object v0, p1

    .line 878
    .local v0, "eventName":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    :cond_0
    return-object v0
.end method

.method private stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 9
    .param p1, "animatedNode"    # Lcom/facebook/react/animated/AnimatedNode;

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "events":Lcom/facebook/react/bridge/WritableArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 303
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimationDriver;

    .line 304
    .local v2, "animation":Lcom/facebook/react/animated/AnimationDriver;
    iget-object v3, v2, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    iget-object v3, v2, Lcom/facebook/react/animated/AnimationDriver;->endCallback:Lcom/facebook/react/bridge/Callback;

    const-string/jumbo v4, "value"

    const/4 v5, 0x0

    const-string v6, "finished"

    if-eqz v3, :cond_0

    .line 307
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 308
    .local v3, "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    invoke-interface {v3, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    iget-object v5, v2, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v5, v5, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 310
    iget-object v4, v2, Lcom/facebook/react/animated/AnimationDriver;->endCallback:Lcom/facebook/react/bridge/Callback;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .end local v3    # "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_1

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v3, :cond_2

    .line 315
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 316
    .local v3, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v7, "animationId"

    iget v8, v2, Lcom/facebook/react/animated/AnimationDriver;->id:I

    invoke-interface {v3, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 317
    invoke-interface {v3, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    iget-object v5, v2, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v5, v5, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 319
    if-nez v0, :cond_1

    .line 320
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 322
    :cond_1
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 311
    .end local v3    # "params":Lcom/facebook/react/bridge/WritableMap;
    :cond_2
    :goto_1
    nop

    .line 324
    :goto_2
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 325
    add-int/lit8 v1, v1, -0x1

    .line 302
    .end local v2    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 329
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string/jumbo v2, "onNativeAnimatedModuleAnimationFinished"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    :cond_5
    return-void
.end method

.method private updateNodes(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/animated/AnimatedNode;>;"
    const/4 v0, 0x0

    .line 724
    .local v0, "activeNodesCount":I
    const/4 v1, 0x0

    .line 731
    .local v1, "updatedNodesCount":I
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 732
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-nez v2, :cond_0

    .line 735
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 738
    :cond_0
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 739
    .local v2, "nodesQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/facebook/react/animated/AnimatedNode;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/AnimatedNode;

    .line 740
    .local v5, "node":Lcom/facebook/react/animated/AnimatedNode;
    iget v6, v5, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    iget v7, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v6, v7, :cond_1

    .line 741
    iget v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v6, v5, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    .line 742
    add-int/lit8 v0, v0, 0x1

    .line 743
    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 745
    .end local v5    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    goto :goto_0

    .line 747
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 748
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/animated/AnimatedNode;

    .line 749
    .local v4, "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    iget-object v5, v4, Lcom/facebook/react/animated/AnimatedNode;->children:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 750
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v6, v4, Lcom/facebook/react/animated/AnimatedNode;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 751
    iget-object v6, v4, Lcom/facebook/react/animated/AnimatedNode;->children:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/animated/AnimatedNode;

    .line 752
    .local v6, "child":Lcom/facebook/react/animated/AnimatedNode;
    iget v7, v6, Lcom/facebook/react/animated/AnimatedNode;->activeIncomingNodes:I

    add-int/2addr v7, v3

    iput v7, v6, Lcom/facebook/react/animated/AnimatedNode;->activeIncomingNodes:I

    .line 753
    iget v7, v6, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    iget v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v7, v8, :cond_3

    .line 754
    iget v7, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v7, v6, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    .line 755
    add-int/lit8 v0, v0, 0x1

    .line 756
    invoke-interface {v2, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v6    # "child":Lcom/facebook/react/animated/AnimatedNode;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 760
    .end local v4    # "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    .end local v5    # "i":I
    :cond_4
    goto :goto_1

    .line 770
    :cond_5
    iget v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 771
    iget v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-nez v4, :cond_6

    .line 773
    iget v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 778
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/AnimatedNode;

    .line 779
    .local v5, "node":Lcom/facebook/react/animated/AnimatedNode;
    iget v6, v5, Lcom/facebook/react/animated/AnimatedNode;->activeIncomingNodes:I

    if-nez v6, :cond_7

    iget v6, v5, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    iget v7, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v6, v7, :cond_7

    .line 780
    iget v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v6, v5, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    .line 781
    add-int/lit8 v1, v1, 0x1

    .line 782
    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 784
    .end local v5    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_7
    goto :goto_3

    .line 787
    :cond_8
    const/4 v4, 0x0

    .line 788
    .local v4, "cyclesDetected":I
    :goto_4
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    const-string v6, "NativeAnimatedNodesManager"

    if-nez v5, :cond_e

    .line 789
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/AnimatedNode;

    .line 791
    .local v5, "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    :try_start_0
    invoke-virtual {v5}, Lcom/facebook/react/animated/AnimatedNode;->update()V

    .line 792
    instance-of v7, v5, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v7, :cond_9

    .line 794
    move-object v7, v5

    check-cast v7, Lcom/facebook/react/animated/PropsAnimatedNode;

    invoke-virtual {v7}, Lcom/facebook/react/animated/PropsAnimatedNode;->updateView()V
    :try_end_0
    .catch Lcom/facebook/react/bridge/JSApplicationCausedNativeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :cond_9
    goto :goto_5

    .line 796
    :catch_0
    move-exception v7

    .line 804
    .local v7, "e":Lcom/facebook/react/bridge/JSApplicationCausedNativeException;
    const-string v8, "Native animation workaround, frame lost as result of race condition"

    invoke-static {v6, v8, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    .end local v7    # "e":Lcom/facebook/react/bridge/JSApplicationCausedNativeException;
    :goto_5
    instance-of v6, v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v6, :cond_a

    .line 808
    move-object v6, v5

    check-cast v6, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v6}, Lcom/facebook/react/animated/ValueAnimatedNode;->onValueUpdate()V

    .line 810
    :cond_a
    iget-object v6, v5, Lcom/facebook/react/animated/AnimatedNode;->children:Ljava/util/List;

    if-eqz v6, :cond_d

    .line 811
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    iget-object v7, v5, Lcom/facebook/react/animated/AnimatedNode;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 812
    iget-object v7, v5, Lcom/facebook/react/animated/AnimatedNode;->children:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/animated/AnimatedNode;

    .line 813
    .local v7, "child":Lcom/facebook/react/animated/AnimatedNode;
    iget v8, v7, Lcom/facebook/react/animated/AnimatedNode;->activeIncomingNodes:I

    sub-int/2addr v8, v3

    iput v8, v7, Lcom/facebook/react/animated/AnimatedNode;->activeIncomingNodes:I

    .line 814
    iget v8, v7, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v8, v9, :cond_b

    iget v8, v7, Lcom/facebook/react/animated/AnimatedNode;->activeIncomingNodes:I

    if-nez v8, :cond_b

    .line 815
    iget v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v8, v7, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    .line 816
    add-int/lit8 v1, v1, 0x1

    .line 817
    invoke-interface {v2, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 818
    :cond_b
    iget v8, v7, Lcom/facebook/react/animated/AnimatedNode;->BFSColor:I

    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-ne v8, v9, :cond_c

    .line 819
    add-int/lit8 v4, v4, 0x1

    .line 811
    .end local v7    # "child":Lcom/facebook/react/animated/AnimatedNode;
    :cond_c
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 823
    .end local v5    # "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    .end local v6    # "i":I
    :cond_d
    goto :goto_4

    .line 832
    :cond_e
    if-eq v0, v1, :cond_14

    .line 833
    iget-boolean v5, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    if-eqz v5, :cond_f

    .line 834
    return-void

    .line 836
    :cond_f
    iput-boolean v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    .line 839
    const-string v3, "Detected animation cycle or disconnected graph. "

    invoke-static {v6, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/AnimatedNode;

    .line 841
    .local v5, "node":Lcom/facebook/react/animated/AnimatedNode;
    invoke-virtual {v5}, Lcom/facebook/react/animated/AnimatedNode;->prettyPrintWithChildren()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .end local v5    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_8

    .line 850
    :cond_10
    if-lez v4, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cycles ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_11
    const-string v3, "disconnected regions"

    .line 851
    .local v3, "reason":Ljava/lang/String;
    :goto_9
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Looks like animated nodes graph has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", there are "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but toposort visited only "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 859
    .local v5, "ex":Ljava/lang/IllegalStateException;
    iget-boolean v7, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    if-eqz v7, :cond_12

    if-nez v4, :cond_12

    .line 862
    new-instance v7, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    invoke-direct {v7, v5}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v6, v7}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 863
    :cond_12
    iget-boolean v7, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    if-eqz v7, :cond_13

    .line 866
    new-instance v7, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    invoke-direct {v7, v5}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v6, v7}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/IllegalStateException;
    :goto_a
    goto :goto_b

    .line 868
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v5    # "ex":Ljava/lang/IllegalStateException;
    :cond_13
    throw v5

    .line 871
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/IllegalStateException;
    :cond_14
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mWarnedAboutGraphTraversal:Z

    .line 873
    :goto_b
    return-void
.end method


# virtual methods
.method public addAnimatedEventToView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .param p1, "viewTag"    # I
    .param p2, "eventHandlerName"    # Ljava/lang/String;
    .param p3, "eventMapping"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 523
    const-string v0, "animatedValueTag"

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 524
    .local v0, "nodeTag":I
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/AnimatedNode;

    .line 525
    .local v1, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v1, :cond_3

    .line 529
    instance-of v2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v2, :cond_2

    .line 539
    const-string v2, "nativeEventPath"

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    .line 540
    .local v2, "path":Lcom/facebook/react/bridge/ReadableArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .local v3, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 542
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    .end local v4    # "i":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->normalizeEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "eventName":Ljava/lang/String;
    new-instance v5, Lcom/facebook/react/animated/EventAnimationDriver;

    move-object v6, v1

    check-cast v6, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {v5, v4, p1, v3, v6}, Lcom/facebook/react/animated/EventAnimationDriver;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/facebook/react/animated/ValueAnimatedNode;)V

    .line 549
    .local v5, "eventDriver":Lcom/facebook/react/animated/EventAnimationDriver;
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    const-string/jumbo v6, "topScroll"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 553
    const-string/jumbo v6, "topScrollEnded"

    invoke-virtual {p0, p1, v6, p3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->addAnimatedEventToView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 555
    :cond_1
    return-void

    .line 530
    .end local v2    # "path":Lcom/facebook/react/bridge/ReadableArray;
    .end local v3    # "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "eventName":Ljava/lang/String;
    .end local v5    # "eventDriver":Lcom/facebook/react/animated/EventAnimationDriver;
    :cond_2
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAnimatedEventToView: Animated node on view ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] connected to event handler ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") should be of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 536
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_3
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAnimatedEventToView: Animated node with tag ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public connectAnimatedNodeToView(II)V
    .locals 5
    .param p1, "animatedNodeTag"    # I
    .param p2, "viewTag"    # I

    .line 416
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 417
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_3

    .line 423
    instance-of v1, v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 439
    invoke-static {v1, p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v1

    .line 440
    .local v1, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-nez v1, :cond_0

    .line 441
    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectAnimatedNodeToView: Animated node could not be connected to UIManager - uiManager disappeared for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v3, "NativeAnimatedNodesManager"

    invoke-static {v3, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    return-void

    .line 450
    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 451
    .local v2, "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    invoke-virtual {v2, p2, v1}, Lcom/facebook/react/animated/PropsAnimatedNode;->connectToView(ILcom/facebook/react/bridge/UIManager;)V

    .line 452
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    return-void

    .line 431
    .end local v1    # "uiManager":Lcom/facebook/react/bridge/UIManager;
    .end local v2    # "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAnimatedNodeToView: Animated node could not be connected, no ReactApplicationContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_2
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAnimatedNodeToView: Animated node connected to view ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 428
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_3
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAnimatedNodeToView: Animated node with tag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connectAnimatedNodes(II)V
    .locals 6
    .param p1, "parentNodeTag"    # I
    .param p2, "childNodeTag"    # I

    .line 377
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 378
    .local v0, "parentNode":Lcom/facebook/react/animated/AnimatedNode;
    const-string v1, "] does not exist"

    if-eqz v0, :cond_1

    .line 384
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimatedNode;

    .line 385
    .local v2, "childNode":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {v0, v2}, Lcom/facebook/react/animated/AnimatedNode;->addChild(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 392
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    return-void

    .line 386
    :cond_0
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectAnimatedNodes: Animated node with tag (child) ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    .end local v2    # "childNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectAnimatedNodes: Animated node with tag (parent) ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createAnimatedNode(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 115
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 119
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Lcom/facebook/react/animated/StyleAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/StyleAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .local v1, "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 123
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_0
    const-string/jumbo v1, "value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {v1, p2}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 125
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    const-string v1, "color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    new-instance v1, Lcom/facebook/react/animated/ColorAnimatedNode;

    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v1, p2, p0, v2}, Lcom/facebook/react/animated/ColorAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 127
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    const-string/jumbo v1, "props"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    new-instance v1, Lcom/facebook/react/animated/PropsAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/PropsAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 129
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_3
    const-string v1, "interpolation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    new-instance v1, Lcom/facebook/react/animated/InterpolationAnimatedNode;

    invoke-direct {v1, p2}, Lcom/facebook/react/animated/InterpolationAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 131
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_4
    const-string v1, "addition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    new-instance v1, Lcom/facebook/react/animated/AdditionAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/AdditionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 133
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_5
    const-string/jumbo v1, "subtraction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 134
    new-instance v1, Lcom/facebook/react/animated/SubtractionAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/SubtractionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 135
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_6
    const-string v1, "division"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 136
    new-instance v1, Lcom/facebook/react/animated/DivisionAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/DivisionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 137
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_7
    const-string v1, "multiplication"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 138
    new-instance v1, Lcom/facebook/react/animated/MultiplicationAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/MultiplicationAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 139
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_8
    const-string v1, "modulus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 140
    new-instance v1, Lcom/facebook/react/animated/ModulusAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/ModulusAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 141
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_9
    const-string v1, "diffclamp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 142
    new-instance v1, Lcom/facebook/react/animated/DiffClampAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/DiffClampAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 143
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_a
    const-string/jumbo v1, "transform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 144
    new-instance v1, Lcom/facebook/react/animated/TransformAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/TransformAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 145
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_b
    const-string/jumbo v1, "tracking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 146
    new-instance v1, Lcom/facebook/react/animated/TrackingAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/TrackingAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 147
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_c
    const-string/jumbo v1, "object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 148
    new-instance v1, Lcom/facebook/react/animated/ObjectAnimatedNode;

    invoke-direct {v1, p2, p0}, Lcom/facebook/react/animated/ObjectAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .line 152
    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :goto_0
    iput p1, v1, Lcom/facebook/react/animated/AnimatedNode;->tag:I

    .line 153
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    return-void

    .line 150
    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_d
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported node type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    .end local v0    # "type":Ljava/lang/String;
    :cond_e
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAnimatedNode: Animated node ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnectAnimatedNodeFromView(II)V
    .locals 4
    .param p1, "animatedNodeTag"    # I
    .param p2, "viewTag"    # I

    .line 457
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 458
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_1

    .line 464
    instance-of v1, v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v1, :cond_0

    .line 471
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 472
    .local v1, "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    invoke-virtual {v1, p2}, Lcom/facebook/react/animated/PropsAnimatedNode;->disconnectFromView(I)V

    .line 473
    return-void

    .line 465
    .end local v1    # "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectAnimatedNodeFromView: Animated node connected to view ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 469
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectAnimatedNodeFromView: Animated node with tag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disconnectAnimatedNodes(II)V
    .locals 6
    .param p1, "parentNodeTag"    # I
    .param p2, "childNodeTag"    # I

    .line 396
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 397
    .local v0, "parentNode":Lcom/facebook/react/animated/AnimatedNode;
    const-string v1, "] does not exist"

    if-eqz v0, :cond_1

    .line 403
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimatedNode;

    .line 404
    .local v2, "childNode":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v0, v2}, Lcom/facebook/react/animated/AnimatedNode;->removeChild(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 411
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    return-void

    .line 405
    :cond_0
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectAnimatedNodes: Animated node with tag (child) ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    .end local v2    # "childNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectAnimatedNodes: Animated node with tag (parent) ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dropAnimatedNode(I)V
    .locals 1
    .param p1, "tag"    # I

    .line 174
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 175
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 176
    return-void
.end method

.method public extractAnimatedNodeOffset(I)V
    .locals 4
    .param p1, "tag"    # I

    .line 243
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 244
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 250
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v1}, Lcom/facebook/react/animated/ValueAnimatedNode;->extractOffset()V

    .line 251
    return-void

    .line 245
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractAnimatedNodeOffset: Animated node ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flattenAnimatedNodeOffset(I)V
    .locals 4
    .param p1, "tag"    # I

    .line 231
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 232
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 238
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v1}, Lcom/facebook/react/animated/ValueAnimatedNode;->flattenOffset()V

    .line 239
    return-void

    .line 233
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flattenAnimatedNodeOffset: Animated node ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;
    .locals 1
    .param p1, "id"    # I

    .line 106
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    return-object v0
.end method

.method getTagsOfConnectedNodes(ILjava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "tag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 700
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 703
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 704
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/EventAnimationDriver;

    .line 706
    .local v2, "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    if-eqz v2, :cond_0

    .line 707
    iget-object v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->eventName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->viewTag:I

    if-ne p1, v3, :cond_0

    .line 708
    iget v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->viewTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-object v3, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->children:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 710
    iget-object v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-object v3, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/animated/AnimatedNode;

    .line 711
    .local v4, "node":Lcom/facebook/react/animated/AnimatedNode;
    iget v5, v4, Lcom/facebook/react/animated/AnimatedNode;->tag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 712
    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_1

    .line 716
    .end local v2    # "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    :cond_0
    goto :goto_0

    .line 718
    :cond_1
    return-object v0
.end method

.method public getValue(ILcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 477
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 478
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_2

    .line 482
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v1}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v1

    .line 483
    .local v1, "value":D
    if-eqz p2, :cond_0

    .line 484
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 485
    return-void

    .line 492
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v3, :cond_1

    .line 493
    return-void

    .line 495
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 496
    .local v3, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string/jumbo v4, "tag"

    invoke-interface {v3, v4, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 497
    const-string/jumbo v4, "value"

    invoke-interface {v3, v4, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 498
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string/jumbo v5, "onNativeAnimatedModuleGetValue"

    invoke-virtual {v4, v5, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    return-void

    .line 479
    .end local v1    # "value":D
    .end local v3    # "params":Lcom/facebook/react/bridge/WritableMap;
    :cond_2
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue: Animated node with tag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasActiveAnimations()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public initializeEventListenerForUIManagerType(I)V
    .locals 3
    .param p1, "uiManagerType"    # I

    .line 87
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForNonFabric:Z

    if-eqz v1, :cond_1

    .line 90
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v1, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v1

    .line 94
    .local v1, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-eqz v1, :cond_3

    .line 95
    invoke-interface {v1}, Lcom/facebook/react/bridge/UIManager;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    .line 96
    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 97
    iput-boolean v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForFabric:Z

    goto :goto_1

    .line 99
    :cond_2
    iput-boolean v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventListenerInitializedForNonFabric:Z

    .line 102
    :cond_3
    :goto_1
    return-void
.end method

.method public onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .line 579
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->handleEvent(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 582
    :cond_0
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedNodesManager$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager$1;-><init>(Lcom/facebook/react/animated/NativeAnimatedNodesManager;Lcom/facebook/react/uimanager/events/Event;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 590
    :goto_0
    return-void
.end method

.method public removeAnimatedEventFromView(ILjava/lang/String;I)V
    .locals 4
    .param p1, "viewTag"    # I
    .param p2, "eventHandlerName"    # Ljava/lang/String;
    .param p3, "animatedValueTag"    # I

    .line 561
    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->normalizeEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "eventName":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 564
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/EventAnimationDriver;

    .line 566
    .local v2, "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    iget-object v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->viewTag:I

    if-ne p1, v3, :cond_0

    iget-object v3, v2, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget v3, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->tag:I

    if-ne p3, v3, :cond_0

    .line 569
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 570
    goto :goto_1

    .line 572
    .end local v2    # "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    :cond_0
    goto :goto_0

    .line 573
    :cond_1
    :goto_1
    return-void
.end method

.method public restoreDefaultValues(I)V
    .locals 4
    .param p1, "animatedNodeTag"    # I

    .line 503
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 508
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v0, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    instance-of v1, v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v1, :cond_1

    .line 516
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 517
    .local v1, "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    invoke-virtual {v1}, Lcom/facebook/react/animated/PropsAnimatedNode;->restoreDefaultValues()V

    .line 518
    return-void

    .line 512
    .end local v1    # "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated node connected to view [?] should be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 514
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public runUpdates(J)V
    .locals 10
    .param p1, "frameTimeNanos"    # J

    .line 641
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 642
    const/4 v0, 0x0

    .line 644
    .local v0, "hasFinishedAnimations":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimatedNode;

    .line 646
    .local v2, "node":Lcom/facebook/react/animated/AnimatedNode;
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v2    # "node":Lcom/facebook/react/animated/AnimatedNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 652
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 653
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimationDriver;

    .line 654
    .local v2, "animation":Lcom/facebook/react/animated/AnimationDriver;
    invoke-virtual {v2, p1, p2}, Lcom/facebook/react/animated/AnimationDriver;->runAnimationStep(J)V

    .line 655
    iget-object v3, v2, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 656
    .local v3, "valueNode":Lcom/facebook/react/animated/AnimatedNode;
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    iget-boolean v4, v2, Lcom/facebook/react/animated/AnimationDriver;->hasFinished:Z

    if-eqz v4, :cond_1

    .line 658
    const/4 v0, 0x1

    .line 652
    .end local v2    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    .end local v3    # "valueNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 662
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->updateNodes(Ljava/util/List;)V

    .line 663
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 667
    if-eqz v0, :cond_8

    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, "events":Lcom/facebook/react/bridge/WritableArray;
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 670
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/animated/AnimationDriver;

    .line 671
    .local v4, "animation":Lcom/facebook/react/animated/AnimationDriver;
    iget-boolean v5, v4, Lcom/facebook/react/animated/AnimationDriver;->hasFinished:Z

    if-eqz v5, :cond_6

    .line 672
    iget-object v5, v4, Lcom/facebook/react/animated/AnimationDriver;->endCallback:Lcom/facebook/react/bridge/Callback;

    const-string/jumbo v6, "value"

    const-string v7, "finished"

    if-eqz v5, :cond_3

    .line 673
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 674
    .local v5, "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    invoke-interface {v5, v7, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 675
    iget-object v7, v4, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v7, v7, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    invoke-interface {v5, v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 676
    iget-object v6, v4, Lcom/facebook/react/animated/AnimationDriver;->endCallback:Lcom/facebook/react/bridge/Callback;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .end local v5    # "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_3

    .line 677
    :cond_3
    iget-object v5, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v5, :cond_5

    .line 681
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 682
    .local v5, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v8, "animationId"

    iget v9, v4, Lcom/facebook/react/animated/AnimationDriver;->id:I

    invoke-interface {v5, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 683
    invoke-interface {v5, v7, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    iget-object v7, v4, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v7, v7, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    invoke-interface {v5, v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 685
    if-nez v1, :cond_4

    .line 686
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 688
    :cond_4
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_4

    .line 677
    .end local v5    # "params":Lcom/facebook/react/bridge/WritableMap;
    :cond_5
    :goto_3
    nop

    .line 690
    :goto_4
    iget-object v5, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 669
    .end local v4    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 693
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    .line 694
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string/jumbo v3, "onNativeAnimatedModuleAnimationFinished"

    invoke-virtual {v2, v3, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    .end local v1    # "events":Lcom/facebook/react/bridge/WritableArray;
    :cond_8
    return-void
.end method

.method public setAnimatedNodeOffset(ID)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "offset"    # D

    .line 218
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 219
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 225
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-wide p2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->offset:D

    .line 226
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    return-void

    .line 220
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnimatedNodeOffset: Animated node ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnimatedNodeValue(ID)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # D

    .line 204
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 205
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 212
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-wide p2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 213
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    return-void

    .line 206
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnimatedNodeValue: Animated node ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startAnimatingNode(IILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p1, "animationId"    # I
    .param p2, "animatedNodeTag"    # I
    .param p3, "animationConfig"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "endCallback"    # Lcom/facebook/react/bridge/Callback;

    .line 256
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 257
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    const-string/jumbo v1, "startAnimatingNode: Animated node ["

    if-eqz v0, :cond_5

    .line 261
    instance-of v2, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v2, :cond_4

    .line 269
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/AnimationDriver;

    .line 270
    .local v1, "existingDriver":Lcom/facebook/react/animated/AnimationDriver;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1, p3}, Lcom/facebook/react/animated/AnimationDriver;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 274
    return-void

    .line 277
    :cond_0
    const-string/jumbo v2, "type"

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "type":Ljava/lang/String;
    const-string v3, "frames"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    new-instance v3, Lcom/facebook/react/animated/FrameBasedAnimationDriver;

    invoke-direct {v3, p3}, Lcom/facebook/react/animated/FrameBasedAnimationDriver;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .local v3, "animation":Lcom/facebook/react/animated/AnimationDriver;
    goto :goto_0

    .line 281
    .end local v3    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_1
    const-string/jumbo v3, "spring"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    new-instance v3, Lcom/facebook/react/animated/SpringAnimation;

    invoke-direct {v3, p3}, Lcom/facebook/react/animated/SpringAnimation;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .restart local v3    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    goto :goto_0

    .line 283
    .end local v3    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_2
    const-string v3, "decay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    new-instance v3, Lcom/facebook/react/animated/DecayAnimation;

    invoke-direct {v3, p3}, Lcom/facebook/react/animated/DecayAnimation;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 289
    .restart local v3    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :goto_0
    iput p1, v3, Lcom/facebook/react/animated/AnimationDriver;->id:I

    .line 290
    iput-object p4, v3, Lcom/facebook/react/animated/AnimationDriver;->endCallback:Lcom/facebook/react/bridge/Callback;

    .line 291
    move-object v4, v0

    check-cast v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-object v4, v3, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 292
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    return-void

    .line 286
    .end local v3    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_3
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAnimatingNode: Unsupported animation type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    .end local v1    # "existingDriver":Lcom/facebook/react/animated/AnimationDriver;
    .end local v2    # "type":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] should be of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 266
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_5
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] does not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startListeningToAnimatedNodeValue(ILcom/facebook/react/animated/AnimatedNodeValueListener;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "listener"    # Lcom/facebook/react/animated/AnimatedNodeValueListener;

    .line 180
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 181
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 187
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v1, p2}, Lcom/facebook/react/animated/ValueAnimatedNode;->setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V

    .line 188
    return-void

    .line 182
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startListeningToAnimatedNodeValue: Animated node ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopAnimation(I)V
    .locals 9
    .param p1, "animationId"    # I

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "events":Lcom/facebook/react/bridge/WritableArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 341
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimationDriver;

    .line 342
    .local v2, "animation":Lcom/facebook/react/animated/AnimationDriver;
    iget v3, v2, Lcom/facebook/react/animated/AnimationDriver;->id:I

    if-ne v3, p1, :cond_3

    .line 343
    iget-object v3, v2, Lcom/facebook/react/animated/AnimationDriver;->endCallback:Lcom/facebook/react/bridge/Callback;

    const-string/jumbo v4, "value"

    const/4 v5, 0x0

    const-string v6, "finished"

    if-eqz v3, :cond_0

    .line 345
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 346
    .local v3, "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    invoke-interface {v3, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    iget-object v5, v2, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v5, v5, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 348
    iget-object v4, v2, Lcom/facebook/react/animated/AnimationDriver;->endCallback:Lcom/facebook/react/bridge/Callback;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .end local v3    # "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_1

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v3, :cond_2

    .line 353
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 354
    .local v3, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v7, "animationId"

    iget v8, v2, Lcom/facebook/react/animated/AnimationDriver;->id:I

    invoke-interface {v3, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 355
    invoke-interface {v3, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    iget-object v5, v2, Lcom/facebook/react/animated/AnimationDriver;->animatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v5, v5, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 357
    if-nez v0, :cond_1

    .line 358
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 360
    :cond_1
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 349
    .end local v3    # "params":Lcom/facebook/react/bridge/WritableMap;
    :cond_2
    :goto_1
    nop

    .line 362
    :goto_2
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 363
    goto :goto_3

    .line 340
    .end local v2    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 367
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string/jumbo v2, "onNativeAnimatedModuleAnimationFinished"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    :cond_5
    return-void
.end method

.method public stopListeningToAnimatedNodeValue(I)V
    .locals 4
    .param p1, "tag"    # I

    .line 192
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 193
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/react/animated/ValueAnimatedNode;->setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V

    .line 200
    return-void

    .line 194
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startListeningToAnimatedNodeValue: Animated node ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist, or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateAnimatedNodeConfig(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 159
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 160
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_1

    .line 165
    instance-of v1, v0, Lcom/facebook/react/animated/AnimatedNodeWithUpdateableConfig;

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0, v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 167
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/animated/AnimatedNodeWithUpdateableConfig;

    invoke-interface {v1, p2}, Lcom/facebook/react/animated/AnimatedNodeWithUpdateableConfig;->onUpdateConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 168
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    :cond_0
    return-void

    .line 161
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAnimatedNode: Animated node ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
