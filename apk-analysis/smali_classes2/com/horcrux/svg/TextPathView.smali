.class Lcom/horcrux/svg/TextPathView;
.super Lcom/horcrux/svg/TextView;
.source "TextPathView.java"


# instance fields
.field private mHref:Ljava/lang/String;

.field private mMethod:Lcom/horcrux/svg/TextProperties$TextPathMethod;

.field private mMidLine:Lcom/horcrux/svg/TextProperties$TextPathMidLine;

.field private mSide:Lcom/horcrux/svg/TextProperties$TextPathSide;

.field private mSpacing:Lcom/horcrux/svg/TextProperties$TextPathSpacing;

.field private mStartOffset:Lcom/horcrux/svg/SVGLength;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 32
    invoke-direct {p0, p1}, Lcom/horcrux/svg/TextView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 28
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextPathMethod;->align:Lcom/horcrux/svg/TextProperties$TextPathMethod;

    iput-object v0, p0, Lcom/horcrux/svg/TextPathView;->mMethod:Lcom/horcrux/svg/TextProperties$TextPathMethod;

    .line 29
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextPathSpacing;->exact:Lcom/horcrux/svg/TextProperties$TextPathSpacing;

    iput-object v0, p0, Lcom/horcrux/svg/TextPathView;->mSpacing:Lcom/horcrux/svg/TextProperties$TextPathSpacing;

    .line 33
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/TextPathView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 90
    return-void
.end method

.method getMethod()Lcom/horcrux/svg/TextProperties$TextPathMethod;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/horcrux/svg/TextPathView;->mMethod:Lcom/horcrux/svg/TextProperties$TextPathMethod;

    return-object v0
.end method

.method getMidLine()Lcom/horcrux/svg/TextProperties$TextPathMidLine;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/horcrux/svg/TextPathView;->mMidLine:Lcom/horcrux/svg/TextProperties$TextPathMidLine;

    return-object v0
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextPathView;->getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method getSide()Lcom/horcrux/svg/TextProperties$TextPathSide;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/horcrux/svg/TextPathView;->mSide:Lcom/horcrux/svg/TextProperties$TextPathSide;

    return-object v0
.end method

.method getSpacing()Lcom/horcrux/svg/TextProperties$TextPathSpacing;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/horcrux/svg/TextPathView;->mSpacing:Lcom/horcrux/svg/TextProperties$TextPathSpacing;

    return-object v0
.end method

.method getStartOffset()Lcom/horcrux/svg/SVGLength;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/horcrux/svg/TextPathView;->mStartOffset:Lcom/horcrux/svg/SVGLength;

    return-object v0
.end method

.method getTextPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p0}, Lcom/horcrux/svg/TextPathView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 94
    .local v0, "svg":Lcom/horcrux/svg/SvgView;
    iget-object v1, p0, Lcom/horcrux/svg/TextPathView;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/horcrux/svg/SvgView;->getDefinedTemplate(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v1

    .line 96
    .local v1, "template":Lcom/horcrux/svg/VirtualView;
    instance-of v2, v1, Lcom/horcrux/svg/RenderableView;

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    return-object v2

    .line 101
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/horcrux/svg/RenderableView;

    .line 102
    .local v2, "view":Lcom/horcrux/svg/RenderableView;
    invoke-virtual {v2, p1, p2}, Lcom/horcrux/svg/RenderableView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    return-object v3
.end method

.method popGlyphContext()V
    .locals 0

    .line 118
    return-void
.end method

.method pushGlyphContext()V
    .locals 0

    .line 113
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/horcrux/svg/TextPathView;->mHref:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/horcrux/svg/TextPathView;->invalidate()V

    .line 38
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$TextPathMethod;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextPathMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextPathView;->mMethod:Lcom/horcrux/svg/TextProperties$TextPathMethod;

    .line 47
    invoke-virtual {p0}, Lcom/horcrux/svg/TextPathView;->invalidate()V

    .line 48
    return-void
.end method

.method public setSharp(Ljava/lang/String;)V
    .locals 1
    .param p1, "midLine"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$TextPathMidLine;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextPathMidLine;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextPathView;->mMidLine:Lcom/horcrux/svg/TextProperties$TextPathMidLine;

    .line 62
    invoke-virtual {p0}, Lcom/horcrux/svg/TextPathView;->invalidate()V

    .line 63
    return-void
.end method

.method public setSide(Ljava/lang/String;)V
    .locals 1
    .param p1, "side"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$TextPathSide;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextPathSide;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextPathView;->mSide:Lcom/horcrux/svg/TextProperties$TextPathSide;

    .line 57
    invoke-virtual {p0}, Lcom/horcrux/svg/TextPathView;->invalidate()V

    .line 58
    return-void
.end method

.method public setSpacing(Ljava/lang/String;)V
    .locals 1
    .param p1, "spacing"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$TextPathSpacing;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextPathSpacing;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextPathView;->mSpacing:Lcom/horcrux/svg/TextProperties$TextPathSpacing;

    .line 52
    invoke-virtual {p0}, Lcom/horcrux/svg/TextPathView;->invalidate()V

    .line 53
    return-void
.end method

.method public setStartOffset(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "startOffset"    # Lcom/facebook/react/bridge/Dynamic;

    .line 41
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TextPathView;->mStartOffset:Lcom/horcrux/svg/SVGLength;

    .line 42
    invoke-virtual {p0}, Lcom/horcrux/svg/TextPathView;->invalidate()V

    .line 43
    return-void
.end method
