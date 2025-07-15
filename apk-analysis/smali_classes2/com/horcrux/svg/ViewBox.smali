.class Lcom/horcrux/svg/ViewBox;
.super Ljava/lang/Object;
.source "ViewBox.java"


# static fields
.field private static final MOS_MEET:I = 0x0

.field private static final MOS_NONE:I = 0x2

.field private static final MOS_SLICE:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;
    .locals 34
    .param p0, "vbRect"    # Landroid/graphics/RectF;
    .param p1, "eRect"    # Landroid/graphics/RectF;
    .param p2, "align"    # Ljava/lang/String;
    .param p3, "meetOrSlice"    # I

    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    .line 26
    .local v4, "vbX":D
    iget v6, v0, Landroid/graphics/RectF;->top:F

    float-to-double v6, v6

    .line 27
    .local v6, "vbY":D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-double v8, v8

    .line 28
    .local v8, "vbWidth":D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v10

    float-to-double v10, v10

    .line 31
    .local v10, "vbHeight":D
    iget v12, v1, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    .line 32
    .local v12, "eX":D
    iget v14, v1, Landroid/graphics/RectF;->top:F

    float-to-double v14, v14

    .line 33
    .local v14, "eY":D
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    .line 34
    .local v0, "eWidth":D
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-double v2, v2

    .line 37
    .local v2, "eHeight":D
    move-wide/from16 v16, v14

    .end local v14    # "eY":D
    .local v16, "eY":D
    div-double v14, v0, v8

    .line 40
    .local v14, "scaleX":D
    move-wide/from16 v18, v8

    .end local v8    # "vbWidth":D
    .local v18, "vbWidth":D
    div-double v8, v2, v10

    .line 44
    .local v8, "scaleY":D
    mul-double v20, v4, v14

    sub-double v20, v12, v20

    .line 45
    .local v20, "translateX":D
    mul-double v22, v6, v8

    sub-double v22, v16, v22

    .line 48
    .local v22, "translateY":D
    move-wide/from16 v24, v2

    .end local v2    # "eHeight":D
    .local v24, "eHeight":D
    const/4 v2, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    move/from16 v3, p3

    if-ne v3, v2, :cond_1

    .line 51
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v8, v28

    move-wide/from16 v14, v28

    .line 54
    .local v28, "scale":D
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v28, v30

    if-lez v2, :cond_0

    .line 57
    div-double v30, v0, v28

    sub-double v30, v30, v18

    div-double v30, v30, v26

    sub-double v20, v20, v30

    .line 58
    div-double v30, v24, v28

    sub-double v30, v30, v10

    div-double v30, v30, v26

    sub-double v22, v22, v30

    goto :goto_0

    .line 60
    :cond_0
    mul-double v30, v18, v28

    sub-double v30, v0, v30

    div-double v30, v30, v26

    sub-double v20, v20, v30

    .line 61
    mul-double v30, v10, v28

    sub-double v30, v24, v30

    div-double v30, v30, v26

    sub-double v22, v22, v30

    .line 63
    .end local v28    # "scale":D
    :goto_0
    move-wide/from16 v28, v4

    move-wide/from16 v2, v22

    move-object/from16 v4, p2

    move-wide/from16 v32, v0

    move-wide/from16 v0, v20

    move-wide/from16 v20, v32

    goto/16 :goto_2

    .line 69
    :cond_1
    const-string v2, "none"

    move-wide/from16 v28, v4

    move-object/from16 v4, p2

    .end local v4    # "vbX":D
    .local v28, "vbX":D
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    .line 70
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    move-wide/from16 v8, v30

    move-wide/from16 v14, v30

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    if-ne v3, v2, :cond_3

    .line 72
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    move-wide/from16 v8, v30

    move-wide/from16 v14, v30

    .line 76
    :cond_3
    :goto_1
    const-string v2, "xMid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    mul-double v30, v18, v14

    sub-double v30, v0, v30

    div-double v30, v30, v26

    add-double v20, v20, v30

    .line 81
    :cond_4
    const-string v2, "xMax"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    mul-double v30, v18, v14

    sub-double v30, v0, v30

    add-double v20, v20, v30

    .line 86
    :cond_5
    const-string v2, "YMid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 87
    mul-double v30, v10, v8

    sub-double v30, v24, v30

    div-double v30, v30, v26

    add-double v22, v22, v30

    .line 91
    :cond_6
    const-string v2, "YMax"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 92
    mul-double v26, v10, v8

    sub-double v26, v24, v26

    add-double v22, v22, v26

    move-wide/from16 v2, v22

    move-wide/from16 v32, v0

    move-wide/from16 v0, v20

    move-wide/from16 v20, v32

    goto :goto_2

    .line 91
    :cond_7
    move-wide/from16 v2, v22

    move-wide/from16 v32, v0

    move-wide/from16 v0, v20

    move-wide/from16 v20, v32

    .line 98
    .end local v22    # "translateY":D
    .local v0, "translateX":D
    .local v2, "translateY":D
    .local v20, "eWidth":D
    :goto_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 99
    .local v5, "transform":Landroid/graphics/Matrix;
    double-to-float v4, v0

    move-wide/from16 v22, v0

    .end local v0    # "translateX":D
    .local v22, "translateX":D
    double-to-float v0, v2

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    double-to-float v0, v14

    double-to-float v1, v8

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 101
    return-object v5
.end method
