.class Lcom/horcrux/svg/FeColorMatrixView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeColorMatrixView.java"


# instance fields
.field mIn1:Ljava/lang/String;

.field mType:Lcom/horcrux/svg/FilterProperties$FeColorMatrixType;

.field mValues:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 17
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
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

    .line 37
    .local p1, "resultsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/horcrux/svg/FeColorMatrixView;->mIn1:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v2, v3, v1}, Lcom/horcrux/svg/FeColorMatrixView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, "source":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 40
    .local v4, "colorMatrix":Landroid/graphics/ColorMatrix;
    sget-object v5, Lcom/horcrux/svg/FeColorMatrixView$1;->$SwitchMap$com$horcrux$svg$FilterProperties$FeColorMatrixType:[I

    iget-object v6, v0, Lcom/horcrux/svg/FeColorMatrixView;->mType:Lcom/horcrux/svg/FilterProperties$FeColorMatrixType;

    invoke-virtual {v6}, Lcom/horcrux/svg/FilterProperties$FeColorMatrixType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 89
    :pswitch_0
    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    goto/16 :goto_2

    .line 58
    :pswitch_1
    iget-object v5, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-eq v5, v9, :cond_0

    return-object v1

    .line 60
    :cond_0
    iget-object v5, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v5, v10

    .line 61
    .local v5, "hue":F
    float-to-double v10, v5

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v14, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 62
    .local v10, "cosHue":F
    float-to-double v6, v5

    mul-double/2addr v6, v12

    div-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 64
    .local v6, "sinHue":F
    const v7, 0x3f4978d5    # 0.787f

    mul-float v12, v10, v7

    const v13, 0x3e5a1cac    # 0.213f

    add-float/2addr v12, v13

    mul-float v14, v6, v13

    sub-float/2addr v12, v14

    const v14, 0x3f370a3d    # 0.715f

    mul-float v15, v10, v14

    sub-float v15, v14, v15

    mul-float v16, v6, v14

    sub-float v15, v15, v16

    const v16, 0x3d9374bc    # 0.072f

    mul-float v17, v10, v16

    sub-float v17, v16, v17

    const v18, 0x3f6d9168    # 0.928f

    mul-float v19, v6, v18

    add-float v17, v17, v19

    mul-float v19, v10, v13

    sub-float v19, v13, v19

    const v20, 0x3e126e98    # 0.143f

    mul-float v20, v20, v6

    add-float v19, v19, v20

    const v20, 0x3e91eb85    # 0.285f

    mul-float v20, v20, v10

    add-float v20, v20, v14

    const v21, 0x3e0f5c29    # 0.14f

    mul-float v21, v21, v6

    add-float v20, v20, v21

    mul-float v21, v10, v16

    sub-float v21, v16, v21

    const v22, 0x3e90e560    # 0.283f

    mul-float v22, v22, v6

    sub-float v21, v21, v22

    mul-float v22, v10, v13

    sub-float v13, v13, v22

    mul-float/2addr v7, v6

    sub-float/2addr v13, v7

    mul-float v7, v10, v14

    sub-float v7, v14, v7

    mul-float/2addr v14, v6

    add-float/2addr v7, v14

    mul-float v18, v18, v10

    add-float v18, v18, v16

    mul-float v16, v16, v6

    add-float v18, v18, v16

    new-array v8, v8, [F

    const/4 v14, 0x0

    aput v12, v8, v14

    aput v15, v8, v9

    const/4 v9, 0x2

    aput v17, v8, v9

    const/4 v9, 0x3

    const/4 v12, 0x0

    aput v12, v8, v9

    const/4 v9, 0x4

    aput v12, v8, v9

    const/4 v9, 0x5

    aput v19, v8, v9

    const/4 v9, 0x6

    aput v20, v8, v9

    const/4 v9, 0x7

    aput v21, v8, v9

    const/16 v9, 0x8

    aput v12, v8, v9

    const/16 v9, 0x9

    aput v12, v8, v9

    const/16 v9, 0xa

    aput v13, v8, v9

    const/16 v9, 0xb

    aput v7, v8, v9

    const/16 v7, 0xc

    aput v18, v8, v7

    const/16 v7, 0xd

    aput v12, v8, v7

    const/16 v7, 0xe

    aput v12, v8, v7

    const/16 v7, 0xf

    aput v12, v8, v7

    const/16 v7, 0x10

    aput v12, v8, v7

    const/16 v7, 0x11

    aput v12, v8, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v9, 0x12

    aput v7, v8, v9

    const/16 v7, 0x13

    aput v12, v8, v7

    invoke-virtual {v4, v8}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 87
    goto :goto_2

    .line 53
    .end local v5    # "hue":F
    .end local v6    # "sinHue":F
    .end local v10    # "cosHue":F
    :pswitch_2
    iget-object v5, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-eq v5, v9, :cond_1

    return-object v1

    .line 55
    :cond_1
    iget-object v5, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 56
    goto :goto_2

    .line 42
    :pswitch_3
    iget-object v5, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v5, v8, :cond_2

    return-object v1

    .line 44
    :cond_2
    iget-object v5, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    new-array v5, v5, [F

    .line 46
    .local v5, "rawMatrix":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v7}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 47
    iget-object v7, v0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v7, v6}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v7

    double-to-float v7, v7

    rem-int/lit8 v8, v6, 0x5

    const/4 v10, 0x4

    if-ne v8, v10, :cond_3

    const/16 v8, 0xff

    goto :goto_1

    :cond_3
    move v8, v9

    :goto_1
    int-to-float v8, v8

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 51
    nop

    .line 96
    .end local v5    # "rawMatrix":[F
    :goto_2
    invoke-static {v4, v1}, Lcom/horcrux/svg/FilterUtils;->getBitmapWithColorMatrix(Landroid/graphics/ColorMatrix;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e59999a    # 0.2125f
        0x3f372474    # 0.7154f
        0x3d93a92a    # 0.0721f
        0x0
        0x0
    .end array-data
.end method

.method public setIn1(Ljava/lang/String;)V
    .locals 0
    .param p1, "in1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/horcrux/svg/FeColorMatrixView;->mIn1:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/horcrux/svg/FeColorMatrixView;->invalidate()V

    .line 23
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$FeColorMatrixType;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$FeColorMatrixType;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FeColorMatrixView;->mType:Lcom/horcrux/svg/FilterProperties$FeColorMatrixType;

    .line 27
    invoke-virtual {p0}, Lcom/horcrux/svg/FeColorMatrixView;->invalidate()V

    .line 28
    return-void
.end method

.method public setValues(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "values"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 31
    iput-object p1, p0, Lcom/horcrux/svg/FeColorMatrixView;->mValues:Lcom/facebook/react/bridge/ReadableArray;

    .line 32
    invoke-virtual {p0}, Lcom/horcrux/svg/FeColorMatrixView;->invalidate()V

    .line 33
    return-void
.end method
