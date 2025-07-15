.class Lcom/horcrux/svg/FeCompositeView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeCompositeView.java"


# instance fields
.field mIn1:Ljava/lang/String;

.field mIn2:Ljava/lang/String;

.field mK1:F

.field mK2:F

.field mK3:F

.field mK4:F

.field mOperator:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 23
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 24
    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 28
    .param p2, "prevResult"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 63
    .local p1, "resultsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/horcrux/svg/FeCompositeView;->mIn1:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/horcrux/svg/FeCompositeView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 64
    .local v3, "in1":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/horcrux/svg/FeCompositeView;->mIn2:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/horcrux/svg/FeCompositeView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 65
    .local v4, "in2":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 66
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v5

    .line 67
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 68
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    invoke-virtual {v6, v3, v15, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    sget-object v8, Lcom/horcrux/svg/FeCompositeView$1;->$SwitchMap$com$horcrux$svg$FilterProperties$FeCompositeOperator:[I

    iget-object v9, v0, Lcom/horcrux/svg/FeCompositeView;->mOperator:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    invoke-virtual {v9}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    move-object/from16 v21, v3

    move-object v1, v5

    move-object v3, v6

    move-object/from16 v16, v7

    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .local v16, "result":Landroid/graphics/Bitmap;
    .local v21, "in1":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 88
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .end local v21    # "in1":Landroid/graphics/Bitmap;
    .local v3, "in1":Landroid/graphics/Bitmap;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "result":Landroid/graphics/Bitmap;
    :pswitch_0
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v14, v8, v9

    .line 89
    .local v14, "nPixels":I
    new-array v13, v14, [I

    .line 90
    .local v13, "pixels1":[I
    new-array v12, v14, [I

    .line 91
    .local v12, "pixels2":[I
    nop

    .line 92
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 91
    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v7

    move-object v9, v13

    move-object/from16 v20, v12

    .end local v12    # "pixels2":[I
    .local v20, "pixels2":[I
    move/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "pixels1":[I
    .local v18, "pixels1":[I
    move/from16 v13, v19

    move/from16 v21, v14

    .end local v14    # "nPixels":I
    .local v21, "nPixels":I
    move/from16 v14, v16

    move v1, v15

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 93
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v15, v5

    .end local v5    # "paint":Landroid/graphics/Paint;
    .local v15, "paint":Landroid/graphics/Paint;
    move-object v5, v4

    move-object v14, v6

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .local v14, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v6, v20

    move-object/from16 v16, v7

    .end local v7    # "result":Landroid/graphics/Bitmap;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    move v7, v9

    move v9, v10

    move v10, v13

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 95
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v6, v21

    .end local v21    # "nPixels":I
    .local v6, "nPixels":I
    if-ge v5, v6, :cond_0

    .line 96
    aget v7, v18, v5

    .line 97
    .local v7, "color1":I
    aget v8, v20, v5

    .line 99
    .local v8, "color2":I
    shr-int/lit8 v9, v7, 0x10

    const/16 v10, 0xff

    and-int/2addr v9, v10

    .line 100
    .local v9, "r1":I
    shr-int/lit8 v11, v7, 0x8

    and-int/2addr v11, v10

    .line 101
    .local v11, "g1":I
    and-int/lit16 v12, v7, 0xff

    .line 102
    .local v12, "b1":I
    ushr-int/lit8 v13, v7, 0x18

    .line 103
    .local v13, "a1":I
    shr-int/lit8 v1, v8, 0x10

    and-int/2addr v1, v10

    .line 104
    .local v1, "r2":I
    shr-int/lit8 v2, v8, 0x8

    and-int/2addr v2, v10

    .line 105
    .local v2, "g2":I
    and-int/lit16 v10, v8, 0xff

    .line 106
    .local v10, "b2":I
    move-object/from16 v21, v3

    .end local v3    # "in1":Landroid/graphics/Bitmap;
    .local v21, "in1":Landroid/graphics/Bitmap;
    ushr-int/lit8 v3, v8, 0x18

    .line 108
    .local v3, "a2":I
    move/from16 v22, v6

    .end local v6    # "nPixels":I
    .local v22, "nPixels":I
    iget v6, v0, Lcom/horcrux/svg/FeCompositeView;->mK1:F

    move/from16 v23, v7

    .end local v7    # "color1":I
    .local v23, "color1":I
    int-to-float v7, v9

    mul-float/2addr v6, v7

    int-to-float v7, v1

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/horcrux/svg/FeCompositeView;->mK2:F

    move/from16 v24, v8

    .end local v8    # "color2":I
    .local v24, "color2":I
    int-to-float v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v0, Lcom/horcrux/svg/FeCompositeView;->mK3:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v0, Lcom/horcrux/svg/FeCompositeView;->mK4:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 109
    .local v6, "rResult":I
    iget v7, v0, Lcom/horcrux/svg/FeCompositeView;->mK1:F

    int-to-float v8, v11

    mul-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/horcrux/svg/FeCompositeView;->mK2:F

    move/from16 v25, v1

    .end local v1    # "r2":I
    .local v25, "r2":I
    int-to-float v1, v11

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iget v1, v0, Lcom/horcrux/svg/FeCompositeView;->mK3:F

    int-to-float v8, v2

    mul-float/2addr v1, v8

    add-float/2addr v7, v1

    iget v1, v0, Lcom/horcrux/svg/FeCompositeView;->mK4:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    .line 110
    .local v1, "gResult":I
    iget v7, v0, Lcom/horcrux/svg/FeCompositeView;->mK1:F

    int-to-float v8, v12

    mul-float/2addr v7, v8

    int-to-float v8, v10

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/horcrux/svg/FeCompositeView;->mK2:F

    move/from16 v26, v2

    .end local v2    # "g2":I
    .local v26, "g2":I
    int-to-float v2, v12

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iget v2, v0, Lcom/horcrux/svg/FeCompositeView;->mK3:F

    int-to-float v8, v10

    mul-float/2addr v2, v8

    add-float/2addr v7, v2

    iget v2, v0, Lcom/horcrux/svg/FeCompositeView;->mK4:F

    add-float/2addr v7, v2

    float-to-int v2, v7

    .line 111
    .local v2, "bResult":I
    iget v7, v0, Lcom/horcrux/svg/FeCompositeView;->mK1:F

    int-to-float v8, v13

    mul-float/2addr v7, v8

    int-to-float v8, v3

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/horcrux/svg/FeCompositeView;->mK2:F

    move/from16 v27, v9

    .end local v9    # "r1":I
    .local v27, "r1":I
    int-to-float v9, v13

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v0, Lcom/horcrux/svg/FeCompositeView;->mK3:F

    int-to-float v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v0, Lcom/horcrux/svg/FeCompositeView;->mK4:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 113
    .local v7, "aResult":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v8, 0xff

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 114
    move/from16 v19, v3

    const/4 v9, 0x0

    .end local v3    # "a2":I
    .local v19, "a2":I
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 116
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 118
    .end local v7    # "aResult":I
    .local v3, "aResult":I
    shl-int/lit8 v7, v3, 0x18

    shl-int/lit8 v8, v6, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v1, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v2

    .line 119
    .local v7, "pixel":I
    aput v7, v18, v5

    .line 95
    .end local v1    # "gResult":I
    .end local v2    # "bResult":I
    .end local v3    # "aResult":I
    .end local v6    # "rResult":I
    .end local v7    # "pixel":I
    .end local v10    # "b2":I
    .end local v11    # "g1":I
    .end local v12    # "b1":I
    .end local v13    # "a1":I
    .end local v19    # "a2":I
    .end local v23    # "color1":I
    .end local v24    # "color2":I
    .end local v25    # "r2":I
    .end local v26    # "g2":I
    .end local v27    # "r1":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v21, v22

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v21    # "in1":Landroid/graphics/Bitmap;
    .end local v22    # "nPixels":I
    .local v3, "in1":Landroid/graphics/Bitmap;
    .local v6, "nPixels":I
    :cond_0
    move-object/from16 v21, v3

    move/from16 v22, v6

    .line 122
    .end local v3    # "in1":Landroid/graphics/Bitmap;
    .end local v5    # "i":I
    .end local v6    # "nPixels":I
    .restart local v21    # "in1":Landroid/graphics/Bitmap;
    .restart local v22    # "nPixels":I
    nop

    .line 123
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 122
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object v3, v14

    .end local v14    # "canvas":Landroid/graphics/Canvas;
    .local v3, "canvas":Landroid/graphics/Canvas;
    move v14, v1

    move-object v1, v15

    .end local v15    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    move v15, v2

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1

    .line 84
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .end local v18    # "pixels1":[I
    .end local v20    # "pixels2":[I
    .end local v21    # "in1":Landroid/graphics/Bitmap;
    .end local v22    # "nPixels":I
    .local v3, "in1":Landroid/graphics/Bitmap;
    .local v5, "paint":Landroid/graphics/Paint;
    .local v6, "canvas":Landroid/graphics/Canvas;
    .local v7, "result":Landroid/graphics/Bitmap;
    :pswitch_1
    move-object/from16 v21, v3

    move-object v1, v5

    move-object v3, v6

    move-object/from16 v16, v7

    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    .restart local v21    # "in1":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    goto :goto_1

    .line 81
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .end local v21    # "in1":Landroid/graphics/Bitmap;
    .local v3, "in1":Landroid/graphics/Bitmap;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "result":Landroid/graphics/Bitmap;
    :pswitch_2
    move-object/from16 v21, v3

    move-object v1, v5

    move-object v3, v6

    move-object/from16 v16, v7

    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    .restart local v21    # "in1":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    goto :goto_1

    .line 78
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .end local v21    # "in1":Landroid/graphics/Bitmap;
    .local v3, "in1":Landroid/graphics/Bitmap;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "result":Landroid/graphics/Bitmap;
    :pswitch_3
    move-object/from16 v21, v3

    move-object v1, v5

    move-object v3, v6

    move-object/from16 v16, v7

    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    .restart local v21    # "in1":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    goto :goto_1

    .line 75
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .end local v21    # "in1":Landroid/graphics/Bitmap;
    .local v3, "in1":Landroid/graphics/Bitmap;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "result":Landroid/graphics/Bitmap;
    :pswitch_4
    move-object/from16 v21, v3

    move-object v1, v5

    move-object v3, v6

    move-object/from16 v16, v7

    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    .restart local v21    # "in1":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 76
    goto :goto_1

    .line 72
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .end local v21    # "in1":Landroid/graphics/Bitmap;
    .local v3, "in1":Landroid/graphics/Bitmap;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "result":Landroid/graphics/Bitmap;
    :pswitch_5
    move-object/from16 v21, v3

    move-object v1, v5

    move-object v3, v6

    move-object/from16 v16, v7

    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    .restart local v21    # "in1":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    nop

    .line 127
    :goto_1
    iget-object v2, v0, Lcom/horcrux/svg/FeCompositeView;->mOperator:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    sget-object v5, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->ARITHMETIC:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    if-eq v2, v5, :cond_1

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v3, v4, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    :cond_1
    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIn1(Ljava/lang/String;)V
    .locals 0
    .param p1, "in1"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/horcrux/svg/FeCompositeView;->mIn1:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/horcrux/svg/FeCompositeView;->invalidate()V

    .line 29
    return-void
.end method

.method public setIn2(Ljava/lang/String;)V
    .locals 0
    .param p1, "in2"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/horcrux/svg/FeCompositeView;->mIn2:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/FeCompositeView;->invalidate()V

    .line 34
    return-void
.end method

.method public setK1(Ljava/lang/Float;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/FeCompositeView;->mK1:F

    .line 38
    invoke-virtual {p0}, Lcom/horcrux/svg/FeCompositeView;->invalidate()V

    .line 39
    return-void
.end method

.method public setK2(Ljava/lang/Float;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/FeCompositeView;->mK2:F

    .line 43
    invoke-virtual {p0}, Lcom/horcrux/svg/FeCompositeView;->invalidate()V

    .line 44
    return-void
.end method

.method public setK3(Ljava/lang/Float;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/FeCompositeView;->mK3:F

    .line 48
    invoke-virtual {p0}, Lcom/horcrux/svg/FeCompositeView;->invalidate()V

    .line 49
    return-void
.end method

.method public setK4(Ljava/lang/Float;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/FeCompositeView;->mK4:F

    .line 53
    invoke-virtual {p0}, Lcom/horcrux/svg/FeCompositeView;->invalidate()V

    .line 54
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FeCompositeView;->mOperator:Lcom/horcrux/svg/FilterProperties$FeCompositeOperator;

    .line 58
    invoke-virtual {p0}, Lcom/horcrux/svg/FeCompositeView;->invalidate()V

    .line 59
    return-void
.end method
