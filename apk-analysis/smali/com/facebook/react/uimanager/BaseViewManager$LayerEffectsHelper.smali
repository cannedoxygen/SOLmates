.class Lcom/facebook/react/uimanager/BaseViewManager$LayerEffectsHelper;
.super Ljava/lang/Object;
.source "BaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/BaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayerEffectsHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/Boolean;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "useHWLayer"    # Ljava/lang/Boolean;

    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 535
    invoke-virtual {p0, v1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 540
    .local v0, "p":Landroid/graphics/Paint;
    if-eqz p1, :cond_2

    .line 541
    invoke-static {p1}, Lcom/facebook/react/uimanager/FilterHelper;->isOnlyColorMatrixFilters(Lcom/facebook/react/bridge/ReadableArray;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v2

    .line 543
    invoke-static {p1}, Lcom/facebook/react/uimanager/FilterHelper;->parseColorMatrixFilters(Lcom/facebook/react/bridge/ReadableArray;)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 544
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2

    .line 545
    invoke-static {p1}, Lcom/facebook/react/uimanager/FilterHelper;->parseFilters(Lcom/facebook/react/bridge/ReadableArray;)Landroid/graphics/RenderEffect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 549
    :cond_2
    :goto_0
    const/4 v2, 0x2

    if-nez v0, :cond_4

    .line 551
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 552
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 553
    .end local v2    # "layerType":I
    goto :goto_2

    .line 554
    :cond_4
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 556
    :goto_2
    return-void
.end method
