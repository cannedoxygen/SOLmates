.class Lcom/horcrux/svg/FeOffsetView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeOffsetView.java"


# instance fields
.field mDx:Lcom/horcrux/svg/SVGLength;

.field mDy:Lcom/horcrux/svg/SVGLength;

.field mIn1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 18
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 19
    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p2, "prevResult"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 38
    .local p1, "resultsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/horcrux/svg/FeOffsetView;->mIn1:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/horcrux/svg/FeOffsetView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, "source":Landroid/graphics/Bitmap;
    nop

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 41
    .local v1, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/horcrux/svg/FeOffsetView;->mDx:Lcom/horcrux/svg/SVGLength;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/horcrux/svg/FeOffsetView;->mDx:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v3}, Lcom/horcrux/svg/FeOffsetView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v5

    double-to-float v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 44
    .local v3, "dx":F
    :goto_0
    iget-object v5, p0, Lcom/horcrux/svg/FeOffsetView;->mDy:Lcom/horcrux/svg/SVGLength;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/horcrux/svg/FeOffsetView;->mDy:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v5}, Lcom/horcrux/svg/FeOffsetView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v5

    double-to-float v5, v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 45
    .local v5, "dy":F
    :goto_1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    .local v6, "frame":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/horcrux/svg/SvgView;->getCtm()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 47
    iget v7, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_2

    iget v7, v6, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    :goto_2
    move v3, v7

    .line 48
    iget v7, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v7, v4

    if-gez v4, :cond_3

    iget v4, v6, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 50
    .end local v5    # "dy":F
    .local v4, "dy":F
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    return-object v1
.end method

.method public setDx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "dx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 27
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FeOffsetView;->mDx:Lcom/horcrux/svg/SVGLength;

    .line 28
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->invalidate()V

    .line 29
    return-void
.end method

.method public setDy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "dy"    # Lcom/facebook/react/bridge/Dynamic;

    .line 32
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FeOffsetView;->mDy:Lcom/horcrux/svg/SVGLength;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->invalidate()V

    .line 34
    return-void
.end method

.method public setIn1(Ljava/lang/String;)V
    .locals 0
    .param p1, "in1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/horcrux/svg/FeOffsetView;->mIn1:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->invalidate()V

    .line 24
    return-void
.end method
