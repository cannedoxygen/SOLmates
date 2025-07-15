.class public abstract Lcom/horcrux/svg/RenderableView;
.super Lcom/horcrux/svg/VirtualView;
.source "RenderableView.java"

# interfaces
.implements Lcom/facebook/react/touch/ReactHitSlopView;


# static fields
.field private static final CAP_BUTT:I = 0x0

.field static final CAP_ROUND:I = 0x1

.field private static final CAP_SQUARE:I = 0x2

.field private static final FILL_RULE_EVENODD:I = 0x0

.field static final FILL_RULE_NONZERO:I = 0x1

.field private static final JOIN_BEVEL:I = 0x2

.field private static final JOIN_MITER:I = 0x0

.field static final JOIN_ROUND:I = 0x1

.field private static final VECTOR_EFFECT_DEFAULT:I = 0x0

.field private static final VECTOR_EFFECT_NON_SCALING_STROKE:I = 0x1

.field static contextElement:Lcom/horcrux/svg/RenderableView;

.field private static final regex:Ljava/util/regex/Pattern;


# instance fields
.field public fill:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public fillOpacity:F

.field public fillRule:Landroid/graphics/Path$FillType;

.field private mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCaller:Lcom/horcrux/svg/RenderableView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentColor:I

.field mFilter:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLastMergedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOriginProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPropList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public stroke:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public strokeDasharray:[Lcom/horcrux/svg/SVGLength;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public strokeDashoffset:F

.field public strokeLinecap:Landroid/graphics/Paint$Cap;

.field public strokeLinejoin:Landroid/graphics/Paint$Join;

.field public strokeMiterlimit:F

.field public strokeOpacity:F

.field public strokeWidth:Lcom/horcrux/svg/SVGLength;

.field public vectorEffect:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-string v0, "[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 45
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    .line 79
    new-instance v1, Lcom/horcrux/svg/SVGLength;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    .line 80
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    .line 81
    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    .line 82
    const/4 v2, 0x0

    iput v2, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    .line 84
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v3, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 85
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v3, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 87
    iput v0, p0, Lcom/horcrux/svg/RenderableView;->mCurrentColor:I

    .line 89
    iput v1, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    .line 90
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    .line 46
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->setPivotX(F)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->setPivotY(F)V

    .line 48
    return-void
.end method

.method private getAttributeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasOwnProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V
    .locals 11
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "opacity"    # F
    .param p3, "colors"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 621
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    .line 622
    .local v0, "colorType":I
    const v1, 0xffffff

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 668
    :pswitch_0
    sget-object v1, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    iget-object v1, v1, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v1, :cond_3

    .line 669
    sget-object v1, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    iget-object v1, v1, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v1}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 661
    :pswitch_1
    sget-object v1, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    iget-object v1, v1, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v1, :cond_3

    .line 662
    sget-object v1, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    iget-object v1, v1, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v1}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 653
    :pswitch_2
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getCurrentColor()I

    move-result v2

    .line 654
    .local v2, "color":I
    ushr-int/lit8 v3, v2, 0x18

    .line 655
    .local v3, "alpha":I
    int-to-float v4, v3

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 656
    shl-int/lit8 v4, v3, 0x18

    and-int/2addr v1, v2

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 657
    goto/16 :goto_2

    .line 645
    .end local v2    # "color":I
    .end local v3    # "alpha":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v1

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/SvgView;->getDefinedBrush(Ljava/lang/String;)Lcom/horcrux/svg/Brush;

    move-result-object v1

    .line 646
    .local v1, "brush":Lcom/horcrux/svg/Brush;
    if-eqz v1, :cond_3

    .line 647
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    iget v3, p0, Lcom/horcrux/svg/RenderableView;->mScale:F

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/horcrux/svg/Brush;->setupPaint(Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    goto :goto_2

    .line 624
    .end local v1    # "brush":Lcom/horcrux/svg/Brush;
    :pswitch_4
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 626
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v4, :cond_0

    .line 627
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .restart local v2    # "color":I
    goto :goto_0

    .line 629
    .end local v2    # "color":I
    :cond_0
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 631
    .restart local v2    # "color":I
    :goto_0
    ushr-int/lit8 v3, v2, 0x18

    .line 632
    .restart local v3    # "alpha":I
    int-to-float v4, v3

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 633
    .local v4, "combined":I
    shl-int/lit8 v5, v4, 0x18

    and-int/2addr v1, v2

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    .end local v2    # "color":I
    .end local v3    # "alpha":I
    .end local v4    # "combined":I
    goto :goto_2

    .line 636
    :cond_1
    nop

    .line 637
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v3, 0x4

    const-wide v5, 0x406fe00000000000L    # 255.0

    if-le v1, v3, :cond_2

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v7

    float-to-double v9, p2

    mul-double/2addr v7, v9

    mul-double/2addr v7, v5

    goto :goto_1

    :cond_2
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-double v7, v1

    :goto_1
    double-to-int v1, v7

    .line 638
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 639
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 640
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v4, v7

    .line 636
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 642
    nop

    .line 674
    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 493
    iget v0, p0, Lcom/horcrux/svg/RenderableView;->mOpacity:F

    mul-float/2addr p3, v0

    .line 495
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 496
    .local v0, "computePaths":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    iput-object v3, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    .line 498
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 500
    :cond_1
    iget v3, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 501
    .local v1, "nonScalingStroke":Z
    :cond_2
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    .line 502
    .local v3, "path":Landroid/graphics/Path;
    if-eqz v1, :cond_3

    .line 503
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 505
    .local v4, "scaled":Landroid/graphics/Path;
    iget-object v5, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/horcrux/svg/RenderableView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 506
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 507
    move-object v3, v4

    .line 510
    .end local v4    # "scaled":Landroid/graphics/Path;
    :cond_3
    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    if-eq v3, v4, :cond_5

    .line 511
    :cond_4
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    .line 512
    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 515
    :cond_5
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 516
    .local v2, "clientRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 517
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->setClientRect(Landroid/graphics/RectF;)V

    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 521
    iget v4, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    mul-float/2addr v4, p3

    invoke-virtual {p0, p2, v4}, Lcom/horcrux/svg/RenderableView;->setupFillPaint(Landroid/graphics/Paint;F)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 522
    if-eqz v0, :cond_6

    .line 523
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    .line 524
    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 526
    :cond_6
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 528
    :cond_7
    iget v4, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    mul-float/2addr v4, p3

    invoke-virtual {p0, p2, v4}, Lcom/horcrux/svg/RenderableView;->setupStrokePaint(Landroid/graphics/Paint;F)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 529
    if-eqz v0, :cond_8

    .line 530
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    .line 531
    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 533
    :cond_8
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 535
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->renderMarkers(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 536
    return-void
.end method

.method getCurrentColor()I
    .locals 2

    .line 135
    iget v0, p0, Lcom/horcrux/svg/RenderableView;->mCurrentColor:I

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lcom/horcrux/svg/RenderableView;->mCurrentColor:I

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mCaller:Lcom/horcrux/svg/RenderableView;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mCaller:Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v0}, Lcom/horcrux/svg/RenderableView;->getCurrentColor()I

    move-result v0

    return v0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 142
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v1, :cond_2

    .line 143
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v1}, Lcom/horcrux/svg/RenderableView;->getCurrentColor()I

    move-result v1

    return v1

    .line 144
    :cond_2
    instance-of v1, v0, Lcom/horcrux/svg/SvgView;

    if-eqz v1, :cond_3

    .line 145
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/SvgView;

    iget v1, v1, Lcom/horcrux/svg/SvgView;->mCurrentColor:I

    return v1

    .line 147
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public getHitSlopRect()Landroid/graphics/Rect;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_0

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
.end method

