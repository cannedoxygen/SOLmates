.class Lcom/horcrux/svg/RadialGradientView;
.super Lcom/horcrux/svg/DefinitionView;
.source "RadialGradientView.java"


# static fields
.field private static final sRawMatrix:[F


# instance fields
.field private mCx:Lcom/horcrux/svg/SVGLength;

.field private mCy:Lcom/horcrux/svg/SVGLength;

.field private mFx:Lcom/horcrux/svg/SVGLength;

.field private mFy:Lcom/horcrux/svg/SVGLength;

.field private mGradient:Lcom/facebook/react/bridge/ReadableArray;

.field private mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRx:Lcom/horcrux/svg/SVGLength;

.field private mRy:Lcom/horcrux/svg/SVGLength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/horcrux/svg/RadialGradientView;->sRawMatrix:[F

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

    .line 40
    invoke-direct {p0, p1}, Lcom/horcrux/svg/DefinitionView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    return-void
.end method


# virtual methods
.method saveDefinition()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/horcrux/svg/SVGLength;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mFx:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mFy:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mRx:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mRy:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mCx:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mCy:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    .line 112
    .local v0, "points":[Lcom/horcrux/svg/SVGLength;
    new-instance v1, Lcom/horcrux/svg/Brush;

    sget-object v2, Lcom/horcrux/svg/Brush$BrushType;->RADIAL_GRADIENT:Lcom/horcrux/svg/Brush$BrushType;

    iget-object v3, p0, Lcom/horcrux/svg/RadialGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    invoke-direct {v1, v2, v0, v3}, Lcom/horcrux/svg/Brush;-><init>(Lcom/horcrux/svg/Brush$BrushType;[Lcom/horcrux/svg/SVGLength;Lcom/horcrux/svg/Brush$BrushUnits;)V

    .line 113
    .local v1, "brush":Lcom/horcrux/svg/Brush;
    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mGradient:Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/Brush;->setGradientColors(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 114
    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/horcrux/svg/RadialGradientView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/Brush;->setGradientTransform(Landroid/graphics/Matrix;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    .line 119
    .local v2, "svg":Lcom/horcrux/svg/SvgView;
    iget-object v3, p0, Lcom/horcrux/svg/RadialGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    sget-object v4, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    if-ne v3, v4, :cond_1

    .line 120
    invoke-virtual {v2}, Lcom/horcrux/svg/SvgView;->getCanvasBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/horcrux/svg/Brush;->setUserSpaceBoundingBox(Landroid/graphics/Rect;)V

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/horcrux/svg/RadialGradientView;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/horcrux/svg/SvgView;->defineBrush(Lcom/horcrux/svg/Brush;Ljava/lang/String;)V

    .line 125
    .end local v0    # "points":[Lcom/horcrux/svg/SVGLength;
    .end local v1    # "brush":Lcom/horcrux/svg/Brush;
    .end local v2    # "svg":Lcom/horcrux/svg/SvgView;
    :cond_2
    return-void
.end method

.method public setCx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "cx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 64
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mCx:Lcom/horcrux/svg/SVGLength;

    .line 65
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 66
    return-void
.end method

.method public setCy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "cy"    # Lcom/facebook/react/bridge/Dynamic;

    .line 69
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mCy:Lcom/horcrux/svg/SVGLength;

    .line 70
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 71
    return-void
.end method

.method public setFx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "fx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 44
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mFx:Lcom/horcrux/svg/SVGLength;

    .line 45
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 46
    return-void
.end method

.method public setFy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "fy"    # Lcom/facebook/react/bridge/Dynamic;

    .line 49
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mFy:Lcom/horcrux/svg/SVGLength;

    .line 50
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 51
    return-void
.end method

.method public setGradient(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "gradient"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 74
    iput-object p1, p0, Lcom/horcrux/svg/RadialGradientView;->mGradient:Lcom/facebook/react/bridge/ReadableArray;

    .line 75
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 76
    return-void
.end method

.method public setGradientTransform(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "matrixArray"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    if-eqz p1, :cond_3

    .line 92
    sget-object v0, Lcom/horcrux/svg/RadialGradientView;->sRawMatrix:[F

    iget v1, p0, Lcom/horcrux/svg/RadialGradientView;->mScale:F

    invoke-static {p1, v0, v1}, Lcom/horcrux/svg/PropHelper;->toMatrixData(Lcom/facebook/react/bridge/ReadableArray;[FF)I

    move-result v0

    .line 93
    .local v0, "matrixSize":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/horcrux/svg/RadialGradientView;->mMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/RadialGradientView;->mMatrix:Landroid/graphics/Matrix;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/horcrux/svg/RadialGradientView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/horcrux/svg/RadialGradientView;->sRawMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 99
    const-string v1, "ReactNative"

    const-string v2, "RNSVG: Transform matrices must be of size 6"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "matrixSize":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 102
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mMatrix:Landroid/graphics/Matrix;

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 106
    return-void
.end method

.method public setGradientUnits(I)V
    .locals 1
    .param p1, "gradientUnits"    # I

    .line 79
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 81
    :pswitch_1
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 82
    nop

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 88
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "rx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 54
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mRx:Lcom/horcrux/svg/SVGLength;

    .line 55
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 56
    return-void
.end method

.method public setRy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "ry"    # Lcom/facebook/react/bridge/Dynamic;

    .line 59
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RadialGradientView;->mRy:Lcom/horcrux/svg/SVGLength;

    .line 60
    invoke-virtual {p0}, Lcom/horcrux/svg/RadialGradientView;->invalidate()V

    .line 61
    return-void
.end method
