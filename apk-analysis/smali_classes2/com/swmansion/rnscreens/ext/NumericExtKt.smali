.class public final Lcom/swmansion/rnscreens/ext/NumericExtKt;
.super Ljava/lang/Object;
.source "NumericExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "equalWithRespectToEps",
        "",
        "",
        "other",
        "eps",
        "react-native-screens_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final equalWithRespectToEps(FFF)Z
    .locals 1
    .param p0, "$this$equalWithRespectToEps"    # F
    .param p1, "other"    # F
    .param p2, "eps"    # F

    .line 12
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic equalWithRespectToEps$default(FFFILjava/lang/Object;)Z
    .locals 0

    .line 9
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 11
    const p2, 0x38d1b717    # 1.0E-4f

    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/swmansion/rnscreens/ext/NumericExtKt;->equalWithRespectToEps(FFF)Z

    move-result p0

    return p0
.end method
