.class Lcom/horcrux/svg/FeBlendView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeBlendView.java"


# instance fields
.field mIn1:Ljava/lang/String;

.field mIn2:Ljava/lang/String;

.field mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 19
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 20
    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v1, Lcom/horcrux/svg/SVGLength;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    iput-object v1, v0, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    .line 21
    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v1, Lcom/horcrux/svg/SVGLength;

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    iput-object v1, v0, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    .line 22
    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v1, Lcom/horcrux/svg/SVGLength;

    const-string v2, "100%"

    invoke-direct {v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    .line 23
    iget-object v0, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v1, Lcom/horcrux/svg/SVGLength;

    invoke-direct {v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    .line 24
    return-void
.end method

.method static synthetic lambda$applyFilter$0([F[F)[F
    .locals 7
    .param p0, "src"    # [F
    .param p1, "dst"    # [F

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 50
    .local v0, "res":[F
    const/4 v1, 0x0

    aget v2, p0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    aget v4, p1, v1

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    sub-float v2, v3, v2

    aput v2, v0, v1

    .line 51
    const/4 v2, 0x1

    aget v4, p0, v2

    aget v5, p0, v1

    mul-float/2addr v4, v5

    aget v5, p1, v1

    sub-float v5, v3, v5

    mul-float/2addr v4, v5

    aget v5, p1, v2

    aget v6, p1, v1

    mul-float/2addr v5, v6

    aget v6, p0, v1

    sub-float v6, v3, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v2

    aget v6, p0, v1

    mul-float/2addr v5, v6

    aget v6, p1, v2

    mul-float/2addr v5, v6

    aget v6, p1, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 55
    const/4 v2, 0x2

    aget v4, p0, v2

    aget v5, p0, v1

    mul-float/2addr v4, v5

    aget v5, p1, v1

    sub-float v5, v3, v5

    mul-float/2addr v4, v5

    aget v5, p1, v2

    aget v6, p1, v1

    mul-float/2addr v5, v6

    aget v6, p0, v1

    sub-float v6, v3, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v2

    aget v6, p0, v1

    mul-float/2addr v5, v6

    aget v6, p1, v2

    mul-float/2addr v5, v6

    aget v6, p1, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 59
    const/4 v2, 0x3

    aget v4, p0, v2

    aget v5, p0, v1

    mul-float/2addr v4, v5

    aget v5, p1, v1

    sub-float v5, v3, v5

    mul-float/2addr v4, v5

    aget v5, p1, v2

    aget v6, p1, v1

    mul-float/2addr v5, v6

    aget v6, p0, v1

    sub-float/2addr v3, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    aget v3, p0, v2

    aget v5, p0, v1

    mul-float/2addr v3, v5

    aget v5, p1, v2

    mul-float/2addr v3, v5

    aget v1, p1, v1

    mul-float/2addr v3, v1

    add-float/2addr v4, v3

    aput v4, v0, v2

    .line 63
    return-object v0
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
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

    .line 43
    .local p1, "resultsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/horcrux/svg/FeBlendView;->mIn1:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/horcrux/svg/FeBlendView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "in1":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/horcrux/svg/FeBlendView;->mIn2:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/horcrux/svg/FeBlendView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46
    .local v1, "in2":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/horcrux/svg/FeBlendView;->mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    sget-object v3, Lcom/horcrux/svg/FilterProperties$FeBlendMode;->MULTIPLY:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    if-ne v2, v3, :cond_0

    .line 47
    new-instance v2, Lcom/horcrux/svg/FeBlendView$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/horcrux/svg/FeBlendView$$ExternalSyntheticLambda0;-><init>()V

    .line 65
    .local v2, "multiply":Lcom/horcrux/svg/CustomFilterFunction;
    invoke-static {v0, v1, v2}, Lcom/horcrux/svg/CustomFilter;->apply(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/horcrux/svg/CustomFilterFunction;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 68
    .end local v2    # "multiply":Lcom/horcrux/svg/CustomFilterFunction;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 69
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 71
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    sget-object v6, Lcom/horcrux/svg/FeBlendView$1;->$SwitchMap$com$horcrux$svg$FilterProperties$FeBlendMode:[I

    iget-object v7, p0, Lcom/horcrux/svg/FeBlendView;->mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    invoke-virtual {v7}, Lcom/horcrux/svg/FilterProperties$FeBlendMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    goto :goto_0

    .line 82
    :pswitch_1
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 83
    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 80
    goto :goto_0

    .line 76
    :pswitch_3
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    nop

    .line 90
    :goto_0
    invoke-virtual {v3, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
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
    iput-object p1, p0, Lcom/horcrux/svg/FeBlendView;->mIn1:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/horcrux/svg/FeBlendView;->invalidate()V

    .line 29
    return-void
.end method

.method public setIn2(Ljava/lang/String;)V
    .locals 0
    .param p1, "in2"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/horcrux/svg/FeBlendView;->mIn2:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/FeBlendView;->invalidate()V

    .line 34
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$FeBlendMode;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FeBlendView;->mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    .line 38
    invoke-virtual {p0}, Lcom/horcrux/svg/FeBlendView;->invalidate()V

    .line 39
    return-void
.end method
