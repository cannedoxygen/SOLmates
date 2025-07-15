.class public Lcom/facebook/react/views/scroll/ReactScrollView;
.super Landroid/widget/ScrollView;
.source "ReactScrollView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;
.implements Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;
.implements Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;
.implements Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;
.implements Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;
.implements Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;


# static fields
.field private static final UNSET_CONTENT_OFFSET:I = -0x1

.field private static sScrollerField:Ljava/lang/reflect/Field;

.field private static sTriedToGetScrollerField:Z


# instance fields
.field private final DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

.field private mActivelyScrolling:Z

.field private mClippingRect:Landroid/graphics/Rect;

.field private mContentView:Landroid/view/View;

.field private mCurrentContentOffset:Lcom/facebook/react/bridge/ReadableMap;

.field private mDisableIntervalMomentum:Z

.field private mDragging:Z

.field private mEnableSyncOnScroll:Z

.field private mEndBackground:Landroid/graphics/drawable/Drawable;

.field private mEndFillColor:I

.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

.field private mLastScrollDispatchTime:J

.field private mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

.field private final mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

.field private mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

.field private final mOverflowInset:Landroid/graphics/Rect;

.field private mPagingEnabled:Z

.field private mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

.field private mPostTouchRunnable:Ljava/lang/Runnable;

.field private mPreventReentry:Z

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private final mReactScrollViewScrollState:Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

.field private mRemoveClippedSubviews:Z

.field private mScrollEnabled:Z

.field private mScrollEventThrottle:I

.field private mScrollPerfTag:Ljava/lang/String;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSendMomentumEvents:Z

.field private mSnapInterval:I

.field private mSnapOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapToAlignment:I

.field private mSnapToEnd:Z

.field private mSnapToStart:Z

.field private mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

.field private pendingContentOffsetX:I

