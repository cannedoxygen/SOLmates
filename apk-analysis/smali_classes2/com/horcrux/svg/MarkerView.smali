.class Lcom/horcrux/svg/MarkerView;
.super Lcom/horcrux/svg/GroupView;
.source "MarkerView.java"


# instance fields
.field mAlign:Ljava/lang/String;

.field private mMarkerHeight:Lcom/horcrux/svg/SVGLength;

.field private mMarkerUnits:Ljava/lang/String;

.field private mMarkerWidth:Lcom/horcrux/svg/SVGLength;

.field mMeetOrSlice:I

.field private mMinX:F

.field private mMinY:F

.field private mOrient:Ljava/lang/String;

.field private mRefX:Lcom/horcrux/svg/SVGLength;

.field private mRefY:Lcom/horcrux/svg/SVGLength;

.field private mVbHeight:F

.field private mVbWidth:F

.field markerTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 40
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    .line 41
    return-void
.end method


# virtual methods
.method renderMarker(Landroid/graphics/Canvas;Landroid/graphics/Paint;FLcom/horcrux/svg/RNSVGMarkerPosition;F)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F
    .param p4, "position"    # Lcom/horcrux/svg/RNSVGMarkerPosition;
    .param p5, "strokeWidth"    # F

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/horcrux/svg/MarkerView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Lcom/horcrux/svg/MarkerView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v3

    .line 121
    .local v3, "count":I
    iget-object v4, v0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 122
    iget-object v4, v2, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin:Lcom/horcrux/svg/Point;

    .line 123
    .local v4, "origin":Lcom/horcrux/svg/Point;
    iget-object v5, v0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    iget-wide v6, v4, Lcom/horcrux/svg/Point;->x:D

    double-to-float v6, v6

    iget-wide v7, v4, Lcom/horcrux/svg/Point;->y:D

    double-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 125
    const-string v5, "auto"

    iget-object v6, v0, Lcom/horcrux/svg/MarkerView;->mOrient:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-eqz v5, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/horcrux/svg/MarkerView;->mOrient:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 126
    .local v8, "markerAngle":D
    :goto_0
    cmpl-double v5, v8, v6

    if-nez v5, :cond_1

    iget-wide v5, v2, Lcom/horcrux/svg/RNSVGMarkerPosition;->angle:D

    goto :goto_1

    :cond_1
    move-wide v5, v8

    :goto_1
    double-to-float v5, v5

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v5, v6

    .line 127
    .local v5, "degrees":F
    iget-object v6, v0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 129
    const-string v6, "strokeWidth"

    iget-object v7, v0, Lcom/horcrux/svg/MarkerView;->mMarkerUnits:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 130
    .local v6, "useStrokeWidth":Z
    if-eqz v6, :cond_2

    .line 131
    iget-object v7, v0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    iget v10, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    div-float v10, p5, v10

    iget v11, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    div-float v11, p5, v11

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 134
    :cond_2
    iget-object v7, v0, Lcom/horcrux/svg/MarkerView;->mMarkerWidth:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v7}, Lcom/horcrux/svg/MarkerView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v10

    iget v7, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    float-to-double v12, v7

    div-double/2addr v10, v12

    .line 135
    .local v10, "width":D
    iget-object v7, v0, Lcom/horcrux/svg/MarkerView;->mMarkerHeight:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v7}, Lcom/horcrux/svg/MarkerView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v12

    iget v7, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    float-to-double v14, v7

    div-double/2addr v12, v14

    .line 136
    .local v12, "height":D
    new-instance v7, Landroid/graphics/RectF;

    double-to-float v14, v10

    double-to-float v15, v12

    const/4 v2, 0x0

    invoke-direct {v7, v2, v2, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, v7

    .line 137
    .local v2, "eRect":Landroid/graphics/RectF;
    iget-object v7, v0, Lcom/horcrux/svg/MarkerView;->mAlign:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 138
    new-instance v7, Landroid/graphics/RectF;

    iget v14, v0, Lcom/horcrux/svg/MarkerView;->mMinX:F

    iget v15, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    mul-float/2addr v14, v15

    iget v15, v0, Lcom/horcrux/svg/MarkerView;->mMinY:F

    move-object/from16 v16, v4

    .end local v4    # "origin":Lcom/horcrux/svg/Point;
    .local v16, "origin":Lcom/horcrux/svg/Point;
    iget v4, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    mul-float/2addr v15, v4

    iget v4, v0, Lcom/horcrux/svg/MarkerView;->mMinX:F

    move/from16 v17, v5

    .end local v5    # "degrees":F
    .local v17, "degrees":F
    iget v5, v0, Lcom/horcrux/svg/MarkerView;->mVbWidth:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/horcrux/svg/MarkerView;->mMinY:F

    move/from16 v18, v6

    .end local v6    # "useStrokeWidth":Z
    .local v18, "useStrokeWidth":Z
    iget v6, v0, Lcom/horcrux/svg/MarkerView;->mVbHeight:F

    add-float/2addr v5, v6

    iget v6, v0, Lcom/horcrux/svg/MarkerView;->mScale:F

    mul-float/2addr v5, v6

    invoke-direct {v7, v14, v15, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v4, v7

    .line 144
    .local v4, "vbRect":Landroid/graphics/RectF;
    iget-object v5, v0, Lcom/horcrux/svg/MarkerView;->mAlign:Ljava/lang/String;

    iget v6, v0, Lcom/horcrux/svg/MarkerView;->mMeetOrSlice:I

    invoke-static {v4, v2, v5, v6}, Lcom/horcrux/svg/ViewBox;->getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 145
    .local v5, "viewBoxMatrix":Landroid/graphics/Matrix;
    const/16 v6, 0x9

    new-array v6, v6, [F

    .line 146
    .local v6, "values":[F
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 147
    iget-object v7, v0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    const/4 v14, 0x0

    aget v14, v6, v14

    const/4 v15, 0x4

    aget v15, v6, v15

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2

    .line 137
    .end local v16    # "origin":Lcom/horcrux/svg/Point;
    .end local v17    # "degrees":F
    .end local v18    # "useStrokeWidth":Z
    .local v4, "origin":Lcom/horcrux/svg/Point;
    .local v5, "degrees":F
    .local v6, "useStrokeWidth":Z
    :cond_3
    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .line 150
    .end local v4    # "origin":Lcom/horcrux/svg/Point;
    .end local v5    # "degrees":F
    .end local v6    # "useStrokeWidth":Z
    .restart local v16    # "origin":Lcom/horcrux/svg/Point;
    .restart local v17    # "degrees":F
    .restart local v18    # "useStrokeWidth":Z
    :goto_2
    iget-object v4, v0, Lcom/horcrux/svg/MarkerView;->mRefX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v4}, Lcom/horcrux/svg/MarkerView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    .line 151
    .local v4, "x":D
    iget-object v6, v0, Lcom/horcrux/svg/MarkerView;->mRefY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/MarkerView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v6

    .line 152
    .local v6, "y":D
    iget-object v14, v0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    move-wide/from16 v19, v8

    .end local v8    # "markerAngle":D
    .local v19, "markerAngle":D
    neg-double v8, v4

    double-to-float v8, v8

    move-wide/from16 v21, v4

    .end local v4    # "x":D
    .local v21, "x":D
    neg-double v4, v6

    double-to-float v4, v4

    invoke-virtual {v14, v8, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 154
    iget-object v4, v0, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 156
    invoke-virtual/range {p0 .. p3}, Lcom/horcrux/svg/MarkerView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 158
    invoke-virtual {v0, v1, v3}, Lcom/horcrux/svg/MarkerView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    .line 159
    return-void
.end method

.method saveDefinition()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/horcrux/svg/MarkerView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 107
    .local v0, "svg":Lcom/horcrux/svg/SvgView;
    iget-object v1, p0, Lcom/horcrux/svg/MarkerView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineMarker(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/MarkerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "node":Landroid/view/View;
    instance-of v3, v2, Lcom/horcrux/svg/VirtualView;

    if-eqz v3, :cond_0

    .line 111
    move-object v3, v2

    check-cast v3, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v3}, Lcom/horcrux/svg/VirtualView;->saveDefinition()V

    .line 108
    .end local v2    # "node":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "svg":Lcom/horcrux/svg/SvgView;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/horcrux/svg/MarkerView;->mAlign:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 96
    return-void
.end method

.method public setMarkerHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "markerHeight"    # Lcom/facebook/react/bridge/Dynamic;

    .line 59
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MarkerView;->mMarkerHeight:Lcom/horcrux/svg/SVGLength;

    .line 60
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 61
    return-void
.end method

.method public setMarkerUnits(Ljava/lang/String;)V
    .locals 0
    .param p1, "markerUnits"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/horcrux/svg/MarkerView;->mMarkerUnits:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 66
    return-void
.end method

.method public setMarkerWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "markerWidth"    # Lcom/facebook/react/bridge/Dynamic;

    .line 54
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MarkerView;->mMarkerWidth:Lcom/horcrux/svg/SVGLength;

    .line 55
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 56
    return-void
.end method

.method public setMeetOrSlice(I)V
    .locals 0
    .param p1, "meetOrSlice"    # I

    .line 99
    iput p1, p0, Lcom/horcrux/svg/MarkerView;->mMeetOrSlice:I

    .line 100
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 101
    return-void
.end method

.method public setMinX(F)V
    .locals 0
    .param p1, "minX"    # F

    .line 74
    iput p1, p0, Lcom/horcrux/svg/MarkerView;->mMinX:F

    .line 75
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 76
    return-void
.end method

.method public setMinY(F)V
    .locals 0
    .param p1, "minY"    # F

    .line 79
    iput p1, p0, Lcom/horcrux/svg/MarkerView;->mMinY:F

    .line 80
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 81
    return-void
.end method

.method public setOrient(Ljava/lang/String;)V
    .locals 0
    .param p1, "orient"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/horcrux/svg/MarkerView;->mOrient:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 71
    return-void
.end method

.method public setRefX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "refX"    # Lcom/facebook/react/bridge/Dynamic;

    .line 44
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MarkerView;->mRefX:Lcom/horcrux/svg/SVGLength;

    .line 45
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 46
    return-void
.end method

.method public setRefY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "refY"    # Lcom/facebook/react/bridge/Dynamic;

    .line 49
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/MarkerView;->mRefY:Lcom/horcrux/svg/SVGLength;

    .line 50
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 51
    return-void
.end method

.method public setVbHeight(F)V
    .locals 0
    .param p1, "vbHeight"    # F

    .line 89
    iput p1, p0, Lcom/horcrux/svg/MarkerView;->mVbHeight:F

    .line 90
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 91
    return-void
.end method

.method public setVbWidth(F)V
    .locals 0
    .param p1, "vbWidth"    # F

    .line 84
    iput p1, p0, Lcom/horcrux/svg/MarkerView;->mVbWidth:F

    .line 85
    invoke-virtual {p0}, Lcom/horcrux/svg/MarkerView;->invalidate()V

    .line 86
    return-void
.end method
