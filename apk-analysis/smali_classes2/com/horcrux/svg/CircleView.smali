.class Lcom/horcrux/svg/CircleView;
.super Lcom/horcrux/svg/RenderableView;
.source "CircleView.java"


# instance fields
.field private mCx:Lcom/horcrux/svg/SVGLength;

.field private mCy:Lcom/horcrux/svg/SVGLength;

.field private mR:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 26
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 27
    return-void
.end method


# virtual methods
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 46
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 48
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, v0, Lcom/horcrux/svg/CircleView;->mCx:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/CircleView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    .line 49
    .local v2, "cx":D
    iget-object v4, v0, Lcom/horcrux/svg/CircleView;->mCy:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v4}, Lcom/horcrux/svg/CircleView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    .line 50
    .local v4, "cy":D
    iget-object v6, v0, Lcom/horcrux/svg/CircleView;->mR:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/CircleView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v6

    .line 52
    .local v6, "r":D
    double-to-float v8, v2

    double-to-float v9, v4

    double-to-float v10, v6

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/horcrux/svg/CircleView;->elements:Ljava/util/ArrayList;

    .line 55
    iget-object v8, v0, Lcom/horcrux/svg/CircleView;->elements:Ljava/util/ArrayList;

    new-instance v9, Lcom/horcrux/svg/PathElement;

    sget-object v10, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v11, 0x1

    new-array v12, v11, [Lcom/horcrux/svg/Point;

    new-instance v13, Lcom/horcrux/svg/Point;

    sub-double v14, v4, v6

    invoke-direct {v13, v2, v3, v14, v15}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-direct {v9, v10, v12}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v8, v0, Lcom/horcrux/svg/CircleView;->elements:Ljava/util/ArrayList;

    new-instance v9, Lcom/horcrux/svg/PathElement;

    sget-object v10, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v12, 0x2

    new-array v13, v12, [Lcom/horcrux/svg/Point;

    new-instance v15, Lcom/horcrux/svg/Point;

    sub-double v11, v4, v6

    invoke-direct {v15, v2, v3, v11, v12}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v15, v13, v14

    new-instance v11, Lcom/horcrux/svg/Point;

    add-double v14, v2, v6

    invoke-direct {v11, v14, v15, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-direct {v9, v10, v13}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v8, v0, Lcom/horcrux/svg/CircleView;->elements:Ljava/util/ArrayList;

    new-instance v9, Lcom/horcrux/svg/PathElement;

    sget-object v10, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v11, 0x2

    new-array v13, v11, [Lcom/horcrux/svg/Point;

    new-instance v11, Lcom/horcrux/svg/Point;

    add-double v14, v2, v6

    invoke-direct {v11, v14, v15, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v12, 0x0

    aput-object v11, v13, v12

    new-instance v11, Lcom/horcrux/svg/Point;

    add-double v14, v4, v6

    invoke-direct {v11, v2, v3, v14, v15}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-direct {v9, v10, v13}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v8, v0, Lcom/horcrux/svg/CircleView;->elements:Ljava/util/ArrayList;

    new-instance v9, Lcom/horcrux/svg/PathElement;

    sget-object v10, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v11, 0x2

    new-array v13, v11, [Lcom/horcrux/svg/Point;

    new-instance v11, Lcom/horcrux/svg/Point;

    add-double v14, v4, v6

    invoke-direct {v11, v2, v3, v14, v15}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v12, 0x0

    aput-object v11, v13, v12

    new-instance v11, Lcom/horcrux/svg/Point;

    sub-double v14, v2, v6

    invoke-direct {v11, v14, v15, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-direct {v9, v10, v13}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v8, v0, Lcom/horcrux/svg/CircleView;->elements:Ljava/util/ArrayList;

    new-instance v9, Lcom/horcrux/svg/PathElement;

    sget-object v10, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/horcrux/svg/Point;

    new-instance v13, Lcom/horcrux/svg/Point;

    sub-double v14, v2, v6

    invoke-direct {v13, v14, v15, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v12, 0x0

    aput-object v13, v11, v12

    new-instance v12, Lcom/horcrux/svg/Point;

    sub-double v13, v4, v6

    invoke-direct {v12, v2, v3, v13, v14}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-direct {v9, v10, v11}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v1
.end method

.method public setCx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "cx"    # Lcom/facebook/react/bridge/Dynamic;

    .line 30
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/CircleView;->mCx:Lcom/horcrux/svg/SVGLength;

    .line 31
    invoke-virtual {p0}, Lcom/horcrux/svg/CircleView;->invalidate()V

    .line 32
    return-void
.end method

.method public setCy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "cy"    # Lcom/facebook/react/bridge/Dynamic;

    .line 35
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/CircleView;->mCy:Lcom/horcrux/svg/SVGLength;

    .line 36
    invoke-virtual {p0}, Lcom/horcrux/svg/CircleView;->invalidate()V

    .line 37
    return-void
.end method

.method public setR(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "r"    # Lcom/facebook/react/bridge/Dynamic;

    .line 40
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/CircleView;->mR:Lcom/horcrux/svg/SVGLength;

    .line 41
    invoke-virtual {p0}, Lcom/horcrux/svg/CircleView;->invalidate()V

    .line 42
    return-void
.end method
