.class public Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;
.super Ljava/lang/Object;
.source "SharedTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TopWillAppearListener;,
        Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$SnapshotTreeVisitor;,
        Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;,
        Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$PrepareConfigCleanupTreeVisitor;
    }
.end annotation


# instance fields
.field private final mAddedSharedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

.field private final mCurrentSharedTransitionViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableCleaningForViewTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTransitionPrepared:Z

.field private mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

.field private final mReattachedViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedSharedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedElementsLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedElementsWithAnimation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedElementsWithProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedTransitionInParentIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedTransitionParent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedViewChildrenIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSnapshotRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/swmansion/reanimated/layoutReanimation/Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagsToCleanup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionContainer:Landroid/view/View;

.field private final mViewTagsToHide:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EhhIyNXvXpEz1co72L9zIAMkDiM(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;Landroid/view/ViewParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->lambda$finishSharedAnimation$1(Landroid/view/ViewParent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAddedSharedViews(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAddedSharedViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationsManager(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;)Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemovedSharedViews(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTagsToCleanup(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTagsToCleanup:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtryStartSharedTransitionForViews(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;Ljava/util/List;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->tryStartSharedTransitionForViews(Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;)V
    .locals 1
    .param p1, "animationsManager"    # Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAddedSharedViews:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionParent:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionInParentIndex:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedViewChildrenIndices:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mViewTagsToHide:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElements:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsLookup:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithProgress:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mReattachedViews:Ljava/util/Set;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mIsTransitionPrepared:Z

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTagsToCleanup:Ljava/util/Set;

    .line 69
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 70
    return-void
.end method

.method private clearAllSharedConfigsForView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 702
    .local v0, "viewTag":I
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v1, v0}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    .line 704
    return-void
.end method

.method private disableCleaningForViewTag(I)V
    .locals 5
    .param p1, "viewTag"    # I

    .line 707
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 708
    .local v0, "counter":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 709
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :goto_0
    return-void
.end method

.method private enableCleaningForViewTag(I)V
    .locals 5
    .param p1, "viewTag"    # I

    .line 716
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 717
    .local v0, "counter":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 718
    return-void

    .line 720
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 721
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :goto_0
    return-void
.end method

.method private findScreen(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 593
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 594
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 598
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 600
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findSharedViewsForScreen(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 784
    .local p2, "sharedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p1}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->getTopScreenForStack(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 785
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 786
    return-void

    .line 788
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 789
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 790
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 789
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 794
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 795
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->findSharedViewsForScreen(Landroid/view/View;Ljava/util/List;)V

    .line 793
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private findStack(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 606
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenStack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 610
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 612
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSharedElementsForCurrentTransition(Ljava/util/List;Z)Ljava/util/List;
    .locals 28
    .param p2, "addedNewScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;"
        }
    .end annotation

    .line 243
    .local p1, "sharedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mReattachedViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 244
    .local v1, "isTransitionRestart":Z
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v4, "newTransitionViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v5, "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p2, :cond_1

    .line 247
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 248
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v7    # "view":Landroid/view/View;
    goto :goto_1

    .line 251
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v6, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lcom/swmansion/reanimated/layoutReanimation/SharedElement;>;"
    iget-object v7, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 253
    invoke-virtual {v7}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->getReanimatedNativeHierarchyManager()Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    move-result-object v7

    .line 254
    .local v7, "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v8, "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v9, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 256
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v10    # "view":Landroid/view/View;
    goto :goto_2

    .line 258
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 259
    .local v10, "sharedView":Landroid/view/View;
    iget-object v11, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 260
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->findPrecedingViewTagForTransition(I)I

    move-result v11

    .line 261
    .local v11, "targetViewTag":I
    if-eqz v1, :cond_3

    .line 262
    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 263
    iget-object v12, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v12, v11}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    .line 264
    iget-object v12, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 265
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->findPrecedingViewTagForTransition(I)I

    move-result v11

    goto :goto_4

    .line 269
    :cond_3
    if-nez p2, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_5

    :cond_4
    const/4 v12, 0x0

    .line 270
    .local v12, "bothAreRemoved":Z
    :goto_5
    if-gez v11, :cond_5

    .line 271
    goto :goto_3

    .line 274
    :cond_5
    invoke-virtual {v7, v11}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v13

    .line 275
    .local v13, "siblingView":Landroid/view/View;
    invoke-direct {v0, v10, v13}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->maybeOverrideSiblingForTabNavigator(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 278
    if-eqz p2, :cond_6

    .line 279
    move-object v14, v13

    .line 280
    .local v14, "viewSource":Landroid/view/View;
    move-object v15, v10

    .local v15, "viewTarget":Landroid/view/View;
    goto :goto_6

    .line 282
    .end local v14    # "viewSource":Landroid/view/View;
    .end local v15    # "viewTarget":Landroid/view/View;
    :cond_6
    move-object v14, v10

    .line 283
    .restart local v14    # "viewSource":Landroid/view/View;
    move-object v15, v13

    .line 285
    .restart local v15    # "viewTarget":Landroid/view/View;
    :goto_6
    if-eqz v12, :cond_7

    .line 287
    invoke-direct {v0, v14}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->clearAllSharedConfigsForView(Landroid/view/View;)V

    .line 288
    invoke-direct {v0, v15}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->clearAllSharedConfigsForView(Landroid/view/View;)V

    .line 289
    goto :goto_3

    .line 292
    :cond_7
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    .line 293
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 294
    .local v2, "isSourceViewInTransition":Z
    if-nez v2, :cond_12

    .line 295
    invoke-direct {v0, v14}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->findScreen(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 296
    .local v3, "viewSourceScreen":Landroid/view/View;
    move/from16 v16, v1

    .end local v1    # "isTransitionRestart":Z
    .local v16, "isTransitionRestart":Z
    invoke-direct {v0, v15}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->findScreen(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, "viewTargetScreen":Landroid/view/View;
    if-eqz v3, :cond_11

    if-nez v1, :cond_8

    .line 298
    move/from16 v1, v16

    goto :goto_3

    .line 301
    :cond_8
    invoke-direct {v0, v3}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->findStack(Landroid/view/View;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v18, v5

    .end local v5    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v18, "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v5, v17

    check-cast v5, Landroid/view/ViewGroup;

    .line 302
    .local v5, "sourceStack":Landroid/view/ViewGroup;
    if-nez v5, :cond_9

    .line 303
    move/from16 v1, v16

    move-object/from16 v5, v18

    goto/16 :goto_3

    .line 305
    :cond_9
    move-object/from16 v17, v8

    .end local v8    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v17, "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    .line 306
    .local v8, "stackId":I
    nop

    .line 307
    invoke-virtual {v7, v8}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v19

    move/from16 v20, v8

    .end local v8    # "stackId":I
    .local v20, "stackId":I
    move-object/from16 v8, v19

    check-cast v8, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 308
    .local v8, "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    const/16 v19, 0x0

    .line 309
    .local v19, "isInSameStack":Z
    const/16 v21, 0x0

    move/from16 v27, v21

    move-object/from16 v21, v9

    move/from16 v9, v27

    .local v9, "i":I
    :goto_7
    move-object/from16 v22, v10

    .end local v10    # "sharedView":Landroid/view/View;
    .local v22, "sharedView":Landroid/view/View;
    invoke-virtual {v8, v5}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 310
    invoke-virtual {v8, v5, v9}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v10

    if-ne v10, v1, :cond_a

    .line 311
    const/4 v10, 0x1

    move/from16 v19, v10

    .line 309
    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v22

    goto :goto_7

    .line 314
    .end local v9    # "i":I
    :cond_b
    if-eqz v19, :cond_10

    .line 315
    nop

    .line 317
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 318
    .local v9, "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    invoke-virtual {v9, v5}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v10

    .line 319
    .local v10, "screensCount":I
    move-object/from16 v23, v7

    .end local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .local v23, "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    const/4 v7, 0x2

    if-ge v10, v7, :cond_c

    .line 320
    move/from16 v1, v16

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    move-object/from16 v9, v21

    move-object/from16 v7, v23

    goto/16 :goto_3

    .line 323
    :cond_c
    add-int/lit8 v7, v10, -0x1

    invoke-virtual {v9, v5, v7}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 324
    .local v7, "topScreen":Landroid/view/View;
    move-object/from16 v24, v8

    .end local v8    # "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .local v24, "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    add-int/lit8 v8, v10, -0x2

    invoke-virtual {v9, v5, v8}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v8

    .line 326
    .local v8, "secondScreen":Landroid/view/View;
    if-eqz p2, :cond_e

    .line 327
    nop

    .line 328
    move-object/from16 v25, v5

    .end local v5    # "sourceStack":Landroid/view/ViewGroup;
    .local v25, "sourceStack":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v5

    move-object/from16 v26, v9

    .end local v9    # "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .local v26, "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v5, v9, :cond_d

    .line 329
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v5, v9, :cond_d

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    .local v5, "isValidConfiguration":Z
    :goto_8
    goto :goto_9

    .line 331
    .end local v25    # "sourceStack":Landroid/view/ViewGroup;
    .end local v26    # "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .local v5, "sourceStack":Landroid/view/ViewGroup;
    .restart local v9    # "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    :cond_e
    move-object/from16 v25, v5

    move-object/from16 v26, v9

    .line 332
    .end local v5    # "sourceStack":Landroid/view/ViewGroup;
    .end local v9    # "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .restart local v25    # "sourceStack":Landroid/view/ViewGroup;
    .restart local v26    # "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v5, v9, :cond_f

    .line 333
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v5, v9, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    .line 335
    .local v5, "isValidConfiguration":Z
    :goto_9
    if-nez v5, :cond_13

    .line 336
    move/from16 v1, v16

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    move-object/from16 v9, v21

    move-object/from16 v7, v23

    goto/16 :goto_3

    .line 314
    .end local v10    # "screensCount":I
    .end local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .end local v24    # "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .end local v25    # "sourceStack":Landroid/view/ViewGroup;
    .end local v26    # "stackViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .local v5, "sourceStack":Landroid/view/ViewGroup;
    .local v7, "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .local v8, "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    :cond_10
    move-object/from16 v25, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .end local v5    # "sourceStack":Landroid/view/ViewGroup;
    .end local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .end local v8    # "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .restart local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .restart local v24    # "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .restart local v25    # "sourceStack":Landroid/view/ViewGroup;
    goto :goto_a

    .line 297
    .end local v17    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v19    # "isInSameStack":Z
    .end local v20    # "stackId":I
    .end local v22    # "sharedView":Landroid/view/View;
    .end local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .end local v24    # "stackViewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .end local v25    # "sourceStack":Landroid/view/ViewGroup;
    .local v5, "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .local v8, "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v10, "sharedView":Landroid/view/View;
    :cond_11
    move-object/from16 v18, v5

    move-object/from16 v23, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v5    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .end local v8    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "sharedView":Landroid/view/View;
    .restart local v17    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v22    # "sharedView":Landroid/view/View;
    .restart local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    move/from16 v1, v16

    goto/16 :goto_3

    .line 294
    .end local v3    # "viewSourceScreen":Landroid/view/View;
    .end local v16    # "isTransitionRestart":Z
    .end local v17    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v22    # "sharedView":Landroid/view/View;
    .end local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .local v1, "isTransitionRestart":Z
    .restart local v5    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .restart local v8    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v10    # "sharedView":Landroid/view/View;
    :cond_12
    move/from16 v16, v1

    move-object/from16 v18, v5

    move-object/from16 v23, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .line 341
    .end local v1    # "isTransitionRestart":Z
    .end local v5    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .end local v8    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "sharedView":Landroid/view/View;
    .restart local v16    # "isTransitionRestart":Z
    .restart local v17    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v22    # "sharedView":Landroid/view/View;
    .restart local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    :cond_13
    :goto_a
    const/4 v1, 0x0

    .line 342
    .local v1, "sourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    if-eqz p2, :cond_15

    .line 343
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mViewTagsToHide:Ljava/util/Set;

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    if-eqz v2, :cond_14

    .line 345
    new-instance v3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    invoke-direct {v3, v14}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;)V

    move-object v1, v3

    goto :goto_b

    .line 347
    :cond_14
    invoke-virtual {v0, v14}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->makeSnapshot(Landroid/view/View;)V

    .line 349
    :goto_b
    invoke-virtual {v0, v15}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->makeSnapshot(Landroid/view/View;)V

    goto :goto_c

    .line 350
    :cond_15
    if-eqz v2, :cond_16

    .line 351
    invoke-virtual {v0, v14}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->makeSnapshot(Landroid/view/View;)V

    .line 353
    :cond_16
    :goto_c
    if-nez v1, :cond_17

    .line 354
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 356
    :cond_17
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 357
    .local v3, "targetViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    if-nez v3, :cond_18

    .line 358
    invoke-virtual {v0, v15}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->makeSnapshot(Landroid/view/View;)V

    .line 361
    :cond_18
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v5, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    invoke-direct {v5, v14, v1, v15, v3}, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;-><init>(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V

    .line 366
    .local v5, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v1    # "sourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v2    # "isSourceViewInTransition":Z
    .end local v3    # "targetViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v5    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    .end local v11    # "targetViewTag":I
    .end local v12    # "bothAreRemoved":Z
    .end local v13    # "siblingView":Landroid/view/View;
    .end local v14    # "viewSource":Landroid/view/View;
    .end local v15    # "viewTarget":Landroid/view/View;
    .end local v22    # "sharedView":Landroid/view/View;
    move/from16 v1, v16

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    move-object/from16 v9, v21

    move-object/from16 v7, v23

    goto/16 :goto_3

    .line 369
    .end local v16    # "isTransitionRestart":Z
    .end local v17    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .local v1, "isTransitionRestart":Z
    .local v5, "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .restart local v8    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_19
    move/from16 v16, v1

    move-object/from16 v18, v5

    move-object/from16 v23, v7

    move-object/from16 v17, v8

    .end local v1    # "isTransitionRestart":Z
    .end local v5    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .end local v8    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v16    # "isTransitionRestart":Z
    .restart local v17    # "removedViewsTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "viewTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v23    # "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, "currentSourceViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v2, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 372
    .local v3, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v5, v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v3    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    goto :goto_d

    .line 374
    :cond_1a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 375
    .local v2, "newSourceViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 376
    .local v5, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v7, v5, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v5    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    goto :goto_e

    .line 378
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 379
    .local v5, "view":Landroid/view/View;
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 380
    iget-object v7, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mViewTagsToHide:Ljava/util/Set;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 381
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 379
    :cond_1c
    const/4 v7, 0x0

    .line 383
    .end local v5    # "view":Landroid/view/View;
    :goto_10
    goto :goto_f

    .line 384
    :cond_1d
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 385
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 386
    .restart local v5    # "view":Landroid/view/View;
    iget-object v7, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v5    # "view":Landroid/view/View;
    goto :goto_11

    .line 390
    .end local v1    # "currentSourceViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "newSourceViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    :cond_1e
    iput-object v6, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElements:Ljava/util/List;

    .line 391
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 392
    .local v2, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsLookup:Ljava/util/Map;

    iget-object v5, v2, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v2    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    goto :goto_12

    .line 394
    :cond_1f
    return-object v6
.end method

.method private synthetic lambda$finishSharedAnimation$1(Landroid/view/ViewParent;)V
    .locals 2
    .param p1, "transitionContainerParent"    # Landroid/view/ViewParent;

    .line 577
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mReattachedViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 578
    return-void

    .line 580
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 581
    return-void
.end method

.method static synthetic lambda$sortViewsByTags$0(Landroid/view/View;Landroid/view/View;)I
    .locals 2
    .param p0, "v1"    # Landroid/view/View;
    .param p1, "v2"    # Landroid/view/View;

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private maybeOverrideSiblingForTabNavigator(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "sharedView"    # Landroid/view/View;
    .param p2, "siblingView"    # Landroid/view/View;

    .line 398
    invoke-static {p1}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->getTabNavigator(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, "maybeTabNavigatorForSharedView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 401
    return-object p2

    .line 404
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    .line 405
    .local v1, "siblingTag":I
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->getSharedGroup(I)[I

    move-result-object v2

    .line 406
    .local v2, "sharedGroup":[I
    const/4 v3, -0x1

    .line 407
    .local v3, "siblingIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 408
    aget v5, v2, v4

    if-ne v5, v1, :cond_1

    .line 409
    move v3, v4

    .line 407
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 413
    .end local v4    # "i":I
    :cond_2
    move v4, v3

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 414
    aget v5, v2, v4

    .line 415
    .local v5, "viewTag":I
    iget-object v6, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    invoke-virtual {v6, v5}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveView(I)Landroid/view/View;

    move-result-object v6

    .line 416
    .local v6, "view":Landroid/view/View;
    invoke-static {v6}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->getTabNavigator(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-ne v0, v7, :cond_3

    .line 417
    return-object v6

    .line 413
    .end local v5    # "viewTag":I
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 421
    .end local v4    # "i":I
    :cond_4
    return-object p2
.end method

.method private maybeRestartAnimationWithNewLayout(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 137
    .local v0, "sharedView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "sharedElementsToRestart":Ljava/util/List;, "Ljava/util/List<Lcom/swmansion/reanimated/layoutReanimation/SharedElement;>;"
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 142
    .local v3, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v4, v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetView:Landroid/view/View;

    if-ne v4, v0, :cond_1

    .line 143
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    .line 145
    .local v4, "sourceView":Landroid/view/View;
    iget-object v5, v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetView:Landroid/view/View;

    .line 147
    .local v5, "targetView":Landroid/view/View;
    new-instance v6, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    invoke-direct {v6, v4}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;)V

    .line 148
    .local v6, "newSourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    iget-object v7, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 149
    .local v7, "currentTargetViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    new-instance v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    invoke-direct {v8, v5}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;)V

    .line 151
    .local v8, "newTargetViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    iget v9, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v10, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originXByParent:I

    sub-int/2addr v9, v10

    iget v10, v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    add-int/2addr v9, v10

    .line 155
    .local v9, "newOriginX":I
    iget v10, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget v11, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originYByParent:I

    sub-int/2addr v10, v11

    iget v11, v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    add-int/2addr v10, v11

    .line 160
    .local v10, "newOriginY":I
    iput v9, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    .line 161
    iput v10, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    .line 162
    iput v9, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->globalOriginX:I

    .line 163
    iput v10, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->globalOriginY:I

    .line 164
    iget v11, v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originXByParent:I

    iput v11, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originXByParent:I

    .line 165
    iget v11, v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originYByParent:I

    iput v11, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originYByParent:I

    .line 166
    iget v11, v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->height:I

    iput v11, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->height:I

    .line 167
    iget v11, v8, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->width:I

    iput v11, v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->width:I

    .line 168
    iput-object v6, v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceViewSnapshot:Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 169
    iput-object v7, v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetViewSnapshot:Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->disableCleaningForViewTag(I)V

    .line 172
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->disableCleaningForViewTag(I)V

    .line 174
    .end local v3    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    .end local v4    # "sourceView":Landroid/view/View;
    .end local v5    # "targetView":Landroid/view/View;
    .end local v6    # "newSourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v7    # "currentTargetViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v8    # "newTargetViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v9    # "newOriginX":I
    .end local v10    # "newOriginY":I
    :cond_1
    goto :goto_0

    .line 175
    :cond_2
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->startSharedTransition(Ljava/util/List;I)V

    .line 177
    return-void
.end method

.method private reparentSharedViewsForCurrentTransition(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;)V"
        }
    .end annotation

    .line 442
    .local p1, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lcom/swmansion/reanimated/layoutReanimation/SharedElement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 443
    .local v1, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v2, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    .line 444
    .local v2, "viewSource":Landroid/view/View;
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionParent:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 446
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    .line 447
    .local v4, "parentTag":I
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 448
    .local v5, "childIndex":I
    iget-object v6, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionParent:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v6, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionInParentIndex:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v6, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedViewChildrenIndices:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/SortedSet;

    .line 451
    .local v6, "childrenIndicesSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    if-nez v6, :cond_0

    .line 452
    iget-object v7, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedViewChildrenIndices:Ljava/util/Map;

    .line 453
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/util/TreeSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 452
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 455
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    .end local v2    # "viewSource":Landroid/view/View;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "parentTag":I
    .end local v5    # "childIndex":I
    .end local v6    # "childrenIndicesSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 460
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 461
    .restart local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v2, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    .line 462
    .restart local v2    # "viewSource":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 463
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 464
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mReattachedViews:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    .end local v2    # "viewSource":Landroid/view/View;
    goto :goto_2

    .line 466
    :cond_3
    return-void
.end method

.method private setupTransitionContainer()V
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 427
    .local v0, "context":Lcom/facebook/react/bridge/ReactContext;
    new-instance v1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-direct {v1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    .line 429
    .end local v0    # "context":Lcom/facebook/react/bridge/ReactContext;
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 431
    .restart local v0    # "context":Lcom/facebook/react/bridge/ReactContext;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 432
    .local v1, "currentActivity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 433
    return-void

    .line 435
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 436
    .local v2, "rootView":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 439
    .end local v0    # "context":Lcom/facebook/react/bridge/ReactContext;
    .end local v1    # "currentActivity":Landroid/app/Activity;
    .end local v2    # "rootView":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method private sortViewsByTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 238
    return-void
.end method

.method private startPreparedTransitions()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->startSharedTransition(Ljava/util/List;I)V

    .line 227
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithProgress:Ljava/util/List;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->startSharedTransition(Ljava/util/List;I)V

    .line 229
    return-void
.end method

.method private startSharedAnimationForView(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "before"    # Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .param p3, "after"    # Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .param p4, "type"    # I

    .line 479
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toTargetMap()Ljava/util/HashMap;

    move-result-object v0

    .line 480
    .local v0, "targetValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toCurrentMap()Ljava/util/HashMap;

    move-result-object v1

    .line 482
    .local v1, "startValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 483
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;ZZ)Ljava/util/HashMap;

    move-result-object v2

    .line 484
    .local v2, "preparedStartValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 485
    invoke-virtual {v3, v0, v4, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;ZZ)Ljava/util/HashMap;

    move-result-object v3

    .line 486
    .local v3, "preparedTargetValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 487
    .local v4, "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 489
    iget-object v5, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-interface {v5, v6, p4, v4}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimation(IILjava/util/HashMap;)V

    .line 490
    return-void
.end method

.method private startSharedTransition(Ljava/util/List;I)V
    .locals 5
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;I)V"
        }
    .end annotation

    .line 469
    .local p1, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lcom/swmansion/reanimated/layoutReanimation/SharedElement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 470
    .local v1, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v2, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    .line 471
    .local v2, "sourceView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v3, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceViewSnapshot:Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v4, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetViewSnapshot:Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->startSharedAnimationForView(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;I)V

    .line 474
    iget-object v3, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .end local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    .end local v2    # "sourceView":Landroid/view/View;
    goto :goto_0

    .line 476
    :cond_0
    return-void
.end method

.method private tryStartSharedTransitionForViews(Ljava/util/List;Z)Z
    .locals 1
    .param p2, "withNewElements"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)Z"
        }
    .end annotation

    .line 217
    .local p1, "sharedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->prepareSharedTransition(Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->startPreparedTransitions()V

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method private visitTree(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "treeVisitor"    # Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 654
    .local v0, "tag":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 655
    return-void

    .line 658
    :cond_0
    const/4 v1, 0x0

    .line 659
    .local v1, "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<Landroid/view/ViewGroup;>;"
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 660
    invoke-virtual {v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->getReanimatedNativeHierarchyManager()Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    move-result-object v2

    .line 662
    .local v2, "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    :try_start_0
    invoke-interface {p2, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;->run(Landroid/view/View;)V

    .line 664
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 665
    return-void

    .line 667
    :cond_1
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 668
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v4

    .line 669
    .local v4, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    instance-of v5, v4, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v5, :cond_2

    .line 670
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/uimanager/ViewGroupManager;
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 674
    .end local v4    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_2
    nop

    .line 675
    if-nez v1, :cond_3

    .line 676
    return-void

    .line 678
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 679
    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v5

    .line 680
    .local v5, "child":Landroid/view/View;
    invoke-direct {p0, v5, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitTree(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;)V

    .line 678
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 682
    .end local v4    # "i":I
    :cond_4
    return-void

    .line 672
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v3

    .line 673
    .local v3, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    return-void
.end method


# virtual methods
.method protected doSnapshotForTopScreenViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "stack"    # Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 120
    .local v0, "screensCount":I
    if-lez v0, :cond_1

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, "firstStackChild":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 123
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "screen":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V

    .line 125
    .end local v1    # "screen":Landroid/view/View;
    goto :goto_0

    .line 126
    :cond_0
    const-string v1, "[Reanimated]"

    const-string v3, "Unable to recognize screen on stack."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "firstStackChild":Landroid/view/View;
    :cond_1
    :goto_0
    return-void
.end method

.method protected finishSharedAnimation(I)V
    .locals 22
    .param p1, "tag"    # I

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mDisableCleaningForViewTag:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-direct/range {p0 .. p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->enableCleaningForViewTag(I)V

    .line 495
    return-void

    .line 497
    :cond_0
    iget-object v1, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsLookup:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 498
    .local v1, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    if-nez v1, :cond_1

    .line 499
    return-void

    .line 501
    :cond_1
    iget-object v2, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsLookup:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v2, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    .line 504
    .local v2, "view":Landroid/view/View;
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mReattachedViews:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 505
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mReattachedViews:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 508
    .local v3, "viewTag":I
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionParent:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 510
    .local v4, "parentView":Landroid/view/View;
    iget-object v5, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionInParentIndex:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 511
    .local v5, "childIndex":I
    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    .line 512
    .local v6, "parentViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    .line 513
    .local v7, "parentTag":I
    iget-object v8, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedViewChildrenIndices:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/SortedSet;

    .line 515
    .local v8, "childIndicesSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/SortedSet;->size()I

    move-result v9

    .line 516
    .local v9, "childIndexOffset":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 517
    invoke-interface {v8}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 518
    iget-object v10, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedViewChildrenIndices:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_2
    sub-int/2addr v5, v9

    .line 521
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-gt v5, v10, :cond_3

    .line 522
    invoke-virtual {v6, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 524
    :cond_3
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 526
    :goto_0
    iget-object v10, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 527
    .local v10, "viewSourcePreviousSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    if-eqz v10, :cond_7

    .line 528
    iget v11, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    .line 529
    .local v11, "originX":I
    iget v12, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    .line 530
    .local v12, "originY":I
    invoke-direct {v0, v2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->findStack(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_4

    .line 531
    iget v13, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originXByParent:I

    iput v13, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    .line 532
    iget v13, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originYByParent:I

    iput v13, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    .line 534
    :cond_4
    invoke-virtual {v10}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toBasicMap()Ljava/util/HashMap;

    move-result-object v13

    .line 535
    .local v13, "snapshotMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 536
    .local v14, "preparedValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v4

    .end local v4    # "parentView":Landroid/view/View;
    .local v17, "parentView":Landroid/view/View;
    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    .line 537
    .local v4, "key":Ljava/lang/String;
    move/from16 v16, v5

    .end local v5    # "childIndex":I
    .local v16, "childIndex":I
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 538
    .local v5, "value":Ljava/lang/Object;
    move-object/from16 v18, v6

    .end local v6    # "parentViewGroup":Landroid/view/ViewGroup;
    .local v18, "parentViewGroup":Landroid/view/ViewGroup;
    const-string v6, "transformMatrix"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 539
    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v21, v7

    goto :goto_2

    .line 541
    :cond_5
    invoke-static {v5}, Lcom/swmansion/reanimated/Utils;->convertToFloat(Ljava/lang/Object;)F

    move-result v6

    .line 542
    .local v6, "pixelsValue":F
    move-object/from16 v19, v5

    .end local v5    # "value":Ljava/lang/Object;
    .local v19, "value":Ljava/lang/Object;
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    move/from16 v20, v6

    .end local v6    # "pixelsValue":F
    .local v20, "pixelsValue":F
    float-to-double v5, v5

    .line 543
    .local v5, "dipValue":D
    move/from16 v21, v7

    .end local v7    # "parentTag":I
    .local v21, "parentTag":I
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v14, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "dipValue":D
    .end local v19    # "value":Ljava/lang/Object;
    .end local v20    # "pixelsValue":F
    :goto_2
    move/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    move/from16 v7, v21

    goto :goto_1

    .line 546
    .end local v16    # "childIndex":I
    .end local v17    # "parentView":Landroid/view/View;
    .end local v18    # "parentViewGroup":Landroid/view/ViewGroup;
    .end local v21    # "parentTag":I
    .local v4, "parentView":Landroid/view/View;
    .local v5, "childIndex":I
    .local v6, "parentViewGroup":Landroid/view/ViewGroup;
    .restart local v7    # "parentTag":I
    :cond_6
    move-object/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move/from16 v21, v7

    .end local v4    # "parentView":Landroid/view/View;
    .end local v5    # "childIndex":I
    .end local v6    # "parentViewGroup":Landroid/view/ViewGroup;
    .end local v7    # "parentTag":I
    .restart local v16    # "childIndex":I
    .restart local v17    # "parentView":Landroid/view/View;
    .restart local v18    # "parentViewGroup":Landroid/view/ViewGroup;
    .restart local v21    # "parentTag":I
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v14, v5}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->progressLayoutAnimation(ILjava/util/Map;Z)V

    .line 547
    iput v11, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    .line 548
    iput v12, v10, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    goto :goto_3

    .line 527
    .end local v11    # "originX":I
    .end local v12    # "originY":I
    .end local v13    # "snapshotMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "preparedValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "childIndex":I
    .end local v17    # "parentView":Landroid/view/View;
    .end local v18    # "parentViewGroup":Landroid/view/ViewGroup;
    .end local v21    # "parentTag":I
    .restart local v4    # "parentView":Landroid/view/View;
    .restart local v5    # "childIndex":I
    .restart local v6    # "parentViewGroup":Landroid/view/ViewGroup;
    .restart local v7    # "parentTag":I
    :cond_7
    move-object/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move/from16 v21, v7

    .line 550
    .end local v4    # "parentView":Landroid/view/View;
    .end local v5    # "childIndex":I
    .end local v6    # "parentViewGroup":Landroid/view/ViewGroup;
    .end local v7    # "parentTag":I
    .restart local v16    # "childIndex":I
    .restart local v17    # "parentView":Landroid/view/View;
    .restart local v18    # "parentViewGroup":Landroid/view/ViewGroup;
    .restart local v21    # "parentTag":I
    :goto_3
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mViewTagsToHide:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 551
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :cond_8
    iget-object v4, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetView:Landroid/view/View;

    .line 555
    .local v4, "targetView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 556
    .local v5, "targetViewTag":I
    iget-object v6, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v6, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v6, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionParent:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v6, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedTransitionInParentIndex:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .end local v3    # "viewTag":I
    .end local v4    # "targetView":Landroid/view/View;
    .end local v5    # "targetViewTag":I
    .end local v8    # "childIndicesSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v9    # "childIndexOffset":I
    .end local v10    # "viewSourcePreviousSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v16    # "childIndex":I
    .end local v17    # "parentView":Landroid/view/View;
    .end local v18    # "parentViewGroup":Landroid/view/ViewGroup;
    .end local v21    # "parentTag":I
    :cond_9
    iget-object v3, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 563
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 564
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    .line 567
    :cond_a
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mReattachedViews:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 568
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 569
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 570
    .local v3, "transitionContainerParent":Landroid/view/ViewParent;
    if-eqz v3, :cond_b

    .line 575
    iget-object v4, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTransitionContainer:Landroid/view/View;

    new-instance v5, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v3}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$$ExternalSyntheticLambda1;-><init>(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;Landroid/view/ViewParent;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 584
    .end local v3    # "transitionContainerParent":Landroid/view/ViewParent;
    :cond_b
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 585
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithProgress:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 586
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 587
    iget-object v3, v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mViewTagsToHide:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 589
    :cond_c
    return-void
.end method

.method protected getTransitioningView(I)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mCurrentSharedTransitionViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected makeSnapshot(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 616
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    invoke-direct {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;)V

    .line 617
    .local v0, "snapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    return-void
.end method

.method public navigationTabChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "previousTab"    # Landroid/view/View;
    .param p2, "newTab"    # Landroid/view/View;

    .line 744
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAddedSharedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v0, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lcom/swmansion/reanimated/layoutReanimation/SharedElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v1, "sharedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0, p1, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->findSharedViewsForScreen(Landroid/view/View;Ljava/util/List;)V

    .line 748
    invoke-direct {p0, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->sortViewsByTags(Ljava/util/List;)V

    .line 749
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 750
    .local v3, "sharedView":Landroid/view/View;
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->getSharedGroup(I)[I

    move-result-object v4

    .line 751
    .local v4, "sharedGroup":[I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 752
    iget-object v6, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    aget v7, v4, v5

    invoke-virtual {v6, v7}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveView(I)Landroid/view/View;

    move-result-object v6

    .line 753
    .local v6, "targetView":Landroid/view/View;
    invoke-static {v6, p2}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isViewChildOfScreen(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 754
    goto :goto_2

    .line 756
    :cond_0
    iget-object v7, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSnapshotRegistry:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 757
    .local v7, "sourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    if-nez v7, :cond_1

    .line 760
    nop

    .line 751
    .end local v6    # "targetView":Landroid/view/View;
    .end local v7    # "sourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 762
    .restart local v6    # "targetView":Landroid/view/View;
    .restart local v7    # "sourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    :cond_1
    new-instance v8, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    new-instance v9, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    invoke-direct {v9, v6}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;)V

    invoke-direct {v8, v3, v7, v6, v9}, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;-><init>(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V

    .line 764
    .local v8, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    nop

    .line 767
    .end local v3    # "sharedView":Landroid/view/View;
    .end local v4    # "sharedGroup":[I
    .end local v5    # "i":I
    .end local v6    # "targetView":Landroid/view/View;
    .end local v7    # "sourceViewSnapshot":Lcom/swmansion/reanimated/layoutReanimation/Snapshot;
    .end local v8    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    :cond_2
    goto :goto_0

    .line 768
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 769
    return-void

    .line 771
    :cond_4
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElements:Ljava/util/List;

    .line 772
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 773
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 774
    .local v3, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsLookup:Ljava/util/Map;

    iget-object v5, v3, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    .end local v3    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    goto :goto_3

    .line 777
    :cond_5
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->setupTransitionContainer()V

    .line 778
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->reparentSharedViewsForCurrentTransition(Ljava/util/List;)V

    .line 779
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->startSharedTransition(Ljava/util/List;I)V

    .line 781
    return-void
.end method

.method protected notifyAboutNewView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAddedSharedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method protected notifyAboutRemovedView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method protected onScreenWillDisappear()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTagsToCleanup:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 197
    .local v1, "tag":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    .line 198
    .end local v1    # "tag":Ljava/lang/Integer;
    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mTagsToCleanup:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 201
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mIsTransitionPrepared:Z

    if-nez v0, :cond_1

    .line 202
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mIsTransitionPrepared:Z

    .line 205
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 206
    .local v1, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    new-instance v2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v3, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetView:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetViewSnapshot:Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 207
    .end local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithProgress:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 209
    .restart local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    new-instance v2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v3, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetView:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->targetViewSnapshot:Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    .line 210
    .end local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    goto :goto_2

    .line 212
    :cond_3
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->startPreparedTransitions()V

    .line 213
    return-void
.end method

.method protected onViewsRemoval([I)V
    .locals 2
    .param p1, "tagsToDelete"    # [I

    .line 104
    if-nez p1, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$SnapshotTreeVisitor;

    invoke-direct {v0, p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$SnapshotTreeVisitor;-><init>(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;)V

    invoke-virtual {p0, p1, v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitTreeForTags([ILcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;)V

    .line 108
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->prepareSharedTransition(Ljava/util/List;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mIsTransitionPrepared:Z

    .line 111
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mIsTransitionPrepared:Z

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mRemovedSharedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    :cond_1
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$PrepareConfigCleanupTreeVisitor;

    invoke-direct {v0, p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$PrepareConfigCleanupTreeVisitor;-><init>(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;)V

    invoke-virtual {p0, p1, v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitTreeForTags([ILcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;)V

    .line 116
    :cond_2
    return-void
.end method

.method orderByAnimationTypes(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/layoutReanimation/SharedElement;",
            ">;)V"
        }
    .end annotation

    .line 728
    .local p1, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lcom/swmansion/reanimated/layoutReanimation/SharedElement;>;"
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithProgress:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 729
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 730
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;

    .line 731
    .local v1, "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    iget-object v2, v1, Lcom/swmansion/reanimated/layoutReanimation/SharedElement;->sourceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 732
    .local v2, "viewTag":I
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 733
    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v3

    .line 735
    .local v3, "viewHasProgressAnimation":Z
    if-eqz v3, :cond_0

    .line 736
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithProgress:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 738
    :cond_0
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mSharedElementsWithAnimation:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    .end local v1    # "sharedElement":Lcom/swmansion/reanimated/layoutReanimation/SharedElement;
    .end local v2    # "viewTag":I
    .end local v3    # "viewHasProgressAnimation":Z
    :goto_1
    goto :goto_0

    .line 741
    :cond_1
    return-void
.end method

.method protected prepareSharedTransition(Ljava/util/List;Z)Z
    .locals 3
    .param p2, "withNewElements"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)Z"
        }
    .end annotation

    .line 180
    .local p1, "sharedViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->sortViewsByTags(Ljava/util/List;)V

    .line 184
    nop

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->getSharedElementsForCurrentTransition(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lcom/swmansion/reanimated/layoutReanimation/SharedElement;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    return v1

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->setupTransitionContainer()V

    .line 190
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->reparentSharedViewsForCurrentTransition(Ljava/util/List;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->orderByAnimationTypes(Ljava/util/List;)V

    .line 192
    const/4 v1, 0x1

    return v1
.end method

.method protected screenDidLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAddedSharedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    nop

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 90
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 92
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v0, :cond_1

    .line 93
    new-instance v1, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TopWillAppearListener;

    invoke-direct {v1, p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TopWillAppearListener;-><init>(Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    .line 95
    :cond_1
    return-void
.end method

.method protected setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V
    .locals 0
    .param p1, "nativeMethods"    # Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 132
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 133
    return-void
.end method

.method protected viewDidLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 101
    return-void
.end method

.method visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 685
    invoke-static {p1}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->getTopScreenForStack(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 686
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 687
    return-void

    .line 689
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 690
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 690
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->makeSnapshot(Landroid/view/View;)V

    .line 694
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 695
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 696
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V

    .line 694
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected visitTreeForTags([ILcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;)V
    .locals 5
    .param p1, "viewTags"    # [I
    .param p2, "treeVisitor"    # Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;

    .line 641
    if-nez p1, :cond_0

    .line 642
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 645
    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->getReanimatedNativeHierarchyManager()Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    move-result-object v0

    .line 646
    .local v0, "reanimatedNativeHierarchyManager":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 647
    .local v3, "viewTag":I
    invoke-virtual {v0, v3}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v4

    .line 648
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitTree(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager$TreeVisitor;)V

    .line 646
    .end local v3    # "viewTag":I
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    :cond_1
    return-void
.end method
