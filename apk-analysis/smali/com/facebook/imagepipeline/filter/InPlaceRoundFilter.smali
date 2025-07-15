.class public final Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;
.super Ljava/lang/Object;
.source "InPlaceRoundFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;",
        "",
        "()V",
        "roundBitmapInPlace",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;->INSTANCE:Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final roundBitmapInPlace(Landroid/graphics/Bitmap;)V
    .locals 40
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bitmap"

    move-object/from16 v9, p0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    nop

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 31
    .local v0, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 32
    .local v10, "h":I
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v11, v1, 0x2

    .line 33
    .local v11, "radius":I
    div-int/lit8 v12, v0, 0x2

    .line 34
    .local v12, "centerX":I
    div-int/lit8 v13, v10, 0x2

    .line 36
    .local v13, "centerY":I
    if-nez v11, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    const/4 v14, 0x1

    if-lt v11, v14, :cond_1

    move v1, v14

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 40
    const/high16 v1, 0x45000000    # 2048.0f

    if-lez v0, :cond_2

    int-to-float v2, v0

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_2

    move v2, v14

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 41
    if-lez v10, :cond_3

    int-to-float v2, v10

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_3

    move v1, v14

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 42
    if-lez v12, :cond_4

    if-ge v12, v0, :cond_4

    move v1, v14

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 43
    if-lez v13, :cond_5

    if-ge v13, v10, :cond_5

    move v1, v14

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 44
    mul-int v1, v0, v10

    new-array v8, v1, [I

    .line 45
    .local v8, "pixels":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move v4, v0

    move v7, v0

    move-object v14, v8

    .end local v8    # "pixels":[I
    .local v14, "pixels":[I
    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 46
    add-int/lit8 v1, v11, -0x1

    .line 47
    .local v1, "x":I
    const/4 v2, 0x0

    .line 48
    .local v2, "y":I
    add-int v8, v12, v1

    .line 49
    .local v8, "maxX":I
    add-int v7, v13, v1

    .line 50
    .local v7, "maxY":I
    sub-int v17, v12, v1

    .line 51
    .local v17, "minX":I
    sub-int v18, v13, v1

    .line 52
    .local v18, "minY":I
    if-ltz v17, :cond_6

    if-ltz v18, :cond_6

    if-ge v8, v0, :cond_6

    if-ge v7, v10, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 53
    const/4 v3, 0x1

    .line 54
    .local v3, "dx":I
    const/4 v4, 0x1

    .line 55
    .local v4, "dy":I
    neg-int v5, v11

    mul-int/lit8 v19, v5, 0x2

    .line 56
    .local v19, "rInc":I
    new-array v6, v0, [I

    .line 57
    .local v6, "transparentColor":[I
    add-int v5, v3, v19

    .local v5, "err":I
    const/16 v20, 0x0

    .local v20, "cXpX":I
    const/16 v21, 0x0

    .local v21, "cXmX":I
    const/16 v22, 0x0

    .local v22, "cXpY":I
    const/16 v23, 0x0

    .local v23, "cXmY":I
    const/16 v24, 0x0

    .local v24, "cYpX":I
    const/16 v25, 0x0

    .local v25, "cYmX":I
    const/16 v26, 0x0

    .local v26, "cYpY":I
    const/16 v27, 0x0

    .local v27, "cYmY":I
    const/16 v28, 0x0

    .local v28, "offA":I
    const/16 v29, 0x0

    .local v29, "offB":I
    const/16 v30, 0x0

    .local v30, "offC":I
    const/16 v31, 0x0

    move/from16 v32, v29

    move/from16 v33, v30

    move/from16 v34, v31

    move/from16 v29, v26

    move/from16 v30, v27

    move/from16 v31, v28

    move/from16 v26, v23

    move/from16 v27, v24

    move/from16 v28, v25

    move/from16 v23, v20

    move/from16 v24, v21

    move/from16 v25, v22

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move v5, v1

    move v4, v2

    .line 70
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "dx":I
    .local v4, "y":I
    .local v5, "x":I
    .local v20, "dx":I
    .local v21, "dy":I
    .local v22, "err":I
    .local v23, "cXpX":I
    .local v24, "cXmX":I
    .local v25, "cXpY":I
    .local v26, "cXmY":I
    .local v27, "cYpX":I
    .local v28, "cYmX":I
    .local v29, "cYpY":I
    .local v30, "cYmY":I
    .local v31, "offA":I
    .local v32, "offB":I
    .local v33, "offC":I
    .local v34, "offD":I
    :goto_6
    if-lt v5, v4, :cond_a

    .line 71
    add-int v23, v12, v5

    .line 72
    sub-int v1, v12, v5

    .line 73
    .end local v24    # "cXmX":I
    .local v1, "cXmX":I
    add-int v2, v12, v4

    .line 74
    .end local v25    # "cXpY":I
    .local v2, "cXpY":I
    sub-int v3, v12, v4

    .line 75
    .end local v26    # "cXmY":I
    .local v3, "cXmY":I
    add-int v27, v13, v5

    .line 76
    sub-int v28, v13, v5

    .line 77
    add-int v15, v13, v4

    .line 78
    .end local v29    # "cYpY":I
    .local v15, "cYpY":I
    sub-int v30, v13, v4

    .line 79
    if-ltz v5, :cond_7

    if-ge v2, v0, :cond_7

    if-ltz v3, :cond_7

    if-ge v15, v10, :cond_7

    if-ltz v30, :cond_7

    const/16 v24, 0x1

    goto :goto_7

    :cond_7
    const/16 v24, 0x0

    :goto_7
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 80
    move/from16 v36, v7

    .end local v7    # "maxY":I
    .local v36, "maxY":I
    mul-int v7, v0, v15

    .line 81
    .end local v31    # "offA":I
    .local v7, "offA":I
    move/from16 v37, v8

    .end local v8    # "maxX":I
    .local v37, "maxX":I
    mul-int v8, v0, v30

    .line 82
    .end local v32    # "offB":I
    .local v8, "offB":I
    mul-int v9, v0, v27

    .line 83
    .end local v33    # "offC":I
    .local v9, "offC":I
    move/from16 v38, v12

    .end local v12    # "centerX":I
    .local v38, "centerX":I
    mul-int v12, v0, v28

    .line 86
    .end local v34    # "offD":I
    .local v12, "offD":I
    move/from16 v24, v15

    const/4 v15, 0x0

    .end local v15    # "cYpY":I
    .local v24, "cYpY":I
    invoke-static {v6, v15, v14, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-static {v6, v15, v14, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-static {v6, v15, v14, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-static {v6, v15, v14, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    move/from16 v39, v1

    .end local v1    # "cXmX":I
    .local v39, "cXmX":I
    add-int v1, v7, v23

    move/from16 v25, v3

    .end local v3    # "cXmY":I
    .local v25, "cXmY":I
    sub-int v3, v0, v23

    invoke-static {v6, v15, v14, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int v1, v8, v23

    sub-int v3, v0, v23

    invoke-static {v6, v15, v14, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int v1, v9, v2

    sub-int v3, v0, v2

    invoke-static {v6, v15, v14, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    add-int v1, v12, v2

    sub-int v3, v0, v2

    invoke-static {v6, v15, v14, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    if-gtz v22, :cond_8

    .line 97
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v21, v21, 0x2

    .line 98
    nop

    .line 99
    add-int v22, v22, v21

    .line 101
    :cond_8
    if-lez v22, :cond_9

    .line 102
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v20, v20, 0x2

    .line 103
    nop

    .line 104
    add-int v1, v20, v19

    add-int v22, v22, v1

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v12

    move/from16 v29, v24

    move/from16 v26, v25

    move/from16 v7, v36

    move/from16 v8, v37

    move/from16 v12, v38

    move/from16 v24, v39

    move-object/from16 v9, p0

    move/from16 v25, v2

    goto/16 :goto_6

    .line 101
    :cond_9
    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v12

    move/from16 v29, v24

    move/from16 v26, v25

    move/from16 v7, v36

    move/from16 v8, v37

    move/from16 v12, v38

    move/from16 v24, v39

    move-object/from16 v9, p0

    move/from16 v25, v2

    goto/16 :goto_6

    .line 109
    .end local v2    # "cXpY":I
    .end local v9    # "offC":I
    .end local v36    # "maxY":I
    .end local v37    # "maxX":I
    .end local v38    # "centerX":I
    .end local v39    # "cXmX":I
    .local v7, "maxY":I
    .local v8, "maxX":I
    .local v12, "centerX":I
    .local v24, "cXmX":I
    .local v25, "cXpY":I
    .restart local v26    # "cXmY":I
    .restart local v29    # "cYpY":I
    .restart local v31    # "offA":I
    .restart local v32    # "offB":I
    .restart local v33    # "offC":I
    .restart local v34    # "offD":I
    :cond_a
    move/from16 v36, v7

    move/from16 v37, v8

    move/from16 v38, v12

    .end local v7    # "maxY":I
    .end local v8    # "maxX":I
    .end local v12    # "centerX":I
    .restart local v36    # "maxY":I
    .restart local v37    # "maxX":I
    .restart local v38    # "centerX":I
    sub-int v1, v13, v11

    .local v1, "i":I
    :goto_8
    const/4 v2, -0x1

    if-ge v2, v1, :cond_b

    .line 110
    mul-int v2, v1, v0

    const/4 v3, 0x0

    invoke-static {v6, v3, v14, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 112
    .end local v1    # "i":I
    :cond_b
    add-int v1, v13, v11

    .restart local v1    # "i":I
    :goto_9
    if-ge v1, v10, :cond_c

    .line 113
    mul-int v2, v1, v0

    const/4 v3, 0x0

    invoke-static {v6, v3, v14, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 115
    .end local v1    # "i":I
    :cond_c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move v9, v4

    .end local v4    # "y":I
    .local v9, "y":I
    move v4, v0

    move v12, v5

    .end local v5    # "x":I
    .local v12, "x":I
    move v5, v7

    move-object v15, v6

    .end local v6    # "transparentColor":[I
    .local v15, "transparentColor":[I
    move v6, v8

    move/from16 v16, v36

    .end local v36    # "maxY":I
    .local v16, "maxY":I
    move v7, v0

    move/from16 v35, v37

    .end local v37    # "maxX":I
    .local v35, "maxX":I
    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 116
    return-void
.end method
