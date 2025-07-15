.class public Lexpo/modules/lineargradient/LinearGradientView;
.super Landroid/view/View;
.source "LinearGradientView.java"


# instance fields
.field private mBorderRadii:[F

.field private mColors:[I

.field private mEndPos:[F

.field private mLocations:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorderRadius:Landroid/graphics/Path;

.field private mSize:[I

.field private mStartPos:[F

.field private mTempRectForBorderRadius:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mStartPos:[F

    .line 21
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mEndPos:[F

    .line 23
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mBorderRadii:[F

    .line 30
    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private drawGradient()V
    .locals 10

    .line 86
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mColors:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mLocations:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mColors:[I

    array-length v0, v0

    iget-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mLocations:[F

    array-length v1, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mStartPos:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    aget v3, v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mStartPos:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v5, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    aget v5, v5, v4

    int-to-float v5, v5

    mul-float/2addr v1, v5

    iget-object v5, p0, Lexpo/modules/lineargradient/LinearGradientView;->mEndPos:[F

    aget v5, v5, v2

    iget-object v6, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    aget v2, v6, v2

    int-to-float v2, v2

    mul-float/2addr v5, v2

    iget-object v2, p0, Lexpo/modules/lineargradient/LinearGradientView;->mEndPos:[F

    aget v2, v2, v4

    iget-object v6, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    aget v4, v6, v4

    int-to-float v4, v4

    mul-float v6, v2, v4

    iget-object v7, p0, Lexpo/modules/lineargradient/LinearGradientView;->mColors:[I

    iget-object v8, p0, Lexpo/modules/lineargradient/LinearGradientView;->mLocations:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    move v4, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 96
    .local v0, "mShader":Landroid/graphics/LinearGradient;
    iget-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 97
    invoke-virtual {p0}, Lexpo/modules/lineargradient/LinearGradientView;->invalidate()V

    .line 98
    return-void

    .line 87
    .end local v0    # "mShader":Landroid/graphics/LinearGradient;
    :cond_1
    :goto_0
    return-void
.end method

.method private toPixelFromDIP(F)F
    .locals 2
    .param p1, "value"    # F

    .line 70
    nop

    .line 73
    invoke-virtual {p0}, Lexpo/modules/lineargradient/LinearGradientView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 70
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private updatePath()V
    .locals 4

    .line 101
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 105
    :cond_0
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 106
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    iget-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    iget-object v2, p0, Lexpo/modules/lineargradient/LinearGradientView;->mBorderRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 79
    filled-new-array {p1, p2}, [I

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mSize:[I

    .line 80
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->updatePath()V

    .line 81
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->drawGradient()V

    .line 82
    return-void
.end method

.method public setBorderRadii([F)V
    .locals 2
    .param p1, "borderRadii"    # [F

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 54
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lexpo/modules/lineargradient/LinearGradientView;->toPixelFromDIP(F)F

    move-result v1

    aput v1, p1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    iput-object p1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mBorderRadii:[F

    .line 57
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->updatePath()V

    .line 58
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->drawGradient()V

    .line 59
    return-void
.end method

.method public setColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .line 43
    iput-object p1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mColors:[I

    .line 44
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->drawGradient()V

    .line 45
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 62
    iget-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 63
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->drawGradient()V

    .line 64
    return-void
.end method

.method public setEndPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mEndPos:[F

    .line 39
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->drawGradient()V

    .line 40
    return-void
.end method

.method public setLocations([F)V
    .locals 0
    .param p1, "locations"    # [F

    .line 48
    iput-object p1, p0, Lexpo/modules/lineargradient/LinearGradientView;->mLocations:[F

    .line 49
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->drawGradient()V

    .line 50
    return-void
.end method

.method public setStartPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lexpo/modules/lineargradient/LinearGradientView;->mStartPos:[F

    .line 34
    invoke-direct {p0}, Lexpo/modules/lineargradient/LinearGradientView;->drawGradient()V

    .line 35
    return-void
.end method
