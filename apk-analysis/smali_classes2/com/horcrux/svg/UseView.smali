.class Lcom/horcrux/svg/UseView;
.super Lcom/horcrux/svg/RenderableView;
.source "UseView.java"


# instance fields
.field private mH:Lcom/horcrux/svg/SVGLength;

.field private mHref:Ljava/lang/String;

.field private mW:Lcom/horcrux/svg/SVGLength;

.field private mX:Lcom/horcrux/svg/SVGLength;

.field private mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 31
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 32
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 61
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/UseView;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/horcrux/svg/SvgView;->getDefinedTemplate(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v0

    .line 63
    .local v0, "template":Lcom/horcrux/svg/VirtualView;
    if-nez v0, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "`Use` element expected a pre-defined svg template as `href` prop, template named: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/UseView;->mHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    .line 74
    iget-object v1, p0, Lcom/horcrux/svg/UseView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/UseView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/horcrux/svg/UseView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v2}, Lcom/horcrux/svg/UseView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    instance-of v1, v0, Lcom/horcrux/svg/RenderableView;

    if-eqz v1, :cond_1

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v1, p0}, Lcom/horcrux/svg/RenderableView;->mergeProperties(Lcom/horcrux/svg/RenderableView;)V

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/horcrux/svg/UseView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v1

    .line 80
    .local v1, "count":I
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/UseView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 82
    instance-of v2, v0, Lcom/horcrux/svg/SymbolView;

    if-eqz v2, :cond_2

    .line 83
    move-object v2, v0

    check-cast v2, Lcom/horcrux/svg/SymbolView;

    .line 84
    .local v2, "symbol":Lcom/horcrux/svg/SymbolView;
    iget-object v3, p0, Lcom/horcrux/svg/UseView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 85
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/UseView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v7, v3

    iget-object v3, p0, Lcom/horcrux/svg/UseView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v3}, Lcom/horcrux/svg/UseView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v8, v3

    .line 84
    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/horcrux/svg/SymbolView;->drawSymbol(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    .line 86
    .end local v2    # "symbol":Lcom/horcrux/svg/SymbolView;
    goto :goto_0

    .line 87
    :cond_2
    iget v2, p0, Lcom/horcrux/svg/UseView;->mOpacity:F

    mul-float/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2}, Lcom/horcrux/svg/VirtualView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 91
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 92
    .local v2, "clientRect":Landroid/graphics/RectF;
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/UseView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 94
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/UseView;->setClientRect(Landroid/graphics/RectF;)V

    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    .line 97
    instance-of v3, v0, Lcom/horcrux/svg/RenderableView;

    if-eqz v3, :cond_3

    .line 98
    move-object v3, v0

    check-cast v3, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v3}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    .line 100
    :cond_3
    return-void
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 133
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/UseView;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/horcrux/svg/SvgView;->getDefinedTemplate(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v0

    .line 134
    .local v0, "template":Lcom/horcrux/svg/VirtualView;
    if-nez v0, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "`Use` element expected a pre-defined svg template as `href` prop, template named: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/UseView;->mHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    return-object v1

    .line 143
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v1

    .line 144
    .local v1, "path":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 145
    .local v2, "use":Landroid/graphics/Path;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 146
    .local v3, "m":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/horcrux/svg/UseView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v4}, Lcom/horcrux/svg/UseView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lcom/horcrux/svg/UseView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v5}, Lcom/horcrux/svg/UseView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 147
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 148
    return-object v2
.end method

.method hitTest([F)I
    .locals 5
    .param p1, "src"    # [F

    .line 104
    iget-boolean v0, p0, Lcom/horcrux/svg/UseView;->mInvertible:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 108
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 109
    .local v0, "dst":[F
    iget-object v2, p0, Lcom/horcrux/svg/UseView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 110
    iget-object v2, p0, Lcom/horcrux/svg/UseView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 112
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    iget-object v3, p0, Lcom/horcrux/svg/UseView;->mHref:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/horcrux/svg/SvgView;->getDefinedTemplate(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v2

    .line 113
    .local v2, "template":Lcom/horcrux/svg/VirtualView;
    if-nez v2, :cond_1

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "`Use` element expected a pre-defined svg template as `href` prop, template named: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/horcrux/svg/UseView;->mHref:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not defined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReactNative"

    invoke-static {v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v1

    .line 123
    :cond_1
    invoke-virtual {v2, v0}, Lcom/horcrux/svg/VirtualView;->hitTest([F)I

    move-result v3

    .line 124
    .local v3, "hitChild":I
    if-eq v3, v1, :cond_4

    .line 125
    invoke-virtual {v2}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/horcrux/svg/VirtualView;->getId()I

    move-result v1

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->getId()I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    return v1

    .line 128
    :cond_4
    return v1
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 55
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/UseView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 56
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->invalidate()V

    .line 57
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/horcrux/svg/UseView;->mHref:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->invalidate()V

    .line 37
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 50
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/UseView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 51
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->invalidate()V

    .line 52
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 40
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/UseView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 41
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->invalidate()V

    .line 42
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 45
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/UseView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 46
    invoke-virtual {p0}, Lcom/horcrux/svg/UseView;->invalidate()V

    .line 47
    return-void
.end method
