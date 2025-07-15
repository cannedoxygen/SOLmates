.class Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaUtils;
.super Ljava/lang/Object;
.source "SafeAreaUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/Rect;
    .locals 6
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    return-object v1

    .line 69
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v0, "offset":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 80
    new-instance v1, Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldevmenu/com/th3rdwave/safeareacontext/Rect;-><init>(FFFF)V

    return-object v1

    .line 73
    :catch_0
    move-exception v2

    .line 76
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 77
    return-object v1
.end method

.method private static getRootWindowInsetsCompat(Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 14
    nop

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 16
    .local v0, "insets":Landroid/view/WindowInsets;
    if-nez v0, :cond_0

    .line 17
    const/4 v1, 0x0

    return-object v1

    .line 19
    :cond_0
    new-instance v1, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    .line 20
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    int-to-float v2, v2

    .line 21
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    int-to-float v3, v3

    .line 27
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 28
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    .line 19
    return-object v1
.end method

.method static getSafeAreaInsets(Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    return-object v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "rootView":Landroid/view/View;
    invoke-static {v0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaUtils;->getRootWindowInsetsCompat(Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v2

    .line 47
    .local v2, "windowInsets":Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    if-nez v2, :cond_1

    .line 48
    return-object v1

    .line 52
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 53
    .local v1, "windowWidth":F
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 54
    .local v3, "windowHeight":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 57
    invoke-virtual {v2}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getTop()F

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->setTop(F)V

    .line 58
    invoke-virtual {v2}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getLeft()F

    move-result v5

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->setLeft(F)V

    .line 59
    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v2}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getBottom()F

    move-result v7

    add-float/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->setBottom(F)V

    .line 60
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v2}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->getRight()F

    move-result v7

    add-float/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;->setRight(F)V

    .line 61
    return-object v2
.end method
