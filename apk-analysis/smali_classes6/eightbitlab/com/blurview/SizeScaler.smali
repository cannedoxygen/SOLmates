.class public Leightbitlab/com/blurview/SizeScaler;
.super Ljava/lang/Object;
.source "SizeScaler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leightbitlab/com/blurview/SizeScaler$Size;
    }
.end annotation


# static fields
.field private static final ROUNDING_VALUE:I = 0x40


# instance fields
.field private final scaleFactor:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Leightbitlab/com/blurview/SizeScaler;->scaleFactor:F

    .line 17
    return-void
.end method

.method private downscaleSize(F)I
    .locals 2
    .param p1, "value"    # F

    .line 45
    iget v0, p0, Leightbitlab/com/blurview/SizeScaler;->scaleFactor:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private roundSize(I)I
    .locals 1
    .param p1, "value"    # I

    .line 38
    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_0

    .line 39
    return p1

    .line 41
    :cond_0
    rem-int/lit8 v0, p1, 0x40

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x40

    return v0
.end method


# virtual methods
.method isZeroSized(II)Z
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .line 31
    int-to-float v0, p2

    invoke-direct {p0, v0}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result v0

    if-eqz v0, :cond_1

    int-to-float v0, p1

    invoke-direct {p0, v0}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method scale(II)Leightbitlab/com/blurview/SizeScaler$Size;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 20
    int-to-float v0, p1

    invoke-direct {p0, v0}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result v0

    .line 21
    .local v0, "nonRoundedScaledWidth":I
    invoke-direct {p0, v0}, Leightbitlab/com/blurview/SizeScaler;->roundSize(I)I

    move-result v1

    .line 23
    .local v1, "scaledWidth":I
    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 25
    .local v2, "roundingScaleFactor":F
    int-to-float v3, p2

    div-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 27
    .local v3, "scaledHeight":I
    new-instance v4, Leightbitlab/com/blurview/SizeScaler$Size;

    invoke-direct {v4, v1, v3, v2}, Leightbitlab/com/blurview/SizeScaler$Size;-><init>(IIF)V

    return-object v4
.end method
