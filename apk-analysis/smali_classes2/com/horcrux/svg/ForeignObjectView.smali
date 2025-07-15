.class Lcom/horcrux/svg/ForeignObjectView;
.super Lcom/horcrux/svg/GroupView;
.source "ForeignObjectView.java"


# instance fields
.field fake:Landroid/graphics/Canvas;

.field fakeBitmap:Landroid/graphics/Bitmap;

.field mH:Lcom/horcrux/svg/SVGLength;

.field mW:Lcom/horcrux/svg/SVGLength;

.field mX:Lcom/horcrux/svg/SVGLength;

.field mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 30
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 121
    const/4 v0, 0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->fakeBitmap:Landroid/graphics/Bitmap;

    .line 122
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/horcrux/svg/ForeignObjectView;->fakeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->fake:Landroid/graphics/Canvas;

    .line 31
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 126
    iget-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->fake:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lcom/horcrux/svg/GroupView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 127
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 35
    iget-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v0}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 36
    .local v0, "x":F
    iget-object v1, p0, Lcom/horcrux/svg/ForeignObjectView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 37
    .local v1, "y":F
    iget-object v2, p0, Lcom/horcrux/svg/ForeignObjectView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v2}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 38
    .local v2, "w":F
    iget-object v3, p0, Lcom/horcrux/svg/ForeignObjectView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v3}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 39
    .local v3, "h":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 42
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 130
    iget-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->fake:Landroid/graphics/Canvas;

    invoke-super {p0, v0, p2, p3, p4}, Lcom/horcrux/svg/GroupView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 71
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->pushGlyphContext()V

    .line 72
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 73
    .local v0, "svg":Lcom/horcrux/svg/SvgView;
    move-object v1, p0

    .line 74
    .local v1, "self":Lcom/horcrux/svg/GroupView;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 75
    .local v2, "groupRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 76
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/ForeignObjectView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 77
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/horcrux/svg/MaskView;

    if-eqz v5, :cond_0

    .line 78
    goto :goto_1

    .line 80
    :cond_0
    instance-of v5, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v5, :cond_6

    .line 81
    move-object v5, v4

    check-cast v5, Lcom/horcrux/svg/VirtualView;

    .line 82
    .local v5, "node":Lcom/horcrux/svg/VirtualView;
    const-string v6, "none"

    iget-object v7, v5, Lcom/horcrux/svg/VirtualView;->mDisplay:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    goto :goto_1

    .line 85
    :cond_1
    instance-of v6, v5, Lcom/horcrux/svg/RenderableView;

    if-eqz v6, :cond_2

    .line 86
    move-object v6, v5

    check-cast v6, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v6, v1}, Lcom/horcrux/svg/RenderableView;->mergeProperties(Lcom/horcrux/svg/RenderableView;)V

    .line 89
    :cond_2
    iget-object v6, p0, Lcom/horcrux/svg/ForeignObjectView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v5, p1, v6}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v6

    .line 90
    .local v6, "count":I
    iget v7, p0, Lcom/horcrux/svg/ForeignObjectView;->mOpacity:F

    mul-float/2addr v7, p3

    invoke-virtual {v5, p1, p2, v7}, Lcom/horcrux/svg/VirtualView;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 91
    invoke-virtual {v5}, Lcom/horcrux/svg/VirtualView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 92
    .local v7, "r":Landroid/graphics/RectF;
    if-eqz v7, :cond_3

    .line 93
    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 96
    :cond_3
    invoke-virtual {v5, p1, v6}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    .line 98
    instance-of v8, v5, Lcom/horcrux/svg/RenderableView;

    if-eqz v8, :cond_4

    .line 99
    move-object v8, v5

    check-cast v8, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v8}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    .line 102
    :cond_4
    invoke-virtual {v5}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 103
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    .line 105
    .end local v5    # "node":Lcom/horcrux/svg/VirtualView;
    .end local v6    # "count":I
    .end local v7    # "r":Landroid/graphics/RectF;
    :cond_5
    goto :goto_1

    :cond_6
    instance-of v5, v4, Lcom/horcrux/svg/SvgView;

    if-eqz v5, :cond_8

    .line 106
    move-object v5, v4

    check-cast v5, Lcom/horcrux/svg/SvgView;

    .line 107
    .local v5, "svgView":Lcom/horcrux/svg/SvgView;
    invoke-virtual {v5, p1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {v5}, Lcom/horcrux/svg/SvgView;->isResponsible()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 109
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    .line 111
    .end local v5    # "svgView":Lcom/horcrux/svg/SvgView;
    :cond_7
    goto :goto_1

    .line 113
    :cond_8
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 75
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/ForeignObjectView;->setClientRect(Landroid/graphics/RectF;)V

    .line 117
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->popGlyphContext()V

    .line 118
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 46
    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/GroupView;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    .line 48
    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 66
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 67
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    .line 68
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 61
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 62
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    .line 63
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 51
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 52
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    .line 53
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 56
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 57
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    .line 58
    return-void
.end method
