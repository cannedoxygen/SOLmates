.class public Lcom/horcrux/svg/FilterRegion;
.super Ljava/lang/Object;
.source "FilterRegion.java"


# instance fields
.field mH:Lcom/horcrux/svg/SVGLength;

.field mW:Lcom/horcrux/svg/SVGLength;

.field mX:Lcom/horcrux/svg/SVGLength;

.field mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D
    .locals 2
    .param p1, "view"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "value"    # Lcom/horcrux/svg/SVGLength;
    .param p3, "relativeOn"    # F
    .param p4, "defaultValue"    # D

    .line 31
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->UNKNOWN:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/horcrux/svg/VirtualView;->relativeOn(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v0

    return-wide v0

    .line 32
    :cond_1
    :goto_0
    return-wide p4
.end method


# virtual methods
.method public getCropRect(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/FilterProperties$Units;Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 18
    .param p1, "view"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "units"    # Lcom/horcrux/svg/FilterProperties$Units;
    .param p3, "bounds"    # Landroid/graphics/RectF;

    .line 39
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    if-nez v8, :cond_0

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lcom/horcrux/svg/FilterProperties$Units;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/FilterProperties$Units;

    move-object/from16 v9, p2

    if-ne v9, v0, :cond_1

    .line 43
    iget v0, v8, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7, v2, v3}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 44
    .local v0, "x":D
    iget v2, v8, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    iget-object v4, v6, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v7, v4, v5}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 45
    .local v2, "y":D
    iget-object v4, v6, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v7, v4, v5}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v4

    .line 46
    .local v4, "width":D
    iget-object v10, v6, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v10

    .local v10, "height":D
    goto :goto_0

    .line 48
    .end local v0    # "x":D
    .end local v2    # "y":D
    .end local v4    # "width":D
    .end local v10    # "height":D
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasWidth()F

    move-result v10

    .line 49
    .local v10, "canvasWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasHeight()F

    move-result v11

    .line 50
    .local v11, "canvasHeight":F
    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    iget v0, v8, Landroid/graphics/RectF;->left:F

    float-to-double v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v12

    .line 51
    .local v12, "x":D
    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    iget v0, v8, Landroid/graphics/RectF;->top:F

    float-to-double v4, v0

    move-object/from16 v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v14

    .line 52
    .local v14, "y":D
    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v4, v0

    move-object/from16 v0, p0

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v16

    .line 53
    .local v16, "width":D
    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v4, v0

    move-object/from16 v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v0

    move-wide v10, v0

    move-wide v0, v12

    move-wide v2, v14

    move-wide/from16 v4, v16

    .line 55
    .end local v11    # "canvasHeight":F
    .end local v12    # "x":D
    .end local v14    # "y":D
    .end local v16    # "width":D
    .restart local v0    # "x":D
    .restart local v2    # "y":D
    .restart local v4    # "width":D
    .local v10, "height":D
    :goto_0
    new-instance v12, Landroid/graphics/Rect;

    double-to-int v13, v0

    double-to-int v14, v2

    add-double v6, v0, v4

    double-to-int v6, v6

    move-wide v15, v0

    .end local v0    # "x":D
    .local v15, "x":D
    add-double v0, v2, v10

    double-to-int v0, v0

    invoke-direct {v12, v13, v14, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v12
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 26
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    .line 27
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 22
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    .line 23
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 14
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    .line 15
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 18
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    .line 19
    return-void
.end method
