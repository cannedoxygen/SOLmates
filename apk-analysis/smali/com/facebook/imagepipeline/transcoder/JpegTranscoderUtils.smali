.class public final Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;
.super Ljava/lang/Object;
.source "JpegTranscoderUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJpegTranscoderUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JpegTranscoderUtils.kt\ncom/facebook/imagepipeline/transcoder/JpegTranscoderUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,233:1\n1#2:234\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\"\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J*\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0007J\u001a\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0012\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u0004H\u0007J\u0010\u0010\'\u001a\u00020 2\u0006\u0010(\u001a\u00020\u0004H\u0007J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0007R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00040\u00040\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;",
        "",
        "()V",
        "DEFAULT_JPEG_QUALITY",
        "",
        "getDEFAULT_JPEG_QUALITY$annotations",
        "FULL_ROUND",
        "INVERTED_EXIF_ORIENTATIONS",
        "Lcom/facebook/common/internal/ImmutableList;",
        "kotlin.jvm.PlatformType",
        "MAX_QUALITY",
        "MAX_SCALE_NUMERATOR",
        "MIN_QUALITY",
        "MIN_SCALE_NUMERATOR",
        "SCALE_DENOMINATOR",
        "calculateDownsampleNumerator",
        "downsampleRatio",
        "determineResizeRatio",
        "",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "width",
        "height",
        "extractOrientationFromMetadata",
        "encodedImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "getForceRotatedInvertedExifOrientation",
        "rotationOptions",
        "Lcom/facebook/imagepipeline/common/RotationOptions;",
        "getRotationAngle",
        "getSoftwareNumerator",
        "resizingEnabled",
        "",
        "getTransformationMatrix",
        "Landroid/graphics/Matrix;",
        "getTransformationMatrixFromInvertedExif",
        "orientation",
        "isExifOrientationAllowed",
        "exifOrientation",
        "isRotationAngleAllowed",
        "degrees",
        "roundNumerator",
        "maxRatio",
        "roundUpFraction",
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
.field public static final DEFAULT_JPEG_QUALITY:I = 0x55

.field private static final FULL_ROUND:I = 0x168

.field public static final INSTANCE:Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;

.field public static final INVERTED_EXIF_ORIENTATIONS:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_QUALITY:I = 0x64

.field public static final MAX_SCALE_NUMERATOR:I = 0x10

.field public static final MIN_QUALITY:I = 0x0

.field public static final MIN_SCALE_NUMERATOR:I = 0x1

