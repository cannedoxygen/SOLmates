.class Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;
.super Ljava/lang/Object;
.source "MaintainVisibleScrollPositionHelper.java"

# interfaces
.implements Lcom/facebook/react/bridge/UIManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ScrollViewT:",
        "Landroid/view/ViewGroup;",
        ":",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/react/bridge/UIManagerListener;"
    }
.end annotation


# instance fields
.field private mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

.field private mFirstVisibleView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHorizontal:Z

.field private mListening:Z

.field private mPrevFirstVisibleFrame:Landroid/graphics/Rect;

.field private final mScrollView:Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TScrollViewT;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mcomputeTargetView(Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->computeTargetView()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p2, "horizontal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TScrollViewT;Z)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    .local p1, "scrollView":Landroid/view/ViewGroup;, "TScrollViewT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mFirstVisibleView:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mPrevFirstVisibleFrame:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mListening:Z

    .line 66
    iput-object p1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    .line 67
    iput-boolean p2, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mHorizontal:Z

    .line 68
    return-void
.end method

.method private computeTargetView()V
    .locals 6

    .line 154
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->getContentView()Lcom/facebook/react/views/view/ReactViewGroup;

    move-result-object v0

    .line 158
    .local v0, "contentView":Lcom/facebook/react/views/view/ReactViewGroup;
    if-nez v0, :cond_1

    .line 159
    return-void

    .line 162
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mHorizontal:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 163
    .local v1, "currentScroll":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    iget v2, v2, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;->minIndexForVisible:I

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 164
    invoke-virtual {v0, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 168
    .local v3, "child":Landroid/view/View;
    iget-boolean v4, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mHorizontal:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_2
    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 171
    .local v4, "position":F
    int-to-float v5, v1

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_5

    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_4

    goto :goto_3

    .line 163
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "position":F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "position":F
    :cond_5
    :goto_3
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mFirstVisibleView:Ljava/lang/ref/WeakReference;

    .line 173
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 174
    .local v5, "frame":Landroid/graphics/Rect;
    invoke-virtual {v3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 175
    iput-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mPrevFirstVisibleFrame:Landroid/graphics/Rect;

    .line 176
    nop

    .line 179
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "position":F
    .end local v5    # "frame":Landroid/graphics/Rect;
    :cond_6
    return-void
.end method

.method private getContentView()Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 2

    .line 143
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/view/ReactViewGroup;

    return-object v0
.end method

.method private getUIManagerModule()Lcom/facebook/react/bridge/UIManager;
    .locals 2

    .line 147
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    .line 149
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v1

    .line 148
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/UIManager;

    return-object v0
.end method

.method private updateScrollPositionInternal()V
    .locals 8

    .line 105
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mFirstVisibleView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mPrevFirstVisibleFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mFirstVisibleView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 110
    .local v0, "firstVisibleView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 111
    return-void

    .line 114
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 115
    .local v1, "newFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 117
    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mHorizontal:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 118
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mPrevFirstVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 119
    .local v2, "deltaX":I
    if-eqz v2, :cond_2

    .line 120
    iget-object v4, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    .line 121
    .local v4, "scrollX":I
    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;

    add-int v6, v4, v2

    iget-object v7, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;->scrollToPreservingMomentum(II)V

    .line 122
    iput-object v1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mPrevFirstVisibleFrame:Landroid/graphics/Rect;

    .line 123
    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    iget-object v5, v5, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;->autoScrollToTopThreshold:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    iget-object v5, v5, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;->autoScrollToTopThreshold:Ljava/lang/Integer;

    .line 124
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 125
    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;

    iget-object v6, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    invoke-interface {v5, v3, v6}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;->reactSmoothScrollTo(II)V

    .line 128
    .end local v2    # "deltaX":I
    .end local v4    # "scrollX":I
    :cond_2
    goto :goto_0

    .line 129
    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mPrevFirstVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    .line 130
    .local v2, "deltaY":I
    if-eqz v2, :cond_4

    .line 131
    iget-object v4, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 132
    .local v4, "scrollY":I
    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;

    iget-object v6, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int v7, v4, v2

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;->scrollToPreservingMomentum(II)V

    .line 133
    iput-object v1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mPrevFirstVisibleFrame:Landroid/graphics/Rect;

    .line 134
    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    iget-object v5, v5, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;->autoScrollToTopThreshold:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    iget-object v5, v5, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;->autoScrollToTopThreshold:Ljava/lang/Integer;

    .line 135
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;

    iget-object v6, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    invoke-interface {v5, v6, v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;->reactSmoothScrollTo(II)V

    .line 140
    .end local v2    # "deltaY":I
    .end local v4    # "scrollY":I
    :cond_4
    :goto_0
    return-void

    .line 106
    .end local v0    # "firstVisibleView":Landroid/view/View;
    .end local v1    # "newFrame":Landroid/graphics/Rect;
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 207
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    return-void
.end method

.method public didMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 201
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->updateScrollPositionInternal()V

    .line 202
    return-void
.end method

.method public didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 212
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    return-void
.end method

.method public setConfig(Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;)V
    .locals 0
    .param p1, "config"    # Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    .line 71
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iput-object p1, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mConfig:Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$Config;

    .line 72
    return-void
.end method

.method public start()V
    .locals 1

    .line 76
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mListening:Z

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mListening:Z

    .line 80
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->getUIManagerModule()Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/UIManager;->addUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V

    .line 81
    return-void
.end method

.method public stop()V
    .locals 1

    .line 85
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mListening:Z

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mListening:Z

    .line 89
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->getUIManagerModule()Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/UIManager;->removeUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V

    .line 90
    return-void
.end method

.method public updateScrollPosition()V
    .locals 2

    .line 98
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    iget-object v0, p0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->updateScrollPositionInternal()V

    .line 102
    return-void
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 185
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    new-instance v0, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper$1;-><init>(Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public willMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    .line 196
    .local p0, "this":Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;, "Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper<TScrollViewT;>;"
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/MaintainVisibleScrollPositionHelper;->computeTargetView()V

    .line 197
    return-void
.end method
