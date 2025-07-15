.class public Lcom/horcrux/svg/CustomFilter;
.super Ljava/lang/Object;
.source "CustomFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/horcrux/svg/CustomFilterFunction;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "dstBmp"    # Landroid/graphics/Bitmap;
    .param p2, "func"    # Lcom/horcrux/svg/CustomFilterFunction;

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 12
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 13
    .local v10, "height":I
    mul-int v0, v9, v10

    new-array v11, v0, [I

    .line 14
    .local v11, "srcPixels":[I
    mul-int v0, v9, v10

    new-array v12, v0, [I

    .line 15
    .local v12, "dstPixels":[I
    mul-int v0, v9, v10

    new-array v13, v0, [I

    .line 16
    .local v13, "resPixels":[I
    const/4 v14, 0x0

    .line 17
    .local v14, "srcArgb":I
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    move-object v15, v1

    .line 18
    .local v15, "src":[F
    const/16 v16, 0x0

    .line 19
    .local v16, "dstArgb":I
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    move-object v8, v0

    .line 22
    .local v8, "dst":[F
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move/from16 v17, v14

    move-object v14, v8

    .end local v8    # "dst":[F
    .local v14, "dst":[F
    .local v17, "srcArgb":I
    move v8, v10

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 27
    :goto_0
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 28
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_2
    if-ge v1, v9, :cond_0

    .line 29
    mul-int v2, v0, v9

    add-int/2addr v2, v1

    aget v2, v11, v2

    .line 30
    .end local v17    # "srcArgb":I
    .local v2, "srcArgb":I
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v15, v5

    .line 31
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/4 v6, 0x1

    aput v3, v15, v6

    .line 32
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/4 v7, 0x2

    aput v3, v15, v7

    .line 33
    and-int/lit16 v3, v2, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/4 v8, 0x3

    aput v3, v15, v8

    .line 35
    mul-int v3, v0, v9

    add-int/2addr v3, v1

    aget v3, v12, v3

    .line 36
    .end local v16    # "dstArgb":I
    .local v3, "dstArgb":I
    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v4

    aput v8, v14, v5

    .line 37
    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v14, v6

    .line 38
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v14, v7

    .line 39
    and-int/lit16 v5, v3, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/4 v4, 0x3

    aput v5, v14, v4

    .line 41
    mul-int v4, v0, v9

    add-int/2addr v4, v1

    move-object/from16 v5, p2

    invoke-interface {v5, v15, v14}, Lcom/horcrux/svg/CustomFilterFunction;->execute([F[F)[F

    move-result-object v6

    invoke-static {v6}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloats([F)I

    move-result v6

    aput v6, v13, v4

    .line 28
    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v2

    move/from16 v16, v3

    goto :goto_2

    .end local v2    # "srcArgb":I
    .end local v3    # "dstArgb":I
    .restart local v16    # "dstArgb":I
    .restart local v17    # "srcArgb":I
    :cond_0
    move-object/from16 v5, p2

    .line 27
    .end local v1    # "x":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    .line 45
    .end local v0    # "y":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static normalizeFromFloat(F)I
    .locals 2
    .param p0, "c"    # F

    .line 49
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static normalizeFromFloats([F)I
    .locals 4
    .param p0, "res"    # [F

    .line 53
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    aget v0, p0, v2

    invoke-static {v0}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    aget v0, p0, v2

    invoke-static {v0}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget v1, p0, v1

    aget v3, p0, v2

    div-float/2addr v1, v3

    .line 57
    invoke-static {v1}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    aget v3, p0, v2

    div-float/2addr v1, v3

    .line 58
    invoke-static {v1}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p0, v1

    aget v2, p0, v2

    div-float/2addr v1, v2

    .line 59
    invoke-static {v1}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v1

    or-int/2addr v0, v1

    .line 56
    return v0

    .line 54
    :cond_1
    :goto_0
    return v2
.end method
