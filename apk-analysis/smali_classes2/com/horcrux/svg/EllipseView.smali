.class Lcom/horcrux/svg/EllipseView;
.super Lcom/horcrux/svg/RenderableView;
.source "EllipseView.java"


# instance fields
.field private mCx:Lcom/horcrux/svg/SVGLength;

.field private mCy:Lcom/horcrux/svg/SVGLength;

.field private mRx:Lcom/horcrux/svg/SVGLength;

.field private mRy:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 28
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 29
    return-void
.end method


# virtual methods
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 53
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 54
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, v0, Lcom/horcrux/svg/EllipseView;->mCx:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/EllipseView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    .line 55
    .local v2, "cx":D
    iget-object v4, v0, Lcom/horcrux/svg/EllipseView;->mCy:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v4}, Lcom/horcrux/svg/EllipseView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    .line 56
    .local v4, "cy":D
    iget-object v6, v0, Lcom/horcrux/svg/EllipseView;->mRx:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/EllipseView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v6

    .line 57
    .local v6, "rx":D
    iget-object v8, v0, Lcom/horcrux/svg/EllipseView;->mRy:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v8}, Lcom/horcrux/svg/EllipseView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v8

    .line 58
    .local v8, "ry":D
    new-instance v10, Landroid/graphics/RectF;

    sub-double v11, v2, v6

    double-to-float v11, v11

    sub-double v12, v4, v8

    double-to-float v12, v12

    add-double v13, v2, v6

    double-to-float v13, v13

    add-double v14, v4, v8

    double-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    .local v10, "oval":Landroid/graphics/RectF;
    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 62
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/horcrux/svg/EllipseView;->elements:Ljava/util/ArrayList;

    .line 63
    iget-object v11, v0, Lcom/horcrux/svg/EllipseView;->elements:Ljava/util/ArrayList;

    new-instance v12, Lcom/horcrux/svg/PathElement;

    sget-object v13, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v14, 0x1

    new-array v15, v14, [Lcom/horcrux/svg/Point;

    new-instance v14, Lcom/horcrux/svg/Point;

    move-wide/from16 v16, v6

    .end local v6    # "rx":D
    .local v16, "rx":D
    sub-double v6, v4, v8

    invoke-direct {v14, v2, v3, v6, v7}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v6, 0x0

    aput-object v14, v15, v6

    invoke-direct {v12, v13, v15}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v7, v0, Lcom/horcrux/svg/EllipseView;->elements:Ljava/util/ArrayList;

    new-instance v11, Lcom/horcrux/svg/PathElement;

    sget-object v12, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v13, 0x2

    new-array v14, v13, [Lcom/horcrux/svg/Point;

    new-instance v15, Lcom/horcrux/svg/Point;

    move-object/from16 v18, v1

    .end local v1    # "path":Landroid/graphics/Path;
    .local v18, "path":Landroid/graphics/Path;
    sub-double v0, v4, v8

    invoke-direct {v15, v2, v3, v0, v1}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v15, v14, v6

    new-instance v0, Lcom/horcrux/svg/Point;

    move-object v15, v7

    add-double v6, v2, v16

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v6, 0x1

    aput-object v0, v14, v6

    invoke-direct {v11, v12, v14}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    move-object v0, v15

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/horcrux/svg/EllipseView;->elements:Ljava/util/ArrayList;

    new-instance v7, Lcom/horcrux/svg/PathElement;

    sget-object v11, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v12, v13, [Lcom/horcrux/svg/Point;

    new-instance v14, Lcom/horcrux/svg/Point;

    add-double v0, v2, v16

    invoke-direct {v14, v0, v1, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v0, 0x0

    aput-object v14, v12, v0

    new-instance v0, Lcom/horcrux/svg/Point;

    add-double v14, v4, v8

    invoke-direct {v0, v2, v3, v14, v15}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v14, 0x1

    aput-object v0, v12, v14

    invoke-direct {v7, v11, v12}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/horcrux/svg/EllipseView;->elements:Ljava/util/ArrayList;

    new-instance v7, Lcom/horcrux/svg/PathElement;

    sget-object v11, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v12, v13, [Lcom/horcrux/svg/Point;

    new-instance v14, Lcom/horcrux/svg/Point;

    add-double v0, v4, v8

    invoke-direct {v14, v2, v3, v0, v1}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v0, 0x0

    aput-object v14, v12, v0

    new-instance v0, Lcom/horcrux/svg/Point;

    sub-double v14, v2, v16

    invoke-direct {v0, v14, v15, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v14, 0x1

    aput-object v0, v12, v14

    invoke-direct {v7, v11, v12}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/horcrux/svg/EllipseView;->elements:Ljava/util/ArrayList;

    new-instance v7, Lcom/horcrux/svg/PathElement;

    sget-object v11, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v12, v13, [Lcom/horcrux/svg/Point;

    new-instance v13, Lcom/horcrux/svg/Point;

    sub-double v14, v2, v16

    invoke-direct {v13, v14, v15, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v1, 0x0

    aput-object v13, v12, v1

    new-instance v1, Lcom/horcrux/svg/Point;

    sub-double v13, v4, v8

    invoke-direct {v1, v2, v3, v13, v14}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v13, 0x1

    aput-object v1, v12, v13

    invoke-direct {v7, v11, v12}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v18
.end method

.method public setCx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "cx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 32
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/EllipseView;->mCx:Lcom/horcrux/svg/SVGLength;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/EllipseView;->invalidate()V

    .line 34
    return-void
.end method

.method public setCy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "cy"    # Lcom/facebook/react/bridge/Dynamic;

    .line 37
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/EllipseView;->mCy:Lcom/horcrux/svg/SVGLength;

    .line 38
    invoke-virtual {p0}, Lcom/horcrux/svg/EllipseView;->invalidate()V

    .line 39
    return-void
.end method

.method public setRx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "rx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 42
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/EllipseView;->mRx:Lcom/horcrux/svg/SVGLength;

    .line 43
    invoke-virtual {p0}, Lcom/horcrux/svg/EllipseView;->invalidate()V

    .line 44
    return-void
.end method

.method public setRy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "ry"    # Lcom/facebook/react/bridge/Dynamic;

    .line 47
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/EllipseView;->mRy:Lcom/horcrux/svg/SVGLength;

    .line 48
    invoke-virtual {p0}, Lcom/horcrux/svg/EllipseView;->invalidate()V

    .line 49
    return-void
.end method
