.class public Lcom/swmansion/reanimated/NativeMethodsHelper;
.super Ljava/lang/Object;
.source "NativeMethodsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeBoundingBox(Landroid/view/View;[I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outputBuffer"    # [I

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .local v0, "boundingBox":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    invoke-static {p0, v0}, Lcom/swmansion/reanimated/NativeMethodsHelper;->mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 83
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 84
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 85
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x2

    aput v1, p1, v2

    .line 86
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x3

    aput v1, p1, v2

    .line 87
    return-void
.end method

.method private static findScrollView(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)Lcom/facebook/react/views/scroll/ReactScrollView;
    .locals 2
    .param p0, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 71
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollView;

    return-object v1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$scrollTo$0(Landroid/view/View;II)V
    .locals 1
    .param p0, "finalView"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 60
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method static synthetic lambda$scrollTo$1(Landroid/view/View;II)V
    .locals 1
    .param p0, "finalView"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private static mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 91
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 98
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 99
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 101
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 108
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 111
    .end local v2    # "parentView":Landroid/view/View;
    goto :goto_0

    .line 112
    :cond_2
    return-void
.end method

.method public static measure(Landroid/view/View;)[F
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .line 17
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    .local v0, "rootView":Landroid/view/View;
    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 25
    .local v3, "buffer":[I
    invoke-static {v0, v3}, Lcom/swmansion/reanimated/NativeMethodsHelper;->computeBoundingBox(Landroid/view/View;[I)V

    .line 26
    aget v4, v3, v2

    .line 27
    .local v4, "rootX":I
    const/4 v5, 0x1

    aget v6, v3, v5

    .line 28
    .local v6, "rootY":I
    invoke-static {p0, v3}, Lcom/swmansion/reanimated/NativeMethodsHelper;->computeBoundingBox(Landroid/view/View;[I)V

    .line 29
    aget v7, v3, v2

    sub-int/2addr v7, v4

    aput v7, v3, v2

    .line 30
    aget v7, v3, v5

    sub-int/2addr v7, v6

    aput v7, v3, v5

    .line 32
    new-array v7, v1, [F

    .line 33
    .local v7, "result":[F
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    aput v8, v7, v2

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    aput v2, v7, v5

    .line 35
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v5, v2, -0x2

    aget v5, v3, v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    aput v5, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    :cond_1
    return-object v7

    .line 19
    .end local v3    # "buffer":[I
    .end local v4    # "rootX":I
    .end local v6    # "rootY":I
    .end local v7    # "result":[F
    :cond_2
    :goto_1
    new-array v1, v1, [F

    .line 20
    .local v1, "result":[F
    const v3, -0x36694bc8    # -1234567.0f

    aput v3, v1, v2

    .line 21
    return-object v1
.end method

.method public static scrollTo(Landroid/view/View;DDZ)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "argX"    # D
    .param p3, "argY"    # D
    .param p5, "animated"    # Z

    .line 41
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 42
    .local v0, "x":I
    invoke-static {p3, p4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 43
    .local v1, "y":I
    instance-of v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .line 45
    .local v2, "isHorizontal":Z
    if-nez v2, :cond_1

    .line 46
    instance-of v3, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    if-eqz v3, :cond_0

    .line 47
    move-object v3, p0

    check-cast v3, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-static {v3}, Lcom/swmansion/reanimated/NativeMethodsHelper;->findScrollView(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)Lcom/facebook/react/views/scroll/ReactScrollView;

    move-result-object p0

    .line 49
    :cond_0
    instance-of v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-nez v3, :cond_1

    .line 50
    const-string v3, "REANIMATED"

    const-string v4, "NativeMethodsHelper: Unhandled scroll view type - allowed only {ReactScrollView, ReactHorizontalScrollView}"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 57
    :cond_1
    if-eqz p5, :cond_3

    .line 58
    move-object v3, p0

    .line 59
    .local v3, "finalView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 60
    new-instance v4, Lcom/swmansion/reanimated/NativeMethodsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v0, v1}, Lcom/swmansion/reanimated/NativeMethodsHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 62
    :cond_2
    new-instance v4, Lcom/swmansion/reanimated/NativeMethodsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v0, v1}, Lcom/swmansion/reanimated/NativeMethodsHelper$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .end local v3    # "finalView":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 67
    :goto_1
    return-void
.end method
