.class Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 8
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "length"    # I
    .param p3, "qualityInfo"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p4, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 66
    .local v0, "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    const/4 v1, 0x0

    .line 67
    .local v1, "colorSpace":Landroid/graphics/ColorSpace;
    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-static {v2}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->-$$Nest$fgetmEnableEncodedImageColorSpaceUsage(Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->colorSpace:Landroid/graphics/ColorSpace;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->colorSpace:Landroid/graphics/ColorSpace;

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 71
    :cond_1
    iget-object v1, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->colorSpace:Landroid/graphics/ColorSpace;

    .line 73
    :goto_1
    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeJpeg(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/ColorSpace;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object v2

    return-object v2

    .line 75
    :cond_2
    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->GIF:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v2

    return-object v2

    .line 77
    :cond_3
    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v2, :cond_4

    .line 78
    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeAnimatedWebp(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v2

    return-object v2

    .line 79
    :cond_4
    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v2, :cond_5

    .line 82
    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder$1;->this$0:Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual {v2, p1, p4}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;->decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object v2

    return-object v2

    .line 80
    :cond_5
    new-instance v2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string/jumbo v3, "unknown image format"

    invoke-direct {v2, v3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw v2
.end method
