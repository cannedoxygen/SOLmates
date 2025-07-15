.class public final Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;
.super Ljava/lang/Object;
.source "SafeAreaUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0018\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0005H\u0002\u001a\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0005H\u0002\u001a\u0012\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0005H\u0003\u001a\u0012\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0005H\u0003\u001a\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "getFrame",
        "Lcom/th3rdwave/safeareacontext/Rect;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "view",
        "Landroid/view/View;",
        "getRootWindowInsetsCompat",
        "Lcom/th3rdwave/safeareacontext/EdgeInsets;",
        "getRootWindowInsetsCompatBase",
        "getRootWindowInsetsCompatM",
        "getRootWindowInsetsCompatR",
        "getSafeAreaInsets",
        "react-native-safe-area-context_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/th3rdwave/safeareacontext/Rect;
    .locals 6
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "rootView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    return-object v1

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v0, "offset":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 89
    nop

    .line 90
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    new-instance v1, Lcom/th3rdwave/safeareacontext/Rect;

    .line 98
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 99
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 97
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/th3rdwave/safeareacontext/Rect;-><init>(FFFF)V

    return-object v1

    .line 91
    :catch_0
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 95
    return-object v1
.end method

.method private static final getRootWindowInsetsCompat(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 2
    .param p0, "rootView"    # Landroid/view/View;

    .line 55
    nop

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;->getRootWindowInsetsCompatR(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;->getRootWindowInsetsCompatM(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0
.end method

.method private static final getRootWindowInsetsCompatBase(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v0, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 47
    new-instance v1, Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 48
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 51
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 47
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    return-object v1
.end method

.method private static final getRootWindowInsetsCompatM(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 32
    .local v0, "insets":Landroid/view/WindowInsets;
    :cond_0
    new-instance v1, Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 33
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    int-to-float v2, v2

    .line 34
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    int-to-float v3, v3

    .line 40
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 41
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    int-to-float v5, v5

    .line 32
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    return-object v1
.end method

.method private static final getRootWindowInsetsCompatR(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    .line 17
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    .line 16
    or-int/2addr v1, v2

    .line 18
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    .line 16
    or-int/2addr v1, v2

    .line 19
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    .line 16
    or-int/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    nop

    .line 21
    .local v0, "insets":Landroid/graphics/Insets;
    new-instance v1, Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 22
    iget v2, v0, Landroid/graphics/Insets;->top:I

    int-to-float v2, v2

    .line 23
    iget v3, v0, Landroid/graphics/Insets;->right:I

    int-to-float v3, v3

    .line 24
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v4, v4

    .line 25
    iget v5, v0, Landroid/graphics/Insets;->left:I

    int-to-float v5, v5

    .line 21
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    return-object v1

    .line 20
    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;
    .locals 12
    .param p0, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return-object v1

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "rootView":Landroid/view/View;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;->getRootWindowInsetsCompat(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    move-object v1, v2

    .line 71
    .local v1, "windowInsets":Lcom/th3rdwave/safeareacontext/EdgeInsets;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 72
    .local v2, "windowWidth":F
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 73
    .local v3, "windowHeight":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 75
    new-instance v5, Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 76
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getTop()F

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 77
    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getRight()F

    move-result v9

    add-float/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 78
    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v9, v3

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getBottom()F

    move-result v10

    add-float/2addr v9, v10

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 79
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getLeft()F

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 75
    invoke-direct {v5, v6, v8, v9, v7}, Lcom/th3rdwave/safeareacontext/EdgeInsets;-><init>(FFFF)V

    return-object v5
.end method
