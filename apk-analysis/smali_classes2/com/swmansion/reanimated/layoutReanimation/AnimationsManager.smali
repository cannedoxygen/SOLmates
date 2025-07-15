.class public Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;
.super Ljava/lang/Object;
.source "AnimationsManager.java"

# interfaces
.implements Lcom/swmansion/reanimated/layoutReanimation/ViewHierarchyObserver;


# instance fields
.field private isInvalidated:Z

.field private mAncestorsToRemove:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mEnteringViewTargetValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnteringViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingSubviewCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

.field private mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

.field private final mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

.field private mUIManager:Lcom/facebook/react/bridge/UIManager;

.field private mWeakAndroidUIScheduler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/reanimated/AndroidUIScheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/UIManager;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 65
    iput-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    .line 67
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-direct {v0, p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;-><init>(Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    .line 68
    return-void
.end method

.method private static addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "propMap"    # Lcom/facebook/react/bridge/WritableMap;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 397
    if-nez p2, :cond_0

    .line 398
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 400
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 401
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 402
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 403
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 404
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 405
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 406
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 407
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 408
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_5
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_6

    .line 410
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 411
    :cond_6
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_7

    .line 412
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[Reanimated] Unknown type of animated value for Layout Animations."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 666
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 667
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 669
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_0

    .line 670
    goto :goto_1

    .line 673
    :cond_0
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->endLayoutAnimation(IZ)V

    goto :goto_1

    .line 675
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 676
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V

    .line 666
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 679
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private checkDuplicateSharedTag(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 190
    .local v0, "viewTag":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 191
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Screen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    goto :goto_1

    .line 195
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 199
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 200
    .local v2, "screenTag":I
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v3, v0, v2}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->checkDuplicateSharedTag(II)V

    .line 202
    .end local v2    # "screenTag":I
    :cond_2
    return-void
.end method

.method private static convertScreenLocationToViewCoordinates(Landroid/graphics/Point;Landroid/view/View;)Landroid/graphics/Point;
    .locals 5
    .param p0, "fromPoint"    # Landroid/graphics/Point;
    .param p1, "parentView"    # Landroid/view/View;

    .line 708
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    .line 709
    .local v1, "toPoint":[I
    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 712
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    aget v0, v1, v0

    sub-int/2addr v3, v0

    iget v0, p0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v1, v4

    sub-int/2addr v0, v4

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private maybeDropAncestors(Landroid/view/View;)V
    .locals 6
    .param p1, "exitingView"    # Landroid/view/View;

    .line 615
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/View;

    .line 618
    .local v0, "parent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/facebook/react/uimanager/RootView;

    if-nez v1, :cond_3

    .line 619
    move-object v1, v0

    .line 620
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 621
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    .line 622
    .local v2, "tag":I
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 623
    .local v3, "ancestorOfCount":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 624
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_2

    .line 625
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 627
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 628
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 631
    :cond_1
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 633
    :cond_2
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "tag":I
    .end local v3    # "ancestorOfCount":Ljava/lang/Integer;
    :goto_2
    goto :goto_0

    .line 636
    :cond_3
    return-void

    .line 616
    .end local v0    # "parent":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private registerExitingAncestors(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 604
    .local v0, "parent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/facebook/react/uimanager/RootView;

    if-nez v1, :cond_1

    .line 605
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 606
    .local v1, "tag":I
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 607
    .local v2, "previousValue":Ljava/lang/Integer;
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 608
    .local v3, "newValue":I
    :cond_0
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/View;

    .line 611
    .end local v1    # "tag":I
    .end local v2    # "previousValue":Ljava/lang/Integer;
    .end local v3    # "newValue":I
    goto :goto_0

    .line 612
    :cond_1
    return-void
.end method

.method private removeOrAnimateExitRecursive(Landroid/view/View;ZZ)Z
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shouldRemove"    # Z
    .param p3, "shouldAnimate"    # Z

    .line 507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 508
    .local v2, "tag":I
    invoke-direct {v0, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v3

    .line 510
    .local v3, "viewManager":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<**>;"
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 511
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "viewManagerName":Ljava/lang/String;
    const-string v6, "RCTModalHostView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 513
    const-string v6, "RNSScreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 514
    const-string v6, "RNSScreenStack"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 516
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsRecursive(Landroid/view/View;)V

    .line 517
    return v4

    .line 521
    .end local v5    # "viewManagerName":Ljava/lang/String;
    :cond_1
    move/from16 v5, p3

    invoke-virtual {v0, v2, v5}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->shouldAnimateExiting(IZ)Z

    move-result v5

    .line 523
    .end local p3    # "shouldAnimate":Z
    .local v5, "shouldAnimate":Z
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 525
    invoke-virtual {v0, v2, v6}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    .line 526
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v8, v7

    goto :goto_0

    :cond_3
    move v8, v4

    .line 527
    .local v8, "hasExitAnimation":Z
    :goto_0
    const/4 v9, 0x0

    .line 528
    .local v9, "hasAnimatedChildren":Z
    if-eqz p2, :cond_4

    if-nez v8, :cond_4

    move v10, v7

    goto :goto_1

    :cond_4
    move v10, v4

    .line 530
    .end local p2    # "shouldRemove":Z
    .local v10, "shouldRemove":Z
    :goto_1
    const/4 v11, 0x4

    invoke-virtual {v0, v2, v11}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 531
    iget-object v11, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v11, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->notifyAboutRemovedView(Landroid/view/View;)V

    .line 532
    iget-object v11, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v11, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->makeSnapshot(Landroid/view/View;)V

    .line 535
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v11, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v12, v1, Landroid/view/ViewGroup;

    const/4 v13, -0x1

    if-eqz v12, :cond_8

    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    .line 541
    .local v12, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v7

    .local v14, "i":I
    :goto_2
    if-ltz v14, :cond_8

    .line 542
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 543
    .local v15, "child":Landroid/view/View;
    invoke-direct {v0, v15, v10, v5}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeOrAnimateExitRecursive(Landroid/view/View;ZZ)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 544
    const/4 v9, 0x1

    goto :goto_3

    .line 545
    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v13, :cond_7

    .line 546
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v15    # "child":Landroid/view/View;
    :cond_7
    :goto_3
    add-int/lit8 v14, v14, -0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 551
    .end local v12    # "viewGroup":Landroid/view/ViewGroup;
    .end local v14    # "i":I
    :cond_8
    if-nez v8, :cond_a

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    move v7, v4

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v7, 0x1

    .line 553
    .local v7, "wantAnimateExit":Z
    :goto_5
    if-eqz v8, :cond_b

    .line 554
    new-instance v12, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v14, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    invoke-direct {v12, v1, v14}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    .line 555
    .local v12, "before":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    invoke-virtual {v12}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toCurrentMap()Ljava/util/HashMap;

    move-result-object v14

    .line 556
    .local v14, "currentValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, v14, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object v15

    .line 557
    .local v15, "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v13, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 558
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-direct/range {p0 .. p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->registerExitingAncestors(Landroid/view/View;)V

    .line 560
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v4, v2, v6, v15}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimation(IILjava/util/HashMap;)V

    .line 564
    .end local v12    # "before":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v14    # "currentValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v4, v2}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    .line 566
    if-nez v7, :cond_c

    .line 567
    const/4 v4, 0x0

    return v4

    .line 570
    :cond_c
    const/4 v4, 0x0

    if-eqz v9, :cond_e

    .line 571
    const/4 v6, -0x1

    if-ne v2, v6, :cond_d

    .line 575
    invoke-virtual/range {p0 .. p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsRecursive(Landroid/view/View;)V

    .line 576
    return v4

    .line 578
    :cond_d
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 582
    .local v6, "child":Landroid/view/View;
    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    invoke-direct {v0, v6, v12}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 583
    .end local v6    # "child":Landroid/view/View;
    goto :goto_6

    .line 585
    :cond_f
    const/4 v4, 0x1

    return v4
.end method

.method private removeView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 640
    .local v0, "tag":I
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 642
    .local v1, "callback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 646
    .end local v1    # "callback":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    invoke-virtual {v1, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->publicDropView(Landroid/view/View;)V

    .line 652
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 653
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 655
    :cond_2
    return-void
.end method

.method private resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;
    .locals 2
    .param p1, "tag"    # I

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public cancelAnimationsInSubviews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 598
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsRecursive(Landroid/view/View;)V

    .line 599
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->clearAnimationConfigRecursive(Landroid/view/View;)V

    .line 600
    return-void
.end method

.method public cancelAnimationsRecursive(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 658
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->endLayoutAnimation(IZ)V

    goto :goto_0

    .line 660
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V

    .line 663
    :cond_1
    :goto_0
    return-void
.end method

.method public clearAnimationConfigRecursive(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 589
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    .line 590
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 591
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 592
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->clearAnimationConfigRecursive(Landroid/view/View;)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public endLayoutAnimation(IZ)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "removeView"    # Z

    .line 229
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 236
    .local v1, "target":Landroid/graphics/Rect;
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 237
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    if-eqz p2, :cond_3

    .line 243
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V

    .line 247
    :cond_2
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->maybeDropAncestors(Landroid/view/View;)V

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 251
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-direct {p0, v0, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 253
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v2, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->finishSharedAnimation(I)V

    .line 254
    return-void
.end method

.method protected getContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method public getReanimatedNativeHierarchyManager()Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    return-object v0
.end method

.method public hasAnimationForTag(II)Z
    .locals 1
    .param p1, "tag"    # I
    .param p2, "type"    # I

    .line 498
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->hasAnimation(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 73
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 74
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    .line 75
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    .line 76
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    .line 77
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    .line 78
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method public isLayoutAnimationEnabled()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v0}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->isLayoutAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeSnapshotOfTopScreenViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "stack"    # Landroid/view/ViewGroup;

    .line 740
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->doSnapshotForTopScreenViews(Landroid/view/ViewGroup;)V

    .line 741
    return-void
.end method

.method public maybeRegisterSharedView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->notifyAboutNewView(Landroid/view/View;)V

    .line 182
    :cond_0
    sget-boolean v0, Lcom/facebook/react/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->checkDuplicateSharedTag(Landroid/view/View;)V

    .line 185
    :cond_1
    return-void
.end method

.method public navigationTabChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "previousTab"    # Landroid/view/View;
    .param p2, "newTab"    # Landroid/view/View;

    .line 720
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->navigationTabChanged(Landroid/view/View;Landroid/view/View;)V

    .line 721
    return-void
.end method

.method public notifyAboutScreenWillDisappear()V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->onScreenWillDisappear()V

    .line 737
    return-void
.end method

.method public notifyAboutViewsRemoval([I)V
    .locals 1
    .param p1, "tagsToDelete"    # [I

    .line 732
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->onViewsRemoval([I)V

    .line 733
    return-void
.end method

.method public onViewCreate(Landroid/view/View;Landroid/view/ViewGroup;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "after"    # Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 96
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->maybeRegisterSharedView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mWeakAndroidUIScheduler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/AndroidUIScheduler;

    .line 106
    .local v0, "androidUIScheduler":Lcom/swmansion/reanimated/AndroidUIScheduler;
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/swmansion/reanimated/AndroidUIScheduler;->triggerUI()V

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 110
    .local v2, "tag":I
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toTargetMap()Ljava/util/HashMap;

    move-result-object v3

    .line 112
    .local v3, "targetValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {p0, v3, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object v4

    .line 114
    .local v4, "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v5, v2, v1, v4}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimation(IILjava/util/HashMap;)V

    .line 115
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v4    # "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method

.method public onViewRemoval(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 83
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    .local v0, "tag":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeOrAnimateExitRecursive(Landroid/view/View;ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 92
    :cond_1
    return-void
.end method

.method public onViewUpdate(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "before"    # Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .param p3, "after"    # Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 121
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 126
    .local v0, "tag":I
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v5, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget v6, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v7, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->width:I

    add-int/2addr v6, v7

    iget v7, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget v8, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->height:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget v1, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v2, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget v3, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v4, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->width:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget v5, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 144
    :cond_1
    return-void

    .line 147
    :cond_2
    invoke-virtual {p2}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toCurrentMap()Ljava/util/HashMap;

    move-result-object v2

    .line 148
    .local v2, "startValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toTargetMap()Ljava/util/HashMap;

    move-result-object v3

    .line 152
    .local v3, "targetValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 153
    .local v4, "doNotStartLayout":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v6, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 154
    sget-object v6, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->currentKeysToTransform:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 156
    .local v6, "startV":D
    sget-object v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 158
    .local v8, "targetV":D
    cmpl-double v10, v6, v8

    if-eqz v10, :cond_3

    .line 159
    const/4 v4, 0x0

    .line 153
    .end local v6    # "startV":D
    .end local v8    # "targetV":D
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    .end local v5    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    .line 163
    return-void

    .line 167
    :cond_5
    nop

    .line 168
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object v5

    .line 169
    .local v5, "preparedStartValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 170
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object v6

    .line 171
    .local v6, "preparedTargetValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 172
    .local v7, "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 173
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v9    # "key":Ljava/lang/String;
    goto :goto_1

    .line 175
    :cond_6
    iget-object v8, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v8, v0, v1, v7}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimation(IILjava/util/HashMap;)V

    .line 176
    return-void
.end method

.method public prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;
    .locals 1
    .param p2, "isTargetValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 285
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;ZZ)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public prepareDataForAnimationWorklet(Ljava/util/HashMap;ZZ)Ljava/util/HashMap;
    .locals 9
    .param p2, "isTargetValues"    # Z
    .param p3, "addTransform"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 290
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v0, "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 293
    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 295
    .end local v1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->currentKeysToTransform:Ljava/util/ArrayList;

    .line 297
    .restart local v1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 299
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/swmansion/reanimated/Utils;->convertToFloat(Ljava/lang/Object;)F

    move-result v5

    .line 300
    .local v5, "pixelsValue":F
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    .line 301
    .local v6, "dipValue":F
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "pixelsValue":F
    .end local v6    # "dipValue":F
    goto :goto_1

    .line 304
    :cond_1
    if-eqz p3, :cond_3

    .line 306
    if-eqz p2, :cond_2

    const-string v2, "targetTransformMatrix"

    goto :goto_2

    :cond_2
    const-string v2, "currentTransformMatrix"

    .line 307
    .local v2, "key":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 311
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 312
    .local v3, "currentActivity":Landroid/app/Activity;
    const-string v4, "windowHeight"

    const-string v5, "windowWidth"

    if-eqz v3, :cond_4

    .line 313
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 314
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 315
    .local v6, "height":I
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 316
    .local v7, "width":I
    int-to-float v8, v7

    invoke-static {v8}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    int-to-float v5, v6

    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v6    # "height":I
    .end local v7    # "width":I
    goto :goto_3

    .line 319
    :cond_4
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :goto_3
    return-object v0
.end method

.method public printSubTree(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "level"    # I

    .line 260
    const-string v0, "rea"

    if-nez p2, :cond_0

    .line 261
    const-string v1, "----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    if-nez p1, :cond_1

    .line 264
    return-void

    .line 266
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v1, "out":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 268
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "i":I
    :cond_2
    const-string v2, " TAG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v2, " CLASS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 278
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->printSubTree(Landroid/view/View;I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public progressLayoutAnimation(ILjava/util/Map;Z)V
    .locals 11
    .param p1, "tag"    # I
    .param p3, "isSharedTransition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 206
    .local p2, "newStyle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveView(I)Landroid/view/View;

    move-result-object v7

    .line 208
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    .line 214
    .local v8, "parent":Landroid/view/ViewGroup;
    if-nez v8, :cond_1

    .line 215
    return-void

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v9

    .line 219
    .local v9, "viewManager":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<**>;"
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v10

    .line 221
    .local v10, "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<**>;"
    if-nez v9, :cond_2

    .line 222
    return-void

    .line 225
    :cond_2
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, v7

    move-object v3, v9

    move-object v4, v10

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setNewProps(Ljava/util/Map;Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/uimanager/ViewManager;Ljava/lang/Integer;Z)V

    .line 226
    return-void
.end method

.method protected resolveView(I)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # I

    .line 682
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->getTransitioningView(I)Landroid/view/View;

    move-result-object v0

    .line 686
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 687
    return-object v0

    .line 692
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 693
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public screenDidLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 716
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->screenDidLayout(Landroid/view/View;)V

    .line 717
    return-void
.end method

.method public setAndroidUIScheduler(Lcom/swmansion/reanimated/AndroidUIScheduler;)V
    .locals 1
    .param p1, "androidUIScheduler"    # Lcom/swmansion/reanimated/AndroidUIScheduler;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mWeakAndroidUIScheduler:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method public setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V
    .locals 1
    .param p1, "nativeMethods"    # Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 326
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 327
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V

    .line 328
    return-void
.end method

.method public setNewProps(Ljava/util/Map;Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/uimanager/ViewManager;Ljava/lang/Integer;Z)V
    .locals 17
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewManager"    # Lcom/facebook/react/uimanager/ViewManager;
    .param p4, "parentViewManager"    # Lcom/facebook/react/uimanager/ViewManager;
    .param p5, "parentTag"    # Ljava/lang/Integer;
    .param p6, "isPositionAbsolute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .line 338
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v11, "originX"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    move v5, v1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    move v5, v1

    :goto_0
    nop

    .line 342
    .local v5, "x":F
    const-string v12, "originY"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 343
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    move v6, v1

    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    move v6, v1

    :goto_1
    nop

    .line 346
    .local v6, "y":F
    const-string v13, "width"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 347
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    move v7, v1

    goto :goto_2

    .line 348
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    move v7, v1

    :goto_2
    nop

    .line 350
    .local v7, "width":F
    const-string v14, "height"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 351
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    move v8, v1

    goto :goto_3

    .line 352
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    move v8, v1

    :goto_3
    nop

    .line 354
    .local v8, "height":F
    const-string v1, "transformMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 355
    const/16 v2, 0x9

    new-array v3, v2, [F

    .line 356
    .local v3, "matrixValues":[F
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Lcom/facebook/react/bridge/ReadableNativeArray;

    if-eqz v9, :cond_5

    check-cast v4, Lcom/facebook/react/bridge/ReadableNativeArray;

    .line 358
    .local v4, "matrixArray":Lcom/facebook/react/bridge/ReadableNativeArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v2, :cond_4

    .line 359
    invoke-virtual {v4, v9}, Lcom/facebook/react/bridge/ReadableNativeArray;->getDouble(I)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->floatValue()F

    move-result v15

    aput v15, v3, v9

    .line 358
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v9    # "i":I
    :cond_4
    goto :goto_6

    .line 363
    .end local v4    # "matrixArray":Lcom/facebook/react/bridge/ReadableNativeArray;
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 364
    .local v4, "casted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    if-ge v9, v2, :cond_6

    .line 365
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v3, v9

    .line 364
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 368
    .end local v4    # "casted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v9    # "i":I
    :cond_6
    :goto_6
    const/4 v2, 0x0

    aget v2, v3, v2

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleX(F)V

    .line 369
    const/4 v2, 0x4

    aget v2, v3, v2

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleY(F)V

    .line 373
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v3    # "matrixValues":[F
    :cond_7
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->updateLayout(Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;IFFFFZ)V

    .line 377
    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "globalOriginX"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "globalOriginY"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 385
    return-void

    .line 388
    :cond_8
    new-instance v1, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 389
    .local v1, "javaOnlyMap":Lcom/facebook/react/bridge/JavaOnlyMap;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_7

    .line 393
    :cond_9
    new-instance v2, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v2, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    move-object/from16 v3, p3

    invoke-virtual {v3, v10, v2}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 394
    return-void
.end method

.method public setReanimatedNativeHierarchyManager(Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;)V
    .locals 0
    .param p1, "reanimatedNativeHierarchyManager"    # Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    .line 52
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    .line 53
    return-void
.end method

.method public shouldAnimateExiting(IZ)Z
    .locals 1
    .param p1, "tag"    # I
    .param p2, "shouldAnimate"    # Z

    .line 494
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->shouldAnimateExiting(IZ)Z

    move-result v0

    return v0
.end method

.method public updateLayout(Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;IFFFFZ)V
    .locals 11
    .param p1, "viewToUpdate"    # Landroid/view/View;
    .param p2, "parentViewManager"    # Lcom/facebook/react/uimanager/ViewManager;
    .param p3, "parentTag"    # I
    .param p4, "xf"    # F
    .param p5, "yf"    # F
    .param p6, "widthf"    # F
    .param p7, "heightf"    # F
    .param p8, "isPositionAbsolute"    # Z

    .line 429
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static {p4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 430
    .local v3, "x":I
    invoke-static/range {p5 .. p5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 431
    .local v4, "y":I
    invoke-static/range {p6 .. p6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 432
    .local v5, "width":I
    invoke-static/range {p7 .. p7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 448
    .local v6, "height":I
    nop

    .line 449
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 450
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 448
    invoke-virtual {p1, v8, v7}, Landroid/view/View;->measure(II)V

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 463
    .local v7, "parent":Landroid/view/ViewParent;
    instance-of v8, v7, Lcom/facebook/react/uimanager/RootView;

    if-eqz v8, :cond_0

    .line 464
    invoke-interface {v7}, Landroid/view/ViewParent;->requestLayout()V

    .line 468
    :cond_0
    rem-int/lit8 v8, v2, 0xa

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    if-eqz v1, :cond_3

    .line 470
    instance-of v8, v1, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v8, :cond_2

    .line 471
    move-object v8, v1

    check-cast v8, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    .line 478
    .local v8, "parentViewManagerWithChildren":Lcom/facebook/react/uimanager/IViewManagerWithChildren;
    invoke-interface {v8}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result v9

    if-nez v9, :cond_1

    .line 479
    add-int v9, v3, v5

    add-int v10, v4, v6

    invoke-virtual {p1, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 481
    .end local v8    # "parentViewManagerWithChildren":Lcom/facebook/react/uimanager/IViewManagerWithChildren;
    :cond_1
    goto :goto_0

    .line 473
    :cond_2
    new-instance v8, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Reanimated] Trying to use view with tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " as a parent, but its Manager doesn\'t implement IViewManagerWithChildren."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 482
    :cond_3
    if-eqz p8, :cond_4

    .line 483
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 484
    .local v8, "newPoint":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 485
    .local v9, "viewToUpdateParent":Landroid/view/View;
    invoke-static {v8, v9}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->convertScreenLocationToViewCoordinates(Landroid/graphics/Point;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v10

    .line 486
    .local v10, "convertedPoint":Landroid/graphics/Point;
    iget v3, v10, Landroid/graphics/Point;->x:I

    .line 487
    iget v4, v10, Landroid/graphics/Point;->y:I

    .line 489
    .end local v8    # "newPoint":Landroid/graphics/Point;
    .end local v9    # "viewToUpdateParent":Landroid/view/View;
    .end local v10    # "convertedPoint":Landroid/graphics/Point;
    :cond_4
    add-int v8, v3, v5

    add-int v9, v4, v6

    invoke-virtual {p1, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 491
    :goto_0
    return-void
.end method

.method public viewDidLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 728
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->viewDidLayout(Landroid/view/View;)V

    .line 729
    return-void
.end method

.method public visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 724
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V

    .line 725
    return-void
.end method
