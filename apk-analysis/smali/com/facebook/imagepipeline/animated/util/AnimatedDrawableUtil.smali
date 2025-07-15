.class public final Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u000e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;",
        "",
        "()V",
        "fixFrameDurations",
        "",
        "frameDurationMs",
        "",
        "getFrameForTimestampMs",
        "",
        "frameTimestampsMs",
        "timestampMs",
        "getFrameTimeStampsFromDurations",
        "frameDurationsMs",
        "getSizeOfBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getTotalDurationFromFrameDurations",
        "Companion",
        "animated-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

.field private static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field private static final MIN_FRAME_DURATION_MS:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->Companion:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isOutsideRange(III)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->Companion:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;->isOutsideRange(III)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final fixFrameDurations([I)V
    .locals 4
    .param p1, "frameDurationMs"    # [I

    const-string v0, "frameDurationMs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 30
    aget v2, p1, v0

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 31
    const/16 v2, 0x64

    aput v2, p1, v0

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final getFrameForTimestampMs([II)I
    .locals 2
    .param p1, "frameTimestampsMs"    # [I
    .param p2, "timestampMs"    # I

    .line 76
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 77
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 78
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 80
    :cond_0
    move v1, v0

    .line 77
    :goto_0
    return v1
.end method

.method public final getFrameTimeStampsFromDurations([I)[I
    .locals 5
    .param p1, "frameDurationsMs"    # [I

    const-string v0, "frameDurationsMs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    array-length v0, p1

    new-array v0, v0, [I

    .line 59
    .local v0, "frameTimestampsMs":[I
    const/4 v1, 0x0

    .line 60
    .local v1, "accumulatedDurationMs":I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 61
    aput v1, v0, v2

    .line 62
    aget v4, p1, v2

    add-int/2addr v1, v4

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public final getSizeOfBitmap(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 90
    return v0
.end method

.method public final getTotalDurationFromFrameDurations([I)I
    .locals 4
    .param p1, "frameDurationMs"    # [I

    const-string v0, "frameDurationMs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "totalMs":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 45
    aget v3, p1, v1

    add-int/2addr v0, v3

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return v0
.end method
