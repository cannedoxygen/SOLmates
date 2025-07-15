.class Lcom/horcrux/svg/LinearGradientView;
.super Lcom/horcrux/svg/DefinitionView;
.source "LinearGradientView.java"


# static fields
.field private static final sRawMatrix:[F


# instance fields
.field private mGradient:Lcom/facebook/react/bridge/ReadableArray;

.field private mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mX1:Lcom/horcrux/svg/SVGLength;

.field private mX2:Lcom/horcrux/svg/SVGLength;

.field private mY1:Lcom/horcrux/svg/SVGLength;

.field private mY2:Lcom/horcrux/svg/SVGLength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/horcrux/svg/LinearGradientView;->sRawMatrix:[F

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

    .line 39
    invoke-direct {p0, p1}, Lcom/horcrux/svg/DefinitionView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mMatrix:Landroid/graphics/Matrix;

    .line 40
    return-void
.end method


# virtual methods
.method saveDefinition()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/horcrux/svg/SVGLength;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/horcrux/svg/LinearGradientView;->mX1:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/horcrux/svg/LinearGradientView;->mY1:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/horcrux/svg/LinearGradientView;->mX2:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/horcrux/svg/LinearGradientView;->mY2:Lcom/horcrux/svg/SVGLength;

    aput-object v2, v0, v1

    .line 101
    .local v0, "points":[Lcom/horcrux/svg/SVGLength;
    new-instance v1, Lcom/horcrux/svg/Brush;

    sget-object v2, Lcom/horcrux/svg/Brush$BrushType;->LINEAR_GRADIENT:Lcom/horcrux/svg/Brush$BrushType;

    iget-object v3, p0, Lcom/horcrux/svg/LinearGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    invoke-direct {v1, v2, v0, v3}, Lcom/horcrux/svg/Brush;-><init>(Lcom/horcrux/svg/Brush$BrushType;[Lcom/horcrux/svg/SVGLength;Lcom/horcrux/svg/Brush$BrushUnits;)V

    .line 102
    .local v1, "brush":Lcom/horcrux/svg/Brush;
    iget-object v2, p0, Lcom/horcrux/svg/LinearGradientView;->mGradient:Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/Brush;->setGradientColors(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 103
    iget-object v2, p0, Lcom/horcrux/svg/LinearGradientView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/horcrux/svg/LinearGradientView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/Brush;->setGradientTransform(Landroid/graphics/Matrix;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    .line 108
    .local v2, "svg":Lcom/horcrux/svg/SvgView;
    iget-object v3, p0, Lcom/horcrux/svg/LinearGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    sget-object v4, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    if-ne v3, v4, :cond_1

    .line 109
    invoke-virtual {v2}, Lcom/horcrux/svg/SvgView;->getCanvasBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/horcrux/svg/Brush;->setUserSpaceBoundingBox(Landroid/graphics/Rect;)V

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/horcrux/svg/LinearGradientView;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/horcrux/svg/SvgView;->defineBrush(Lcom/horcrux/svg/Brush;Ljava/lang/String;)V

    .line 114
    .end local v0    # "points":[Lcom/horcrux/svg/SVGLength;
    .end local v1    # "brush":Lcom/horcrux/svg/Brush;
    .end local v2    # "svg":Lcom/horcrux/svg/SvgView;
    :cond_2
    return-void
.end method

.method public setGradient(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "gradient"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 63
    iput-object p1, p0, Lcom/horcrux/svg/LinearGradientView;->mGradient:Lcom/facebook/react/bridge/ReadableArray;

    .line 64
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->invalidate()V

    .line 65
    return-void
.end method

.method public setGradientTransform(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "matrixArray"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    if-eqz p1, :cond_3

    .line 81
    sget-object v0, Lcom/horcrux/svg/LinearGradientView;->sRawMatrix:[F

    iget v1, p0, Lcom/horcrux/svg/LinearGradientView;->mScale:F

    invoke-static {p1, v0, v1}, Lcom/horcrux/svg/PropHelper;->toMatrixData(Lcom/facebook/react/bridge/ReadableArray;[FF)I

    move-result v0

    .line 82
    .local v0, "matrixSize":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/horcrux/svg/LinearGradientView;->mMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/LinearGradientView;->mMatrix:Landroid/graphics/Matrix;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/horcrux/svg/LinearGradientView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/horcrux/svg/LinearGradientView;->sRawMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 88
    const-string v1, "ReactNative"

    const-string v2, "RNSVG: Transform matrices must be of size 6"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0    # "matrixSize":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 91
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mMatrix:Landroid/graphics/Matrix;

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->invalidate()V

    .line 95
    return-void
.end method

.method public setGradientUnits(I)V
    .locals 1
    .param p1, "gradientUnits"    # I

    .line 68
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 70
    :pswitch_1
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mGradientUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 71
    nop

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->invalidate()V

    .line 77
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setX1(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x1"    # Lcom/facebook/react/bridge/Dynamic;

    .line 43
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mX1:Lcom/horcrux/svg/SVGLength;

    .line 44
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->invalidate()V

    .line 45
    return-void
.end method

.method public setX2(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x2"    # Lcom/facebook/react/bridge/Dynamic;

    .line 53
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mX2:Lcom/horcrux/svg/SVGLength;

    .line 54
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->invalidate()V

    .line 55
    return-void
.end method

.method public setY1(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y1"    # Lcom/facebook/react/bridge/Dynamic;

    .line 48
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mY1:Lcom/horcrux/svg/SVGLength;

    .line 49
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->invalidate()V

    .line 50
    return-void
.end method

.method public setY2(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y2"    # Lcom/facebook/react/bridge/Dynamic;

    .line 58
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LinearGradientView;->mY2:Lcom/horcrux/svg/SVGLength;

    .line 59
    invoke-virtual {p0}, Lcom/horcrux/svg/LinearGradientView;->invalidate()V

    .line 60
    return-void
.end method
