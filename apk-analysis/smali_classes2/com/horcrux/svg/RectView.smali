.class Lcom/horcrux/svg/RectView;
.super Lcom/horcrux/svg/RenderableView;
.source "RectView.java"


# instance fields
.field private mH:Lcom/horcrux/svg/SVGLength;

.field private mRx:Lcom/horcrux/svg/SVGLength;

.field private mRy:Lcom/horcrux/svg/SVGLength;

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
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 66
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 67
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/RectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v10

    .line 68
    .local v10, "x":D
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/RectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v12

    .line 69
    .local v12, "y":D
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/RectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v14

    .line 70
    .local v14, "w":D
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/RectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v16

    .line 72
    .local v16, "h":D
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->mRx:Lcom/horcrux/svg/SVGLength;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/horcrux/svg/RectView;->mRy:Lcom/horcrux/svg/SVGLength;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    double-to-float v3, v10

    double-to-float v4, v12

    add-double v5, v10, v14

    double-to-float v5, v5

    add-double v6, v12, v16

    double-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 111
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    move-wide/from16 v19, v14

    goto/16 :goto_4

    .line 73
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    .line 74
    .local v2, "rx":D
    const-wide/16 v4, 0x0

    .line 75
    .local v4, "ry":D
    iget-object v6, v0, Lcom/horcrux/svg/RectView;->mRx:Lcom/horcrux/svg/SVGLength;

    if-nez v6, :cond_2

    .line 76
    iget-object v6, v0, Lcom/horcrux/svg/RectView;->mRy:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/RectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    .line 77
    move-wide v2, v4

    goto :goto_1

    .line 78
    :cond_2
    iget-object v6, v0, Lcom/horcrux/svg/RectView;->mRy:Lcom/horcrux/svg/SVGLength;

    if-nez v6, :cond_3

    .line 79
    iget-object v6, v0, Lcom/horcrux/svg/RectView;->mRx:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/RectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    .line 80
    move-wide v4, v2

    goto :goto_1

    .line 82
    :cond_3
    iget-object v6, v0, Lcom/horcrux/svg/RectView;->mRx:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/RectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    .line 83
    iget-object v6, v0, Lcom/horcrux/svg/RectView;->mRy:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/RectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    .line 86
    :goto_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v8, v14, v6

    cmpl-double v8, v2, v8

    if-lez v8, :cond_4

    .line 87
    div-double v2, v14, v6

    move-wide v8, v2

    goto :goto_2

    .line 86
    :cond_4
    move-wide v8, v2

    .line 90
    .end local v2    # "rx":D
    .local v8, "rx":D
    :goto_2
    div-double v2, v16, v6

    cmpl-double v2, v4, v2

    if-lez v2, :cond_5

    .line 91
    div-double v4, v16, v6

    move-wide v6, v4

    goto :goto_3

    .line 90
    :cond_5
    move-wide v6, v4

    .line 93
    .end local v4    # "ry":D
    .local v6, "ry":D
    :goto_3
    nop

    .line 94
    double-to-float v3, v10

    double-to-float v4, v12

    move/from16 v18, v4

    add-double v4, v10, v14

    double-to-float v5, v4

    move-wide/from16 v19, v14

    .end local v14    # "w":D
    .local v19, "w":D
    add-double v14, v12, v16

    double-to-float v14, v14

    double-to-float v15, v8

    double-to-float v4, v6

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v2, v1

    move/from16 v22, v4

    move/from16 v4, v18

    move-wide/from16 v23, v6

    .end local v6    # "ry":D
    .local v23, "ry":D
    move v6, v14

    move v7, v15

    move-wide v14, v8

    .end local v8    # "rx":D
    .local v14, "rx":D
    move/from16 v8, v22

    move-object/from16 v9, v21

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 109
    .end local v14    # "rx":D
    .end local v23    # "ry":D
    nop

    .line 115
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/horcrux/svg/RectView;->elements:Ljava/util/ArrayList;

    .line 116
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->elements:Ljava/util/ArrayList;

    new-instance v3, Lcom/horcrux/svg/PathElement;

    sget-object v4, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/horcrux/svg/Point;

    new-instance v7, Lcom/horcrux/svg/Point;

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v3, v4, v6}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->elements:Ljava/util/ArrayList;

    new-instance v3, Lcom/horcrux/svg/PathElement;

    sget-object v4, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v6, v5, [Lcom/horcrux/svg/Point;

    new-instance v7, Lcom/horcrux/svg/Point;

    add-double v14, v10, v19

    invoke-direct {v7, v14, v15, v12, v13}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v7, v6, v8

    invoke-direct {v3, v4, v6}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->elements:Ljava/util/ArrayList;

    new-instance v3, Lcom/horcrux/svg/PathElement;

    sget-object v4, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v6, v5, [Lcom/horcrux/svg/Point;

    new-instance v7, Lcom/horcrux/svg/Point;

    add-double v14, v10, v19

    move-wide/from16 v21, v10

    .end local v10    # "x":D
    .local v21, "x":D
    add-double v9, v12, v16

    invoke-direct {v7, v14, v15, v9, v10}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v7, v6, v8

    invoke-direct {v3, v4, v6}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->elements:Ljava/util/ArrayList;

    new-instance v3, Lcom/horcrux/svg/PathElement;

    sget-object v4, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v6, v5, [Lcom/horcrux/svg/Point;

    new-instance v7, Lcom/horcrux/svg/Point;

    add-double v9, v12, v16

    move-wide/from16 v14, v21

    .end local v21    # "x":D
    .local v14, "x":D
    invoke-direct {v7, v14, v15, v9, v10}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v7, v6, v8

    invoke-direct {v3, v4, v6}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, v0, Lcom/horcrux/svg/RectView;->elements:Ljava/util/ArrayList;

    new-instance v3, Lcom/horcrux/svg/PathElement;

    sget-object v4, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v5, v5, [Lcom/horcrux/svg/Point;

    new-instance v6, Lcom/horcrux/svg/Point;

    invoke-direct {v6, v14, v15, v12, v13}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-object v1
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 50
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RectView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 51
    invoke-virtual {p0}, Lcom/horcrux/svg/RectView;->invalidate()V

    .line 52
    return-void
.end method

.method public setRx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "rx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 55
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RectView;->mRx:Lcom/horcrux/svg/SVGLength;

    .line 56
    invoke-virtual {p0}, Lcom/horcrux/svg/RectView;->invalidate()V

    .line 57
    return-void
.end method

.method public setRy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "ry"    # Lcom/facebook/react/bridge/Dynamic;

    .line 60
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RectView;->mRy:Lcom/horcrux/svg/SVGLength;

    .line 61
    invoke-virtual {p0}, Lcom/horcrux/svg/RectView;->invalidate()V

    .line 62
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 45
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RectView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 46
    invoke-virtual {p0}, Lcom/horcrux/svg/RectView;->invalidate()V

    .line 47
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 35
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RectView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 36
    invoke-virtual {p0}, Lcom/horcrux/svg/RectView;->invalidate()V

    .line 37
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 40
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RectView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 41
    invoke-virtual {p0}, Lcom/horcrux/svg/RectView;->invalidate()V

    .line 42
    return-void
.end method