.field private pendingContentOffsetY:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivelyScrolling(Lcom/facebook/react/views/scroll/ReactScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPagingEnabled(Lcom/facebook/react/views/scroll/ReactScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendMomentumEvents(Lcom/facebook/react/views/scroll/ReactScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActivelyScrolling(Lcom/facebook/react/views/scroll/ReactScrollView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPostTouchRunnable(Lcom/facebook/react/views/scroll/ReactScrollView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableFpsListener(Lcom/facebook/react/views/scroll/ReactScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->disableFpsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mflingAndSnap(Lcom/facebook/react/views/scroll/ReactScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->flingAndSnap(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;-><init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fpsListener"    # Lcom/facebook/react/views/scroll/FpsListener;

    .line 140
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 95
    new-instance v0, Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/VelocityHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflowInset:Landroid/graphics/Rect;

    .line 101
    sget-object v0, Lcom/facebook/react/uimanager/style/Overflow;->SCROLL:Lcom/facebook/react/uimanager/style/Overflow;

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    .line 107
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPreventReentry:Z

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 111
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEnableSyncOnScroll:Z

    .line 113
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    .line 114
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDisableIntervalMomentum:Z

    .line 115
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    .line 117
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToStart:Z

    .line 118
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToEnd:Z

    .line 119
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    .line 122
    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mCurrentContentOffset:Lcom/facebook/react/bridge/ReadableMap;

    .line 123
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetX:I

    .line 124
    iput v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetY:I

    .line 125
    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 126
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    invoke-direct {v1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactScrollViewScrollState:Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 128
    const-string/jumbo v1, "scrollY"

    filled-new-array {v0, v0}, [I

    move-result-object v3

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

    .line 129
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 130
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mLastScrollDispatchTime:J

    .line 131
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEventThrottle:I

    .line 132
    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    .line 141
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 142
    new-instance v1, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 144
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOverScrollerFromParent()Landroid/widget/OverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 145
    invoke-virtual {p0, p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 146
    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->setScrollBarStyle(I)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->setClipChildren(Z)V

    .line 148
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setOverflow(Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewAccessibilityDelegate;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 151
    return-void
.end method

.method private cancelPostTouchScrolling()V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    .line 767
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 769
    :cond_0
    return-void
.end method

.method private correctFlingVelocityY(I)I
    .locals 2
    .param p1, "velocityY"    # I

    .line 607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    .line 608
    return p1

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 619
    .local v0, "signum":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 620
    int-to-float v1, p1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 622
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private disableFpsListener()V
    .locals 2

    .line 634
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->disable(Ljava/lang/String;)V

    .line 639
    :cond_0
    return-void
.end method

.method private enableFpsListener()V
    .locals 2

    .line 626
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->enable(Ljava/lang/String;)V

    .line 631
    :cond_0
    return-void
.end method

.method private flingAndSnap(I)V
    .locals 27
    .param p1, "velocityY"    # I

    .line 846
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 847
    return-void

    .line 851
    :cond_0
    iget v1, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    if-nez v1, :cond_1

    iget v1, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    if-nez v1, :cond_1

    .line 852
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->smoothScrollAndSnap(I)V

    .line 853
    return-void

    .line 856
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 857
    .local v1, "hasCustomizedFlingAnimator":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v2

    .line 858
    .local v2, "maximumOffset":I
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->predictFinalScrollPosition(I)I

    move-result v5

    .line 859
    .local v5, "targetOffset":I
    iget-boolean v6, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDisableIntervalMomentum:Z

    if-eqz v6, :cond_3

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v5

    .line 863
    :cond_3
    const/4 v6, 0x0

    .line 864
    .local v6, "smallerOffset":I
    move v7, v2

    .line 865
    .local v7, "largerOffset":I
    const/4 v8, 0x0

    .line 866
    .local v8, "firstOffset":I
    move v9, v2

    .line 867
    .local v9, "lastOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    .line 870
    .local v10, "height":I
    iget-object v11, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    if-eqz v11, :cond_7

    .line 871
    iget-object v11, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 872
    iget-object v11, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    iget-object v12, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 874
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v12, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 875
    iget-object v12, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 877
    .local v12, "offset":I
    if-gt v12, v5, :cond_4

    .line 878
    sub-int v13, v5, v12

    sub-int v14, v5, v6

    if-ge v13, v14, :cond_4

    .line 879
    move v6, v12

    .line 883
    :cond_4
    if-lt v12, v5, :cond_5

    .line 884
    sub-int v13, v12, v5

    sub-int v14, v7, v5

    if-ge v13, v14, :cond_5

    .line 885
    move v7, v12

    .line 874
    .end local v12    # "offset":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    move v14, v5

    .end local v11    # "i":I
    goto/16 :goto_5

    .line 890
    :cond_7
    iget v11, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    if-eqz v11, :cond_d

    .line 891
    iget v11, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    if-lez v11, :cond_8

    .line 892
    int-to-double v11, v5

    iget v13, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    .line 893
    .local v11, "ratio":D
    iget v13, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    .line 897
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    iget v3, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    move/from16 v17, v5

    .end local v5    # "targetOffset":I
    .local v17, "targetOffset":I
    int-to-double v4, v3

    mul-double/2addr v14, v4

    double-to-int v3, v14

    iget v4, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    .line 895
    invoke-direct {v0, v13, v3, v4, v10}, Lcom/facebook/react/views/scroll/ReactScrollView;->getItemStartOffset(IIII)I

    move-result v3

    .line 894
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 901
    iget v3, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    .line 905
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v13, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    int-to-double v13, v13

    mul-double/2addr v4, v13

    double-to-int v4, v4

    iget v5, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    .line 903
    invoke-direct {v0, v3, v4, v5, v10}, Lcom/facebook/react/views/scroll/ReactScrollView;->getItemStartOffset(IIII)I

    move-result v3

    .line 902
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 909
    .end local v11    # "ratio":D
    move/from16 v14, v17

    goto/16 :goto_5

    .line 910
    .end local v17    # "targetOffset":I
    .restart local v5    # "targetOffset":I
    :cond_8
    move/from16 v17, v5

    .end local v5    # "targetOffset":I
    .restart local v17    # "targetOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 911
    .local v3, "contentView":Landroid/view/ViewGroup;
    move v4, v7

    .line 912
    .local v4, "smallerChildOffset":I
    move v5, v6

    .line 913
    .local v5, "largerChildOffset":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_c

    .line 914
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 916
    .local v12, "item":Landroid/view/View;
    iget v13, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    packed-switch v13, :pswitch_data_0

    .line 927
    move/from16 v14, v17

    move-object/from16 v17, v3

    .end local v3    # "contentView":Landroid/view/ViewGroup;
    .local v14, "targetOffset":I
    .local v17, "contentView":Landroid/view/ViewGroup;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid SnapToAlignment value: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 924
    .end local v14    # "targetOffset":I
    .restart local v3    # "contentView":Landroid/view/ViewGroup;
    .local v17, "targetOffset":I
    :pswitch_0
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int v14, v10, v14

    sub-int/2addr v13, v14

    .line 925
    .local v13, "itemStartOffset":I
    goto :goto_3

    .line 918
    .end local v13    # "itemStartOffset":I
    :pswitch_1
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int v14, v10, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    .line 919
    .restart local v13    # "itemStartOffset":I
    goto :goto_3

    .line 921
    .end local v13    # "itemStartOffset":I
    :pswitch_2
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 922
    .restart local v13    # "itemStartOffset":I
    nop

    .line 929
    :goto_3
    move/from16 v14, v17

    .end local v17    # "targetOffset":I
    .restart local v14    # "targetOffset":I
    if-gt v13, v14, :cond_9

    .line 930
    sub-int v15, v14, v13

    move-object/from16 v17, v3

    .end local v3    # "contentView":Landroid/view/ViewGroup;
    .local v17, "contentView":Landroid/view/ViewGroup;
    sub-int v3, v14, v6

    if-ge v15, v3, :cond_a

    .line 931
    move v3, v13

    move v6, v3

    .end local v6    # "smallerOffset":I
    .local v3, "smallerOffset":I
    goto :goto_4

    .line 929
    .end local v17    # "contentView":Landroid/view/ViewGroup;
    .local v3, "contentView":Landroid/view/ViewGroup;
    .restart local v6    # "smallerOffset":I
    :cond_9
    move-object/from16 v17, v3

    .line 935
    .end local v3    # "contentView":Landroid/view/ViewGroup;
    .restart local v17    # "contentView":Landroid/view/ViewGroup;
    :cond_a
    :goto_4
    if-lt v13, v14, :cond_b

    .line 936
    sub-int v3, v13, v14

    sub-int v15, v7, v14

    if-ge v3, v15, :cond_b

    .line 937
    move v3, v13

    move v7, v3

    .line 941
    :cond_b
    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 942
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 913
    .end local v12    # "item":Landroid/view/View;
    .end local v13    # "itemStartOffset":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    move/from16 v17, v14

    goto :goto_2

    .end local v14    # "targetOffset":I
    .restart local v3    # "contentView":Landroid/view/ViewGroup;
    .local v17, "targetOffset":I
    :cond_c
    move/from16 v14, v17

    move-object/from16 v17, v3

    .line 948
    .end local v3    # "contentView":Landroid/view/ViewGroup;
    .end local v11    # "i":I
    .restart local v14    # "targetOffset":I
    .local v17, "contentView":Landroid/view/ViewGroup;
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 949
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 950
    .end local v4    # "smallerChildOffset":I
    .end local v5    # "largerChildOffset":I
    .end local v17    # "contentView":Landroid/view/ViewGroup;
    goto :goto_5

    .line 952
    .end local v14    # "targetOffset":I
    .local v5, "targetOffset":I
    :cond_d
    move v14, v5

    .end local v5    # "targetOffset":I
    .restart local v14    # "targetOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getSnapInterval()I

    move-result v3

    int-to-double v3, v3

    .line 953
    .local v3, "interval":D
    int-to-double v11, v14

    div-double/2addr v11, v3

    .line 954
    .local v11, "ratio":D
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    move v13, v6

    .end local v6    # "smallerOffset":I
    .local v13, "smallerOffset":I
    mul-double v5, v17, v3

    double-to-int v6, v5

    .line 955
    .end local v13    # "smallerOffset":I
    .restart local v6    # "smallerOffset":I
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move v13, v6

    .end local v6    # "smallerOffset":I
    .restart local v13    # "smallerOffset":I
    mul-double v5, v17, v3

    double-to-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v13

    .line 960
    .end local v3    # "interval":D
    .end local v11    # "ratio":D
    .end local v13    # "smallerOffset":I
    .restart local v6    # "smallerOffset":I
    :goto_5
    sub-int v5, v14, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, v7, v14

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 961
    move v3, v6

    goto :goto_6

    .line 962
    :cond_e
    move v3, v7

    :goto_6
    nop

    .line 966
    .local v3, "nearestOffset":I
    iget-boolean v4, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToEnd:Z

    if-nez v4, :cond_10

    if-lt v14, v9, :cond_10

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v4

    if-lt v4, v9, :cond_f

    goto :goto_7

    .line 971
    :cond_f
    move v5, v9

    move/from16 v4, p1

    .end local v14    # "targetOffset":I
    .restart local v5    # "targetOffset":I
    goto :goto_a

    .line 973
    .end local v5    # "targetOffset":I
    .restart local v14    # "targetOffset":I
    :cond_10
    iget-boolean v4, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToStart:Z

    if-nez v4, :cond_12

    if-gt v14, v8, :cond_12

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v4

    if-gt v4, v8, :cond_11

    .line 1001
    :goto_7
    move/from16 v4, p1

    move v5, v14

    goto :goto_a

    .line 978
    :cond_11
    move v5, v8

    move/from16 v4, p1

    .end local v14    # "targetOffset":I
    .restart local v5    # "targetOffset":I
    goto :goto_a

    .line 980
    .end local v5    # "targetOffset":I
    .restart local v14    # "targetOffset":I
    :cond_12
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    if-lez p1, :cond_14

    .line 981
    if-nez v1, :cond_13

    .line 984
    sub-int v11, v7, v14

    int-to-double v11, v11

    mul-double/2addr v11, v4

    double-to-int v4, v11

    add-int v4, p1, v4

    .end local p1    # "velocityY":I
    .local v4, "velocityY":I
    goto :goto_8

    .line 981
    .end local v4    # "velocityY":I
    .restart local p1    # "velocityY":I
    :cond_13
    move/from16 v4, p1

    .line 987
    .end local p1    # "velocityY":I
    .restart local v4    # "velocityY":I
    :goto_8
    move v5, v7

    .end local v14    # "targetOffset":I
    .restart local v5    # "targetOffset":I
    goto :goto_a

    .line 988
    .end local v4    # "velocityY":I
    .end local v5    # "targetOffset":I
    .restart local v14    # "targetOffset":I
    .restart local p1    # "velocityY":I
    :cond_14
    if-gez p1, :cond_16

    .line 989
    if-nez v1, :cond_15

    .line 992
    sub-int v11, v14, v6

    int-to-double v11, v11

    mul-double/2addr v11, v4

    double-to-int v4, v11

    sub-int v4, p1, v4

    .end local p1    # "velocityY":I
    .restart local v4    # "velocityY":I
    goto :goto_9

    .line 989
    .end local v4    # "velocityY":I
    .restart local p1    # "velocityY":I
    :cond_15
    move/from16 v4, p1

    .line 995
    .end local p1    # "velocityY":I
    .restart local v4    # "velocityY":I
    :goto_9
    move v5, v6

    .end local v14    # "targetOffset":I
    .restart local v5    # "targetOffset":I
    goto :goto_a

    .line 997
    .end local v4    # "velocityY":I
    .end local v5    # "targetOffset":I
    .restart local v14    # "targetOffset":I
    .restart local p1    # "velocityY":I
    :cond_16
    move v5, v3

    move/from16 v4, p1

    .line 1001
    .end local v14    # "targetOffset":I
    .end local p1    # "velocityY":I
    .restart local v4    # "velocityY":I
    .restart local v5    # "targetOffset":I
    :goto_a
    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1003
    if-nez v1, :cond_1b

    iget-object v12, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-nez v12, :cond_17

    goto :goto_c

    .line 1010
    :cond_17
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 1012
    iget-object v12, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v17

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v18

    .line 1018
    if-eqz v4, :cond_18

    move/from16 v20, v4

    goto :goto_b

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v13

    sub-int v13, v5, v13

    move/from16 v20, v13

    .line 1027
    :goto_b
    if-eqz v5, :cond_19

    if-ne v5, v2, :cond_1a

    :cond_19
    div-int/lit8 v11, v10, 0x2

    :cond_1a
    move/from16 v26, v11

    .line 1012
    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v12

    move/from16 v23, v5

    move/from16 v24, v5

    invoke-virtual/range {v16 .. v26}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->postInvalidateOnAnimation()V

    goto :goto_d

    .line 1004
    :cond_1b
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v11

    invoke-virtual {v0, v11, v5}, Lcom/facebook/react/views/scroll/ReactScrollView;->reactSmoothScrollTo(II)V

    .line 1032
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContentView()Landroid/view/View;
    .locals 1

    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getItemStartOffset(IIII)I
    .locals 3
    .param p1, "snapToAlignment"    # I
    .param p2, "itemStartPosition"    # I
    .param p3, "itemHeight"    # I
    .param p4, "viewPortHeight"    # I

    .line 1037
    packed-switch p1, :pswitch_data_0

    .line 1048
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SnapToAlignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :pswitch_0
    sub-int v0, p4, p3

    sub-int v0, p2, v0

    .line 1046
    .local v0, "itemStartOffset":I
    goto :goto_0

    .line 1039
    .end local v0    # "itemStartOffset":I
    :pswitch_1
    sub-int v0, p4, p3

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 1040
    .restart local v0    # "itemStartOffset":I
    goto :goto_0

    .line 1042
    .end local v0    # "itemStartOffset":I
    :pswitch_2
    move v0, p2

    .line 1043
    .restart local v0    # "itemStartOffset":I
    nop

    .line 1050
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaxScrollY()I
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 647
    .local v0, "contentHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 648
    .local v2, "viewportHeight":I
    sub-int v3, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getOverScrollerFromParent()Landroid/widget/OverScroller;
    .locals 4

    .line 171
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    const-string v1, "ReactNative"

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    .line 174
    :try_start_0
    const-class v2, Landroid/widget/ScrollView;

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    .line 175
    sget-object v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "Failed to get mScroller field for ScrollView! This app will exhibit the bounce-back scrolling bug :("

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 186
    :try_start_1
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "scrollerValue":Ljava/lang/Object;
    instance-of v2, v0, Landroid/widget/OverScroller;

    if-eqz v2, :cond_1

    .line 188
    move-object v1, v0

    check-cast v1, Landroid/widget/OverScroller;

    .local v1, "scroller":Landroid/widget/OverScroller;
    goto :goto_1

    .line 190
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    :cond_1
    const-string v2, "Failed to cast mScroller field in ScrollView (probably due to OEM changes to AOSP)! This app will exhibit the bounce-back scrolling bug :("

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    const/4 v1, 0x0

    .line 198
    .end local v0    # "scrollerValue":Ljava/lang/Object;
    .restart local v1    # "scroller":Landroid/widget/OverScroller;
    :goto_1
    goto :goto_2

    .line 196
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get mScroller from ScrollView!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    const/4 v1, 0x0

    .line 203
    .restart local v1    # "scroller":Landroid/widget/OverScroller;
    :goto_2
    return-object v1
.end method

.method private getScrollDelta(Landroid/view/View;)I
    .locals 1
    .param p1, "descendent"    # Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 390
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 391
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method private getSnapInterval()I
    .locals 1

    .line 1054
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    if-eqz v0, :cond_0

    .line 1055
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    return v0

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v0

    return v0
.end method

.method private handlePostTouchScrolling(II)V
    .locals 3
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 694
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 695
    return-void

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    if-eqz v0, :cond_1

    .line 699
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->enableFpsListener()V

    .line 700
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V

    .line 703
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 704
    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollView$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/scroll/ReactScrollView$1;-><init>(Lcom/facebook/react/views/scroll/ReactScrollView;)V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    .line 759
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x14

    invoke-static {p0, v0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 761
    return-void
.end method

.method private isContentReady()Z
    .locals 2

    .line 1196
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1197
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isScrollPerfLoggingEnabled()Z
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private predictFinalScrollPosition(I)I
    .locals 2
    .param p1, "velocityY"    # I

    .line 775
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

    if-ne v0, v1, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->predictFinalScrollPosition(Landroid/view/ViewGroup;IIII)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 782
    :cond_0
    nop

    .line 779
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v0

    .line 780
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getFinalAnimatedPositionScroll()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 777
    invoke-static {p0, v0, v1, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v0

    .line 782
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->getFlingExtrapolatedDistance(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 775
    :goto_0
    return v0
.end method

.method private recreateFlingAnimation(I)V
    .locals 13
    .param p1, "scrollY"    # I

    .line 1157
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 1166
    .local v0, "scrollerYBeforeTick":I
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    .line 1170
    .local v1, "hasMoreTicks":Z
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1172
    if-eqz v1, :cond_1

    .line 1178
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getStartY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 1179
    .local v2, "direction":F
    iget-object v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    mul-float/2addr v3, v2

    .line 1181
    .local v3, "flingVelocityY":F
    iget-object v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v5

    float-to-int v8, v3

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1182
    .end local v2    # "direction":F
    .end local v3    # "flingVelocityY":F
    goto :goto_0

    .line 1183
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    .line 1186
    .end local v0    # "scrollerYBeforeTick":I
    .end local v1    # "hasMoreTicks":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 403
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 410
    .local v1, "scrollDelta":I
    if-eqz v1, :cond_0

    .line 411
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollBy(II)V

    .line 413
    :cond_0
    return-void
.end method

.method private setPendingContentOffsets(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1208
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetX:I

    .line 1210
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetY:I

    goto :goto_0

    .line 1212
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetX:I

    .line 1213
    iput p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetY:I

    .line 1215
    :goto_0
    return-void
.end method

.method private smoothScrollAndSnap(I)V
    .locals 12
    .param p1, "velocity"    # I

    .line 795
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getSnapInterval()I

    move-result v0

    int-to-double v0, v0

    .line 796
    .local v0, "interval":D
    nop

    .line 800
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v2

    .line 801
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getFinalAnimatedPositionScroll()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 798
    invoke-static {p0, v2, v3, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v2

    int-to-double v2, v2

    .line 803
    .local v2, "currentOffset":D
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->predictFinalScrollPosition(I)I

    move-result v4

    int-to-double v4, v4

    .line 805
    .local v4, "targetOffset":D
    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 806
    .local v6, "previousPage":I
    div-double v7, v2, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 807
    .local v7, "nextPage":I
    div-double v8, v2, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 808
    .local v8, "currentPage":I
    div-double v9, v4, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    .line 810
    .local v9, "targetPage":I
    if-lez p1, :cond_0

    if-ne v7, v6, :cond_0

    .line 811
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 812
    :cond_0
    if-gez p1, :cond_1

    if-ne v6, v7, :cond_1

    .line 813
    add-int/lit8 v6, v6, -0x1

    .line 816
    :cond_1
    :goto_0
    if-lez p1, :cond_2

    if-ge v8, v7, :cond_2

    if-le v9, v6, :cond_2

    .line 825
    move v8, v7

    goto :goto_1

    .line 826
    :cond_2
    if-gez p1, :cond_3

    if-le v8, v6, :cond_3

    if-ge v9, v7, :cond_3

    .line 835
    move v8, v6

    .line 838
    :cond_3
    :goto_1
    int-to-double v10, v8

    mul-double/2addr v10, v0

    .line 839
    .end local v4    # "targetOffset":D
    .local v10, "targetOffset":D
    cmpl-double v4, v10, v2

    if-eqz v4, :cond_4

    .line 840
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 841
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v4

    double-to-int v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/facebook/react/views/scroll/ReactScrollView;->reactSmoothScrollTo(II)V

    .line 843
    :cond_4
    return-void
.end method

.method private updateScrollAwayState(I)V
    .locals 1
    .param p1, "scrollAwayPaddingTop"    # I

    .line 1341
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setScrollAwayPaddingTop(I)V

    .line 1342
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->forceUpdateState(Landroid/view/ViewGroup;)V

    .line 1343
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 246
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 508
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->canChildrenBeTouchTarget(Lcom/facebook/react/uimanager/PointerEvents;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 662
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    if-eqz v0, :cond_0

    .line 663
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 664
    .local v0, "contentView":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 665
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 666
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 670
    .end local v0    # "contentView":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 671
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 517
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 518
    .local v0, "eventKeyCode":I
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    if-nez v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 521
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 523
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public flashScrollIndicators()V
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->awakenScrollBars()Z

    .line 270
    return-void
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .line 567
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->correctFlingVelocityY(I)I

    move-result v11

    .line 569
    .local v11, "correctedVelocityY":I
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0, v11}, Lcom/facebook/react/views/scroll/ReactScrollView;->flingAndSnap(I)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v1

    sub-int v12, v0, v1

    .line 584
    .local v12, "scrollWindowHeight":I
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 585
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v1

    .line 586
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v2

    div-int/lit8 v10, v12, 0x2

    .line 584
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    move v4, v11

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 597
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 600
    .end local v12    # "scrollWindowHeight":I
    goto :goto_0

    .line 601
    :cond_1
    invoke-super {p0, v11}, Landroid/widget/ScrollView;->fling(I)V

    .line 603
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v11}, Lcom/facebook/react/views/scroll/ReactScrollView;->handlePostTouchScrolling(II)V

    .line 604
    return-void
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .line 562
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outClippingRect"    # Landroid/graphics/Rect;

    .line 557
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 558
    return-void
.end method

.method public getFlingAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getFlingExtrapolatedDistance(I)I
    .locals 2
    .param p1, "velocityY"    # I

    .line 1387
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v1

    invoke-static {p0, v0, p1, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->predictFinalScrollPosition(Landroid/view/ViewGroup;IIII)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getLastScrollDispatchTime()J
    .locals 2

    .line 1416
    iget-wide v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mLastScrollDispatchTime:J

    return-wide v0
.end method

.method public getOverflow()Ljava/lang/String;
    .locals 2

    .line 300
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollView$2;->$SwitchMap$com$facebook$react$uimanager$style$Overflow:[I

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/Overflow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 306
    :pswitch_0
    const-string/jumbo v0, "visible"

    return-object v0

    .line 304
    :pswitch_1
    const-string/jumbo v0, "scroll"

    return-object v0

    .line 302
    :pswitch_2
    const-string v0, "hidden"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOverflowInset()Landroid/graphics/Rect;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflowInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-object v0
.end method

.method public getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactScrollViewScrollState:Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    return-object v0
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    return v0
.end method

.method public getScrollEnabled()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    return v0
.end method

.method public getScrollEventThrottle()I
    .locals 1

    .line 1406
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEventThrottle:I

    return v0
.end method

.method public getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-object v0
.end method

.method protected handleInterceptedTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 465
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 466
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    .line 468
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->enableFpsListener()V

    .line 469
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 470
    return-void
.end method

.method isPartiallyScrolledInView(Landroid/view/View;)Z
    .locals 3
    .param p1, "descendent"    # Landroid/view/View;

    .line 396
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollDelta(Landroid/view/View;)I

    move-result v0

    .line 397
    .local v0, "scrollDelta":I
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 398
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 356
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 357
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->start()V

    .line 363
    :cond_1
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 1092
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    .line 1093
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1094
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 1098
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    .line 1102
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 367
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 368
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->stop()V

    .line 371
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 675
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    sget-object v1, Lcom/facebook/react/uimanager/style/Overflow;->VISIBLE:Lcom/facebook/react/uimanager/style/Overflow;

    if-eq v0, v1, :cond_1

    .line 677
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->clipToPaddingBox(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->maybeClipToPaddingBox(Landroid/graphics/Canvas;)V

    .line 682
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 683
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 155
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 161
    sget v0, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, "testId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 440
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 441
    return v1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->canChildrenBeTouchTarget(Lcom/facebook/react/uimanager/PointerEvents;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 446
    return v2

    .line 450
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->handleInterceptedTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    return v2

    .line 459
    :cond_2
    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ReactNative"

    const-string v3, "Error intercepting touch event."

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 333
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetX:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v0

    .line 339
    .local v0, "scrollToX":I
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetY:I

    if-eq v2, v1, :cond_1

    iget v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->pendingContentOffsetY:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v1

    .line 340
    .local v1, "scrollToY":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    .line 343
    .end local v0    # "scrollToX":I
    .end local v1    # "scrollToY":I
    :cond_2
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitLayoutEvent(Landroid/view/ViewGroup;)V

    .line 344
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 1233
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1234
    return-void

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->updateScrollPosition()V

    .line 1241
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v0

    .line 1243
    .local v0, "currentScrollY":I
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v1

    .line 1244
    .local v1, "maxScrollY":I
    if-le v0, v1, :cond_2

    .line 1245
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    .line 1248
    .end local v0    # "currentScrollY":I
    .end local v1    # "maxScrollY":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 324
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 326
    nop

    .line 327
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->setMeasuredDimension(II)V

    .line 328
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 1069
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1077
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v0

    .line 1078
    .local v0, "scrollRange":I
    if-lt p2, v0, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1080
    move p2, v0

    .line 1087
    .end local v0    # "scrollRange":I
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 1088
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 421
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->onScrollChanged(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 425
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPreventReentry:Z

    if-eqz v1, :cond_1

    .line 426
    return-void

    .line 428
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPreventReentry:Z

    .line 429
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 431
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 432
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result v1

    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEnableSyncOnScroll:Z

    .line 429
    invoke-static {p0, v0, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateStateOnScrollChanged(Landroid/view/ViewGroup;FFZ)V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPreventReentry:Z

    .line 436
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 349
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 352
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 474
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 475
    return v1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->canBeTouchTarget(Lcom/facebook/react/uimanager/PointerEvents;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    return v1

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/scroll/VelocityHelper;->calculateVelocity(Landroid/view/MotionEvent;)V

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 485
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    if-eqz v2, :cond_2

    .line 486
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;)V

    .line 488
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v2}, Lcom/facebook/react/views/scroll/VelocityHelper;->getXVelocity()F

    move-result v2

    .line 489
    .local v2, "velocityX":F
    iget-object v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v3}, Lcom/facebook/react/views/scroll/VelocityHelper;->getYVelocity()F

    move-result v3

    .line 490
    .local v3, "velocityY":F
    invoke-static {p0, v2, v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V

    .line 491
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureEnded(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 492
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    .line 495
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/facebook/react/views/scroll/ReactScrollView;->handlePostTouchScrolling(II)V

    .line 498
    .end local v2    # "velocityX":F
    .end local v3    # "velocityY":F
    :cond_2
    if-nez v0, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->cancelPostTouchScrolling()V

    .line 502
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public reactSmoothScrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1128
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->smoothScrollTo(Landroid/view/ViewGroup;II)V

    .line 1129
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->setPendingContentOffsets(II)V

    .line 1130
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 382
    if-eqz p2, :cond_0

    .line 383
    invoke-direct {p0, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollToChild(Landroid/view/View;)V

    .line 385
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 386
    return-void
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1143
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1144
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;)V

    .line 1145
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->setPendingContentOffsets(II)V

    .line 1146
    return-void
.end method

.method public scrollToPreservingMomentum(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1191
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    .line 1192
    invoke-direct {p0, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->recreateFlingAnimation(I)V

    .line 1193
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1252
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    .line 1257
    :goto_0
    return-void
.end method

.method public setBorderColor(ILjava/lang/Integer;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "color"    # Ljava/lang/Integer;

    .line 1269
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {p0, v0, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(ILjava/lang/Integer;)V

    .line 1274
    :goto_0
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .line 1277
    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->setBorderRadius(FI)V

    .line 1278
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 3
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .line 1281
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1284
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    .line 1287
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    sget-object v2, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    :goto_0
    nop

    .line 1288
    .local v0, "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {p0, v1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 1289
    .end local v0    # "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    goto :goto_1

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    .line 1292
    :goto_1
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 1295
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    nop

    .line 1297
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/style/BorderStyle;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object v0

    .line 1296
    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    goto :goto_1

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    .line 1301
    :goto_1
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 1260
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    nop

    .line 1262
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1261
    invoke-static {p0, v0, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    .line 1266
    :goto_0
    return-void
.end method

.method public setContentOffset(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p1, "value"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 1108
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mCurrentContentOffset:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mCurrentContentOffset:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1109
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mCurrentContentOffset:Lcom/facebook/react/bridge/ReadableMap;

    .line 1111
    if-eqz p1, :cond_3

    .line 1112
    const-string/jumbo v0, "x"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 1113
    .local v0, "x":D
    :goto_0
    const-string/jumbo v4, "y"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1114
    .local v2, "y":D
    :cond_2
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    .line 1115
    .end local v0    # "x":D
    .end local v2    # "y":D
    goto :goto_1

    .line 1116
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    .line 1119
    :cond_4
    :goto_1
    return-void
.end method

.method public setDecelerationRate(F)V
    .locals 2
    .param p1, "decelerationRate"    # F

    .line 235
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setDecelerationRate(F)V

    .line 237
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 240
    :cond_0
    return-void
.end method

.method public setDisableIntervalMomentum(Z)V
    .locals 0
    .param p1, "disableIntervalMomentum"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDisableIntervalMomentum:Z

    .line 208
    return-void
.end method

.method public setEnableSyncOnScroll(Z)V
    .locals 0
    .param p1, "enableSyncOnScroll"    # Z

    .line 219
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEnableSyncOnScroll:Z

    .line 220
    return-void
.end method

.method public setEndFillColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1061
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    if-eq p1, v0, :cond_0

    .line 1062
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    .line 1063
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    .line 1065
    :cond_0
    return-void
.end method

.method public setLastScrollDispatchTime(J)V
    .locals 0
    .param p1, "lastScrollDispatchTime"    # J

    .line 1411
    iput-wide p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mLastScrollDispatchTime:J

    .line 1412
    return-void
.end method

.method public setMaintainVisibleContentPosition(Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;)V
    .locals 2
    .param p1, "config"    # Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    .line 286
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    .line 288
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->start()V

    goto :goto_0

    .line 289
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->stop()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    .line 293
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mMaintainVisibleContentPositionHelper:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->setConfig(Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;)V

    .line 296
    :cond_2
    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 2
    .param p1, "overflow"    # Ljava/lang/String;

    .line 273
    if-nez p1, :cond_0

    .line 274
    sget-object v0, Lcom/facebook/react/uimanager/style/Overflow;->SCROLL:Lcom/facebook/react/uimanager/style/Overflow;

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    goto :goto_1

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/style/Overflow;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/Overflow;

    move-result-object v0

    .line 277
    .local v0, "parsedOverflow":Lcom/facebook/react/uimanager/style/Overflow;
    if-nez v0, :cond_1

    sget-object v1, Lcom/facebook/react/uimanager/style/Overflow;->SCROLL:Lcom/facebook/react/uimanager/style/Overflow;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Lcom/facebook/react/uimanager/style/Overflow;

    .line 280
    .end local v0    # "parsedOverflow":Lcom/facebook/react/uimanager/style/Overflow;
    :goto_1
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    if-nez p1, :cond_2

    const-string/jumbo v1, "scroll"

    goto :goto_2

    :cond_2
    move-object v1, p1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setOverflow(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->invalidate()V

    .line 282
    return-void
.end method

.method public setOverflowInset(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 314
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflowInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 315
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "pagingEnabled"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    .line 232
    return-void
.end method

.method public setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V
    .locals 0
    .param p1, "pointerEvents"    # Lcom/facebook/react/uimanager/PointerEvents;

    .line 1392
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 1393
    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 1
    .param p1, "removeClippedSubviews"    # Z

    .line 528
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    .line 531
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    .line 532
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 533
    return-void
.end method

.method public setScrollAwayTopPaddingEnabledUnstable(I)V
    .locals 5
    .param p1, "topPadding"    # I

    .line 1317
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildCount()I

    move-result v0

    .line 1319
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "React Native ScrollView should not have more than one child, it should have exactly 1 child; a content View"

    invoke-static {v2, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 1324
    if-lez v0, :cond_2

    .line 1325
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1326
    invoke-virtual {p0, v2}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1327
    .local v3, "childView":Landroid/view/View;
    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1325
    .end local v3    # "childView":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1333
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->setPadding(IIII)V

    .line 1336
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateScrollAwayState(I)V

    .line 1337
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->setRemoveClippedSubviews(Z)V

    .line 1338
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "scrollEnabled"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    .line 224
    return-void
.end method

.method public setScrollEventThrottle(I)V
    .locals 0
    .param p1, "scrollEventThrottle"    # I

    .line 1401
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEventThrottle:I

    .line 1402
    return-void
.end method

.method public setScrollPerfTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "scrollPerfTag"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSendMomentumEvents(Z)V
    .locals 0
    .param p1, "sendMomentumEvents"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    .line 212
    return-void
.end method

.method public setSnapInterval(I)V
    .locals 0
    .param p1, "snapInterval"    # I

    .line 249
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    .line 250
    return-void
.end method

.method public setSnapOffsets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "snapOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    .line 254
    return-void
.end method

.method public setSnapToAlignment(I)V
    .locals 0
    .param p1, "snapToAlignment"    # I

    .line 265
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToAlignment:I

    .line 266
    return-void
.end method

.method public setSnapToEnd(Z)V
    .locals 0
    .param p1, "snapToEnd"    # Z

    .line 261
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToEnd:Z

    .line 262
    return-void
.end method

.method public setSnapToStart(Z)V
    .locals 0
    .param p1, "snapToStart"    # Z

    .line 257
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToStart:Z

    .line 258
    return-void
.end method

.method public setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V
    .locals 0
    .param p1, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 657
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 658
    return-void
.end method

.method public startFlingAnimator(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1358
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1361
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getDefaultScrollAnimationDuration(Landroid/content/Context;)I

    move-result v0

    .line 1362
    .local v0, "duration":I
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    filled-new-array {p1, p2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1365
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->DEFAULT_FLING_ANIMATOR:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1367
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    if-eqz v1, :cond_1

    .line 1368
    const/4 v1, 0x0

    .line 1369
    .local v1, "yVelocity":I
    if-lez v0, :cond_0

    .line 1370
    sub-int v2, p2, p1

    div-int v1, v2, v0

    .line 1372
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V

    .line 1373
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->dispatchMomentumEndOnAnimationEnd(Landroid/view/ViewGroup;)V

    .line 1375
    .end local v1    # "yVelocity":I
    :cond_1
    return-void
.end method

.method public updateClippingRect()V
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-nez v0, :cond_0

    .line 543
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 549
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 550
    .local v0, "contentView":Landroid/view/View;
    instance-of v1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v1, :cond_1

    .line 551
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    .line 553
    :cond_1
    return-void
.end method
