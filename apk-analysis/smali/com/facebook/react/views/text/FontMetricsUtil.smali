.class public Lcom/facebook/react/views/text/FontMetricsUtil;
.super Ljava/lang/Object;
.source "FontMetricsUtil.java"


# static fields
.field private static final AMPLIFICATION_FACTOR:F = 100.0f

.field private static final CAP_HEIGHT_MEASUREMENT_TEXT:Ljava/lang/String; = "T"

.field private static final X_HEIGHT_MEASUREMENT_TEXT:Ljava/lang/String; = "x"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;
    .locals 20
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "context"    # Landroid/content/Context;

    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 28
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 34
    .local v3, "lines":Lcom/facebook/react/bridge/WritableArray;
    new-instance v4, Landroid/text/TextPaint;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 35
    .local v4, "paintCopy":Landroid/text/TextPaint;
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 36
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .local v6, "capHeightBounds":Landroid/graphics/Rect;
    nop

    .line 38
    const-string v8, "T"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 37
    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v9, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 39
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    .line 40
    .local v8, "capHeight":D
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .local v11, "xHeightBounds":Landroid/graphics/Rect;
    nop

    .line 42
    const-string/jumbo v12, "x"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 41
    invoke-virtual {v4, v12, v10, v13, v11}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 43
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v7

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v13, v7

    float-to-double v13, v13

    .line 44
    .local v13, "xHeight":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getLineCount()I

    move-result v15

    if-ge v7, v15, :cond_2

    .line 45
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v10, 0xa

    if-ne v15, v10, :cond_0

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    :goto_1
    move/from16 v10, v16

    .line 46
    .local v10, "endsWithNewLine":Z
    if-eqz v10, :cond_1

    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineMax(I)F

    move-result v15

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v15

    .line 47
    .local v15, "lineWidth":F
    :goto_2
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v17, v16

    .line 48
    .local v17, "bounds":Landroid/graphics/Rect;
    move-object/from16 v16, v4

    move-object/from16 v4, v17

    .end local v17    # "bounds":Landroid/graphics/Rect;
    .local v4, "bounds":Landroid/graphics/Rect;
    .local v16, "paintCopy":Landroid/text/TextPaint;
    invoke-virtual {v1, v7, v4}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 49
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 50
    .local v5, "line":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v17

    move-object/from16 v18, v6

    .end local v6    # "capHeightBounds":Landroid/graphics/Rect;
    .local v18, "capHeightBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v6, v17, v6

    move/from16 v19, v10

    move-object/from16 v17, v11

    .end local v10    # "endsWithNewLine":Z
    .end local v11    # "xHeightBounds":Landroid/graphics/Rect;
    .local v17, "xHeightBounds":Landroid/graphics/Rect;
    .local v19, "endsWithNewLine":Z
    float-to-double v10, v6

    invoke-interface {v5, v12, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 51
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v10

    float-to-double v10, v6

    const-string/jumbo v6, "y"

    invoke-interface {v5, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 52
    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v6, v15, v6

    float-to-double v10, v6

    const-string/jumbo v6, "width"

    invoke-interface {v5, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 53
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v10

    float-to-double v10, v6

    const-string v6, "height"

    invoke-interface {v5, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 54
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v6

    int-to-float v6, v6

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v10

    float-to-double v10, v6

    const-string v6, "descender"

    invoke-interface {v5, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 55
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v10

    float-to-double v10, v6

    const-string v6, "ascender"

    invoke-interface {v5, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 56
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v10

    float-to-double v10, v6

    const-string v6, "baseline"

    invoke-interface {v5, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 57
    const-string v6, "capHeight"

    invoke-interface {v5, v6, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 58
    const-string/jumbo v6, "xHeight"

    invoke-interface {v5, v6, v13, v14}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 59
    nop

    .line 60
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    invoke-interface {v0, v6, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    const-string/jumbo v10, "text"

    invoke-interface {v5, v10, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 44
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "line":Lcom/facebook/react/bridge/WritableMap;
    .end local v15    # "lineWidth":F
    .end local v19    # "endsWithNewLine":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p2

    move-object/from16 v4, v16

    move-object/from16 v11, v17

    move-object/from16 v6, v18

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 63
    .end local v7    # "i":I
    .end local v16    # "paintCopy":Landroid/text/TextPaint;
    .end local v17    # "xHeightBounds":Landroid/graphics/Rect;
    .end local v18    # "capHeightBounds":Landroid/graphics/Rect;
    .local v4, "paintCopy":Landroid/text/TextPaint;
    .restart local v6    # "capHeightBounds":Landroid/graphics/Rect;
    .restart local v11    # "xHeightBounds":Landroid/graphics/Rect;
    :cond_2
    return-object v3
.end method