.method getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 746
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 747
    .local v0, "region":Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 750
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    .line 751
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 752
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    .line 753
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Region;-><init>(IIII)V

    .line 747
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 755
    return-object v0
.end method

.method hitTest([F)I
    .locals 6
    .param p1, "src"    # [F

    .line 680
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/horcrux/svg/RenderableView;->mInvertible:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v2, :cond_1

    .line 685
    return v1

    .line 688
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 689
    .local v0, "dst":[F
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 690
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 691
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 692
    .local v2, "x":I
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 694
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->initBounds()V

    .line 696
    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    .line 698
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    .line 699
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 703
    :cond_3
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getClipPath()Landroid/graphics/Path;

    move-result-object v4

    .line 704
    .local v4, "clipPath":Landroid/graphics/Path;
    if-eqz v4, :cond_4

    .line 705
    iget-object v5, p0, Lcom/horcrux/svg/RenderableView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v5

    if-nez v5, :cond_4

    .line 706
    return v1

    .line 710
    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getId()I

    move-result v1

    return v1

    .line 700
    .end local v4    # "clipPath":Landroid/graphics/Path;
    :cond_5
    :goto_0
    return v1

    .line 681
    .end local v0    # "dst":[F
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_6
    :goto_1
    return v1
.end method

.method initBounds()V
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 715
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    .line 716
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 717
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 720
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    .line 721
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 722
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 725
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokeBounds:Landroid/graphics/RectF;

    .line 726
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mStrokeBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 727
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mStrokeBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 730
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerBounds:Landroid/graphics/RectF;

    .line 731
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMarkerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 732
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMarkerBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    .line 734
    :cond_3
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getClipPath()Landroid/graphics/Path;

    move-result-object v0

    .line 735
    .local v0, "clipPath":Landroid/graphics/Path;
    if-eqz v0, :cond_4

    .line 736
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mClipRegionPath:Landroid/graphics/Path;

    if-eq v2, v0, :cond_4

    .line 737
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mClipRegionPath:Landroid/graphics/Path;

    .line 738
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/horcrux/svg/RenderableView;->mClipBounds:Landroid/graphics/RectF;

    .line 739
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 740
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mClipRegion:Landroid/graphics/Region;

    .line 743
    :cond_4
    return-void
.end method

.method mergeProperties(Lcom/horcrux/svg/RenderableView;)V
    .locals 8
    .param p1, "target"    # Lcom/horcrux/svg/RenderableView;

    .line 763
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->mCaller:Lcom/horcrux/svg/RenderableView;

    .line 764
    invoke-direct {p1}, Lcom/horcrux/svg/RenderableView;->getAttributeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 766
    .local v0, "targetAttributeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 770
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    .line 771
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    .line 773
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 775
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 776
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 777
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 778
    .local v5, "value":Ljava/lang/Object;
    iget-object v6, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-direct {p0, v3}, Lcom/horcrux/svg/RenderableView;->hasOwnProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 781
    iget-object v6, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    nop

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 784
    :catch_0
    move-exception v3

    .line 785
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 789
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    .line 790
    return-void

    .line 767
    :cond_4
    :goto_2
    return-void
.end method

.method render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 364
    .local v3, "mask":Lcom/horcrux/svg/MaskView;
    const/4 v4, 0x0

    .line 366
    .local v4, "filter":Lcom/horcrux/svg/FilterView;
    iget-object v5, v0, Lcom/horcrux/svg/RenderableView;->mMask:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v5

    .line 368
    .local v5, "root":Lcom/horcrux/svg/SvgView;
    iget-object v6, v0, Lcom/horcrux/svg/RenderableView;->mMask:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/horcrux/svg/SvgView;->getDefinedMask(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lcom/horcrux/svg/MaskView;

    .line 370
    .end local v5    # "root":Lcom/horcrux/svg/SvgView;
    :cond_0
    iget-object v5, v0, Lcom/horcrux/svg/RenderableView;->mFilter:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v5

    .line 372
    .restart local v5    # "root":Lcom/horcrux/svg/SvgView;
    iget-object v6, v0, Lcom/horcrux/svg/RenderableView;->mFilter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/horcrux/svg/SvgView;->getDefinedFilter(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/horcrux/svg/FilterView;

    .line 375
    .end local v5    # "root":Lcom/horcrux/svg/SvgView;
    :cond_1
    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual/range {p0 .. p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    move/from16 v10, p3

    goto/16 :goto_4

    .line 376
    :cond_3
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 377
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 378
    .local v6, "bitmapPaint":Landroid/graphics/Paint;
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/horcrux/svg/SvgView;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 383
    .local v7, "backgroundBitmap":Landroid/graphics/Bitmap;
    nop

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 385
    .local v8, "elementBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    .local v9, "elementCanvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 388
    move/from16 v10, p3

    invoke-virtual {v0, v9, v2, v10}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->initBounds()V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v11

    .line 393
    .local v11, "clientRect":Landroid/graphics/RectF;
    instance-of v12, v0, Lcom/horcrux/svg/ImageView;

    if-eqz v12, :cond_4

    if-nez v11, :cond_4

    .line 394
    return-void

    .line 397
    :cond_4
    invoke-virtual {v4, v8, v7, v11}, Lcom/horcrux/svg/FilterView;->applyFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 401
    .local v12, "saveCount":I
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 402
    const/4 v13, 0x0

    invoke-virtual {v1, v8, v13, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 404
    .end local v6    # "bitmapPaint":Landroid/graphics/Paint;
    .end local v7    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "elementBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "elementCanvas":Landroid/graphics/Canvas;
    .end local v11    # "clientRect":Landroid/graphics/RectF;
    .end local v12    # "saveCount":I
    goto :goto_1

    .line 405
    :cond_5
    move/from16 v10, p3

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 406
    invoke-virtual/range {p0 .. p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 409
    :goto_1
    if-eqz v3, :cond_9

    .line 416
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 417
    .local v6, "dstInPaint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 420
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 422
    invoke-virtual {v3}, Lcom/horcrux/svg/MaskView;->getMaskType()Lcom/horcrux/svg/MaskView$MaskType;

    move-result-object v7

    sget-object v8, Lcom/horcrux/svg/MaskView$MaskType;->LUMINANCE:Lcom/horcrux/svg/MaskView$MaskType;

    if-ne v7, v8, :cond_6

    .line 426
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 427
    .local v7, "luminancePaint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/ColorMatrix;

    const/16 v9, 0x14

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-direct {v8, v9}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 432
    .local v8, "luminanceToAlpha":Landroid/graphics/ColorMatrix;
    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v9, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 433
    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 434
    .end local v7    # "luminancePaint":Landroid/graphics/Paint;
    .end local v8    # "luminanceToAlpha":Landroid/graphics/ColorMatrix;
    goto :goto_2

    .line 435
    :cond_6
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 440
    :goto_2
    invoke-virtual {v3}, Lcom/horcrux/svg/MaskView;->getMaskUnits()Lcom/horcrux/svg/Brush$BrushUnits;

    move-result-object v7

    sget-object v8, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    if-ne v7, v8, :cond_7

    .line 441
    iget-object v7, v3, Lcom/horcrux/svg/MaskView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v7}, Lcom/horcrux/svg/RenderableView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 442
    .local v7, "maskX":F
    iget-object v8, v3, Lcom/horcrux/svg/MaskView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v8}, Lcom/horcrux/svg/RenderableView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 443
    .local v8, "maskY":F
    iget-object v9, v3, Lcom/horcrux/svg/MaskView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v9}, Lcom/horcrux/svg/RenderableView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v11

    double-to-float v9, v11

    .line 444
    .local v9, "maskWidth":F
    iget-object v11, v3, Lcom/horcrux/svg/MaskView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v11}, Lcom/horcrux/svg/RenderableView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v11

    double-to-float v11, v11

    .line 445
    .local v11, "maskHeight":F
    new-instance v12, Landroid/graphics/RectF;

    add-float v13, v7, v9

    add-float v14, v8, v11

    invoke-direct {v12, v7, v8, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v7, v12

    .line 446
    .end local v8    # "maskY":F
    .end local v9    # "maskWidth":F
    .end local v11    # "maskHeight":F
    .local v7, "maskBounds":Landroid/graphics/RectF;
    goto :goto_3

    .line 447
    .end local v7    # "maskBounds":Landroid/graphics/RectF;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 448
    .local v7, "clientRect":Landroid/graphics/RectF;
    instance-of v8, v0, Lcom/horcrux/svg/ImageView;

    if-eqz v8, :cond_8

    if-nez v7, :cond_8

    .line 449
    return-void

    .line 451
    :cond_8
    iget-object v8, v0, Lcom/horcrux/svg/RenderableView;->mInvCTM:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 452
    iget-object v8, v3, Lcom/horcrux/svg/MaskView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v8

    double-to-float v8, v8

    .line 453
    .local v8, "maskX":F
    iget-object v9, v3, Lcom/horcrux/svg/MaskView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v0, v9, v11}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v11

    double-to-float v9, v11

    .line 454
    .local v9, "maskY":F
    iget-object v11, v3, Lcom/horcrux/svg/MaskView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v0, v11, v12}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v11

    double-to-float v11, v11

    .line 455
    .local v11, "maskWidth":F
    iget-object v12, v3, Lcom/horcrux/svg/MaskView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-virtual {v0, v12, v13}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v12

    double-to-float v12, v12

    .line 456
    .local v12, "maskHeight":F
    new-instance v13, Landroid/graphics/RectF;

    iget v14, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v8

    iget v15, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v15, v9

    iget v5, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v8

    add-float/2addr v5, v11

    iget v0, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v9

    add-float/2addr v0, v12

    invoke-direct {v13, v14, v15, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v13

    move-object v7, v0

    .line 464
    .end local v8    # "maskX":F
    .end local v9    # "maskY":F
    .end local v11    # "maskWidth":F
    .end local v12    # "maskHeight":F
    .local v7, "maskBounds":Landroid/graphics/RectF;
    :goto_3
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 466
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v2, v0}, Lcom/horcrux/svg/MaskView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 472
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 474
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 476
    invoke-virtual {v3, v1, v2, v0}, Lcom/horcrux/svg/MaskView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    .end local v6    # "dstInPaint":Landroid/graphics/Paint;
    .end local v7    # "maskBounds":Landroid/graphics/RectF;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 489
    :goto_4
    return-void

    nop

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

.method renderMarkers(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 539
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v1

    iget-object v2, v0, Lcom/horcrux/svg/RenderableView;->mMarkerStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/SvgView;->getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v1

    check-cast v1, Lcom/horcrux/svg/MarkerView;

    .line 540
    .local v1, "markerStart":Lcom/horcrux/svg/MarkerView;
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    iget-object v3, v0, Lcom/horcrux/svg/RenderableView;->mMarkerMid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/horcrux/svg/SvgView;->getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v2

    check-cast v2, Lcom/horcrux/svg/MarkerView;

    .line 541
    .local v2, "markerMid":Lcom/horcrux/svg/MarkerView;
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v3

    iget-object v4, v0, Lcom/horcrux/svg/RenderableView;->mMarkerEnd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/horcrux/svg/SvgView;->getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v3

    check-cast v3, Lcom/horcrux/svg/MarkerView;

    .line 542
    .local v3, "markerEnd":Lcom/horcrux/svg/MarkerView;
    iget-object v4, v0, Lcom/horcrux/svg/RenderableView;->elements:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    goto/16 :goto_4

    .line 543
    :cond_1
    :goto_0
    sput-object v0, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    .line 544
    iget-object v4, v0, Lcom/horcrux/svg/RenderableView;->elements:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/horcrux/svg/RNSVGMarkerPosition;->fromPath(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 545
    .local v4, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/RNSVGMarkerPosition;>;"
    iget-object v5, v0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v5}, Lcom/horcrux/svg/RenderableView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v5

    goto :goto_1

    :cond_2
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    :goto_1
    double-to-float v5, v5

    .line 546
    .local v5, "width":F
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    .line 547
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/horcrux/svg/RNSVGMarkerPosition;

    .line 548
    .local v13, "position":Lcom/horcrux/svg/RNSVGMarkerPosition;
    iget-object v14, v13, Lcom/horcrux/svg/RNSVGMarkerPosition;->type:Lcom/horcrux/svg/RNSVGMarkerType;

    .line 549
    .local v14, "type":Lcom/horcrux/svg/RNSVGMarkerType;
    const/4 v7, 0x0

    .line 550
    .local v7, "marker":Lcom/horcrux/svg/MarkerView;
    sget-object v8, Lcom/horcrux/svg/RenderableView$1;->$SwitchMap$com$horcrux$svg$RNSVGMarkerType:[I

    invoke-virtual {v14}, Lcom/horcrux/svg/RNSVGMarkerType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    move-object v15, v7

    goto :goto_3

    .line 560
    :pswitch_0
    move-object v7, v3

    move-object v15, v7

    goto :goto_3

    .line 556
    :pswitch_1
    move-object v7, v2

    .line 557
    move-object v15, v7

    goto :goto_3

    .line 552
    :pswitch_2
    move-object v7, v1

    .line 553
    move-object v15, v7

    .line 563
    .end local v7    # "marker":Lcom/horcrux/svg/MarkerView;
    .local v15, "marker":Lcom/horcrux/svg/MarkerView;
    :goto_3
    if-nez v15, :cond_3

    .line 564
    goto :goto_2

    .line 566
    :cond_3
    move-object v7, v15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object v11, v13

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/horcrux/svg/MarkerView;->renderMarker(Landroid/graphics/Canvas;Landroid/graphics/Paint;FLcom/horcrux/svg/RNSVGMarkerPosition;F)V

    .line 567
    iget-object v7, v15, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    .line 568
    .local v7, "transform":Landroid/graphics/Matrix;
    iget-object v8, v0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual {v15, v9, v10}, Lcom/horcrux/svg/MarkerView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v11

    invoke-virtual {v8, v11, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 569
    .end local v7    # "transform":Landroid/graphics/Matrix;
    .end local v13    # "position":Lcom/horcrux/svg/RNSVGMarkerPosition;
    .end local v14    # "type":Lcom/horcrux/svg/RNSVGMarkerType;
    .end local v15    # "marker":Lcom/horcrux/svg/MarkerView;
    goto :goto_2

    .line 570
    :cond_4
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v6, 0x0

    sput-object v6, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    goto :goto_4

    .line 542
    .end local v4    # "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/RNSVGMarkerPosition;>;"
    .end local v5    # "width":F
    :cond_5
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 572
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resetProperties()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 797
    .local v1, "field":Ljava/lang/reflect/Field;
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v1    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 801
    .end local v0    # "i":I
    :cond_0
    nop

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    .line 804
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    .line 805
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    .line 806
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mCaller:Lcom/horcrux/svg/RenderableView;

    goto :goto_1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/horcrux/svg/RenderableView;->mCurrentColor:I

    .line 130
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 131
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->clearChildCache()V

    .line 132
    return-void
.end method

.method public setFill(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 9
    .param p1, "fill"    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 151
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 157
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 158
    .local v0, "fillType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 160
    .local v1, "fillMap":Lcom/facebook/react/bridge/ReadableMap;
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/RenderableView;->setFill(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 161
    return-void

    .line 165
    .end local v1    # "fillMap":Lcom/facebook/react/bridge/ReadableMap;
    :cond_1
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_2

    .line 167
    :cond_2
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_2

    .line 170
    :cond_3
    new-instance v1, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 171
    .local v1, "arr":Lcom/facebook/react/bridge/JavaOnlyArray;
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .line 172
    sget-object v2, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 173
    .local v2, "m":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 174
    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 176
    .local v4, "parsed":D
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    const/4 v7, 0x3

    if-ge v3, v7, :cond_4

    const-wide v7, 0x406fe00000000000L    # 255.0

    div-double v7, v4, v7

    goto :goto_1

    :cond_4
    move-wide v7, v4

    :goto_1
    invoke-virtual {v1, v7, v8}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    .line 177
    .end local v4    # "parsed":D
    move v3, v6

    goto :goto_0

    .line 178
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_5
    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 180
    .end local v1    # "arr":Lcom/facebook/react/bridge/JavaOnlyArray;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 181
    return-void

    .line 152
    .end local v0    # "fillType":Lcom/facebook/react/bridge/ReadableType;
    :cond_6
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 153
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 154
    return-void
.end method

.method public setFill(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "fill"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 186
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 187
    return-void

    .line 189
    :cond_0
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "type":I
    if-nez v0, :cond_3

    .line 191
    const-string v1, "payload"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 192
    .local v2, "valueType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 194
    :cond_1
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 197
    .end local v2    # "valueType":Lcom/facebook/react/bridge/ReadableType;
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "brushRef"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 200
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 202
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 203
    return-void
.end method

.method public setFillOpacity(F)V
    .locals 0
    .param p1, "fillOpacity"    # F

    .line 206
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    .line 207
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 208
    return-void
.end method

.method public setFillRule(I)V
    .locals 3
    .param p1, "fillRule"    # I

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 218
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillRule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unrecognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :pswitch_0
    goto :goto_0

    .line 213
    :pswitch_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    .line 214
    nop

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 222
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .line 358
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->mFilter:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 360
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 119
    invoke-super {p0, p1}, Lcom/horcrux/svg/VirtualView;->setId(I)V

    .line 120
    invoke-static {p1, p0}, Lcom/horcrux/svg/RenderableViewManager;->setRenderableView(ILcom/horcrux/svg/RenderableView;)V

    .line 121
    return-void
.end method

.method public setPropList(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "propList"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 347
    if-eqz p1, :cond_0

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 355
    return-void
.end method

.method public setStroke(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 10
    .param p1, "strokeColors"    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 225
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 231
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 232
    .local v0, "strokeType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 234
    .local v1, "strokeMap":Lcom/facebook/react/bridge/ReadableMap;
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/RenderableView;->setStroke(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 235
    return-void

    .line 239
    .end local v1    # "strokeMap":Lcom/facebook/react/bridge/ReadableMap;
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 240
    .local v1, "type":Lcom/facebook/react/bridge/ReadableType;
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_2

    .line 242
    :cond_2
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_2

    .line 245
    :cond_3
    new-instance v2, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v2}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 246
    .local v2, "arr":Lcom/facebook/react/bridge/JavaOnlyArray;
    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .line 247
    sget-object v3, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 248
    .local v3, "m":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 249
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 250
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 251
    .local v5, "parsed":D
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    const/4 v8, 0x3

    if-ge v4, v8, :cond_4

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v8, v5, v8

    goto :goto_1

    :cond_4
    move-wide v8, v5

    :goto_1
    invoke-virtual {v2, v8, v9}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    .line 252
    .end local v5    # "parsed":D
    move v4, v7

    goto :goto_0

    .line 253
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_5
    iput-object v2, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 255
    .end local v2    # "arr":Lcom/facebook/react/bridge/JavaOnlyArray;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 256
    return-void

    .line 226
    .end local v0    # "strokeType":Lcom/facebook/react/bridge/ReadableType;
    .end local v1    # "type":Lcom/facebook/react/bridge/ReadableType;
    :cond_6
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 227
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 228
    return-void
.end method

.method public setStroke(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "stroke"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 259
    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 261
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 262
    return-void

    .line 264
    :cond_0
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "type":I
    if-nez v0, :cond_3

    .line 266
    const-string v1, "payload"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 267
    .local v2, "payloadType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 269
    :cond_1
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 272
    .end local v2    # "payloadType":Lcom/facebook/react/bridge/ReadableType;
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "brushRef"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 275
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 278
    return-void
.end method

.method public setStrokeDasharray(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "dynamicStrokeDasharray"    # Lcom/facebook/react/bridge/Dynamic;

    .line 286
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    if-eqz v0, :cond_0

    .line 288
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/horcrux/svg/SVGLength;

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    goto :goto_0

    .line 290
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 293
    return-void
.end method

.method public setStrokeDashoffset(F)V
    .locals 1
    .param p1, "strokeDashoffset"    # F

    .line 296
    iget v0, p0, Lcom/horcrux/svg/RenderableView;->mScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    .line 297
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 298
    return-void
.end method

.method public setStrokeLinecap(I)V
    .locals 3
    .param p1, "strokeLinecap"    # I

    .line 311
    packed-switch p1, :pswitch_data_0

    .line 322
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeLinecap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unrecognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 317
    goto :goto_0

    .line 319
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 320
    goto :goto_0

    .line 313
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 314
    nop

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 326
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStrokeLinejoin(I)V
    .locals 3
    .param p1, "strokeLinejoin"    # I

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 340
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeLinejoin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unrecognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 335
    goto :goto_0

    .line 337
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 338
    goto :goto_0

    .line 331
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 332
    nop

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 344
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStrokeMiterlimit(F)V
    .locals 0
    .param p1, "strokeMiterlimit"    # F

    .line 306
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    .line 307
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 308
    return-void
.end method

.method public setStrokeOpacity(F)V
    .locals 0
    .param p1, "strokeOpacity"    # F

    .line 281
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    .line 282
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 283
    return-void
.end method

.method public setStrokeWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .param p1, "strokeWidth"    # Lcom/facebook/react/bridge/Dynamic;

    .line 301
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/horcrux/svg/SVGLength;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    .line 302
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 303
    return-void
.end method

.method public setVectorEffect(I)V
    .locals 0
    .param p1, "vectorEffect"    # I

    .line 124
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    .line 125
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 126
    return-void
.end method

.method setupFillPaint(Landroid/graphics/Paint;F)Z
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "opacity"    # F

    .line 579
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 581
    const/16 v0, 0x181

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 582
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 583
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    .line 584
    const/4 v0, 0x1

    return v0

    .line 586
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setupStrokePaint(Landroid/graphics/Paint;F)Z
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "opacity"    # F

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 595
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v0}, Lcom/horcrux/svg/RenderableView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    .line 596
    .local v0, "strokeWidth":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 600
    :cond_0
    const/16 v2, 0x181

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 601
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 602
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 603
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 604
    iget v2, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    iget v3, p0, Lcom/horcrux/svg/RenderableView;->mScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 605
    double-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 606
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v2}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    .line 608
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    array-length v2, v2

    .line 610
    .local v2, "length":I
    new-array v3, v2, [F

    .line 611
    .local v3, "intervals":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 612
    iget-object v5, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/horcrux/svg/RenderableView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v3, v4

    .line 611
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 614
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Landroid/graphics/DashPathEffect;

    iget v5, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    invoke-direct {v4, v3, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 617
    .end local v2    # "length":I
    .end local v3    # "intervals":[F
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 597
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method
