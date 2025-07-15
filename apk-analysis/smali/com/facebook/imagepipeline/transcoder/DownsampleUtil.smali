.class public final Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;
.super Ljava/lang/Object;
.source "DownsampleUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J*\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0006H\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0006H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;",
        "",
        "()V",
        "DEFAULT_SAMPLE_SIZE",
        "",
        "INTERVAL_ROUNDING",
        "",
        "determineDownsampleRatio",
        "rotationOptions",
        "Lcom/facebook/imagepipeline/common/RotationOptions;",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "encodedImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "determineSampleSize",
        "maxBitmapSize",
        "determineSampleSizeJPEG",
        "pixelSize",
        "maxBitmapSizeInBytes",
        "getRotationAngle",
        "ratioToSampleSize",
        "ratio",
        "ratioToSampleSizeJPEG",
        "roundToPowerOfTwo",
        "sampleSize",
        "imagepipeline-base_release"
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
.field public static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field public static final INSTANCE:Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;

.field private static final INTERVAL_ROUNDING:F = 0.33333334f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->INSTANCE:Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final determineDownsampleRatio(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)F
    .locals 18
    .param p0, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p1, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .param p2, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "rotationOptions"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "encodedImage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 88
    if-eqz v1, :cond_5

    .line 89
    iget v3, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lez v3, :cond_5

    .line 90
    iget v3, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lez v3, :cond_5

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v3

    if-eqz v3, :cond_5

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    .line 95
    :cond_0
    sget-object v3, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->INSTANCE:Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;

    invoke-direct {v3, v0, v2}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v3

    .line 96
    .local v3, "rotationAngle":I
    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 97
    .local v4, "swapDimensions":Z
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v5

    .line 98
    .local v5, "widthAfterRotation":I
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v6

    goto :goto_3

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v6

    .line 99
    .local v6, "heightAfterRotation":I
    :goto_3
    iget v7, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 100
    .local v7, "widthRatio":F
    iget v8, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 101
    .local v8, "heightRatio":F
    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v9

    .line 103
    .local v9, "ratio":F
    nop

    .line 104
    nop

    .line 106
    iget v10, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 107
    iget v10, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 106
    nop

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 106
    nop

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 106
    nop

    .line 110
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 106
    nop

    .line 111
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 106
    nop

    .line 112
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v10

    .line 106
    nop

    .line 102
    const-string v11, "DownsampleUtil"

    const-string v12, "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f"

    invoke-static {v11, v12, v10}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return v9

    .line 93
    .end local v3    # "rotationAngle":I
    .end local v4    # "swapDimensions":Z
    .end local v5    # "widthAfterRotation":I
    .end local v6    # "heightAfterRotation":I
    .end local v7    # "widthRatio":F
    .end local v8    # "heightRatio":F
    .end local v9    # "ratio":F
    :cond_5
    :goto_4
    const/high16 v3, 0x3f800000    # 1.0f

    return v3

    .line 87
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Check failed."

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I
    .locals 6
    .param p0, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p1, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .param p2, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p3, "maxBitmapSize"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "rotationOptions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineDownsampleRatio(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)F

    move-result v0

    .line 46
    .local v0, "ratio":F
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v2, :cond_1

    .line 47
    invoke-static {v0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->ratioToSampleSizeJPEG(F)I

    move-result v1

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->ratioToSampleSize(F)I

    move-result v1

    .line 46
    :goto_0
    nop

    .line 45
    nop

    .line 54
    .local v1, "sampleSize":I
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 55
    .local v2, "maxDimension":I
    if-eqz p1, :cond_2

    iget v3, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    goto :goto_1

    :cond_2
    int-to-float v3, p3

    .line 56
    .local v3, "computedMaxBitmapSize":F
    :goto_1
    div-int v4, v2, v1

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_4

    .line 57
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v4

    sget-object v5, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v4, v5, :cond_3

    .line 58
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 60
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_4
    return v1
.end method

.method public static final determineSampleSizeJPEG(Lcom/facebook/imagepipeline/image/EncodedImage;II)I
    .locals 3
    .param p0, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p1, "pixelSize"    # I
    .param p2, "maxBitmapSizeInBytes"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "encodedImage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v0

    .line 73
    .local v0, "sampleSize":I
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v1, p1

    .line 74
    .local v1, "base":I
    :goto_0
    div-int v2, v1, v0

    div-int/2addr v2, v0

    if-le v2, p2, :cond_0

    .line 75
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 77
    :cond_0
    return v0
.end method

.method private final getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 3
    .param p1, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p2, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 151
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    return v1

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    .line 155
    .local v0, "rotationAngle":I
    if-eqz v0, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 156
    return v0

    .line 155
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final ratioToSampleSize(F)I
    .locals 7
    .param p0, "ratio"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 119
    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x2

    .line 123
    .local v0, "sampleSize":I
    :goto_0
    nop

    .line 124
    int-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    int-to-double v3, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    .line 125
    .local v1, "intervalLength":D
    int-to-double v5, v0

    div-double/2addr v3, v5

    const v5, 0x3eaaaaab

    float-to-double v5, v5

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    .line 126
    .local v3, "compare":D
    float-to-double v5, p0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_1

    .line 127
    add-int/lit8 v5, v0, -0x1

    return v5

    .line 129
    :cond_1
    nop

    .end local v1    # "intervalLength":D
    .end local v3    # "compare":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final ratioToSampleSizeJPEG(F)I
    .locals 7
    .param p0, "ratio"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 136
    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x2

    .line 140
    .local v0, "sampleSize":I
    :goto_0
    nop

    .line 141
    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    .line 142
    .local v1, "intervalLength":D
    mul-int/lit8 v5, v0, 0x2

    int-to-double v5, v5

    div-double/2addr v3, v5

    const v5, 0x3eaaaaab

    float-to-double v5, v5

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    .line 143
    .local v3, "compare":D
    float-to-double v5, p0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_1

    .line 144
    return v0

    .line 146
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .end local v1    # "intervalLength":D
    .end local v3    # "compare":D
    goto :goto_0
.end method

.method public static final roundToPowerOfTwo(I)I
    .locals 1
    .param p0, "sampleSize"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 162
    const/4 v0, 0x1

    .line 163
    .local v0, "compare":I
    :goto_0
    nop

    .line 164
    if-lt v0, p0, :cond_0

    .line 165
    return v0

    .line 167
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
