.class public final Lcom/facebook/react/uimanager/PixelUtil;
.super Ljava/lang/Object;
.source "PixelUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004H\u0007J\n\u0010\u000b\u001a\u00020\u0004*\u00020\u0008J\n\u0010\u000b\u001a\u00020\u0004*\u00020\u0004J\n\u0010\u000c\u001a\u00020\u0004*\u00020\u0008J\n\u0010\u000c\u001a\u00020\u0004*\u00020\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/PixelUtil;",
        "",
        "()V",
        "getDisplayMetricDensity",
        "",
        "toDIPFromPixel",
        "value",
        "toPixelFromDIP",
        "",
        "toPixelFromSP",
        "maxFontScale",
        "dpToPx",
        "pxToDp",
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
.field public static final INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/PixelUtil;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/PixelUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayMetricDensity()F
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 69
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static final toDIPFromPixel(F)F
    .locals 1
    .param p0, "value"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 59
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    return v0
.end method

.method public static final toPixelFromDIP(D)F
    .locals 1
    .param p0, "value"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 29
    double-to-float v0, p0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    return v0
.end method

.method public static final toPixelFromDIP(F)F
    .locals 2
    .param p0, "value"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 18
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 23
    :cond_0
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 22
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static final toPixelFromSP(D)F
    .locals 4
    .param p0, "value"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 53
    double-to-float v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP$default(FFILjava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static final toPixelFromSP(F)F
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP$default(FFILjava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static final toPixelFromSP(FF)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "maxFontScale"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 36
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 43
    .local v1, "scaledValue":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 44
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p0

    mul-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2

    .line 47
    :cond_1
    return v1
.end method

.method public static synthetic toPixelFromSP$default(FFILjava/lang/Object;)F
    .locals 0

    .line 35
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final dpToPx(D)F
    .locals 1
    .param p1, "$this$dpToPx"    # D

    .line 74
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    return v0
.end method

.method public final dpToPx(F)F
    .locals 1
    .param p1, "$this$dpToPx"    # F

    .line 72
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    return v0
.end method

.method public final pxToDp(D)F
    .locals 1
    .param p1, "$this$pxToDp"    # D

    .line 78
    double-to-float v0, p1

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    return v0
.end method

.method public final pxToDp(F)F
    .locals 1
    .param p1, "$this$pxToDp"    # F

    .line 76
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    return v0
.end method
