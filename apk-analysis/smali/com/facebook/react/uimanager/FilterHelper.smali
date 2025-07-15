.class public final Lcom/facebook/react/uimanager/FilterHelper;
.super Ljava/lang/Object;
.source "FilterHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001a\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u001c\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J2\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001a\u0010\u0017\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001a\u0010\u0019\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006J\u001a\u0010\u001d\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001a\u0010\u001f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010 \u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001a\u0010!\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0007J\u001a\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020(2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0014\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0007J\u0014\u0010+\u001a\u0004\u0018\u00010\u00042\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0007J\u0015\u0010,\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008-\u00a8\u0006."
    }
    d2 = {
        "Lcom/facebook/react/uimanager/FilterHelper;",
        "",
        "()V",
        "createBlurEffect",
        "Landroid/graphics/RenderEffect;",
        "sigma",
        "",
        "chainedEffects",
        "createBrightnessColorMatrix",
        "Landroid/graphics/ColorMatrix;",
        "amount",
        "createBrightnessEffect",
        "createColorMatrixEffect",
        "colorMatrix",
        "createContrastColorMatrix",
        "createContrastEffect",
        "createDropShadowEffect",
        "offsetX",
        "offsetY",
        "blurRadius",
        "color",
        "",
        "createGrayscaleColorMatrix",
        "createGrayscaleEffect",
        "createHueRotateColorMatrix",
        "createHueRotateEffect",
        "createInvertColorMatrix",
        "createInvertEffect",
        "createOpacityColorMatrix",
        "createOpacityEffect",
        "createSaturateColorMatrix",
        "createSaturateEffect",
        "createSepiaColorMatrix",
        "createSepiaEffect",
        "isOnlyColorMatrixFilters",
        "",
        "filters",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "parseAndCreateDropShadowEffect",
        "filterValues",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "parseColorMatrixFilters",
        "Landroid/graphics/ColorMatrixColorFilter;",
        "parseFilters",
        "sigmaToRadius",
        "sigmaToRadius$ReactAndroid_debug",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/FilterHelper;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createBlurEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 101
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createBlurEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createBrightnessColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 2
    .param p1, "amount"    # F

    .line 123
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 124
    .local v0, "matrix":Landroid/graphics/ColorMatrix;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p1, p1, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 125
    return-object v0
.end method

.method public static synthetic createBrightnessEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 115
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 117
    const/4 p2, 0x0

    .line 115
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createBrightnessEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "colorMatrix"    # Landroid/graphics/ColorMatrix;
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 387
    if-nez p2, :cond_0

    .line 388
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-static {v0}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    move-result-object v0

    .line 387
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 390
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-static {v0, p2}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 387
    :goto_0
    return-object v0
.end method

.method static synthetic createColorMatrixEffect$default(Lcom/facebook/react/uimanager/FilterHelper;Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 383
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 385
    const/4 p2, 0x0

    .line 383
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createContrastColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 6
    .param p1, "amount"    # F

    .line 211
    const/16 v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    neg-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 212
    .local v0, "intercept":F
    new-instance v1, Landroid/graphics/ColorMatrix;

    .line 214
    nop

    .line 215
    nop

    .line 214
    nop

    .line 216
    nop

    .line 214
    nop

    .line 217
    nop

    .line 214
    nop

    .line 218
    nop

    .line 214
    nop

    .line 219
    nop

    .line 214
    nop

    .line 220
    nop

    .line 214
    nop

    .line 221
    nop

    .line 214
    nop

    .line 222
    nop

    .line 214
    nop

    .line 223
    nop

    .line 214
    nop

    .line 224
    nop

    .line 214
    nop

    .line 225
    nop

    .line 214
    nop

    .line 226
    nop

    .line 214
    nop

    .line 227
    nop

    .line 214
    nop

    .line 228
    nop

    .line 214
    nop

    .line 229
    nop

    .line 214
    nop

    .line 230
    nop

    .line 214
    nop

    .line 231
    nop

    .line 214
    nop

    .line 232
    nop

    .line 214
    nop

    .line 233
    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput p1, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    const/16 v3, 0xc

    aput p1, v2, v3

    const/16 v3, 0xd

    aput v4, v2, v3

    const/16 v3, 0xe

    aput v0, v2, v3

    const/16 v3, 0xf

    aput v4, v2, v3

    const/16 v3, 0x10

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    aput v3, v2, v5

    const/16 v3, 0x13

    aput v4, v2, v3

    .line 214
    nop

    .line 212
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v1
.end method

.method public static synthetic createContrastEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 201
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 203
    const/4 p2, 0x0

    .line 201
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createContrastEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createDropShadowEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FFFILandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 6

    .line 137
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 142
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_0

    .line 137
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/uimanager/FilterHelper;->createDropShadowEffect(FFFILandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createGrayscaleColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 14
    .param p1, "amount"    # F

    .line 245
    const/4 v0, 0x1

    int-to-float v1, v0

    sub-float/2addr v1, p1

    .line 246
    .local v1, "inverseAmount":F
    new-instance v2, Landroid/graphics/ColorMatrix;

    .line 248
    const v3, 0x3f49930c    # 0.7874f

    mul-float/2addr v3, v1

    const v4, 0x3e59b3d0    # 0.2126f

    add-float/2addr v3, v4

    .line 249
    const v5, 0x3f371759    # 0.7152f

    mul-float v6, v1, v5

    sub-float v6, v5, v6

    .line 248
    nop

    .line 250
    const v7, 0x3d93dd98    # 0.0722f

    mul-float v8, v1, v7

    sub-float v8, v7, v8

    .line 248
    nop

    .line 251
    nop

    .line 248
    nop

    .line 252
    nop

    .line 248
    nop

    .line 253
    mul-float v9, v1, v4

    sub-float v9, v4, v9

    .line 248
    nop

    .line 254
    const v10, 0x3e91d14e    # 0.2848f

    mul-float/2addr v10, v1

    add-float/2addr v10, v5

    .line 248
    nop

    .line 255
    mul-float v11, v1, v7

    sub-float v11, v7, v11

    .line 248
    nop

    .line 256
    nop

    .line 248
    nop

    .line 257
    nop

    .line 248
    nop

    .line 258
    mul-float v12, v1, v4

    sub-float/2addr v4, v12

    .line 248
    nop

    .line 259
    mul-float v12, v1, v5

    sub-float/2addr v5, v12

    .line 248
    nop

    .line 260
    const v12, 0x3f6d844d    # 0.9278f

    mul-float/2addr v12, v1

    add-float/2addr v12, v7

    .line 248
    nop

    .line 261
    nop

    .line 248
    nop

    .line 262
    nop

    .line 248
    nop

    .line 263
    nop

    .line 248
    nop

    .line 264
    nop

    .line 248
    nop

    .line 265
    nop

    .line 248
    nop

    .line 266
    nop

    .line 248
    nop

    .line 267
    const/16 v7, 0x14

    new-array v7, v7, [F

    const/4 v13, 0x0

    aput v3, v7, v13

    aput v6, v7, v0

    const/4 v0, 0x2

    aput v8, v7, v0

    const/4 v0, 0x3

    const/4 v3, 0x0

    aput v3, v7, v0

    const/4 v0, 0x4

    aput v3, v7, v0

    const/4 v0, 0x5

    aput v9, v7, v0

    const/4 v0, 0x6

    aput v10, v7, v0

    const/4 v0, 0x7

    aput v11, v7, v0

    const/16 v0, 0x8

    aput v3, v7, v0

    const/16 v0, 0x9

    aput v3, v7, v0

    const/16 v0, 0xa

    aput v4, v7, v0

    const/16 v0, 0xb

    aput v5, v7, v0

    const/16 v0, 0xc

    aput v12, v7, v0

    const/16 v0, 0xd

    aput v3, v7, v0

    const/16 v0, 0xe

    aput v3, v7, v0

    const/16 v0, 0xf

    aput v3, v7, v0

    const/16 v0, 0x10

    aput v3, v7, v0

    const/16 v0, 0x11

    aput v3, v7, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v4, 0x12

    aput v0, v7, v4

    const/16 v0, 0x13

    aput v3, v7, v0

    .line 248
    nop

    .line 246
    invoke-direct {v2, v7}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v2
.end method

.method public static synthetic createGrayscaleEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 237
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 239
    const/4 p2, 0x0

    .line 237
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createGrayscaleEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createHueRotateColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 18
    .param p1, "amount"    # F

    .line 324
    move/from16 v0, p1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 325
    .local v1, "amountRads":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 326
    .local v3, "cos":F
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 327
    .local v4, "sin":F
    new-instance v5, Landroid/graphics/ColorMatrix;

    .line 329
    const v6, 0x3f4978d5    # 0.787f

    mul-float v7, v3, v6

    const v8, 0x3e5a1cac    # 0.213f

    add-float/2addr v7, v8

    mul-float v9, v4, v8

    sub-float/2addr v7, v9

    .line 330
    const v9, 0x3f370a3d    # 0.715f

    mul-float v10, v3, v9

    sub-float v10, v9, v10

    mul-float v11, v4, v9

    sub-float/2addr v10, v11

    .line 329
    nop

    .line 331
    const v11, 0x3d9374bc    # 0.072f

    mul-float v12, v3, v11

    sub-float v12, v11, v12

    const v13, 0x3f6d9168    # 0.928f

    mul-float v14, v4, v13

    add-float/2addr v12, v14

    .line 329
    nop

    .line 332
    nop

    .line 329
    nop

    .line 333
    nop

    .line 329
    nop

    .line 334
    mul-float v14, v3, v8

    sub-float v14, v8, v14

    const v15, 0x3e126e98    # 0.143f

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    .line 329
    nop

    .line 335
    const v15, 0x3e91eb85    # 0.285f

    mul-float/2addr v15, v3

    add-float/2addr v15, v9

    const v16, 0x3e0f5c29    # 0.14f

    mul-float v16, v16, v4

    add-float v15, v15, v16

    .line 329
    nop

    .line 336
    mul-float v16, v3, v11

    sub-float v16, v11, v16

    const v17, 0x3e90e560    # 0.283f

    mul-float v17, v17, v4

    sub-float v16, v16, v17

    .line 329
    nop

    .line 337
    nop

    .line 329
    nop

    .line 338
    nop

    .line 329
    nop

    .line 339
    mul-float v17, v3, v8

    sub-float v8, v8, v17

    mul-float/2addr v6, v4

    sub-float/2addr v8, v6

    .line 329
    nop

    .line 340
    mul-float v6, v3, v9

    sub-float v6, v9, v6

    mul-float/2addr v9, v4

    add-float/2addr v6, v9

    .line 329
    nop

    .line 341
    mul-float/2addr v13, v3

    add-float/2addr v13, v11

    mul-float/2addr v11, v4

    add-float/2addr v13, v11

    .line 329
    nop

    .line 342
    nop

    .line 329
    nop

    .line 343
    nop

    .line 329
    nop

    .line 344
    nop

    .line 329
    nop

    .line 345
    nop

    .line 329
    nop

    .line 346
    nop

    .line 329
    nop

    .line 347
    nop

    .line 329
    nop

    .line 348
    const/16 v9, 0x14

    new-array v9, v9, [F

    const/4 v11, 0x0

    aput v7, v9, v11

    const/4 v7, 0x1

    aput v10, v9, v7

    const/4 v7, 0x2

    aput v12, v9, v7

    const/4 v7, 0x3

    const/4 v10, 0x0

    aput v10, v9, v7

    const/4 v7, 0x4

    aput v10, v9, v7

    const/4 v7, 0x5

    aput v14, v9, v7

    const/4 v7, 0x6

    aput v15, v9, v7

    const/4 v7, 0x7

    aput v16, v9, v7

    const/16 v7, 0x8

    aput v10, v9, v7

    const/16 v7, 0x9

    aput v10, v9, v7

    const/16 v7, 0xa

    aput v8, v9, v7

    const/16 v7, 0xb

    aput v6, v9, v7

    const/16 v6, 0xc

    aput v13, v9, v6

    const/16 v6, 0xd

    aput v10, v9, v6

    const/16 v6, 0xe

    aput v10, v9, v6

    const/16 v6, 0xf

    aput v10, v9, v6

    const/16 v6, 0x10

    aput v10, v9, v6

    const/16 v6, 0x11

    aput v10, v9, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x12

    aput v6, v9, v7

    const/16 v6, 0x13

    aput v10, v9, v6

    .line 329
    nop

    .line 327
    invoke-direct {v5, v9}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v5
.end method

.method public static synthetic createHueRotateEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 316
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 318
    const/4 p2, 0x0

    .line 316
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createHueRotateEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createInvertColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 7
    .param p1, "amount"    # F

    .line 357
    const/4 v0, 0x1

    int-to-float v1, v0

    const/4 v2, 0x2

    int-to-float v3, v2

    mul-float/2addr v3, p1

    sub-float/2addr v1, v3

    .line 358
    .local v1, "slope":F
    const/16 v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 359
    .local v3, "intercept":F
    new-instance v4, Landroid/graphics/ColorMatrix;

    .line 361
    nop

    .line 362
    nop

    .line 361
    nop

    .line 363
    nop

    .line 361
    nop

    .line 364
    nop

    .line 361
    nop

    .line 365
    nop

    .line 361
    nop

    .line 366
    nop

    .line 361
    nop

    .line 367
    nop

    .line 361
    nop

    .line 368
    nop

    .line 361
    nop

    .line 369
    nop

    .line 361
    nop

    .line 370
    nop

    .line 361
    nop

    .line 371
    nop

    .line 361
    nop

    .line 372
    nop

    .line 361
    nop

    .line 373
    nop

    .line 361
    nop

    .line 374
    nop

    .line 361
    nop

    .line 375
    nop

    .line 361
    nop

    .line 376
    nop

    .line 361
    nop

    .line 377
    nop

    .line 361
    nop

    .line 378
    nop

    .line 361
    nop

    .line 379
    nop

    .line 361
    nop

    .line 380
    const/16 v5, 0x14

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x0

    aput v6, v5, v0

    aput v6, v5, v2

    const/4 v0, 0x3

    aput v6, v5, v0

    const/4 v0, 0x4

    aput v3, v5, v0

    const/4 v0, 0x5

    aput v6, v5, v0

    const/4 v0, 0x6

    aput v1, v5, v0

    const/4 v0, 0x7

    aput v6, v5, v0

    const/16 v0, 0x8

    aput v6, v5, v0

    const/16 v0, 0x9

    aput v3, v5, v0

    const/16 v0, 0xa

    aput v6, v5, v0

    const/16 v0, 0xb

    aput v6, v5, v0

    const/16 v0, 0xc

    aput v1, v5, v0

    const/16 v0, 0xd

    aput v6, v5, v0

    const/16 v0, 0xe

    aput v3, v5, v0

    const/16 v0, 0xf

    aput v6, v5, v0

    const/16 v0, 0x10

    aput v6, v5, v0

    const/16 v0, 0x11

    aput v6, v5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v2, 0x12

    aput v0, v5, v2

    const/16 v0, 0x13

    aput v6, v5, v0

    .line 361
    nop

    .line 359
    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v4
.end method

.method public static synthetic createInvertEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 352
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createInvertEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createOpacityEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 129
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 131
    const/4 p2, 0x0

    .line 129
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createOpacityEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createSaturateColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 1
    .param p1, "amount"    # F

    .line 310
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 311
    .local v0, "matrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 312
    return-object v0
.end method

.method public static synthetic createSaturateEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 302
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 304
    const/4 p2, 0x0

    .line 302
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createSaturateEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method private final createSepiaColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 14
    .param p1, "amount"    # F

    .line 276
    const/4 v0, 0x1

    int-to-float v1, v0

    sub-float/2addr v1, p1

    .line 277
    .local v1, "inverseAmount":F
    new-instance v2, Landroid/graphics/ColorMatrix;

    .line 279
    const v3, 0x3f1b645a    # 0.607f

    mul-float/2addr v3, v1

    const v4, 0x3ec9374c    # 0.393f

    add-float/2addr v3, v4

    .line 280
    const v4, 0x3f44dd2f    # 0.769f

    mul-float v5, v1, v4

    sub-float/2addr v4, v5

    .line 279
    nop

    .line 281
    const v5, 0x3e418937    # 0.189f

    mul-float v6, v1, v5

    sub-float/2addr v5, v6

    .line 279
    nop

    .line 282
    nop

    .line 279
    nop

    .line 283
    nop

    .line 279
    nop

    .line 284
    const v6, 0x3eb2b021    # 0.349f

    mul-float v7, v1, v6

    sub-float/2addr v6, v7

    .line 279
    nop

    .line 285
    const v7, 0x3ea0c49c    # 0.314f

    mul-float/2addr v7, v1

    const v8, 0x3f2f9db2    # 0.686f

    add-float/2addr v7, v8

    .line 279
    nop

    .line 286
    const v8, 0x3e2c0831    # 0.168f

    mul-float v9, v1, v8

    sub-float/2addr v8, v9

    .line 279
    nop

    .line 287
    nop

    .line 279
    nop

    .line 288
    nop

    .line 279
    nop

    .line 289
    const v9, 0x3e8b4396    # 0.272f

    mul-float v10, v1, v9

    sub-float/2addr v9, v10

    .line 279
    nop

    .line 290
    const v10, 0x3f08b439    # 0.534f

    mul-float v11, v1, v10

    sub-float/2addr v10, v11

    .line 279
    nop

    .line 291
    const v11, 0x3f5e76c9    # 0.869f

    mul-float/2addr v11, v1

    const v12, 0x3e0624dd    # 0.131f

    add-float/2addr v11, v12

    .line 279
    nop

    .line 292
    nop

    .line 279
    nop

    .line 293
    nop

    .line 279
    nop

    .line 294
    nop

    .line 279
    nop

    .line 295
    nop

    .line 279
    nop

    .line 296
    nop

    .line 279
    nop

    .line 297
    nop

    .line 279
    nop

    .line 298
    const/16 v12, 0x14

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v3, v12, v13

    aput v4, v12, v0

    const/4 v0, 0x2

    aput v5, v12, v0

    const/4 v0, 0x3

    const/4 v3, 0x0

    aput v3, v12, v0

    const/4 v0, 0x4

    aput v3, v12, v0

    const/4 v0, 0x5

    aput v6, v12, v0

    const/4 v0, 0x6

    aput v7, v12, v0

    const/4 v0, 0x7

    aput v8, v12, v0

    const/16 v0, 0x8

    aput v3, v12, v0

    const/16 v0, 0x9

    aput v3, v12, v0

    const/16 v0, 0xa

    aput v9, v12, v0

    const/16 v0, 0xb

    aput v10, v12, v0

    const/16 v0, 0xc

    aput v11, v12, v0

    const/16 v0, 0xd

    aput v3, v12, v0

    const/16 v0, 0xe

    aput v3, v12, v0

    const/16 v0, 0xf

    aput v3, v12, v0

    const/16 v0, 0x10

    aput v3, v12, v0

    const/16 v0, 0x11

    aput v3, v12, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v4, 0x12

    aput v0, v12, v4

    const/16 v0, 0x13

    aput v3, v12, v0

    .line 279
    nop

    .line 277
    invoke-direct {v2, v12}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v2
.end method

.method public static synthetic createSepiaEffect$default(Lcom/facebook/react/uimanager/FilterHelper;FLandroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 271
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createSepiaEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public static final isOnlyColorMatrixFilters(Lcom/facebook/react/bridge/ReadableArray;)Z
    .locals 6
    .param p0, "filters"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 86
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 91
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMap;->getEntryIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    .local v3, "filter":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 93
    .local v4, "filterName":Ljava/lang/String;
    const-string v5, "blur"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "dropShadow"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 90
    .end local v3    # "filter":Ljava/util/Map$Entry;
    .end local v4    # "filterName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .restart local v3    # "filter":Ljava/util/Map$Entry;
    .restart local v4    # "filterName":Ljava/lang/String;
    :cond_2
    :goto_1
    return v0

    .line 97
    .end local v1    # "i":I
    .end local v3    # "filter":Ljava/util/Map$Entry;
    .end local v4    # "filterName":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_4
    :goto_2
    return v0
.end method

.method public static synthetic parseAndCreateDropShadowEffect$default(Lcom/facebook/react/uimanager/FilterHelper;Lcom/facebook/react/bridge/ReadableMap;Landroid/graphics/RenderEffect;ILjava/lang/Object;)Landroid/graphics/RenderEffect;
    .locals 0

    .line 179
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 181
    const/4 p2, 0x0

    .line 179
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/FilterHelper;->parseAndCreateDropShadowEffect(Lcom/facebook/react/bridge/ReadableMap;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public static final parseColorMatrixFilters(Lcom/facebook/react/bridge/ReadableArray;)Landroid/graphics/ColorMatrixColorFilter;
    .locals 8
    .param p0, "filters"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 57
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 60
    .local v0, "resultColorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 61
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMap;->getEntryIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 62
    .local v3, "filter":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    .local v4, "filterName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    double-to-float v5, v5

    .line 66
    .local v5, "amount":F
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto/16 :goto_2

    :sswitch_0
    const-string v6, "hueRotate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createHueRotateColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    goto :goto_1

    .line 66
    :sswitch_1
    const-string v6, "brightness"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createBrightnessColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    goto :goto_1

    .line 66
    :sswitch_2
    const-string/jumbo v6, "sepia"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createSepiaColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    goto :goto_1

    .line 66
    :sswitch_3
    const-string v6, "contrast"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createContrastColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    goto :goto_1

    .line 66
    :sswitch_4
    const-string v6, "grayscale"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createGrayscaleColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    goto :goto_1

    .line 66
    :sswitch_5
    const-string v6, "invert"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createInvertColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    goto :goto_1

    .line 66
    :sswitch_6
    const-string/jumbo v6, "opacity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-virtual {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createOpacityColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    goto :goto_1

    .line 66
    :sswitch_7
    const-string/jumbo v6, "saturate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    sget-object v6, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-direct {v6, v5}, Lcom/facebook/react/uimanager/FilterHelper;->createSaturateColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v6

    .line 66
    :goto_1
    nop

    .line 65
    nop

    .line 78
    .local v6, "tempColorMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, v6}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 60
    .end local v3    # "filter":Ljava/util/Map$Entry;
    .end local v4    # "filterName":Ljava/lang/String;
    .end local v5    # "amount":F
    .end local v6    # "tempColorMatrix":Landroid/graphics/ColorMatrix;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 75
    .restart local v3    # "filter":Ljava/util/Map$Entry;
    .restart local v4    # "filterName":Ljava/lang/String;
    .restart local v5    # "amount":F
    :goto_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid color matrix filter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v1    # "i":I
    .end local v3    # "filter":Ljava/util/Map$Entry;
    .end local v4    # "filterName":Ljava/lang/String;
    .end local v5    # "amount":F
    :cond_2
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7e043151 -> :sswitch_7
        -0x4b8807f5 -> :sswitch_6
        -0x468de02a -> :sswitch_5
        -0x35f77b39 -> :sswitch_4
        -0x21caecfe -> :sswitch_3
        0x68429f6 -> :sswitch_2
        0x26a22c51 -> :sswitch_1
        0x26cbc473 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final parseFilters(Lcom/facebook/react/bridge/ReadableArray;)Landroid/graphics/RenderEffect;
    .locals 8
    .param p0, "filters"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 29
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    .local v0, "chainedEffects":Landroid/graphics/RenderEffect;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 32
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMap;->getEntryIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    .local v3, "filter":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    .local v4, "filterName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.Double"

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto/16 :goto_2

    :sswitch_0
    const-string v5, "dropShadow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "null cannot be cast to non-null type com.facebook.react.bridge.ReadableMap"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->parseAndCreateDropShadowEffect(Lcom/facebook/react/bridge/ReadableMap;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto/16 :goto_1

    .line 36
    :sswitch_1
    const-string v5, "hueRotate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createHueRotateEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto/16 :goto_1

    .line 36
    :sswitch_2
    const-string v5, "brightness"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createBrightnessEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto/16 :goto_1

    .line 36
    :sswitch_3
    const-string/jumbo v5, "sepia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createSepiaEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto/16 :goto_1

    .line 36
    :sswitch_4
    const-string v5, "blur"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createBlurEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto/16 :goto_1

    .line 36
    :sswitch_5
    const-string v5, "contrast"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createContrastEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto/16 :goto_1

    .line 36
    :sswitch_6
    const-string v5, "grayscale"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 40
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createGrayscaleEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto :goto_1

    .line 36
    :sswitch_7
    const-string v5, "invert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createInvertEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto :goto_1

    .line 36
    :sswitch_8
    const-string/jumbo v5, "opacity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createOpacityEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    goto :goto_1

    .line 36
    :sswitch_9
    const-string/jumbo v5, "saturate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    sget-object v5, Lcom/facebook/react/uimanager/FilterHelper;->INSTANCE:Lcom/facebook/react/uimanager/FilterHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6, v0}, Lcom/facebook/react/uimanager/FilterHelper;->createSaturateEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    .line 35
    :goto_1
    move-object v0, v5

    .line 31
    .end local v3    # "filter":Ljava/util/Map$Entry;
    .end local v4    # "filterName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 49
    .restart local v3    # "filter":Ljava/util/Map$Entry;
    .restart local v4    # "filterName":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid filter name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v1    # "i":I
    .end local v3    # "filter":Ljava/util/Map$Entry;
    .end local v4    # "filterName":Ljava/lang/String;
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e043151 -> :sswitch_9
        -0x4b8807f5 -> :sswitch_8
        -0x468de02a -> :sswitch_7
        -0x35f77b39 -> :sswitch_6
        -0x21caecfe -> :sswitch_5
        0x2e3067 -> :sswitch_4
        0x68429f6 -> :sswitch_3
        0x26a22c51 -> :sswitch_2
        0x26cbc473 -> :sswitch_1
        0x360f64ef -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final createBlurEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 4
    .param p1, "sigma"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 102
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->sigmaToRadius$ReactAndroid_debug(F)F

    move-result v0

    .line 107
    .local v0, "radius":F
    if-nez p2, :cond_1

    .line 108
    sget-object v1, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    invoke-static {v0, v0, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    sget-object v1, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    invoke-static {v0, v0, p2, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1
.end method

.method public final createBrightnessEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 119
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createBrightnessColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createContrastEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 205
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createContrastColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createDropShadowEffect(FFFILandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 6
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "blurRadius"    # F
    .param p4, "color"    # I
    .param p5, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "identity":Landroid/graphics/RenderEffect;
    const/4 v1, 0x0

    .line 151
    .local v1, "offsetEffect":Landroid/graphics/RenderEffect;
    const-string v2, "createOffsetEffect(...)"

    const/4 v3, 0x0

    if-nez p5, :cond_0

    .line 152
    invoke-static {v3, v3}, Landroid/graphics/RenderEffect;->createOffsetEffect(FF)Landroid/graphics/RenderEffect;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 153
    invoke-static {p1, p2}, Landroid/graphics/RenderEffect;->createOffsetEffect(FF)Landroid/graphics/RenderEffect;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v3, v3, p5}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 156
    invoke-static {p1, p2, p5}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v3

    .line 166
    :goto_0
    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v2, p4, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    check-cast v2, Landroid/graphics/ColorFilter;

    .line 165
    invoke-static {v2, v1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v2

    const-string v3, "createColorFilterEffect(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    nop

    .line 168
    .local v2, "colorEffect":Landroid/graphics/RenderEffect;
    sget-object v3, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    invoke-static {p3, p3, v2, v3}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v3

    const-string v4, "createBlurEffect(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    nop

    .line 176
    .local v3, "blurEffect":Landroid/graphics/RenderEffect;
    sget-object v4, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-static {v3, v0, v4}, Landroid/graphics/RenderEffect;->createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;

    move-result-object v4

    const-string v5, "createBlendModeEffect(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method public final createGrayscaleEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 241
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createGrayscaleColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createHueRotateEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 320
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createHueRotateColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createInvertEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 353
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createInvertColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createOpacityColorMatrix(F)Landroid/graphics/ColorMatrix;
    .locals 2
    .param p1, "amount"    # F

    .line 195
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 196
    .local v0, "matrix":Landroid/graphics/ColorMatrix;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 197
    return-object v0
.end method

.method public final createOpacityEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 133
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createOpacityColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createSaturateEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 306
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createSaturateColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createSepiaEffect(FLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1, "amount"    # F
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    .line 272
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/FilterHelper;->createSepiaColorMatrix(F)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/FilterHelper;->createColorMatrixEffect(Landroid/graphics/ColorMatrix;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v0

    return-object v0
.end method

.method public final parseAndCreateDropShadowEffect(Lcom/facebook/react/bridge/ReadableMap;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 9
    .param p1, "filterValues"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "chainedEffects"    # Landroid/graphics/RenderEffect;

    const-string v0, "filterValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    const-string/jumbo v1, "offsetX"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(D)F

    move-result v0

    .line 184
    .local v0, "offsetX":F
    sget-object v1, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    const-string/jumbo v2, "offsetY"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(D)F

    move-result v1

    .line 185
    .local v1, "offsetY":F
    const-string v2, "color"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, -0x1000000

    :goto_0
    move v7, v2

    .line 187
    .local v7, "color":I
    const-string/jumbo v2, "standardDeviation"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/facebook/react/uimanager/FilterHelper;->sigmaToRadius$ReactAndroid_debug(F)F

    move-result v2

    move v6, v2

    goto :goto_1

    .line 189
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    .line 187
    :goto_1
    nop

    .line 186
    nop

    .line 191
    .local v6, "radius":F
    move-object v3, p0

    move v4, v0

    move v5, v1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/react/uimanager/FilterHelper;->createDropShadowEffect(FFFILandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v2

    return-object v2
.end method

.method public final sigmaToRadius$ReactAndroid_debug(F)F
    .locals 3
    .param p1, "sigma"    # F

    .line 398
    const v0, 0x3f13cd36

    .line 399
    .local v0, "sigmaToRadiusRatio":F
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    return v1
.end method
