.class Lcom/horcrux/svg/Brush;
.super Ljava/lang/Object;
.source "Brush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/Brush$BrushType;,
        Lcom/horcrux/svg/Brush$BrushUnits;
    }
.end annotation


# instance fields
.field private mColors:Lcom/facebook/react/bridge/ReadableArray;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPattern:Lcom/horcrux/svg/PatternView;

.field private final mPoints:[Lcom/horcrux/svg/SVGLength;

.field private final mType:Lcom/horcrux/svg/Brush$BrushType;

.field private mUseContentObjectBoundingBoxUnits:Z

.field private final mUseObjectBoundingBox:Z

.field private mUserSpaceBoundingBox:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/horcrux/svg/Brush$BrushType;[Lcom/horcrux/svg/SVGLength;Lcom/horcrux/svg/Brush$BrushUnits;)V
    .locals 1
    .param p1, "type"    # Lcom/horcrux/svg/Brush$BrushType;
    .param p2, "points"    # [Lcom/horcrux/svg/SVGLength;
    .param p3, "units"    # Lcom/horcrux/svg/Brush$BrushUnits;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/horcrux/svg/Brush;->mType:Lcom/horcrux/svg/Brush$BrushType;

    .line 41
    iput-object p2, p0, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    .line 42
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/horcrux/svg/Brush;->mUseObjectBoundingBox:Z

    .line 43
    return-void
.end method

.method private getPaintRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 8
    .param p1, "pathBoundingBox"    # Landroid/graphics/RectF;

    .line 89
    iget-boolean v0, p0, Lcom/horcrux/svg/Brush;->mUseObjectBoundingBox:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/horcrux/svg/Brush;->mUserSpaceBoundingBox:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 90
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 91
    .local v1, "width":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 92
    .local v2, "height":F
    const/4 v3, 0x0

    .line 93
    .local v3, "x":F
    const/4 v4, 0x0

    .line 95
    .local v4, "y":F
    iget-boolean v5, p0, Lcom/horcrux/svg/Brush;->mUseObjectBoundingBox:Z

    if-eqz v5, :cond_1

    .line 96
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 97
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 100
    :cond_1
    new-instance v5, Landroid/graphics/RectF;

    add-float v6, v3, v1

    add-float v7, v4, v2

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5
.end method

.method private getVal(Lcom/horcrux/svg/SVGLength;DFF)D
    .locals 13
    .param p1, "length"    # Lcom/horcrux/svg/SVGLength;
    .param p2, "relative"    # D
    .param p4, "scale"    # F
    .param p5, "textSize"    # F

    .line 104
    nop

    .line 108
    move-object v0, p0

    iget-boolean v1, v0, Lcom/horcrux/svg/Brush;->mUseObjectBoundingBox:Z

    if-eqz v1, :cond_0

    move-object v1, p1

    iget-object v2, v1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    sget-object v3, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v2, v3, :cond_1

    move-wide v7, p2

    move/from16 v11, p4

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    move/from16 v11, p4

    float-to-double v2, v11

    move-wide v7, v2

    :goto_0
    move/from16 v12, p5

    float-to-double v9, v12

    .line 104
    const-wide/16 v5, 0x0

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v2 .. v10}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method private static parseGradientStops(Lcom/facebook/react/bridge/ReadableArray;I[F[IF)V
    .locals 7
    .param p0, "value"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "stopsCount"    # I
    .param p2, "stops"    # [F
    .param p3, "stopsColors"    # [I
    .param p4, "opacity"    # F

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 67
    mul-int/lit8 v1, v0, 0x2

    .line 68
    .local v1, "stopIndex":I
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p2, v0

    .line 69
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 70
    .local v2, "color":I
    ushr-int/lit8 v3, v2, 0x18

    .line 71
    .local v3, "alpha":I
    int-to-float v4, v3

    mul-float/2addr v4, p4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 72
    .local v4, "combined":I
    shl-int/lit8 v5, v4, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    aput v5, p3, v0

    .line 66
    .end local v1    # "stopIndex":I
    .end local v2    # "color":I
    .end local v3    # "alpha":I
    .end local v4    # "combined":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method setContentUnits(Lcom/horcrux/svg/Brush$BrushUnits;)V
    .locals 1
    .param p1, "units"    # Lcom/horcrux/svg/Brush$BrushUnits;

    .line 46
    sget-object v0, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/horcrux/svg/Brush;->mUseContentObjectBoundingBoxUnits:Z

    .line 47
    return-void
.end method

.method setGradientColors(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "colors"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 81
    iput-object p1, p0, Lcom/horcrux/svg/Brush;->mColors:Lcom/facebook/react/bridge/ReadableArray;

    .line 82
    return-void
.end method

.method setGradientTransform(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 85
    iput-object p1, p0, Lcom/horcrux/svg/Brush;->mMatrix:Landroid/graphics/Matrix;

    .line 86
    return-void
.end method

.method setPattern(Lcom/horcrux/svg/PatternView;)V
    .locals 0
    .param p1, "pattern"    # Lcom/horcrux/svg/PatternView;

    .line 50
    iput-object p1, p0, Lcom/horcrux/svg/Brush;->mPattern:Lcom/horcrux/svg/PatternView;

    .line 51
    return-void
.end method

.method setUserSpaceBoundingBox(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "userSpaceBoundingBox"    # Landroid/graphics/Rect;

    .line 77
    iput-object p1, p0, Lcom/horcrux/svg/Brush;->mUserSpaceBoundingBox:Landroid/graphics/Rect;

    .line 78
    return-void
.end method

.method setupPaint(Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V
    .locals 33
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "pathBoundingBox"    # Landroid/graphics/RectF;
    .param p3, "scale"    # F
    .param p4, "opacity"    # F

    .line 113
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    invoke-direct {v6, v9}, Lcom/horcrux/svg/Brush;->getPaintRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    .line 114
    .local v10, "rect":Landroid/graphics/RectF;
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v11

    .line 115
    .local v11, "width":F
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v12

    .line 116
    .local v12, "height":F
    iget v13, v10, Landroid/graphics/RectF;->left:F

    .line 117
    .local v13, "offsetX":F
    iget v14, v10, Landroid/graphics/RectF;->top:F

    .line 119
    .local v14, "offsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    .line 120
    .local v15, "textSize":F
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mType:Lcom/horcrux/svg/Brush$BrushType;

    sget-object v1, Lcom/horcrux/svg/Brush$BrushType;->PATTERN:Lcom/horcrux/svg/Brush$BrushType;

    const/16 v16, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v17, 0x0

    if-ne v0, v1, :cond_5

    .line 121
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v17

    float-to-double v2, v11

    move-object/from16 v0, p0

    move v9, v4

    move/from16 v4, p3

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v4

    .line 122
    .local v4, "x":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v9

    float-to-double v2, v12

    move-object/from16 v0, p0

    move-object/from16 v19, v10

    move-wide v9, v4

    .end local v4    # "x":D
    .end local v10    # "rect":Landroid/graphics/RectF;
    .local v9, "x":D
    .local v19, "rect":Landroid/graphics/RectF;
    move/from16 v4, p3

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v4

    .line 123
    .local v4, "y":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    const/4 v2, 0x2

    aget-object v1, v0, v2

    float-to-double v2, v11

    move-object/from16 v0, p0

    move/from16 v18, v13

    move/from16 v20, v14

    move-wide v13, v4

    .end local v4    # "y":D
    .end local v14    # "offsetY":F
    .local v13, "y":D
    .local v18, "offsetX":F
    .local v20, "offsetY":F
    move/from16 v4, p3

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v4

    .line 124
    .local v4, "w":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v16

    float-to-double v2, v12

    move-object/from16 v0, p0

    move-wide v7, v4

    .end local v4    # "w":D
    .local v7, "w":D
    move/from16 v4, p3

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    .line 126
    .local v0, "h":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v7, v2

    if-lez v4, :cond_4

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_0

    move-wide/from16 v16, v0

    move-wide/from16 v22, v9

    move/from16 v21, v15

    move-wide v9, v7

    move-object/from16 v7, p1

    move/from16 v8, p4

    goto/16 :goto_1

    .line 130
    :cond_0
    double-to-int v2, v7

    double-to-int v3, v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 131
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v3, "canvas":Landroid/graphics/Canvas;
    iget-object v4, v6, Lcom/horcrux/svg/Brush;->mPattern:Lcom/horcrux/svg/PatternView;

    invoke-virtual {v4}, Lcom/horcrux/svg/PatternView;->getViewBox()Landroid/graphics/RectF;

    move-result-object v4

    .line 134
    .local v4, "vbRect":Landroid/graphics/RectF;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/16 v16, 0x0

    cmpl-float v5, v5, v16

    if-lez v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v16

    if-lez v5, :cond_1

    .line 135
    new-instance v5, Landroid/graphics/RectF;

    move/from16 v21, v15

    .end local v15    # "textSize":F
    .local v21, "textSize":F
    double-to-float v15, v9

    move-wide/from16 v22, v9

    .end local v9    # "x":D
    .local v22, "x":D
    double-to-float v9, v13

    double-to-float v10, v7

    move-wide/from16 v16, v7

    .end local v7    # "w":D
    .local v16, "w":D
    double-to-float v7, v0

    invoke-direct {v5, v15, v9, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 136
    .local v5, "eRect":Landroid/graphics/RectF;
    iget-object v7, v6, Lcom/horcrux/svg/Brush;->mPattern:Lcom/horcrux/svg/PatternView;

    iget-object v7, v7, Lcom/horcrux/svg/PatternView;->mAlign:Ljava/lang/String;

    iget-object v8, v6, Lcom/horcrux/svg/Brush;->mPattern:Lcom/horcrux/svg/PatternView;

    iget v8, v8, Lcom/horcrux/svg/PatternView;->mMeetOrSlice:I

    .line 137
    invoke-static {v4, v5, v7, v8}, Lcom/horcrux/svg/ViewBox;->getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object v7

    .line 138
    .local v7, "mViewBoxMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 134
    .end local v5    # "eRect":Landroid/graphics/RectF;
    .end local v16    # "w":D
    .end local v21    # "textSize":F
    .end local v22    # "x":D
    .local v7, "w":D
    .restart local v9    # "x":D
    .restart local v15    # "textSize":F
    :cond_1
    move-wide/from16 v16, v7

    move-wide/from16 v22, v9

    move/from16 v21, v15

    .line 141
    .end local v7    # "w":D
    .end local v9    # "x":D
    .end local v15    # "textSize":F
    .restart local v16    # "w":D
    .restart local v21    # "textSize":F
    .restart local v22    # "x":D
    :goto_0
    iget-boolean v5, v6, Lcom/horcrux/svg/Brush;->mUseContentObjectBoundingBoxUnits:Z

    if-eqz v5, :cond_2

    .line 142
    div-float v5, v11, p3

    div-float v7, v12, p3

    invoke-virtual {v3, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 145
    :cond_2
    iget-object v5, v6, Lcom/horcrux/svg/Brush;->mPattern:Lcom/horcrux/svg/PatternView;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    move/from16 v8, p4

    move-wide/from16 v9, v16

    .end local v16    # "w":D
    .local v9, "w":D
    invoke-virtual {v5, v3, v7, v8}, Lcom/horcrux/svg/PatternView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 147
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    .local v5, "patternMatrix":Landroid/graphics/Matrix;
    iget-object v7, v6, Lcom/horcrux/svg/Brush;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v7, :cond_3

    .line 149
    iget-object v7, v6, Lcom/horcrux/svg/Brush;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 152
    :cond_3
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v15, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-wide/from16 v16, v0

    .end local v0    # "h":D
    .local v16, "h":D
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v2, v15, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object v0, v7

    .line 154
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v0, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 155
    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    return-void

    .line 126
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "vbRect":Landroid/graphics/RectF;
    .end local v5    # "patternMatrix":Landroid/graphics/Matrix;
    .end local v16    # "h":D
    .end local v21    # "textSize":F
    .end local v22    # "x":D
    .local v0, "h":D
    .restart local v7    # "w":D
    .local v9, "x":D
    .restart local v15    # "textSize":F
    :cond_4
    move-wide/from16 v16, v0

    move-wide/from16 v22, v9

    move/from16 v21, v15

    move-wide v9, v7

    move-object/from16 v7, p1

    move/from16 v8, p4

    .line 127
    .end local v0    # "h":D
    .end local v7    # "w":D
    .end local v15    # "textSize":F
    .local v9, "w":D
    .restart local v16    # "h":D
    .restart local v21    # "textSize":F
    .restart local v22    # "x":D
    :goto_1
    return-void

    .line 159
    .end local v9    # "w":D
    .end local v16    # "h":D
    .end local v18    # "offsetX":F
    .end local v19    # "rect":Landroid/graphics/RectF;
    .end local v20    # "offsetY":F
    .end local v21    # "textSize":F
    .end local v22    # "x":D
    .restart local v10    # "rect":Landroid/graphics/RectF;
    .local v13, "offsetX":F
    .restart local v14    # "offsetY":F
    .restart local v15    # "textSize":F
    :cond_5
    move v9, v4

    move v2, v5

    move-object/from16 v19, v10

    move/from16 v18, v13

    move/from16 v20, v14

    move/from16 v21, v15

    .end local v10    # "rect":Landroid/graphics/RectF;
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v15    # "textSize":F
    .restart local v18    # "offsetX":F
    .restart local v19    # "rect":Landroid/graphics/RectF;
    .restart local v20    # "offsetY":F
    .restart local v21    # "textSize":F
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mColors:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    .line 160
    .local v10, "size":I
    const-string v0, "ReactNative"

    if-nez v10, :cond_6

    .line 161
    const-string v1, "Gradient contains no stops"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void

    .line 164
    :cond_6
    div-int/lit8 v13, v10, 0x2

    .line 165
    .local v13, "stopsCount":I
    new-array v1, v13, [I

    .line 166
    .local v1, "stopsColors":[I
    new-array v3, v13, [F

    .line 167
    .local v3, "stops":[F
    iget-object v4, v6, Lcom/horcrux/svg/Brush;->mColors:Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v4, v13, v3, v1, v8}, Lcom/horcrux/svg/Brush;->parseGradientStops(Lcom/facebook/react/bridge/ReadableArray;I[F[IF)V

    .line 169
    array-length v4, v3

    if-ne v4, v9, :cond_7

    .line 175
    aget v4, v1, v17

    aget v5, v1, v17

    filled-new-array {v4, v5}, [I

    move-result-object v4

    move-object v1, v4

    .line 176
    aget v4, v3, v17

    aget v5, v3, v17

    new-array v14, v2, [F

    aput v4, v14, v17

    aput v5, v14, v9

    move-object v3, v14

    .line 177
    const-string v4, "Gradient contains only one stop"

    invoke-static {v0, v4}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v1

    move-object v15, v3

    goto :goto_2

    .line 169
    :cond_7
    move-object v14, v1

    move-object v15, v3

    .line 180
    .end local v1    # "stopsColors":[I
    .end local v3    # "stops":[F
    .local v14, "stopsColors":[I
    .local v15, "stops":[F
    :goto_2
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mType:Lcom/horcrux/svg/Brush$BrushType;

    sget-object v1, Lcom/horcrux/svg/Brush$BrushType;->LINEAR_GRADIENT:Lcom/horcrux/svg/Brush$BrushType;

    if-ne v0, v1, :cond_9

    .line 181
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v17

    float-to-double v3, v11

    move-object/from16 v0, p0

    move v5, v2

    move-wide v2, v3

    move/from16 v4, p3

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    move/from16 v5, v18

    .end local v18    # "offsetX":F
    .local v5, "offsetX":F
    float-to-double v2, v5

    add-double/2addr v2, v0

    .line 182
    .local v2, "x1":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v9

    move-wide/from16 v17, v2

    .end local v2    # "x1":D
    .local v17, "x1":D
    float-to-double v2, v12

    move-object/from16 v0, p0

    move-wide/from16 v8, v17

    .end local v17    # "x1":D
    .local v8, "x1":D
    move/from16 v18, v10

    move v10, v5

    .end local v5    # "offsetX":F
    .local v10, "offsetX":F
    .local v18, "size":I
    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    move/from16 v5, v20

    .end local v20    # "offsetY":F
    .local v5, "offsetY":F
    float-to-double v2, v5

    add-double/2addr v2, v0

    .line 183
    .local v2, "y1":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    const/4 v4, 0x2

    aget-object v1, v0, v4

    move-wide/from16 v22, v2

    .end local v2    # "y1":D
    .local v22, "y1":D
    float-to-double v2, v11

    move-object/from16 v0, p0

    move/from16 v20, v13

    move-object/from16 v30, v14

    move-wide/from16 v13, v22

    .end local v14    # "stopsColors":[I
    .end local v22    # "y1":D
    .local v13, "y1":D
    .local v20, "stopsCount":I
    .local v30, "stopsColors":[I
    move/from16 v4, p3

    move/from16 v31, v11

    move v11, v5

    .end local v5    # "offsetY":F
    .local v11, "offsetY":F
    .local v31, "width":F
    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    float-to-double v2, v10

    add-double v4, v0, v2

    .line 184
    .local v4, "x2":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v16

    float-to-double v2, v12

    move-object/from16 v0, p0

    move-wide v6, v4

    .end local v4    # "x2":D
    .local v6, "x2":D
    move/from16 v4, p3

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    float-to-double v2, v11

    add-double/2addr v0, v2

    .line 186
    .local v0, "y2":D
    new-instance v2, Landroid/graphics/LinearGradient;

    double-to-float v3, v8

    double-to-float v4, v13

    double-to-float v5, v6

    move-wide/from16 v16, v6

    .end local v6    # "x2":D
    .local v16, "x2":D
    double-to-float v6, v0

    sget-object v29, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v30

    move-object/from16 v28, v15

    invoke-direct/range {v22 .. v29}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 196
    .local v2, "linearGradient":Landroid/graphics/Shader;
    move-object/from16 v6, p0

    move-wide/from16 v3, v16

    .end local v16    # "x2":D
    .local v3, "x2":D
    iget-object v5, v6, Lcom/horcrux/svg/Brush;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_8

    .line 197
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 198
    .local v5, "m":Landroid/graphics/Matrix;
    iget-object v7, v6, Lcom/horcrux/svg/Brush;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 199
    invoke-virtual {v2, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 202
    .end local v5    # "m":Landroid/graphics/Matrix;
    :cond_8
    move-object/from16 v7, p1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 203
    .end local v0    # "y2":D
    .end local v2    # "linearGradient":Landroid/graphics/Shader;
    .end local v3    # "x2":D
    .end local v8    # "x1":D
    .end local v13    # "y1":D
    move-object v5, v6

    move-object/from16 v4, v30

    goto/16 :goto_5

    .end local v30    # "stopsColors":[I
    .end local v31    # "width":F
    .local v10, "size":I
    .local v11, "width":F
    .local v13, "stopsCount":I
    .restart local v14    # "stopsColors":[I
    .local v18, "offsetX":F
    .local v20, "offsetY":F
    :cond_9
    move v4, v2

    move/from16 v31, v11

    move-object/from16 v30, v14

    move/from16 v11, v20

    move/from16 v20, v13

    move/from16 v32, v18

    move/from16 v18, v10

    move/from16 v10, v32

    .end local v13    # "stopsCount":I
    .end local v14    # "stopsColors":[I
    .local v10, "offsetX":F
    .local v11, "offsetY":F
    .local v18, "size":I
    .local v20, "stopsCount":I
    .restart local v30    # "stopsColors":[I
    .restart local v31    # "width":F
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mType:Lcom/horcrux/svg/Brush$BrushType;

    sget-object v1, Lcom/horcrux/svg/Brush$BrushType;->RADIAL_GRADIENT:Lcom/horcrux/svg/Brush$BrushType;

    if-ne v0, v1, :cond_d

    .line 204
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v4

    move/from16 v8, v31

    .end local v31    # "width":F
    .local v8, "width":F
    float-to-double v2, v8

    move-object/from16 v0, p0

    move v13, v4

    move/from16 v4, p3

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v22

    .line 205
    .local v22, "rx":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v0, v16

    float-to-double v2, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    .line 207
    .local v0, "ry":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v22, v2

    if-lez v4, :cond_b

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_a

    goto :goto_3

    :cond_a
    move-wide v13, v0

    move-wide/from16 v4, v22

    goto :goto_4

    .line 209
    :cond_b
    :goto_3
    float-to-double v2, v8

    .line 210
    .end local v22    # "rx":D
    .local v2, "rx":D
    float-to-double v0, v12

    .line 211
    aget v4, v15, v17

    array-length v5, v15

    sub-int/2addr v5, v9

    aget v5, v15, v5

    new-array v13, v13, [F

    aput v4, v13, v17

    aput v5, v13, v9

    move-object v15, v13

    .line 212
    move-object/from16 v4, v30

    .end local v30    # "stopsColors":[I
    .local v4, "stopsColors":[I
    array-length v5, v4

    sub-int/2addr v5, v9

    aget v5, v4, v5

    array-length v13, v4

    sub-int/2addr v13, v9

    aget v9, v4, v13

    filled-new-array {v5, v9}, [I

    move-result-object v5

    move-object v14, v5

    move-wide v4, v2

    move-object/from16 v30, v14

    move-wide v13, v0

    .line 215
    .end local v0    # "ry":D
    .end local v2    # "rx":D
    .local v4, "rx":D
    .local v13, "ry":D
    .restart local v30    # "stopsColors":[I
    :goto_4
    div-double v2, v13, v4

    .line 217
    .local v2, "ratio":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-wide/from16 v16, v2

    .end local v2    # "ratio":D
    .local v16, "ratio":D
    float-to-double v2, v8

    move-object/from16 v0, p0

    move/from16 v31, v8

    move-wide/from16 v8, v16

    .end local v16    # "ratio":D
    .local v8, "ratio":D
    .restart local v31    # "width":F
    move-wide/from16 v16, v13

    move-wide v13, v4

    .end local v4    # "rx":D
    .local v13, "rx":D
    .local v16, "ry":D
    move/from16 v4, p3

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    float-to-double v2, v10

    add-double v4, v0, v2

    .line 218
    .local v4, "cx":D
    iget-object v0, v6, Lcom/horcrux/svg/Brush;->mPoints:[Lcom/horcrux/svg/SVGLength;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    float-to-double v2, v12

    div-double/2addr v2, v8

    move-object/from16 v0, p0

    move-wide v6, v4

    .end local v4    # "cx":D
    .local v6, "cx":D
    move/from16 v4, p3

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/Brush;->getVal(Lcom/horcrux/svg/SVGLength;DFF)D

    move-result-wide v0

    float-to-double v2, v11

    div-double/2addr v2, v8

    add-double/2addr v0, v2

    .line 224
    .local v0, "cy":D
    new-instance v2, Landroid/graphics/RadialGradient;

    double-to-float v3, v6

    double-to-float v4, v0

    double-to-float v5, v13

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v26, v30

    move-object/from16 v27, v15

    invoke-direct/range {v22 .. v28}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 228
    .local v2, "radialGradient":Landroid/graphics/Shader;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 229
    .local v3, "radialMatrix":Landroid/graphics/Matrix;
    const/high16 v4, 0x3f800000    # 1.0f

    double-to-float v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 231
    move-object/from16 v5, p0

    iget-object v4, v5, Lcom/horcrux/svg/Brush;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_c

    .line 232
    iget-object v4, v5, Lcom/horcrux/svg/Brush;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 235
    :cond_c
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 236
    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v14, v30

    goto :goto_6

    .line 203
    .end local v0    # "cy":D
    .end local v2    # "radialGradient":Landroid/graphics/Shader;
    .end local v3    # "radialMatrix":Landroid/graphics/Matrix;
    .end local v6    # "cx":D
    .end local v8    # "ratio":D
    .end local v13    # "rx":D
    .end local v16    # "ry":D
    :cond_d
    move-object v5, v6

    move-object/from16 v4, v30

    .line 238
    .end local v30    # "stopsColors":[I
    .local v4, "stopsColors":[I
    :goto_5
    move-object v14, v4

    .end local v4    # "stopsColors":[I
    .restart local v14    # "stopsColors":[I
    :goto_6
    return-void
.end method