.field public static final SCALE_DENOMINATOR:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INSTANCE:Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;

    .line 33
    nop

    .line 34
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 35
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 34
    nop

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 34
    nop

    .line 37
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 34
    nop

    .line 33
    invoke-static {v1}, Lcom/facebook/common/internal/ImmutableList;->of([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    const-string/jumbo v1, "of(\n          ExifInterf\u2026ce.ORIENTATION_TRANSPOSE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INVERTED_EXIF_ORIENTATIONS:Lcom/facebook/common/internal/ImmutableList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calculateDownsampleNumerator(I)I
    .locals 2
    .param p0, "downsampleRatio"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 165
    const/16 v0, 0x8

    div-int/2addr v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static final determineResizeRatio(Lcom/facebook/imagepipeline/common/ResizeOptions;II)F
    .locals 5
    .param p0, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 136
    if-nez p0, :cond_0

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 139
    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 140
    .local v0, "widthRatio":F
    iget v1, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 141
    .local v1, "heightRatio":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 142
    .local v2, "ratio":F
    int-to-float v3, p1

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 143
    iget v3, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    int-to-float v4, p1

    div-float v2, v3, v4

    .line 145
    :cond_1
    int-to-float v3, p2

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 146
    iget v3, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    int-to-float v4, p2

    div-float v2, v3, v4

    .line 148
    :cond_2
    return v2
.end method

.method private final extractOrientationFromMetadata(Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 1
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 226
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 230
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :sswitch_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    .line 231
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic getDEFAULT_JPEG_QUALITY$annotations()V
    .locals 0

    return-void
.end method

.method public static final getForceRotatedInvertedExifOrientation(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 7
    .param p0, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "rotationOptions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getExifOrientation()I

    move-result v0

    .line 123
    .local v0, "exifOrientation":I
    sget-object v1, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INVERTED_EXIF_ORIENTATIONS:Lcom/facebook/common/internal/ImmutableList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/common/internal/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 124
    .local v1, "index":I
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "forcedAngle":I
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->getForcedAngle()I

    move-result v2

    .line 129
    :cond_1
    div-int/lit8 v3, v2, 0x5a

    .line 130
    .local v3, "timesToRotate":I
    sget-object v4, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INVERTED_EXIF_ORIENTATIONS:Lcom/facebook/common/internal/ImmutableList;

    add-int v5, v1, v3

    sget-object v6, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INVERTED_EXIF_ORIENTATIONS:Lcom/facebook/common/internal/ImmutableList;

    invoke-virtual {v6}, Lcom/facebook/common/internal/ImmutableList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/facebook/common/internal/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "INVERTED_EXIF_ORIENTATIO\u2026D_EXIF_ORIENTATIONS.size]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    return v4

    .line 234
    .end local v2    # "forcedAngle":I
    .end local v3    # "timesToRotate":I
    :cond_2
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$a$-require-JpegTranscoderUtils$getForceRotatedInvertedExifOrientation$1":I
    nop

    .end local v2    # "$i$a$-require-JpegTranscoderUtils$getForceRotatedInvertedExifOrientation$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only accepts inverted exif orientations"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 2
    .param p0, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "rotationOptions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->rotationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INSTANCE:Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->extractOrientationFromMetadata(Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    .line 103
    .local v0, "rotationFromMetadata":I
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    move v1, v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->getForcedAngle()I

    move-result v1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    .line 103
    :goto_0
    return v1
.end method

.method public static final getSoftwareNumerator(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;Z)I
    .locals 9
    .param p0, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p1, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .param p2, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p3, "resizingEnabled"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "rotationOptions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/16 v0, 0x8

    if-nez p3, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    if-nez p1, :cond_1

    .line 75
    return v0

    .line 77
    :cond_1
    invoke-static {p0, p2}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v1

    .line 78
    .local v1, "rotationAngle":I
    const/4 v2, 0x0

    .line 79
    .local v2, "exifOrientation":I
    sget-object v3, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INVERTED_EXIF_ORIENTATIONS:Lcom/facebook/common/internal/ImmutableList;

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getExifOrientation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/common/internal/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-static {p0, p2}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->getForceRotatedInvertedExifOrientation(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v2

    .line 83
    :cond_2
    const/16 v3, 0x5a

    const/4 v4, 0x1

    if-eq v1, v3, :cond_4

    .line 84
    const/16 v3, 0x10e

    if-eq v1, v3, :cond_4

    .line 85
    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 86
    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v4

    .line 82
    :goto_1
    nop

    .line 87
    .local v3, "swapDimensions":Z
    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v5

    .line 88
    .local v5, "widthAfterRotation":I
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v6

    .line 89
    .local v6, "heightAfterRotation":I
    :goto_3
    invoke-static {p1, v5, v6}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->determineResizeRatio(Lcom/facebook/imagepipeline/common/ResizeOptions;II)F

    move-result v7

    .line 90
    .local v7, "ratio":F
    iget v8, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->roundUpFraction:F

    invoke-static {v7, v8}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->roundNumerator(FF)I

    move-result v8

    .line 91
    .local v8, "numerator":I
    if-le v8, v0, :cond_7

    .line 92
    return v0

    .line 94
    :cond_7
    if-ge v8, v4, :cond_8

    goto :goto_4

    :cond_8
    move v4, v8

    :goto_4
    return v4
.end method

.method public static final getTransformationMatrix(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p1, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "encodedImage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rotationOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "transformationMatrix":Landroid/graphics/Matrix;
    sget-object v1, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INVERTED_EXIF_ORIENTATIONS:Lcom/facebook/common/internal/ImmutableList;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getExifOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/common/internal/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {p1, p0}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->getForceRotatedInvertedExifOrientation(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v1

    .line 185
    .local v1, "exifOrientation":I
    sget-object v2, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->INSTANCE:Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->getTransformationMatrixFromInvertedExif(I)Landroid/graphics/Matrix;

    move-result-object v0

    .end local v1    # "exifOrientation":I
    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p1, p0}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v1

    .line 189
    .local v1, "rotationAngle":I
    if-eqz v1, :cond_1

    .line 190
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v2

    .line 191
    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 194
    .end local v1    # "rotationAngle":I
    :cond_1
    :goto_0
    return-object v0
.end method

.method private final getTransformationMatrixFromInvertedExif(I)Landroid/graphics/Matrix;
    .locals 4
    .param p1, "orientation"    # I

    .line 205
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    .line 220
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 209
    :pswitch_1
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 217
    :pswitch_2
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 218
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 213
    :pswitch_3
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 214
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 207
    :pswitch_4
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 222
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final isExifOrientationAllowed(I)Z
    .locals 1
    .param p0, "exifOrientation"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 52
    packed-switch p0, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :pswitch_0
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final isRotationAngleAllowed(I)Z
    .locals 1
    .param p0, "degrees"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 47
    if-ltz p0, :cond_0

    const/16 v0, 0x10e

    if-gt p0, v0, :cond_0

    rem-int/lit8 v0, p0, 0x5a

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final roundNumerator(FF)I
    .locals 1
    .param p0, "maxRatio"    # F
    .param p1, "roundUpFraction"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 154
    const/16 v0, 0x8

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method
