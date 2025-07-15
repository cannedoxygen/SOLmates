.class Lcom/horcrux/svg/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# static fields
.field static elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private static i:I

.field private static l:I

.field private static mPath:Landroid/graphics/Path;

.field private static mPenDown:Z

.field private static mPenDownX:F

.field private static mPenDownY:F

.field private static mPenX:F

.field private static mPenY:F

.field private static mPivotX:F

.field private static mPivotY:F

.field static mScale:F

.field private static s:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arc(FFFZZFF)V
    .locals 8
    .param p0, "rx"    # F
    .param p1, "ry"    # F
    .param p2, "rotation"    # F
    .param p3, "outer"    # Z
    .param p4, "clockwise"    # Z
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 350
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float v6, p5, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float v7, p6, v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/horcrux/svg/PathParser;->arcTo(FFFZZFF)V

    .line 351
    return-void
.end method

.method private static arcTo(FFFZZFF)V
    .locals 30
    .param p0, "rx"    # F
    .param p1, "ry"    # F
    .param p2, "rotation"    # F
    .param p3, "outer"    # Z
    .param p4, "clockwise"    # Z
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 357
    move/from16 v0, p3

    move/from16 v9, p4

    sget v10, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 358
    .local v10, "tX":F
    sget v11, Lcom/horcrux/svg/PathParser;->mPenY:F

    .line 360
    .local v11, "tY":F
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    cmpl-float v2, p0, v1

    if-nez v2, :cond_0

    sub-float v2, p6, v11

    goto :goto_0

    :cond_0
    move/from16 v2, p0

    goto :goto_0

    :cond_1
    move/from16 v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 361
    .end local p1    # "ry":F
    .local v2, "ry":F
    cmpl-float v3, p0, v1

    if-nez v3, :cond_2

    sub-float v3, p5, v10

    goto :goto_1

    :cond_2
    move/from16 v3, p0

    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 363
    .end local p0    # "rx":F
    .local v3, "rx":F
    cmpl-float v4, v3, v1

    if-eqz v4, :cond_b

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_b

    cmpl-float v4, p5, v10

    if-nez v4, :cond_3

    cmpl-float v4, p6, v11

    if-nez v4, :cond_3

    move/from16 v22, v10

    move/from16 v28, v11

    goto/16 :goto_6

    .line 368
    :cond_3
    move/from16 v12, p2

    float-to-double v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v13, v4

    .line 369
    .local v13, "rad":F
    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v14, v4

    .line 370
    .local v14, "cos":F
    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v15, v4

    .line 371
    .local v15, "sin":F
    sub-float v4, p5, v10

    .line 372
    .end local p5    # "x":F
    .local v4, "x":F
    sub-float v5, p6, v11

    .line 375
    .end local p6    # "y":F
    .local v5, "y":F
    mul-float v6, v14, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    mul-float v8, v15, v5

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    .line 376
    .local v6, "cx":F
    neg-float v8, v15

    mul-float/2addr v8, v4

    div-float/2addr v8, v7

    mul-float v16, v14, v5

    div-float v16, v16, v7

    add-float v8, v8, v16

    .line 377
    .local v8, "cy":F
    mul-float v16, v3, v3

    mul-float v16, v16, v2

    mul-float v16, v16, v2

    .line 378
    .local v16, "rxry":F
    mul-float v17, v2, v2

    mul-float v17, v17, v6

    mul-float v17, v17, v6

    .line 379
    .local v17, "rycx":F
    mul-float v18, v3, v3

    mul-float v18, v18, v8

    mul-float v18, v18, v8

    .line 380
    .local v18, "rxcy":F
    sub-float v19, v16, v18

    sub-float v19, v19, v17

    .line 382
    .local v19, "a":F
    cmpg-float v20, v19, v1

    if-gez v20, :cond_4

    .line 383
    const/high16 v20, 0x3f800000    # 1.0f

    div-float v21, v19, v16

    sub-float v1, v20, v21

    move/from16 p1, v8

    .end local v8    # "cy":F
    .local p1, "cy":F
    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 384
    .end local v19    # "a":F
    .local v1, "a":F
    mul-float/2addr v3, v1

    .line 385
    mul-float/2addr v2, v1

    .line 386
    const/high16 v7, 0x40000000    # 2.0f

    div-float v6, v4, v7

    .line 387
    div-float v7, v5, v7

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    .end local p1    # "cy":F
    .local v7, "cy":F
    goto :goto_2

    .line 389
    .end local v1    # "a":F
    .end local v7    # "cy":F
    .restart local v8    # "cy":F
    .restart local v19    # "a":F
    :cond_4
    move/from16 p1, v8

    .end local v8    # "cy":F
    .restart local p1    # "cy":F
    add-float v1, v18, v17

    div-float v1, v19, v1

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 391
    .end local v19    # "a":F
    .restart local v1    # "a":F
    if-ne v0, v9, :cond_5

    .line 392
    neg-float v1, v1

    .line 394
    :cond_5
    neg-float v7, v1

    mul-float v7, v7, p1

    mul-float/2addr v7, v3

    div-float/2addr v7, v2

    .line 395
    .local v7, "cxd":F
    mul-float v8, v1, v6

    mul-float/2addr v8, v2

    div-float/2addr v8, v3

    .line 396
    .local v8, "cyd":F
    mul-float v19, v14, v7

    mul-float v20, v15, v8

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v21, v4, v20

    add-float v6, v19, v21

    .line 397
    mul-float v19, v15, v7

    mul-float v21, v14, v8

    add-float v19, v19, v21

    div-float v20, v5, v20

    add-float v19, v19, v20

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v7, v19

    move/from16 v19, v1

    .line 401
    .end local v1    # "a":F
    .end local v2    # "ry":F
    .end local v3    # "rx":F
    .end local v8    # "cyd":F
    .end local p1    # "cy":F
    .local v7, "cy":F
    .restart local v19    # "a":F
    .local v20, "ry":F
    .local v21, "rx":F
    :goto_2
    div-float v23, v14, v21

    .line 402
    .local v23, "xx":F
    div-float v24, v15, v21

    .line 403
    .local v24, "yx":F
    neg-float v1, v15

    div-float v25, v1, v20

    .line 404
    .local v25, "xy":F
    div-float v26, v14, v20

    .line 407
    .local v26, "yy":F
    neg-float v1, v6

    mul-float v1, v1, v25

    neg-float v2, v7

    mul-float v2, v2, v26

    add-float/2addr v1, v2

    float-to-double v1, v1

    neg-float v3, v6

    mul-float v3, v3, v23

    neg-float v8, v7

    mul-float v8, v8, v24

    add-float/2addr v3, v8

    move/from16 p0, v14

    move/from16 p1, v15

    .end local v14    # "cos":F
    .end local v15    # "sin":F
    .local p0, "cos":F
    .local p1, "sin":F
    float-to-double v14, v3

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v14, v1

    .line 408
    .local v14, "sa":F
    sub-float v1, v4, v6

    mul-float v1, v1, v25

    sub-float v2, v5, v7

    mul-float v2, v2, v26

    add-float/2addr v1, v2

    float-to-double v1, v1

    sub-float v3, v4, v6

    mul-float v3, v3, v23

    sub-float v8, v5, v7

    mul-float v8, v8, v24

    add-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v9, v1

    .line 410
    .local v9, "ea":F
    add-float v15, v6, v10

    .line 411
    .end local v6    # "cx":F
    .local v15, "cx":F
    add-float v27, v7, v11

    .line 412
    .end local v7    # "cy":F
    .local v27, "cy":F
    add-float v8, v4, v10

    .line 413
    .end local v4    # "x":F
    .local v8, "x":F
    add-float v7, v5, v11

    .line 415
    .end local v5    # "y":F
    .local v7, "y":F
    invoke-static {}, Lcom/horcrux/svg/PathParser;->setPenDown()V

    .line 417
    sput v8, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sput v8, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 418
    sput v7, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sput v7, Lcom/horcrux/svg/PathParser;->mPenY:F

    .line 420
    cmpl-float v1, v21, v20

    if-nez v1, :cond_a

    const/4 v1, 0x0

    cmpl-float v1, v13, v1

    if-eqz v1, :cond_6

    move/from16 v22, v10

    move/from16 v28, v11

    move/from16 v29, v13

    goto/16 :goto_4

    .line 424
    :cond_6
    float-to-double v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 425
    .local v1, "start":F
    float-to-double v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 426
    .local v2, "end":F
    sub-float v3, v1, v2

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 428
    .local v3, "sweep":F
    const/high16 v5, 0x43340000    # 180.0f

    if-eqz v0, :cond_7

    .line 429
    cmpg-float v5, v3, v5

    if-gez v5, :cond_8

    .line 430
    sub-float v3, v4, v3

    goto :goto_3

    .line 433
    :cond_7
    cmpl-float v5, v3, v5

    if-lez v5, :cond_8

    .line 434
    sub-float v3, v4, v3

    .line 438
    :cond_8
    :goto_3
    if-nez p4, :cond_9

    .line 439
    neg-float v3, v3

    .line 442
    :cond_9
    new-instance v4, Landroid/graphics/RectF;

    sub-float v5, v15, v21

    sget v6, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v5, v6

    sub-float v6, v27, v21

    sget v22, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v6, v6, v22

    add-float v22, v15, v21

    sget v28, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v0, v22, v28

    add-float v22, v27, v21

    sget v28, Lcom/horcrux/svg/PathParser;->mScale:F

    move/from16 p5, v2

    .end local v2    # "end":F
    .local p5, "end":F
    mul-float v2, v22, v28

    invoke-direct {v4, v5, v6, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v4

    .line 445
    .local v0, "oval":Landroid/graphics/RectF;
    sget-object v2, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 446
    sget-object v2, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v4, Lcom/horcrux/svg/PathElement;

    sget-object v5, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/horcrux/svg/Point;

    move-object/from16 p6, v0

    .end local v0    # "oval":Landroid/graphics/RectF;
    .local p6, "oval":Landroid/graphics/RectF;
    new-instance v0, Lcom/horcrux/svg/Point;

    move/from16 v22, v10

    move/from16 v28, v11

    .end local v10    # "tX":F
    .end local v11    # "tY":F
    .local v22, "tX":F
    .local v28, "tY":F
    float-to-double v10, v8

    move/from16 v29, v13

    .end local v13    # "rad":F
    .local v29, "rad":F
    float-to-double v12, v7

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v10, 0x0

    aput-object v0, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v7

    move v10, v8

    goto :goto_5

    .line 420
    .end local v1    # "start":F
    .end local v3    # "sweep":F
    .end local v22    # "tX":F
    .end local v28    # "tY":F
    .end local v29    # "rad":F
    .end local p5    # "end":F
    .end local p6    # "oval":Landroid/graphics/RectF;
    .restart local v10    # "tX":F
    .restart local v11    # "tY":F
    .restart local v13    # "rad":F
    :cond_a
    move/from16 v22, v10

    move/from16 v28, v11

    move/from16 v29, v13

    .line 421
    .end local v10    # "tX":F
    .end local v11    # "tY":F
    .end local v13    # "rad":F
    .restart local v22    # "tX":F
    .restart local v28    # "tY":F
    .restart local v29    # "rad":F
    :goto_4
    move v1, v15

    move/from16 v2, v27

    move/from16 v3, v21

    move/from16 v4, v20

    move v5, v14

    move v6, v9

    move v0, v7

    .end local v7    # "y":F
    .local v0, "y":F
    move/from16 v7, p4

    move v10, v8

    .end local v8    # "x":F
    .local v10, "x":F
    move/from16 v8, v29

    invoke-static/range {v1 .. v8}, Lcom/horcrux/svg/PathParser;->arcToBezier(FFFFFFZF)V

    .line 450
    :goto_5
    return-void

    .line 363
    .end local v0    # "y":F
    .end local v9    # "ea":F
    .end local v14    # "sa":F
    .end local v15    # "cx":F
    .end local v16    # "rxry":F
    .end local v17    # "rycx":F
    .end local v18    # "rxcy":F
    .end local v19    # "a":F
    .end local v20    # "ry":F
    .end local v21    # "rx":F
    .end local v22    # "tX":F
    .end local v23    # "xx":F
    .end local v24    # "yx":F
    .end local v25    # "xy":F
    .end local v26    # "yy":F
    .end local v27    # "cy":F
    .end local v28    # "tY":F
    .end local v29    # "rad":F
    .end local p0    # "cos":F
    .end local p1    # "sin":F
    .local v2, "ry":F
    .local v3, "rx":F
    .local v10, "tX":F
    .restart local v11    # "tY":F
    .local p5, "x":F
    .local p6, "y":F
    :cond_b
    move/from16 v22, v10

    move/from16 v28, v11

    .line 364
    .end local v10    # "tX":F
    .end local v11    # "tY":F
    .restart local v22    # "tX":F
    .restart local v28    # "tY":F
    :goto_6
    invoke-static/range {p5 .. p6}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    .line 365
    return-void
.end method

.method private static arcToBezier(FFFFFFZF)V
    .locals 32
    .param p0, "cx"    # F
    .param p1, "cy"    # F
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "sa"    # F
    .param p5, "ea"    # F
    .param p6, "clockwise"    # Z
    .param p7, "rad"    # F

    .line 467
    move/from16 v0, p4

    move/from16 v1, p7

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 468
    .local v2, "cos":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 469
    .local v3, "sin":F
    mul-float v4, v2, p2

    .line 470
    .local v4, "xx":F
    neg-float v5, v3

    mul-float v5, v5, p3

    .line 471
    .local v5, "yx":F
    mul-float v6, v3, p2

    .line 472
    .local v6, "xy":F
    mul-float v7, v2, p3

    .line 475
    .local v7, "yy":F
    sub-float v8, p5, v0

    .line 476
    .local v8, "arc":F
    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v10, :cond_0

    if-eqz p6, :cond_0

    .line 477
    float-to-double v9, v8

    add-double/2addr v9, v11

    double-to-float v8, v9

    goto :goto_0

    .line 478
    :cond_0
    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    if-nez p6, :cond_1

    .line 479
    float-to-double v9, v8

    sub-double/2addr v9, v11

    double-to-float v8, v9

    .line 482
    :cond_1
    :goto_0
    float-to-double v9, v8

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Lcom/horcrux/svg/PathParser;->round(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 484
    .local v9, "n":I
    int-to-float v10, v9

    div-float v10, v8, v10

    .line 485
    .local v10, "step":F
    const/high16 v11, 0x40800000    # 4.0f

    div-float v11, v10, v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    const-wide v13, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v11, v13

    double-to-float v11, v11

    .line 487
    .local v11, "k":F
    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 488
    .local v12, "x":F
    float-to-double v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 490
    .local v13, "y":F
    const/4 v14, 0x0

    .end local p4    # "sa":F
    .local v0, "sa":F
    .local v14, "i":I
    :goto_1
    if-ge v14, v9, :cond_2

    .line 491
    mul-float v15, v11, v13

    sub-float v15, v12, v15

    .line 492
    .local v15, "cp1x":F
    mul-float v16, v11, v12

    add-float v16, v13, v16

    .line 494
    .local v16, "cp1y":F
    add-float/2addr v0, v10

    .line 495
    move/from16 v17, v2

    .end local v2    # "cos":F
    .local v17, "cos":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v12, v1

    .line 496
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v13, v1

    .line 498
    mul-float v1, v11, v13

    add-float/2addr v1, v12

    .line 499
    .local v1, "cp2x":F
    mul-float v2, v11, v12

    sub-float v2, v13, v2

    .line 501
    .local v2, "cp2y":F
    mul-float v18, v4, v15

    add-float v18, p0, v18

    mul-float v19, v5, v16

    move/from16 p4, v0

    .end local v0    # "sa":F
    .restart local p4    # "sa":F
    add-float v0, v18, v19

    .line 502
    .local v0, "c1x":F
    mul-float v18, v6, v15

    add-float v18, p1, v18

    mul-float v19, v7, v16

    move/from16 v20, v3

    .end local v3    # "sin":F
    .local v20, "sin":F
    add-float v3, v18, v19

    .line 503
    .local v3, "c1y":F
    mul-float v18, v4, v1

    add-float v18, p0, v18

    mul-float v19, v5, v2

    move/from16 v21, v8

    .end local v8    # "arc":F
    .local v21, "arc":F
    add-float v8, v18, v19

    .line 504
    .local v8, "c2x":F
    mul-float v18, v6, v1

    add-float v18, p1, v18

    mul-float v19, v7, v2

    move/from16 v22, v1

    .end local v1    # "cp2x":F
    .local v22, "cp2x":F
    add-float v1, v18, v19

    .line 505
    .local v1, "c2y":F
    mul-float v18, v4, v12

    add-float v18, p0, v18

    mul-float v19, v5, v13

    move/from16 v23, v2

    .end local v2    # "cp2y":F
    .local v23, "cp2y":F
    add-float v2, v18, v19

    .line 506
    .local v2, "ex":F
    mul-float v18, v6, v12

    add-float v18, p1, v18

    mul-float v19, v7, v13

    move/from16 v24, v4

    .end local v4    # "xx":F
    .local v24, "xx":F
    add-float v4, v18, v19

    .line 508
    .local v4, "ey":F
    sget-object v25, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v18, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v26, v0, v18

    sget v18, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v27, v3, v18

    sget v18, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v28, v8, v18

    sget v18, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v29, v1, v18

    sget v18, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v30, v2, v18

    sget v18, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v31, v4, v18

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 510
    move/from16 v18, v5

    .end local v5    # "yx":F
    .local v18, "yx":F
    sget-object v5, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    move/from16 v19, v6

    .end local v6    # "xy":F
    .local v19, "xy":F
    new-instance v6, Lcom/horcrux/svg/PathElement;

    move/from16 v25, v7

    .end local v7    # "yy":F
    .local v25, "yy":F
    sget-object v7, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    move/from16 v26, v9

    .end local v9    # "n":I
    .local v26, "n":I
    const/4 v9, 0x3

    new-array v9, v9, [Lcom/horcrux/svg/Point;

    move/from16 v27, v10

    .end local v10    # "step":F
    .local v27, "step":F
    new-instance v10, Lcom/horcrux/svg/Point;

    move/from16 v28, v11

    move/from16 v29, v12

    .end local v11    # "k":F
    .end local v12    # "x":F
    .local v28, "k":F
    .local v29, "x":F
    float-to-double v11, v0

    move/from16 v31, v13

    move/from16 v30, v14

    .end local v13    # "y":F
    .end local v14    # "i":I
    .local v30, "i":I
    .local v31, "y":F
    float-to-double v13, v3

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Lcom/horcrux/svg/Point;

    float-to-double v11, v8

    float-to-double v13, v1

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v11, 0x1

    aput-object v10, v9, v11

    new-instance v10, Lcom/horcrux/svg/Point;

    float-to-double v11, v2

    float-to-double v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-direct {v6, v7, v9}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v0    # "c1x":F
    .end local v1    # "c2y":F
    .end local v2    # "ex":F
    .end local v3    # "c1y":F
    .end local v4    # "ey":F
    .end local v8    # "c2x":F
    .end local v15    # "cp1x":F
    .end local v16    # "cp1y":F
    .end local v22    # "cp2x":F
    .end local v23    # "cp2y":F
    add-int/lit8 v14, v30, 0x1

    move/from16 v0, p4

    move/from16 v1, p7

    move/from16 v2, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v3, v20

    move/from16 v8, v21

    move/from16 v4, v24

    move/from16 v7, v25

    move/from16 v9, v26

    move/from16 v10, v27

    move/from16 v11, v28

    move/from16 v12, v29

    move/from16 v13, v31

    .end local v30    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_1

    .line 515
    .end local v14    # "i":I
    .end local v17    # "cos":F
    .end local v18    # "yx":F
    .end local v19    # "xy":F
    .end local v20    # "sin":F
    .end local v21    # "arc":F
    .end local v24    # "xx":F
    .end local v25    # "yy":F
    .end local v26    # "n":I
    .end local v27    # "step":F
    .end local v28    # "k":F
    .end local v29    # "x":F
    .end local v31    # "y":F
    .end local p4    # "sa":F
    .local v0, "sa":F
    .local v2, "cos":F
    .local v3, "sin":F
    .local v4, "xx":F
    .restart local v5    # "yx":F
    .restart local v6    # "xy":F
    .restart local v7    # "yy":F
    .local v8, "arc":F
    .restart local v9    # "n":I
    .restart local v10    # "step":F
    .restart local v11    # "k":F
    .restart local v12    # "x":F
    .restart local v13    # "y":F
    :cond_2
    return-void
.end method

.method private static close()V
    .locals 10

    .line 453
    sget-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    if-eqz v0, :cond_0

    .line 454
    sget v0, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 455
    sget v0, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    .line 456
    const/4 v0, 0x0

    sput-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    .line 457
    sget-object v1, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 458
    sget-object v1, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v2, Lcom/horcrux/svg/PathElement;

    sget-object v3, Lcom/horcrux/svg/ElementType;->kCGPathElementCloseSubpath:Lcom/horcrux/svg/ElementType;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/horcrux/svg/Point;

    new-instance v5, Lcom/horcrux/svg/Point;

    sget v6, Lcom/horcrux/svg/PathParser;->mPenX:F

    float-to-double v6, v6

    sget v8, Lcom/horcrux/svg/PathParser;->mPenY:F

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v5, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    return-void
.end method

.method private static cubicTo(FFFFFF)V
    .locals 9
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F
    .param p2, "c2x"    # F
    .param p3, "c2y"    # F
    .param p4, "ex"    # F
    .param p5, "ey"    # F

    .line 291
    invoke-static {}, Lcom/horcrux/svg/PathParser;->setPenDown()V

    .line 292
    sput p4, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 293
    sput p5, Lcom/horcrux/svg/PathParser;->mPenY:F

    .line 294
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v1, p0

    sget v2, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v2, p1

    sget v3, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v3, p2

    sget v4, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v4, p3

    sget v5, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v5, p4

    sget v6, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 295
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v1, Lcom/horcrux/svg/PathElement;

    sget-object v2, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/horcrux/svg/Point;

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p0

    float-to-double v7, p1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p2

    float-to-double v7, p3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p4

    float-to-double v7, p5

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method private static curve(FFFFFF)V
    .locals 7
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F
    .param p2, "c2x"    # F
    .param p3, "c2y"    # F
    .param p4, "ex"    # F
    .param p5, "ey"    # F

    .line 279
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float v1, p0, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float v2, p1, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float v3, p2, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float v4, p3, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float v5, p4, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float v6, p5, v0

    invoke-static/range {v1 .. v6}, Lcom/horcrux/svg/PathParser;->curveTo(FFFFFF)V

    .line 280
    return-void
.end method

.method private static curveTo(FFFFFF)V
    .locals 0
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F
    .param p2, "c2x"    # F
    .param p3, "c2y"    # F
    .param p4, "ex"    # F
    .param p5, "ey"    # F

    .line 285
    sput p2, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 286
    sput p3, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 287
    invoke-static/range {p0 .. p5}, Lcom/horcrux/svg/PathParser;->cubicTo(FFFFFF)V

    .line 288
    return-void
.end method

.method private static is_absolute(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 566
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private static is_cmd(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 535
    sparse-switch p0, :sswitch_data_0

    .line 558
    const/4 v0, 0x0

    return v0

    .line 556
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x56 -> :sswitch_0
        0x5a -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x76 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static is_number_start(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 562
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static line(FF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 265
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v0, p0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    .line 266
    return-void
.end method

.method private static lineTo(FF)V
    .locals 9
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 270
    invoke-static {}, Lcom/horcrux/svg/PathParser;->setPenDown()V

    .line 271
    sput p0, Lcom/horcrux/svg/PathParser;->mPenX:F

    sput p0, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 272
    sput p1, Lcom/horcrux/svg/PathParser;->mPenY:F

    sput p1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 273
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v1, p0

    sget v2, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v1, Lcom/horcrux/svg/PathElement;

    sget-object v2, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/horcrux/svg/Point;

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p0

    float-to-double v7, p1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method private static move(FF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 252
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v0, p0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/horcrux/svg/PathParser;->moveTo(FF)V

    .line 253
    return-void
.end method

.method private static moveTo(FF)V
    .locals 9
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 257
    sput p0, Lcom/horcrux/svg/PathParser;->mPenX:F

    sput p0, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sput p0, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    .line 258
    sput p1, Lcom/horcrux/svg/PathParser;->mPenY:F

    sput p1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sput p1, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    .line 259
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v1, p0

    sget v2, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 260
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v1, Lcom/horcrux/svg/PathElement;

    sget-object v2, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/horcrux/svg/Point;

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p0

    float-to-double v7, p1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method static parse(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 23
    .param p0, "d"    # Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    .line 37
    if-nez p0, :cond_0

    .line 38
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    return-object v0

    .line 40
    :cond_0
    const/16 v0, 0x20

    .line 41
    .local v0, "prev_cmd":C
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lcom/horcrux/svg/PathParser;->l:I

    .line 42
    sput-object p0, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 45
    const/4 v2, 0x0

    sput v2, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 46
    sput v2, Lcom/horcrux/svg/PathParser;->mPenY:F

    .line 47
    sput v2, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 48
    sput v2, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 49
    sput v2, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    .line 50
    sput v2, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    .line 51
    sput-boolean v1, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    .line 53
    :goto_0
    sget v3, Lcom/horcrux/svg/PathParser;->i:I

    sget v4, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v3, v4, :cond_d

    .line 54
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 56
    sget v3, Lcom/horcrux/svg/PathParser;->i:I

    sget v4, Lcom/horcrux/svg/PathParser;->l:I

    if-lt v3, v4, :cond_1

    .line 57
    goto/16 :goto_7

    .line 60
    :cond_1
    const/16 v3, 0x20

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    .line 61
    .local v3, "has_prev_cmd":Z
    :goto_1
    sget-object v5, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v6, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 63
    .local v5, "first_char":C
    const-string v6, "Unexpected character \'%c\' (i=%d, s=%s)"

    const/16 v7, 0x6d

    const/16 v8, 0x4d

    if-nez v3, :cond_4

    if-eq v5, v8, :cond_4

    if-ne v5, v7, :cond_3

    goto :goto_2

    .line 65
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 66
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget v4, Lcom/horcrux/svg/PathParser;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v7, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v2, v4, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_4
    :goto_2
    invoke-static {v5}, Lcom/horcrux/svg/PathParser;->is_cmd(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, "is_implicit_move_to":Z
    move v7, v5

    .line 75
    .local v7, "cmd":C
    sget v8, Lcom/horcrux/svg/PathParser;->i:I

    add-int/2addr v8, v4

    sput v8, Lcom/horcrux/svg/PathParser;->i:I

    goto :goto_4

    .line 76
    .end local v6    # "is_implicit_move_to":Z
    .end local v7    # "cmd":C
    :cond_5
    invoke-static {v5}, Lcom/horcrux/svg/PathParser;->is_number_start(C)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    .line 77
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_b

    const/16 v4, 0x7a

    if-eq v0, v4, :cond_b

    .line 83
    if-eq v0, v8, :cond_7

    if-ne v0, v7, :cond_6

    goto :goto_3

    .line 94
    :cond_6
    const/4 v6, 0x0

    .line 95
    .restart local v6    # "is_implicit_move_to":Z
    move v7, v0

    .restart local v7    # "cmd":C
    goto :goto_4

    .line 87
    .end local v6    # "is_implicit_move_to":Z
    .end local v7    # "cmd":C
    :cond_7
    :goto_3
    const/4 v6, 0x1

    .line 88
    .restart local v6    # "is_implicit_move_to":Z
    invoke-static {v0}, Lcom/horcrux/svg/PathParser;->is_absolute(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 89
    const/16 v7, 0x4c

    .restart local v7    # "cmd":C
    goto :goto_4

    .line 91
    .end local v7    # "cmd":C
    :cond_8
    const/16 v7, 0x6c

    .line 102
    .restart local v7    # "cmd":C
    :goto_4
    invoke-static {v7}, Lcom/horcrux/svg/PathParser;->is_absolute(C)Z

    move-result v4

    .line 103
    .local v4, "absolute":Z
    sparse-switch v7, :sswitch_data_0

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 233
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v8, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v2, v8}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "Unexpected comand \'%c\' (s=%s)"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :sswitch_0
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {v2, v8}, Lcom/horcrux/svg/PathParser;->line(FF)V

    .line 137
    goto/16 :goto_5

    .line 192
    :sswitch_1
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->smoothQuadraticBezierCurve(FF)V

    .line 193
    goto/16 :goto_5

    .line 169
    :sswitch_2
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    .line 168
    invoke-static {v8, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->smoothCurve(FFFF)V

    .line 170
    goto/16 :goto_5

    .line 181
    :sswitch_3
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    .line 180
    invoke-static {v8, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurve(FFFF)V

    .line 182
    goto/16 :goto_5

    .line 106
    :sswitch_4
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->move(FF)V

    .line 107
    goto/16 :goto_5

    .line 116
    :sswitch_5
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->line(FF)V

    .line 117
    goto/16 :goto_5

    .line 126
    :sswitch_6
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {v8, v2}, Lcom/horcrux/svg/PathParser;->line(FF)V

    .line 127
    goto/16 :goto_5

    .line 147
    :sswitch_7
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    .line 148
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    .line 149
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    .line 150
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v12

    .line 151
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v13

    .line 152
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v14

    .line 146
    invoke-static/range {v9 .. v14}, Lcom/horcrux/svg/PathParser;->curve(FFFFFF)V

    .line 153
    goto/16 :goto_5

    .line 203
    :sswitch_8
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v15

    .line 204
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v16

    .line 205
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v17

    .line 206
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v18

    .line 207
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v19

    .line 208
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v20

    .line 209
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v21

    .line 202
    invoke-static/range {v15 .. v21}, Lcom/horcrux/svg/PathParser;->arc(FFFZZFF)V

    .line 210
    goto/16 :goto_5

    .line 227
    :sswitch_9
    invoke-static {}, Lcom/horcrux/svg/PathParser;->close()V

    .line 228
    goto/16 :goto_5

    .line 141
    :sswitch_a
    sget v8, Lcom/horcrux/svg/PathParser;->mPenX:F

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    .line 142
    goto/16 :goto_5

    .line 197
    :sswitch_b
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->smoothQuadraticBezierCurveTo(FF)V

    .line 198
    goto/16 :goto_5

    .line 175
    :sswitch_c
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    .line 174
    invoke-static {v8, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->smoothCurveTo(FFFF)V

    .line 176
    goto :goto_5

    .line 187
    :sswitch_d
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    .line 186
    invoke-static {v8, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurveTo(FFFF)V

    .line 188
    goto :goto_5

    .line 111
    :sswitch_e
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->moveTo(FF)V

    .line 112
    goto :goto_5

    .line 121
    :sswitch_f
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    .line 122
    goto :goto_5

    .line 131
    :sswitch_10
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v8

    sget v9, Lcom/horcrux/svg/PathParser;->mPenY:F

    invoke-static {v8, v9}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    .line 132
    goto :goto_5

    .line 158
    :sswitch_11
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    .line 159
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    .line 160
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v12

    .line 161
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v13

    .line 162
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v14

    .line 163
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v15

    .line 157
    invoke-static/range {v10 .. v15}, Lcom/horcrux/svg/PathParser;->curveTo(FFFFFF)V

    .line 164
    goto :goto_5

    .line 215
    :sswitch_12
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v16

    .line 216
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v17

    .line 217
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v18

    .line 218
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v19

    .line 219
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v20

    .line 220
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v21

    .line 221
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v22

    .line 214
    invoke-static/range {v16 .. v22}, Lcom/horcrux/svg/PathParser;->arcTo(FFFZZFF)V

    .line 222
    nop

    .line 237
    :goto_5
    if-eqz v6, :cond_a

    .line 238
    if-eqz v4, :cond_9

    .line 239
    const/16 v0, 0x4d

    goto :goto_6

    .line 241
    :cond_9
    const/16 v0, 0x6d

    goto :goto_6

    .line 244
    :cond_a
    move v0, v7

    .line 246
    .end local v3    # "has_prev_cmd":Z
    .end local v4    # "absolute":Z
    .end local v5    # "first_char":C
    .end local v6    # "is_implicit_move_to":Z
    .end local v7    # "cmd":C
    :goto_6
    goto/16 :goto_0

    .line 79
    .restart local v3    # "has_prev_cmd":Z
    .restart local v5    # "first_char":C
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 80
    const-string v4, "Unexpected number after \'z\' (s=%s)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 99
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget v4, Lcom/horcrux/svg/PathParser;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v7, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v2, v4, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    .end local v3    # "has_prev_cmd":Z
    .end local v5    # "first_char":C
    :cond_d
    :goto_7
    sget-object v1, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_12
        0x43 -> :sswitch_11
        0x48 -> :sswitch_10
        0x4c -> :sswitch_f
        0x4d -> :sswitch_e
        0x51 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_b
        0x56 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x63 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_0
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method private static parse_flag()Z
    .locals 5

    .line 572
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 574
    sget-object v0, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 575
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 587
    new-instance v1, Ljava/lang/Error;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget v3, Lcom/horcrux/svg/PathParser;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unexpected flag \'%c\' (i=%d, s=%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :pswitch_0
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 580
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    sget v3, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v1, v3, :cond_0

    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v3, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_0

    .line 581
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    add-int/2addr v1, v2

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 583
    :cond_0
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 584
    nop

    .line 590
    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parse_list_number()F
    .locals 3

    .line 594
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-eq v0, v1, :cond_0

    .line 598
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_number()F

    move-result v0

    .line 599
    .local v0, "n":F
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 600
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_separator()V

    .line 602
    return v0

    .line 595
    .end local v0    # "n":F
    :cond_0
    new-instance v0, Ljava/lang/Error;

    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unexpected end (s=%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parse_list_separator()V
    .locals 2

    .line 675
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 676
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/horcrux/svg/PathParser;->i:I

    .line 678
    :cond_0
    return-void
.end method

.method private static parse_number()F
    .locals 10

    .line 607
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 609
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-eq v0, v1, :cond_c

    .line 613
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    .line 615
    .local v0, "start":I
    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v2, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 618
    .local v1, "c":C
    const/16 v2, 0x2b

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    .line 619
    :cond_0
    sget v4, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/horcrux/svg/PathParser;->i:I

    .line 620
    sget-object v4, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v5, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 624
    :cond_1
    const-string v4, "Invalid number formating character \'%c\' (i=%d, s=%s)"

    const/16 v5, 0x39

    const/16 v6, 0x2e

    const/16 v7, 0x30

    if-lt v1, v7, :cond_2

    if-gt v1, v5, :cond_2

    .line 625
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    .line 626
    sget v8, Lcom/horcrux/svg/PathParser;->i:I

    sget v9, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v8, v9, :cond_3

    .line 627
    sget-object v8, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v9, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 629
    :cond_2
    if-ne v1, v6, :cond_b

    .line 635
    :cond_3
    :goto_0
    if-ne v1, v6, :cond_4

    .line 636
    sget v6, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/horcrux/svg/PathParser;->i:I

    .line 637
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    .line 638
    sget v6, Lcom/horcrux/svg/PathParser;->i:I

    sget v8, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v6, v8, :cond_4

    .line 639
    sget-object v6, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v8, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 643
    :cond_4
    const/16 v6, 0x65

    if-eq v1, v6, :cond_5

    const/16 v6, 0x45

    if-ne v1, v6, :cond_9

    :cond_5
    sget v6, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v6, v8, :cond_9

    .line 644
    sget-object v6, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v8, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 646
    .local v6, "c2":C
    const/16 v8, 0x6d

    if-eq v6, v8, :cond_9

    const/16 v8, 0x78

    if-eq v6, v8, :cond_9

    .line 647
    sget v8, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/horcrux/svg/PathParser;->i:I

    .line 648
    sget-object v8, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v9, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 650
    if-eq v1, v2, :cond_8

    if-ne v1, v3, :cond_6

    goto :goto_1

    .line 653
    :cond_6
    if-lt v1, v7, :cond_7

    if-gt v1, v5, :cond_7

    .line 654
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    goto :goto_2

    .line 656
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 657
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget v5, Lcom/horcrux/svg/PathParser;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v3, v5, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_8
    :goto_1
    sget v2, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/horcrux/svg/PathParser;->i:I

    .line 652
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    .line 662
    .end local v6    # "c2":C
    :cond_9
    :goto_2
    sget-object v2, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v3, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 666
    .local v3, "n":F
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_a

    .line 671
    return v3

    .line 667
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 668
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/horcrux/svg/PathParser;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v2, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Invalid number \'%s\' (start=%d, i=%d, s=%s)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 630
    .end local v2    # "num":Ljava/lang/String;
    .end local v3    # "n":F
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 631
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget v5, Lcom/horcrux/svg/PathParser;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    .end local v0    # "start":I
    .end local v1    # "c":C
    :cond_c
    new-instance v0, Ljava/lang/Error;

    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unexpected end (s=%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static quadraticBezierCurve(FFFF)V
    .locals 4
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F
    .param p2, "c2x"    # F
    .param p3, "c2y"    # F

    .line 318
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v0, p0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr v1, p1

    sget v2, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v2, p2

    sget v3, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurveTo(FFFF)V

    .line 319
    return-void
.end method

.method private static quadraticBezierCurveTo(FFFF)V
    .locals 8
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F
    .param p2, "c2x"    # F
    .param p3, "c2y"    # F

    .line 324
    sput p0, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 325
    sput p1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 326
    move v6, p2

    .line 327
    .local v6, "ex":F
    move v7, p3

    .line 328
    .local v7, "ey":F
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p0, v0

    add-float/2addr v1, v6

    const/high16 v2, 0x40400000    # 3.0f

    div-float p2, v1, v2

    .line 329
    mul-float v1, p1, v0

    add-float/2addr v1, v7

    div-float p3, v1, v2

    .line 330
    sget v1, Lcom/horcrux/svg/PathParser;->mPenX:F

    mul-float v3, p0, v0

    add-float/2addr v1, v3

    div-float p0, v1, v2

    .line 331
    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    div-float p1, v1, v2

    .line 332
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/horcrux/svg/PathParser;->cubicTo(FFFFFF)V

    .line 333
    return-void
.end method

.method private static round(D)D
    .locals 4
    .param p0, "val"    # D

    .line 526
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 527
    .local v0, "multiplier":D
    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method private static setPenDown()V
    .locals 1

    .line 518
    sget-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    if-nez v0, :cond_0

    .line 519
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    .line 520
    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    .line 521
    const/4 v0, 0x1

    sput-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    .line 523
    :cond_0
    return-void
.end method

.method private static skip_digits()V
    .locals 2

    .line 681
    nop

    :goto_0
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/horcrux/svg/PathParser;->i:I

    goto :goto_0

    .line 682
    :cond_0
    return-void
.end method

.method private static skip_spaces()V
    .locals 2

    .line 531
    nop

    :goto_0
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/horcrux/svg/PathParser;->i:I

    goto :goto_0

    .line 532
    :cond_0
    return-void
.end method

.method private static smoothCurve(FFFF)V
    .locals 4
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F
    .param p2, "ex"    # F
    .param p3, "ey"    # F

    .line 302
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v0, p0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr v1, p1

    sget v2, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v2, p2

    sget v3, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/horcrux/svg/PathParser;->smoothCurveTo(FFFF)V

    .line 303
    return-void
.end method

.method private static smoothCurveTo(FFFF)V
    .locals 8
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F
    .param p2, "ex"    # F
    .param p3, "ey"    # F

    .line 308
    move v6, p0

    .line 309
    .local v6, "c2x":F
    move v7, p1

    .line 310
    .local v7, "c2y":F
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sget v2, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sub-float p0, v0, v2

    .line 311
    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    mul-float/2addr v0, v1

    sget v1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sub-float p1, v0, v1

    .line 312
    sput v6, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 313
    sput v7, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 314
    move v0, p0

    move v1, p1

    move v2, v6

    move v3, v7

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/horcrux/svg/PathParser;->cubicTo(FFFFFF)V

    .line 315
    return-void
.end method

.method private static smoothQuadraticBezierCurve(FF)V
    .locals 2
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F

    .line 336
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v0, p0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/horcrux/svg/PathParser;->smoothQuadraticBezierCurveTo(FF)V

    .line 337
    return-void
.end method

.method private static smoothQuadraticBezierCurveTo(FF)V
    .locals 5
    .param p0, "c1x"    # F
    .param p1, "c1y"    # F

    .line 341
    move v0, p0

    .line 342
    .local v0, "c2x":F
    move v1, p1

    .line 343
    .local v1, "c2y":F
    sget v2, Lcom/horcrux/svg/PathParser;->mPenX:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sget v4, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sub-float/2addr v2, v4

    .line 344
    .end local p0    # "c1x":F
    .local v2, "c1x":F
    sget p0, Lcom/horcrux/svg/PathParser;->mPenY:F

    mul-float/2addr p0, v3

    sget v3, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sub-float/2addr p0, v3

    .line 345
    .end local p1    # "c1y":F
    .local p0, "c1y":F
    invoke-static {v2, p0, v0, v1}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurveTo(FFFF)V

    .line 346
    return-void
.end method
