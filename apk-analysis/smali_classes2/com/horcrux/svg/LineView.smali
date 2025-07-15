.class Lcom/horcrux/svg/LineView;
.super Lcom/horcrux/svg/RenderableView;
.source "LineView.java"


# instance fields
.field private mX1:Lcom/horcrux/svg/SVGLength;

.field private mX2:Lcom/horcrux/svg/SVGLength;

.field private mY1:Lcom/horcrux/svg/SVGLength;

.field private mY2:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 27
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 28
    return-void
.end method


# virtual methods
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 52
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 53
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, v0, Lcom/horcrux/svg/LineView;->mX1:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/LineView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    .line 54
    .local v2, "x1":D
    iget-object v4, v0, Lcom/horcrux/svg/LineView;->mY1:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v4}, Lcom/horcrux/svg/LineView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    .line 55
    .local v4, "y1":D
    iget-object v6, v0, Lcom/horcrux/svg/LineView;->mX2:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/LineView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v6

    .line 56
    .local v6, "x2":D
    iget-object v8, v0, Lcom/horcrux/svg/LineView;->mY2:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v8}, Lcom/horcrux/svg/LineView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v8

    .line 58
    .local v8, "y2":D
    double-to-float v10, v2

    double-to-float v11, v4

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    double-to-float v10, v6

    double-to-float v11, v8

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/horcrux/svg/LineView;->elements:Ljava/util/ArrayList;

    .line 62
    iget-object v10, v0, Lcom/horcrux/svg/LineView;->elements:Ljava/util/ArrayList;

    new-instance v11, Lcom/horcrux/svg/PathElement;

    sget-object v12, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v13, 0x1

    new-array v14, v13, [Lcom/horcrux/svg/Point;

    new-instance v15, Lcom/horcrux/svg/Point;

    invoke-direct {v15, v2, v3, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-direct {v11, v12, v14}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v10, v0, Lcom/horcrux/svg/LineView;->elements:Ljava/util/ArrayList;

    new-instance v11, Lcom/horcrux/svg/PathElement;

    sget-object v12, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    new-array v13, v13, [Lcom/horcrux/svg/Point;

    new-instance v14, Lcom/horcrux/svg/Point;

    invoke-direct {v14, v6, v7, v8, v9}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v14, v13, v16

    invoke-direct {v11, v12, v13}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v1
.end method

.method public setX1(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x1"    # Lcom/facebook/react/bridge/Dynamic;

    .line 31
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LineView;->mX1:Lcom/horcrux/svg/SVGLength;

    .line 32
    invoke-virtual {p0}, Lcom/horcrux/svg/LineView;->invalidate()V

    .line 33
    return-void
.end method

.method public setX2(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x2"    # Lcom/facebook/react/bridge/Dynamic;

    .line 41
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LineView;->mX2:Lcom/horcrux/svg/SVGLength;

    .line 42
    invoke-virtual {p0}, Lcom/horcrux/svg/LineView;->invalidate()V

    .line 43
    return-void
.end method

.method public setY1(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y1"    # Lcom/facebook/react/bridge/Dynamic;

    .line 36
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LineView;->mY1:Lcom/horcrux/svg/SVGLength;

    .line 37
    invoke-virtual {p0}, Lcom/horcrux/svg/LineView;->invalidate()V

    .line 38
    return-void
.end method

.method public setY2(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y2"    # Lcom/facebook/react/bridge/Dynamic;

    .line 46
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/LineView;->mY2:Lcom/horcrux/svg/SVGLength;

    .line 47
    invoke-virtual {p0}, Lcom/horcrux/svg/LineView;->invalidate()V

    .line 48
    return-void
.end method
