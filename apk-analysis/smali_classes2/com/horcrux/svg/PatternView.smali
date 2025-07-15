.class Lcom/horcrux/svg/PatternView;
.super Lcom/horcrux/svg/GroupView;
.source "PatternView.java"


# static fields
.field private static final sRawMatrix:[F


# instance fields
.field mAlign:Ljava/lang/String;

.field private mH:Lcom/horcrux/svg/SVGLength;

.field private mMatrix:Landroid/graphics/Matrix;

.field mMeetOrSlice:I

.field private mMinX:F

.field private mMinY:F

.field private mPatternContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field private mPatternUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field private mVbHeight:F

.field private mVbWidth:F

.field private mW:Lcom/horcrux/svg/SVGLength;

.field private mX:Lcom/horcrux/svg/SVGLength;

.field private mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/horcrux/svg/PatternView;->sRawMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 47
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mMatrix:Landroid/graphics/Matrix;

    .line 48
    return-void
.end method


# virtual methods
.method getViewBox()Landroid/graphics/RectF;
    .locals 6

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/horcrux/svg/PatternView;->mMinX:F

    iget v2, p0, Lcom/horcrux/svg/PatternView;->mScale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/horcrux/svg/PatternView;->mMinY:F

    iget v3, p0, Lcom/horcrux/svg/PatternView;->mScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/horcrux/svg/PatternView;->mMinX:F

    iget v4, p0, Lcom/horcrux/svg/PatternView;->mVbWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/horcrux/svg/PatternView;->mScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/horcrux/svg/PatternView;->mMinY:F

    iget v5, p0, Lcom/horcrux/svg/PatternView;->mVbHeight:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/horcrux/svg/PatternView;->mScale:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method saveDefinition()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/horcrux/svg/PatternView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 150
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/horcrux/svg/SVGLength;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/horcrux/svg/PatternView;->mX:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/horcrux/svg/PatternView;->mY:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/horcrux/svg/PatternView;->mW:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/horcrux/svg/PatternView;->mH:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    .line 151
    .local v0, "points":[Lcom/horcrux/svg/SVGLength;
    new-instance v1, Lcom/horcrux/svg/Brush;

    sget-object v2, Lcom/horcrux/svg/Brush$BrushType;->PATTERN:Lcom/horcrux/svg/Brush$BrushType;

    iget-object v3, p0, Lcom/horcrux/svg/PatternView;->mPatternUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    invoke-direct {v1, v2, v0, v3}, Lcom/horcrux/svg/Brush;-><init>(Lcom/horcrux/svg/Brush$BrushType;[Lcom/horcrux/svg/SVGLength;Lcom/horcrux/svg/Brush$BrushUnits;)V

    .line 152
    .local v1, "brush":Lcom/horcrux/svg/Brush;
    iget-object v2, p0, Lcom/horcrux/svg/PatternView;->mPatternContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/Brush;->setContentUnits(Lcom/horcrux/svg/Brush$BrushUnits;)V

    .line 153
    invoke-virtual {v1, p0}, Lcom/horcrux/svg/Brush;->setPattern(Lcom/horcrux/svg/PatternView;)V

    .line 155
    iget-object v2, p0, Lcom/horcrux/svg/PatternView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/horcrux/svg/PatternView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/Brush;->setGradientTransform(Landroid/graphics/Matrix;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    .line 160
    .local v2, "svg":Lcom/horcrux/svg/SvgView;
    iget-object v3, p0, Lcom/horcrux/svg/PatternView;->mPatternUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    sget-object v4, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/horcrux/svg/PatternView;->mPatternContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    sget-object v4, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    if-ne v3, v4, :cond_2

    .line 162
    :cond_1
    invoke-virtual {v2}, Lcom/horcrux/svg/SvgView;->getCanvasBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/horcrux/svg/Brush;->setUserSpaceBoundingBox(Landroid/graphics/Rect;)V

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/horcrux/svg/PatternView;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/horcrux/svg/SvgView;->defineBrush(Lcom/horcrux/svg/Brush;Ljava/lang/String;)V

    .line 167
    .end local v0    # "points":[Lcom/horcrux/svg/SVGLength;
    .end local v1    # "brush":Lcom/horcrux/svg/Brush;
    .end local v2    # "svg":Lcom/horcrux/svg/SvgView;
    :cond_3
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/horcrux/svg/PatternView;->mAlign:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 135
    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 66
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 67
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 68
    return-void
.end method

.method public setMeetOrSlice(I)V
    .locals 0
    .param p1, "meetOrSlice"    # I

    .line 138
    iput p1, p0, Lcom/horcrux/svg/PatternView;->mMeetOrSlice:I

    .line 139
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 140
    return-void
.end method

.method public setMinX(F)V
    .locals 0
    .param p1, "minX"    # F

    .line 113
    iput p1, p0, Lcom/horcrux/svg/PatternView;->mMinX:F

    .line 114
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 115
    return-void
.end method

.method public setMinY(F)V
    .locals 0
    .param p1, "minY"    # F

    .line 118
    iput p1, p0, Lcom/horcrux/svg/PatternView;->mMinY:F

    .line 119
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 120
    return-void
.end method

.method public setPatternContentUnits(I)V
    .locals 1
    .param p1, "patternContentUnits"    # I

    .line 83
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mPatternContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 85
    :pswitch_1
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mPatternContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 86
    nop

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 92
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPatternTransform(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "matrixArray"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    if-eqz p1, :cond_3

    .line 96
    sget-object v0, Lcom/horcrux/svg/PatternView;->sRawMatrix:[F

    iget v1, p0, Lcom/horcrux/svg/PatternView;->mScale:F

    invoke-static {p1, v0, v1}, Lcom/horcrux/svg/PropHelper;->toMatrixData(Lcom/facebook/react/bridge/ReadableArray;[FF)I

    move-result v0

    .line 97
    .local v0, "matrixSize":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/horcrux/svg/PatternView;->mMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/PatternView;->mMatrix:Landroid/graphics/Matrix;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/horcrux/svg/PatternView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/horcrux/svg/PatternView;->sRawMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 103
    const-string v1, "ReactNative"

    const-string v2, "RNSVG: Transform matrices must be of size 6"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v0    # "matrixSize":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 106
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mMatrix:Landroid/graphics/Matrix;

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 110
    return-void
.end method

.method public setPatternUnits(I)V
    .locals 1
    .param p1, "patternUnits"    # I

    .line 71
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mPatternUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 73
    :pswitch_1
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mPatternUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 74
    nop

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 80
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVbHeight(F)V
    .locals 0
    .param p1, "vbHeight"    # F

    .line 128
    iput p1, p0, Lcom/horcrux/svg/PatternView;->mVbHeight:F

    .line 129
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 130
    return-void
.end method

.method public setVbWidth(F)V
    .locals 0
    .param p1, "vbWidth"    # F

    .line 123
    iput p1, p0, Lcom/horcrux/svg/PatternView;->mVbWidth:F

    .line 124
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 125
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 61
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 62
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 63
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 51
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 52
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 53
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 56
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PatternView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 57
    invoke-virtual {p0}, Lcom/horcrux/svg/PatternView;->invalidate()V

    .line 58
    return-void
.end method
