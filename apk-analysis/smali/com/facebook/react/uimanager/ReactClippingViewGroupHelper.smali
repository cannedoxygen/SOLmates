.class public Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;
.super Ljava/lang/Object;
.source "ReactClippingViewGroupHelper.java"


# static fields
.field public static final PROP_REMOVE_CLIPPED_SUBVIEWS:Ljava/lang/String; = "removeClippedSubviews"

.field private static final sHelperRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->sHelperRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outputRect"    # Landroid/graphics/Rect;

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 38
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 40
    return-void

    .line 41
    :cond_0
    instance-of v1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v1, :cond_2

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    .line 43
    .local v1, "clippingViewGroup":Lcom/facebook/react/uimanager/ReactClippingViewGroup;
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->getRemoveClippedSubviews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    sget-object v2, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->sHelperRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->getClippingRect(Landroid/graphics/Rect;)V

    .line 47
    sget-object v2, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->sHelperRect:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 47
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 53
    return-void

    .line 56
    :cond_1
    sget-object v2, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 57
    sget-object v2, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 58
    sget-object v2, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 59
    sget-object v2, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 60
    return-void

    .line 63
    .end local v1    # "clippingViewGroup":Lcom/facebook/react/uimanager/ReactClippingViewGroup;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 64
    return-void
.end method
