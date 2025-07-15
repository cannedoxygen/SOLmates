.class public final Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;
.super Ljava/lang/Object;
.source "SimpleImageTranscoder.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\"\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002JO\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0002\u0010\u001eR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;",
        "resizingEnabled",
        "",
        "maxBitmapSize",
        "",
        "(ZI)V",
        "identifier",
        "",
        "getIdentifier",
        "()Ljava/lang/String;",
        "canResize",
        "encodedImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "rotationOptions",
        "Lcom/facebook/imagepipeline/common/RotationOptions;",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "canTranscode",
        "imageFormat",
        "Lcom/facebook/imageformat/ImageFormat;",
        "getSampleSize",
        "transcode",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "outputFormat",
        "quality",
        "colorSpace",
        "Landroid/graphics/ColorSpace;",
        "(Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imageformat/ImageFormat;Ljava/lang/Integer;Landroid/graphics/ColorSpace;)Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;",
        "Companion",
        "imagepipeline_release"
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
.field public static final Companion:Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;

.field private static final TAG:Ljava/lang/String; = "SimpleImageTranscoder"


# instance fields
.field private final identifier:Ljava/lang/String;

.field private final maxBitmapSize:I

.field private final resizingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->Companion:Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "resizingEnabled"    # Z
    .param p2, "maxBitmapSize"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->resizingEnabled:Z

    iput p2, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->maxBitmapSize:I

    .line 110
    const-string v0, "SimpleImageTranscoder"

    iput-object v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->identifier:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private final getSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)I
    .locals 1
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p3, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 118
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->resizingEnabled:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->maxBitmapSize:I

    .line 121
    invoke-static {p2, p3, p1, v0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result v0

    .line 118
    :goto_0
    nop

    .line 117
    nop

    .line 124
    .local v0, "sampleSize":I
    return v0
.end method


# virtual methods
.method public canResize(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 3
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p3, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;

    const-string v0, "encodedImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object v0, p2

    .line 98
    .local v0, "rotationOptions":Lcom/facebook/imagepipeline/common/RotationOptions;
    if-nez v0, :cond_0

    .line 99
    sget-object v1, Lcom/facebook/imagepipeline/common/RotationOptions;->Companion:Lcom/facebook/imagepipeline/common/RotationOptions$Companion;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/RotationOptions$Companion;->autoRotate()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->resizingEnabled:Z

    if-eqz v1, :cond_1

    .line 103
    iget v1, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->maxBitmapSize:I

    .line 102
    invoke-static {v0, p3, p1, v1}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result v1

    .line 104
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 101
    :goto_0
    return v2
.end method

.method public canTranscode(Lcom/facebook/imageformat/ImageFormat;)Z
    .locals 1
    .param p1, "imageFormat"    # Lcom/facebook/imageformat/ImageFormat;

    const-string v0, "imageFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->HEIF:Lcom/facebook/imageformat/ImageFormat;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne p1, v0, :cond_0

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

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public transcode(Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imageformat/ImageFormat;Ljava/lang/Integer;Landroid/graphics/ColorSpace;)Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;
    .locals 23
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p4, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .param p5, "outputFormat"    # Lcom/facebook/imageformat/ImageFormat;
    .param p6, "quality"    # Ljava/lang/Integer;
    .param p7, "colorSpace"    # Landroid/graphics/ColorSpace;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    const-string v4, "Out-Of-Memory during transcode"

    const-string v5, "SimpleImageTranscoder"

    const-string v0, "encodedImage"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outputStream"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object/from16 v0, p3

    .line 40
    .local v0, "rotationOptions":Lcom/facebook/imagepipeline/common/RotationOptions;
    move-object/from16 v6, p6

    .line 41
    .local v6, "quality":Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 42
    const/16 v7, 0x55

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 44
    :cond_0
    if-nez v0, :cond_1

    .line 45
    sget-object v7, Lcom/facebook/imagepipeline/common/RotationOptions;->Companion:Lcom/facebook/imagepipeline/common/RotationOptions$Companion;

    invoke-virtual {v7}, Lcom/facebook/imagepipeline/common/RotationOptions$Companion;->autoRotate()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 44
    :cond_1
    move-object v7, v0

    .line 47
    .end local v0    # "rotationOptions":Lcom/facebook/imagepipeline/common/RotationOptions;
    .local v7, "rotationOptions":Lcom/facebook/imagepipeline/common/RotationOptions;
    :goto_0
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    invoke-direct {v8, v1, v7, v9}, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->getSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)I

    move-result v10

    .line 48
    .local v10, "sampleSize":I
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v11, v0

    .line 49
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iput v10, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    if-eqz v3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v0, v12, :cond_2

    .line 51
    iput-object v3, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 54
    :cond_2
    nop

    .line 55
    const/4 v12, 0x2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v0, v13, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    nop

    .line 53
    move-object/from16 v20, v0

    .line 60
    .local v20, "resizedBitmap":Landroid/graphics/Bitmap;
    if-nez v20, :cond_3

    .line 61
    const-string v0, "Couldn\'t decode the EncodedImage InputStream ! "

    invoke-static {v5, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v0, v12}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V

    return-object v0

    .line 65
    :cond_3
    invoke-static {v1, v7}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->getTransformationMatrix(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 64
    move-object/from16 v21, v0

    .line 66
    .local v21, "transformationMatrix":Landroid/graphics/Matrix;
    move-object/from16 v22, v20

    .line 67
    .local v22, "srcBitmap":Landroid/graphics/Bitmap;
    nop

    .line 68
    if-eqz v21, :cond_4

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 75
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 76
    nop

    .line 77
    nop

    .line 70
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, v20

    move-object/from16 v18, v21

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v13, "createBitmap(\n          \u2026x,\n                false)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    move-object/from16 v22, v0

    move-object/from16 v13, v22

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    move-object/from16 v14, p5

    goto :goto_7

    .line 83
    :catch_0
    move-exception v0

    move-object/from16 v14, p5

    goto :goto_5

    .line 68
    :cond_4
    move-object/from16 v13, v22

    .line 79
    .end local v22    # "srcBitmap":Landroid/graphics/Bitmap;
    .local v13, "srcBitmap":Landroid/graphics/Bitmap;
    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->Companion:Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v14, p5

    :try_start_3
    invoke-static {v0, v14}, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;->access$getOutputFormat(Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder$Companion;Lcom/facebook/imageformat/ImageFormat;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v0, v15, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    .line 81
    const/4 v15, 0x1

    if-le v10, v15, :cond_5

    const/4 v15, 0x0

    goto :goto_2

    .line 82
    :cond_5
    nop

    .line 80
    :goto_2
    invoke-direct {v0, v15}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    goto :goto_6

    .line 87
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 83
    :catch_1
    move-exception v0

    goto :goto_4

    .line 87
    :catchall_2
    move-exception v0

    move-object/from16 v14, p5

    :goto_3
    move-object/from16 v22, v13

    goto :goto_7

    .line 83
    :catch_2
    move-exception v0

    move-object/from16 v14, p5

    :goto_4
    move-object/from16 v22, v13

    .line 84
    .end local v13    # "srcBitmap":Landroid/graphics/Bitmap;
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    .restart local v22    # "srcBitmap":Landroid/graphics/Bitmap;
    :goto_5
    :try_start_4
    move-object v13, v0

    check-cast v13, Ljava/lang/Throwable;

    invoke-static {v5, v4, v13}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v4, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v4, v12}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 87
    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    move-object v0, v4

    move-object/from16 v13, v22

    .line 67
    .end local v22    # "srcBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "srcBitmap":Landroid/graphics/Bitmap;
    :goto_6
    return-object v0

    .line 87
    .end local v13    # "srcBitmap":Landroid/graphics/Bitmap;
    .restart local v22    # "srcBitmap":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v0

    :goto_7
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    .line 56
    .end local v20    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "transformationMatrix":Landroid/graphics/Matrix;
    .end local v22    # "srcBitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v0

    move-object/from16 v14, p5

    .line 57
    .restart local v0    # "oom":Ljava/lang/OutOfMemoryError;
    move-object v13, v0

    check-cast v13, Ljava/lang/Throwable;

    invoke-static {v5, v4, v13}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    new-instance v4, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v4, v12}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V

    return-object v4
.end method
