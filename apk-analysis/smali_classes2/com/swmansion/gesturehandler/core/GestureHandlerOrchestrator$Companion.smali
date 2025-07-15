.class public final Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;
.super Ljava/lang/Object;
.source "GestureHandlerOrchestrator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u00072\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J \u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J \u0010\u001b\u001a\u00020\u00102\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u00072\n\u0010\u001d\u001a\u0006\u0012\u0002\u0008\u00030\u0007H\u0002J \u0010\u001e\u001a\u00020\u00102\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u00072\n\u0010\u001d\u001a\u0006\u0012\u0002\u0008\u00030\u0007H\u0002J\u0018\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u000bH\u0002J0\u0010\"\u001a\u00020#2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;",
        "",
        "()V",
        "DEFAULT_MIN_ALPHA_FOR_TRAVERSAL",
        "",
        "handlersComparator",
        "Ljava/util/Comparator;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "inverseMatrix",
        "Landroid/graphics/Matrix;",
        "matrixTransformCoords",
        "",
        "tempCoords",
        "tempPoint",
        "Landroid/graphics/PointF;",
        "canRunSimultaneously",
        "",
        "a",
        "b",
        "isFinished",
        "state",
        "",
        "isTransformedTouchPointInView",
        "x",
        "y",
        "child",
        "Landroid/view/View;",
        "shouldHandlerBeCancelledBy",
        "handler",
        "other",
        "shouldHandlerWaitForOther",
        "shouldHandlerlessViewBecomeTouchTarget",
        "view",
        "coords",
        "transformPointToChildViewCoords",
        "",
        "parent",
        "Landroid/view/ViewGroup;",
        "outLocalPoint",
        "react-native-gesture-handler_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isFinished(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;I)Z
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;
    .param p1, "state"    # I

    .line 608
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->isFinished(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isTransformedTouchPointInView(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;FFLandroid/view/View;)Z
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .line 608
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "other"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "other"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$shouldHandlerlessViewBecomeTouchTarget(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;Landroid/view/View;[F)Z
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "coords"    # [F

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$transformPointToChildViewCoords(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "child"    # Landroid/view/View;
    .param p5, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 608
    invoke-direct/range {p0 .. p5}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->transformPointToChildViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

.method private final canRunSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p1, "a"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "b"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 680
    if-eq p1, p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private final isFinished(I)Z
    .locals 2
    .param p1, "state"    # I

    .line 702
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    .line 703
    if-eq p1, v1, :cond_1

    .line 704
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method private final isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .line 670
    const/4 v0, 0x0

    cmpg-float v1, v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method private final shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "other"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 683
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->hasCommonPointers(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 685
    return v1

    .line 687
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->canRunSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    return v1

    .line 692
    :cond_1
    if-eq p1, p2, :cond_3

    .line 693
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 697
    :cond_2
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    goto :goto_0

    .line 698
    :cond_3
    const/4 v0, 0x1

    .line 692
    :goto_0
    return v0
.end method

.method private final shouldHandlerWaitForOther(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "other"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 673
    if-eq p1, p2, :cond_1

    .line 674
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p2, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 673
    :goto_0
    return v0
.end method

.method private final shouldHandlerlessViewBecomeTouchTarget(Landroid/view/View;[F)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "coords"    # [F

    .line 643
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 644
    .local v0, "isLeafOrTransparent":Z
    :goto_1
    if-eqz v0, :cond_2

    aget v3, p2, v1

    aget v4, p2, v2

    invoke-direct {p0, v3, v4, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator$Companion;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private final transformPointToChildViewCoords(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "child"    # Landroid/view/View;
    .param p5, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 654
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 655
    .local v0, "localX":F
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 656
    .local v1, "localY":F
    invoke-virtual {p4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 657
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 658
    invoke-static {}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->access$getMatrixTransformCoords$cp()[F

    move-result-object v3

    .line 659
    .local v3, "localXY":[F
    const/4 v4, 0x0

    aput v0, v3, v4

    .line 660
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 661
    invoke-static {}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->access$getInverseMatrix$cp()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 662
    invoke-static {}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->access$getInverseMatrix$cp()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 663
    aget v0, v3, v4

    .line 664
    aget v1, v3, v5

    .line 666
    .end local v3    # "localXY":[F
    :cond_0
    invoke-virtual {p5, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 667
    return-void
.end method
