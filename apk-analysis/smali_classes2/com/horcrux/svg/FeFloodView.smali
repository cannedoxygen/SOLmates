.class Lcom/horcrux/svg/FeFloodView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeFloodView.java"


# static fields
.field private static final regex:Ljava/util/regex/Pattern;


# instance fields
.field public floodColor:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public floodOpacity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/FeFloodView;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 27
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/horcrux/svg/FeFloodView;->floodOpacity:F

    .line 28
    return-void
.end method

.method private setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V
    .locals 11
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "opacity"    # F
    .param p3, "colors"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    .line 106
    .local v0, "colorType":I
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 108
    :pswitch_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 110
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_0

    .line 111
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "color":I
    goto :goto_0

    .line 113
    .end local v1    # "color":I
    :cond_0
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v1

    .line 115
    .restart local v1    # "color":I
    :goto_0
    ushr-int/lit8 v2, v1, 0x18

    .line 116
    .local v2, "alpha":I
    int-to-float v3, v2

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 117
    .local v3, "combined":I
    shl-int/lit8 v4, v3, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    .end local v1    # "color":I
    .end local v2    # "alpha":I
    .end local v3    # "combined":I
    goto :goto_2

    .line 120
    :cond_1
    nop

    .line 121
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v4, 0x4

    const-wide v5, 0x406fe00000000000L    # 255.0

    if-le v1, v4, :cond_2

    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

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

    .line 122
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 123
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v2, v7

    .line 124
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v4, v7

    .line 120
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 129
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
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

    .line 93
    .local p1, "resultsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    nop

    .line 94
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "floodBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    .local v1, "floodCanvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 97
    .local v2, "paint":Landroid/graphics/Paint;
    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 98
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget v3, p0, Lcom/horcrux/svg/FeFloodView;->floodOpacity:F

    iget-object v4, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/horcrux/svg/FeFloodView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    .line 100
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 101
    return-object v0
.end method

.method public setFloodColor(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 10
    .param p1, "color"    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 37
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 38
    .local v0, "strokeType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 40
    .local v1, "colorMap":Lcom/facebook/react/bridge/ReadableMap;
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/FeFloodView;->setFloodColor(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 41
    return-void

    .line 45
    .end local v1    # "colorMap":Lcom/facebook/react/bridge/ReadableMap;
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 46
    .local v1, "type":Lcom/facebook/react/bridge/ReadableType;
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 47
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

    iput-object v2, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_2

    .line 48
    :cond_2
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_2

    .line 51
    :cond_3
    new-instance v2, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v2}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 52
    .local v2, "arr":Lcom/facebook/react/bridge/JavaOnlyArray;
    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .line 53
    sget-object v3, Lcom/horcrux/svg/FeFloodView;->regex:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 54
    .local v3, "m":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 55
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 57
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

    .line 58
    .end local v5    # "parsed":D
    move v4, v7

    goto :goto_0

    .line 59
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_5
    iput-object v2, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 61
    .end local v2    # "arr":Lcom/facebook/react/bridge/JavaOnlyArray;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    .line 62
    return-void

    .line 32
    .end local v0    # "strokeType":Lcom/facebook/react/bridge/ReadableType;
    .end local v1    # "type":Lcom/facebook/react/bridge/ReadableType;
    :cond_6
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    .line 34
    return-void
.end method

.method public setFloodColor(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "color"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 67
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    .line 68
    return-void

    .line 70
    :cond_0
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "type":I
    if-nez v0, :cond_3

    .line 72
    const-string v1, "payload"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 73
    .local v2, "payloadType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 74
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

    iput-object v1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 75
    :cond_1
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 78
    .end local v2    # "payloadType":Lcom/facebook/react/bridge/ReadableType;
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "brushRef"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 81
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 83
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    .line 84
    return-void
.end method

.method public setFloodOpacity(F)V
    .locals 0
    .param p1, "opacity"    # F

    .line 87
    iput p1, p0, Lcom/horcrux/svg/FeFloodView;->floodOpacity:F

    .line 88
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    .line 89
    return-void
.end method
