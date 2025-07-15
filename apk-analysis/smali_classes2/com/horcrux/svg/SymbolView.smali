.class Lcom/horcrux/svg/SymbolView;
.super Lcom/horcrux/svg/GroupView;
.source "SymbolView.java"


# instance fields
.field private mAlign:Ljava/lang/String;

.field private mMeetOrSlice:I

.field private mMinX:F

.field private mMinY:F

.field private mVbHeight:F

.field private mVbWidth:F


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 29
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 30
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 64
    invoke-virtual {p0}, Lcom/horcrux/svg/SymbolView;->saveDefinition()V

    .line 65
    return-void
.end method

.method drawSymbol(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 68
    iget-object v0, p0, Lcom/horcrux/svg/SymbolView;->mAlign:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/horcrux/svg/SymbolView;->mMinX:F

    iget v2, p0, Lcom/horcrux/svg/SymbolView;->mScale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/horcrux/svg/SymbolView;->mMinY:F

    iget v3, p0, Lcom/horcrux/svg/SymbolView;->mScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/horcrux/svg/SymbolView;->mMinX:F

    iget v4, p0, Lcom/horcrux/svg/SymbolView;->mVbWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/horcrux/svg/SymbolView;->mScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/horcrux/svg/SymbolView;->mMinY:F

    iget v5, p0, Lcom/horcrux/svg/SymbolView;->mVbHeight:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/horcrux/svg/SymbolView;->mScale:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .local v0, "vbRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .local v1, "eRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/horcrux/svg/SymbolView;->mAlign:Ljava/lang/String;

    iget v3, p0, Lcom/horcrux/svg/SymbolView;->mMeetOrSlice:I

    invoke-static {v0, v1, v2, v3}, Lcom/horcrux/svg/ViewBox;->getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 77
    .local v2, "viewBoxMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 80
    .end local v0    # "vbRect":Landroid/graphics/RectF;
    .end local v1    # "eRect":Landroid/graphics/RectF;
    .end local v2    # "viewBoxMatrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/horcrux/svg/SymbolView;->mAlign:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/horcrux/svg/SymbolView;->invalidate()V

    .line 55
    return-void
.end method

.method public setMeetOrSlice(I)V
    .locals 0
    .param p1, "meetOrSlice"    # I

    .line 58
    iput p1, p0, Lcom/horcrux/svg/SymbolView;->mMeetOrSlice:I

    .line 59
    invoke-virtual {p0}, Lcom/horcrux/svg/SymbolView;->invalidate()V

    .line 60
    return-void
.end method

.method public setMinX(F)V
    .locals 0
    .param p1, "minX"    # F

    .line 33
    iput p1, p0, Lcom/horcrux/svg/SymbolView;->mMinX:F

    .line 34
    invoke-virtual {p0}, Lcom/horcrux/svg/SymbolView;->invalidate()V

    .line 35
    return-void
.end method

.method public setMinY(F)V
    .locals 0
    .param p1, "minY"    # F

    .line 38
    iput p1, p0, Lcom/horcrux/svg/SymbolView;->mMinY:F

    .line 39
    invoke-virtual {p0}, Lcom/horcrux/svg/SymbolView;->invalidate()V

    .line 40
    return-void
.end method

.method public setVbHeight(F)V
    .locals 0
    .param p1, "vbHeight"    # F

    .line 48
    iput p1, p0, Lcom/horcrux/svg/SymbolView;->mVbHeight:F

    .line 49
    invoke-virtual {p0}, Lcom/horcrux/svg/SymbolView;->invalidate()V

    .line 50
    return-void
.end method

.method public setVbWidth(F)V
    .locals 0
    .param p1, "vbWidth"    # F

    .line 43
    iput p1, p0, Lcom/horcrux/svg/SymbolView;->mVbWidth:F

    .line 44
    invoke-virtual {p0}, Lcom/horcrux/svg/SymbolView;->invalidate()V

    .line 45
    return-void
.end method
