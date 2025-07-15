.class abstract Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DecodeProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProgressiveDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDecodeProducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecodeProducer.kt\ncom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,545:1\n40#2,9:546\n*S KotlinDebug\n*F\n+ 1 DecodeProducer.kt\ncom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder\n*L\n115#1:546,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0003\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u00a2\u0004\u0018\u00002\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B1\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ \u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cH\u0002JX\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\u00042\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u000fH\u0002J\u0010\u0010/\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u0002H$J\u0008\u00100\u001a\u00020!H\u0002J\u0010\u00101\u001a\u00020!2\u0006\u00102\u001a\u000203H\u0002J\u001a\u00104\u001a\u00020!2\u0008\u00105\u001a\u0004\u0018\u00010\u00042\u0006\u0010#\u001a\u00020\u000cH\u0002J\"\u00106\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020\u00022\u0006\u00107\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u001dH\u0002J\u0010\u00108\u001a\u00020!2\u0006\u00109\u001a\u00020\nH\u0002J\u0010\u0010:\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0008\u0010;\u001a\u00020!H\u0016J\u0010\u0010<\u001a\u00020!2\u0006\u00102\u001a\u000203H\u0016J\u001a\u0010=\u001a\u00020!2\u0008\u0010>\u001a\u0004\u0018\u00010\u00022\u0006\u0010#\u001a\u00020\u000cH\u0016J\u0010\u0010?\u001a\u00020!2\u0006\u0010@\u001a\u00020AH\u0014J\"\u0010B\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00022\u0008\u0010&\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u000cH\u0002J\u001a\u0010C\u001a\u00020\n2\u0008\u0010D\u001a\u0004\u0018\u00010\u00022\u0006\u0010#\u001a\u00020\u000cH\u0014R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\n8B@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u000cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u001dX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006E"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;",
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "consumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "producerContext",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "decodeCancellationEnabled",
        "",
        "maxBitmapSize",
        "",
        "(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V",
        "TAG",
        "",
        "imageDecodeOptions",
        "Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "isFinished",
        "jobScheduler",
        "Lcom/facebook/imagepipeline/producers/JobScheduler;",
        "lastScheduledScanNumber",
        "getLastScheduledScanNumber",
        "()I",
        "setLastScheduledScanNumber",
        "(I)V",
        "producerListener",
        "Lcom/facebook/imagepipeline/producers/ProducerListener2;",
        "qualityInfo",
        "Lcom/facebook/imagepipeline/image/QualityInfo;",
        "getQualityInfo",
        "()Lcom/facebook/imagepipeline/image/QualityInfo;",
        "doDecode",
        "",
        "encodedImage",
        "status",
        "getExtraMap",
        "",
        "image",
        "queueTime",
        "",
        "quality",
        "isFinal",
        "imageFormatName",
        "encodedImageSize",
        "requestImageSize",
        "sampleSize",
        "getIntermediateImageEndOffset",
        "handleCancellation",
        "handleError",
        "t",
        "",
        "handleResult",
        "decodedImage",
        "internalDecode",
        "length",
        "maybeFinish",
        "shouldFinish",
        "maybeIncreaseSampleSize",
        "onCancellationImpl",
        "onFailureImpl",
        "onNewResultImpl",
        "newResult",
        "onProgressUpdateImpl",
        "progress",
        "",
        "setImageExtras",
        "updateDecodeJob",
        "ref",
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


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private isFinished:Z

.field private final jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field private lastScheduledScanNumber:I

.field private final producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private final producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method public static synthetic $r8$lambda$Y9NahPUmLEkdMWWMLomB1mNwyIc(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;ILcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->_init_$lambda$2(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;ILcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
    .locals 4
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer;
    .param p2, "consumer"    # Lcom/facebook/imagepipeline/producers/Consumer;
    .param p3, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p4, "decodeCancellationEnabled"    # Z
    .param p5, "maxBitmapSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "ZI)V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 93
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 90
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 94
    const-string v0, "ProgressiveDecoder"

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->TAG:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 97
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    const-string/jumbo v1, "producerContext.imageRequest.imageDecodeOptions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 398
    nop

    .line 400
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    new-instance v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;I)V

    move-object v0, v1

    .line 421
    .local v0, "job":Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;
    new-instance v1, Lcom/facebook/imagepipeline/producers/JobScheduler;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget v3, v3, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->minDecodeIntervalMs:I

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 422
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 423
    new-instance v2, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;

    invoke-direct {v2, p0, p4}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Z)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;

    .line 422
    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 436
    .end local v0    # "job":Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;
    nop

    .line 88
    return-void
.end method

.method private static final _init_$lambda$2(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;ILcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 4
    .param p0, "this$0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    .param p1, "this$1"    # Lcom/facebook/imagepipeline/producers/DecodeProducer;
    .param p2, "$maxBitmapSize"    # I
    .param p3, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p4, "status"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    if-eqz p3, :cond_5

    .line 402
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 403
    .local v0, "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p3}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imageformat/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image_format"

    invoke-interface {v1, v3, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->setSource(Ljava/lang/String;)V

    .line 406
    const/16 v1, 0x10

    invoke-static {p4, v1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result v1

    .line 407
    .local v1, "isResizingDone":Z
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/core/DownsampleMode;->ALWAYS:Lcom/facebook/imagepipeline/core/DownsampleMode;

    if-eq v2, v3, :cond_1

    .line 408
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/core/DownsampleMode;->AUTO:Lcom/facebook/imagepipeline/core/DownsampleMode;

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 409
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getDownsampleEnabledForNetwork()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 410
    :cond_2
    nop

    .line 412
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v2

    const-string/jumbo v3, "request.rotationOptions"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v3

    .line 411
    invoke-static {v2, v3, p3, p2}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result v2

    .line 410
    invoke-virtual {p3, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;->setSampleSize(I)V

    .line 415
    :cond_3
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getDownsampleIfLargeBitmap()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 416
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeIncreaseSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 418
    :cond_4
    iget v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->lastScheduledScanNumber:I

    invoke-direct {p0, p3, p4, v2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;II)V

    .line 420
    .end local v0    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local v1    # "isResizingDone":Z
    :cond_5
    return-void
.end method

.method public static final synthetic access$getJobScheduler$p(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object v0
.end method

.method public static final synthetic access$getProducerContext$p(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    return-object v0
.end method

.method public static final synthetic access$handleCancellation(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 88
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V

    return-void
.end method

.method private final doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;II)V
    .locals 30
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I
    .param p3, "lastScheduledScanNumber"    # I

    .line 166
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v12, p2

    const-string/jumbo v1, "quality"

    move/from16 v2, p2

    .line 167
    .local v2, "newStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v3, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v3, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isNotLast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    iget-boolean v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isFinished:Z

    if-nez v0, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    if-nez v0, :cond_1

    move/from16 v29, v2

    move-object v1, v15

    goto/16 :goto_b

    .line 173
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v3, Lcom/facebook/imageformat/DefaultImageFormats;->GIF:Lcom/facebook/imageformat/ImageFormat;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "DecodeProducer"

    if-eqz v0, :cond_2

    .line 174
    sget-object v0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->Companion:Lcom/facebook/imagepipeline/producers/DecodeProducer$Companion;

    iget-object v3, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-static {v0, v14, v3}, Lcom/facebook/imagepipeline/producers/DecodeProducer$Companion;->access$isTooBig(Lcom/facebook/imagepipeline/producers/DecodeProducer$Companion;Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v3

    iget-object v4, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v4, v4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Image is too big to attempt decoding: w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", h = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pixel config = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", max bitmap size = 104857600"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    nop

    .line 178
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v3, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    invoke-interface {v1, v3, v13, v4, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 179
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v15, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    .line 180
    return-void

    .line 182
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v20

    .line 183
    .local v20, "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    const-string/jumbo v0, "unknown"

    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/facebook/imageformat/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v7, v3

    goto :goto_1

    :cond_4
    :goto_0
    move-object v7, v0

    .line 184
    .local v7, "imageFormatStr":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 185
    .local v21, "encodedImageSize":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 186
    .local v22, "sampleSize":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v23

    .line 187
    .local v23, "isLast":Z
    if-eqz v23, :cond_5

    const/16 v3, 0x8

    invoke-static {v12, v3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    move/from16 v24, v3

    .line 188
    .local v24, "isLastAndComplete":Z
    const/4 v3, 0x4

    invoke-static {v12, v3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result v25

    .line 189
    .local v25, "isPlaceholder":Z
    iget-object v3, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v11

    .line 191
    .local v11, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    if-eqz v11, :cond_6

    .line 192
    iget v0, v11, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    iget v3, v11, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_3

    .line 194
    :cond_6
    move-object v9, v0

    .line 191
    :goto_3
    nop

    .line 190
    nop

    .line 196
    .local v9, "requestedSizeStr":Ljava/lang/String;
    nop

    .line 197
    :try_start_0
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->getQueuedTime()J

    move-result-wide v3

    .line 198
    .local v3, "queueTime":J
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "producerContext.imageRequest.sourceUri.toString()"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v10, v0

    .line 200
    .local v10, "requestUri":Ljava/lang/String;
    if-nez v24, :cond_8

    if-eqz v25, :cond_7

    goto :goto_4

    .line 201
    :cond_7
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 255
    .end local v3    # "queueTime":J
    .end local v10    # "requestUri":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v26, v11

    move-object v1, v15

    goto/16 :goto_a

    .line 200
    .restart local v3    # "queueTime":J
    .restart local v10    # "requestUri":Ljava/lang/String;
    :cond_8
    :goto_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :goto_5
    nop

    .line 199
    move v8, v0

    .line 203
    .local v8, "length":I
    if-nez v24, :cond_a

    if-eqz v25, :cond_9

    goto :goto_6

    .line 204
    :cond_9
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 203
    :cond_a
    :goto_6
    :try_start_4
    sget-object v0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    :goto_7
    nop

    .line 202
    move-object v5, v0

    .line 205
    .local v5, "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v6, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v6, v13}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 206
    const/4 v6, 0x0

    .line 207
    .local v6, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    nop

    .line 209
    nop

    .line 210
    :try_start_5
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v14, v8, v5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->internalDecode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v0
    :try_end_5
    .catch Lcom/facebook/imagepipeline/decoder/DecodeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 208
    move-object v6, v0

    .line 223
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 224
    or-int/lit8 v2, v12, 0x10

    .line 242
    :cond_b
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 242
    move-object/from16 v1, p0

    move-object/from16 v16, v11

    move v11, v2

    .end local v2    # "newStatus":I
    .local v11, "newStatus":I
    .local v16, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    move-object v2, v6

    move-object/from16 v26, v5

    .end local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .local v26, "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    move-object v12, v6

    .end local v6    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .local v12, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    move/from16 v6, v23

    move/from16 v27, v8

    .end local v8    # "length":I
    .local v27, "length":I
    move-object/from16 v8, v21

    move-object/from16 v28, v10

    .end local v10    # "requestUri":Ljava/lang/String;
    .local v28, "requestUri":Ljava/lang/String;
    move-object/from16 v10, v22

    :try_start_7
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 241
    nop

    .line 251
    .local v0, "extraMap":Ljava/util/Map;
    iget-object v1, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v2, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1, v2, v13, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 252
    move/from16 v5, p3

    :try_start_8
    invoke-direct {v15, v14, v12, v5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->setImageExtras(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/CloseableImage;I)V

    .line 253
    invoke-direct {v15, v12, v11}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 255
    .end local v0    # "extraMap":Ljava/util/Map;
    .end local v3    # "queueTime":J
    .end local v12    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v27    # "length":I
    .end local v28    # "requestUri":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move/from16 v5, p3

    :goto_8
    move v2, v11

    move-object v1, v15

    move-object/from16 v26, v16

    goto/16 :goto_a

    .line 226
    .end local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v2    # "newStatus":I
    .restart local v3    # "queueTime":J
    .restart local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v6    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v8    # "length":I
    .restart local v10    # "requestUri":Ljava/lang/String;
    .local v11, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catch_0
    move-exception v0

    move-object/from16 v26, v5

    move-object v12, v6

    move/from16 v27, v8

    move-object/from16 v28, v10

    move-object/from16 v16, v11

    move/from16 v5, p3

    move/from16 v29, v2

    move-object/from16 v6, v28

    move-object v2, v0

    move-object v0, v12

    .end local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v6    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v8    # "length":I
    .end local v10    # "requestUri":Ljava/lang/String;
    .end local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v12    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v27    # "length":I
    .restart local v28    # "requestUri":Ljava/lang/String;
    goto/16 :goto_9

    .line 255
    .end local v3    # "queueTime":J
    .end local v12    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .end local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v27    # "length":I
    .end local v28    # "requestUri":Ljava/lang/String;
    .restart local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catchall_3
    move-exception v0

    move/from16 v5, p3

    move-object/from16 v16, v11

    move-object v1, v15

    move-object/from16 v26, v16

    .end local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    goto/16 :goto_a

    .line 226
    .end local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v3    # "queueTime":J
    .restart local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v6    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v8    # "length":I
    .restart local v10    # "requestUri":Ljava/lang/String;
    .restart local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catch_1
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v27, v8

    move-object/from16 v28, v10

    move-object/from16 v16, v11

    move/from16 v5, p3

    move/from16 v29, v2

    move-object v2, v0

    move-object v0, v6

    move-object/from16 v6, v28

    .end local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v8    # "length":I
    .end local v10    # "requestUri":Ljava/lang/String;
    .end local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v27    # "length":I
    .restart local v28    # "requestUri":Ljava/lang/String;
    goto/16 :goto_9

    .line 211
    .end local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .end local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v27    # "length":I
    .end local v28    # "requestUri":Ljava/lang/String;
    .restart local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v8    # "length":I
    .restart local v10    # "requestUri":Ljava/lang/String;
    .restart local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catch_2
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v27, v8

    move-object/from16 v28, v10

    move-object/from16 v16, v11

    move/from16 v5, p3

    .line 212
    .end local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v8    # "length":I
    .end local v10    # "requestUri":Ljava/lang/String;
    .end local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .local v0, "e":Lcom/facebook/imagepipeline/decoder/DecodeException;
    .restart local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v27    # "length":I
    .restart local v28    # "requestUri":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/DecodeException;->getEncodedImage()Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v8

    .line 214
    .local v8, "failedEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    iget-object v10, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->TAG:Ljava/lang/String;

    .line 215
    const-string v11, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    .line 216
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/DecodeException;->getMessage()Ljava/lang/String;

    move-result-object v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 217
    nop

    .line 216
    nop

    .line 218
    nop

    .line 219
    nop

    .line 218
    move/from16 v29, v2

    .end local v2    # "newStatus":I
    .local v29, "newStatus":I
    const/16 v2, 0xa

    :try_start_a
    invoke-virtual {v8, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getFirstBytesAsHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    nop

    .line 220
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v17, v6

    move-object/from16 v6, v28

    .end local v28    # "requestUri":Ljava/lang/String;
    .local v6, "requestUri":Ljava/lang/String;
    .local v17, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    :try_start_b
    filled-new-array {v12, v6, v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 216
    nop

    .line 213
    invoke-static {v10, v11, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    nop

    .end local v3    # "queueTime":J
    .end local v6    # "requestUri":Ljava/lang/String;
    .end local v7    # "imageFormatStr":Ljava/lang/String;
    .end local v9    # "requestedSizeStr":Ljava/lang/String;
    .end local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .end local v17    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v20    # "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    .end local v21    # "encodedImageSize":Ljava/lang/String;
    .end local v22    # "sampleSize":Ljava/lang/String;
    .end local v23    # "isLast":Z
    .end local v24    # "isLastAndComplete":Z
    .end local v25    # "isPlaceholder":Z
    .end local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v27    # "length":I
    .end local v29    # "newStatus":I
    .end local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local p2    # "status":I
    .end local p3    # "lastScheduledScanNumber":I
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 226
    .end local v0    # "e":Lcom/facebook/imagepipeline/decoder/DecodeException;
    .end local v8    # "failedEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local v3    # "queueTime":J
    .restart local v6    # "requestUri":Ljava/lang/String;
    .restart local v7    # "imageFormatStr":Ljava/lang/String;
    .restart local v9    # "requestedSizeStr":Ljava/lang/String;
    .restart local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v17    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v20    # "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    .restart local v21    # "encodedImageSize":Ljava/lang/String;
    .restart local v22    # "sampleSize":Ljava/lang/String;
    .restart local v23    # "isLast":Z
    .restart local v24    # "isLastAndComplete":Z
    .restart local v25    # "isPlaceholder":Z
    .restart local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v27    # "length":I
    .restart local v29    # "newStatus":I
    .restart local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local p2    # "status":I
    .restart local p3    # "lastScheduledScanNumber":I
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v0, v17

    goto :goto_9

    .line 255
    .end local v3    # "queueTime":J
    .end local v6    # "requestUri":Ljava/lang/String;
    .end local v17    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v27    # "length":I
    :catchall_4
    move-exception v0

    move-object v1, v15

    move-object/from16 v26, v16

    move/from16 v2, v29

    goto/16 :goto_a

    .line 226
    .restart local v3    # "queueTime":J
    .local v6, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v27    # "length":I
    .restart local v28    # "requestUri":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v6, v28

    move-object v2, v0

    move-object/from16 v0, v17

    .end local v28    # "requestUri":Ljava/lang/String;
    .local v6, "requestUri":Ljava/lang/String;
    .restart local v17    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    goto :goto_9

    .line 255
    .end local v3    # "queueTime":J
    .end local v6    # "requestUri":Ljava/lang/String;
    .end local v17    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v27    # "length":I
    .end local v29    # "newStatus":I
    .restart local v2    # "newStatus":I
    :catchall_5
    move-exception v0

    move/from16 v29, v2

    move-object v1, v15

    move-object/from16 v26, v16

    .end local v2    # "newStatus":I
    .restart local v29    # "newStatus":I
    goto/16 :goto_a

    .line 226
    .end local v29    # "newStatus":I
    .restart local v2    # "newStatus":I
    .restart local v3    # "queueTime":J
    .local v6, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v27    # "length":I
    .restart local v28    # "requestUri":Ljava/lang/String;
    :catch_5
    move-exception v0

    move/from16 v29, v2

    move-object/from16 v17, v6

    move-object/from16 v6, v28

    move-object v2, v0

    move-object/from16 v0, v17

    .line 228
    .end local v28    # "requestUri":Ljava/lang/String;
    .local v0, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .local v2, "e":Ljava/lang/Exception;
    .local v6, "requestUri":Ljava/lang/String;
    .restart local v29    # "newStatus":I
    :goto_9
    nop

    .line 229
    nop

    .line 230
    nop

    .line 231
    move-object/from16 v5, v26

    .end local v26    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    :try_start_c
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 228
    move-object/from16 v10, p0

    move-object/from16 v1, v16

    .end local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .local v1, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    move-object v11, v0

    move-object v8, v13

    move-wide v12, v3

    move-object v14, v5

    move-object/from16 v26, v1

    move-object v1, v15

    .end local v1    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .local v26, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    move/from16 v15, v23

    move-object/from16 v16, v7

    move-object/from16 v17, v21

    move-object/from16 v18, v9

    move-object/from16 v19, v22

    :try_start_d
    invoke-direct/range {v10 .. v19}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 227
    nop

    .line 237
    .local v10, "extraMap":Ljava/util/Map;
    iget-object v11, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v12, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-object v13, v2

    check-cast v13, Ljava/lang/Throwable;

    invoke-interface {v11, v12, v8, v13, v10}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 238
    move-object v8, v2

    check-cast v8, Ljava/lang/Throwable;

    invoke-direct {v1, v8}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 239
    nop

    .line 255
    .end local v0    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "queueTime":J
    .end local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v6    # "requestUri":Ljava/lang/String;
    .end local v10    # "extraMap":Ljava/util/Map;
    .end local v27    # "length":I
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .restart local v3    # "queueTime":J
    .restart local v6    # "requestUri":Ljava/lang/String;
    move/from16 v8, v27

    .line 239
    .restart local v0    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .local v8, "length":I
    .restart local v10    # "extraMap":Ljava/util/Map;
    return-void

    .line 255
    .end local v0    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "queueTime":J
    .end local v5    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v6    # "requestUri":Ljava/lang/String;
    .end local v8    # "length":I
    .end local v10    # "extraMap":Ljava/util/Map;
    :catchall_6
    move-exception v0

    move/from16 v2, v29

    goto :goto_a

    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catchall_7
    move-exception v0

    move-object v1, v15

    move-object/from16 v26, v16

    move/from16 v2, v29

    .end local v16    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    goto :goto_a

    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .end local v29    # "newStatus":I
    .local v2, "newStatus":I
    .restart local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catchall_8
    move-exception v0

    move/from16 v29, v2

    move-object/from16 v26, v11

    move-object v1, v15

    .end local v11    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw v0

    .line 170
    .end local v7    # "imageFormatStr":Ljava/lang/String;
    .end local v9    # "requestedSizeStr":Ljava/lang/String;
    .end local v20    # "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    .end local v21    # "encodedImageSize":Ljava/lang/String;
    .end local v22    # "sampleSize":Ljava/lang/String;
    .end local v23    # "isLast":Z
    .end local v24    # "isLastAndComplete":Z
    .end local v25    # "isPlaceholder":Z
    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :cond_c
    move/from16 v29, v2

    move-object v1, v15

    .line 171
    .end local v2    # "newStatus":I
    .restart local v29    # "newStatus":I
    :goto_b
    return-void
.end method

.method private final getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 19
    .param p1, "image"    # Lcom/facebook/imagepipeline/image/CloseableImage;
    .param p2, "queueTime"    # J
    .param p4, "quality"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p5, "isFinal"    # Z
    .param p6, "imageFormatName"    # Ljava/lang/String;
    .param p7, "encodedImageSize"    # Ljava/lang/String;
    .param p8, "requestImageSize"    # Ljava/lang/String;
    .param p9, "sampleSize"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            "J",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v8, "DecodeProducer"

    invoke-interface {v6, v7, v8}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 312
    return-object v7

    .line 314
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "queueStr":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Lcom/facebook/imagepipeline/image/QualityInfo;->isOfGoodEnoughQuality()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, "qualityStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "finalStr":Ljava/lang/String;
    const-string/jumbo v10, "non_fatal_decode_error"

    if-eqz v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->getExtras()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "nonFatalErrorStr":Ljava/lang/String;
    :cond_1
    instance-of v11, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    const-string/jumbo v12, "sampleSize"

    const-string/jumbo v13, "requestedImageSize"

    const-string v14, "imageFormat"

    const-string v15, "encodedImageSize"

    const-string v0, "isFinal"

    move-object/from16 v16, v10

    const-string v10, "hasGoodQuality"

    move-object/from16 v17, v7

    .end local v7    # "nonFatalErrorStr":Ljava/lang/String;
    .local v17, "nonFatalErrorStr":Ljava/lang/String;
    const-string/jumbo v7, "queueTime"

    if-eqz v11, :cond_3

    .line 319
    move-object v11, v1

    check-cast v11, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-interface {v11}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    const-string v1, "image.underlyingBitmap"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v11

    .line 320
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 321
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v18, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v11, "x"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "sizeStr":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    const/16 v11, 0x8

    invoke-direct {v5, v11}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .line 325
    .local v5, "tmpMap":Ljava/util/Map;
    const-string v11, "bitmapSize"

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-interface {v5, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-interface {v5, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-interface {v5, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-interface {v5, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-object/from16 v11, p9

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "byteCount"

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    if-eqz v17, :cond_2

    .line 335
    move-object/from16 v7, v16

    move-object/from16 v0, v17

    .end local v17    # "nonFatalErrorStr":Ljava/lang/String;
    .local v0, "nonFatalErrorStr":Ljava/lang/String;
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 334
    .end local v0    # "nonFatalErrorStr":Ljava/lang/String;
    .restart local v17    # "nonFatalErrorStr":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v17

    .line 337
    .end local v17    # "nonFatalErrorStr":Ljava/lang/String;
    .restart local v0    # "nonFatalErrorStr":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v1

    .end local v1    # "sizeStr":Ljava/lang/String;
    .end local v5    # "tmpMap":Ljava/util/Map;
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v1, Ljava/util/Map;

    goto :goto_2

    .line 339
    .end local v0    # "nonFatalErrorStr":Ljava/lang/String;
    .restart local v17    # "nonFatalErrorStr":Ljava/lang/String;
    :cond_3
    move-object v11, v5

    move-object/from16 v5, v16

    move-object/from16 v1, v17

    .end local v17    # "nonFatalErrorStr":Ljava/lang/String;
    .local v1, "nonFatalErrorStr":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    .end local v1    # "nonFatalErrorStr":Ljava/lang/String;
    .restart local v17    # "nonFatalErrorStr":Ljava/lang/String;
    const/4 v1, 0x7

    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v5

    check-cast v1, Ljava/util/Map;

    .line 340
    .local v1, "tmpMap":Ljava/util/Map;
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-interface {v1, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-interface {v1, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-interface {v1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    if-eqz v17, :cond_4

    .line 348
    move-object/from16 v5, v16

    move-object/from16 v0, v17

    .end local v17    # "nonFatalErrorStr":Ljava/lang/String;
    .restart local v0    # "nonFatalErrorStr":Ljava/lang/String;
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 347
    .end local v0    # "nonFatalErrorStr":Ljava/lang/String;
    .restart local v17    # "nonFatalErrorStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    .line 350
    .end local v17    # "nonFatalErrorStr":Ljava/lang/String;
    .restart local v0    # "nonFatalErrorStr":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v1

    .end local v1    # "tmpMap":Ljava/util/Map;
    check-cast v1, Ljava/util/Map;

    .line 318
    :goto_2
    return-object v1
.end method

.method private final handleCancellation()V
    .locals 1

    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 391
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    .line 392
    return-void
.end method

.method private final handleError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 386
    return-void
.end method

.method private final handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    .locals 2
    .param p1, "decodedImage"    # Lcom/facebook/imagepipeline/image/CloseableImage;
    .param p2, "status"    # I

    .line 373
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getCloseableReferenceFactory()Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;->create(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 372
    nop

    .line 374
    .local v0, "decodedImageRef":Lcom/facebook/common/references/CloseableReference;
    nop

    .line 375
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v1
.end method

.method private final internalDecode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 4
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "length"    # I
    .param p3, "quality"    # Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 265
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getReclaimMemoryRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getRecoverFromDecoderOOM()Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "recoverFromDecoderOOM.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 267
    .local v0, "recover":Z
    :goto_0
    nop

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    if-eqz v0, :cond_2

    .line 274
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getReclaimMemoryRunnable()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 275
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 278
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v2

    move-object v1, v2

    .line 267
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    nop

    .line 266
    nop

    .line 280
    .local v1, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    return-object v1

    .line 271
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    throw v1
.end method

.method private final maybeFinish(Z)V
    .locals 3
    .param p1, "shouldFinish"    # Z

    .line 360
    monitor-enter p0

    const/4 v0, 0x0

    .line 361
    .local v0, "$i$a$-synchronized-DecodeProducer$ProgressiveDecoder$maybeFinish$1":I
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isFinished:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isFinished:Z

    .line 366
    nop

    .end local v0    # "$i$a$-synchronized-DecodeProducer$ProgressiveDecoder$maybeFinish$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    .line 367
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->clearJob()V

    .line 368
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    .restart local v0    # "$i$a$-synchronized-DecodeProducer$ProgressiveDecoder$maybeFinish$1":I
    :cond_1
    :goto_0
    nop

    .end local v0    # "$i$a$-synchronized-DecodeProducer$ProgressiveDecoder$maybeFinish$1":I
    monitor-exit p0

    return-void
.end method

.method private final maybeIncreaseSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 2
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 105
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v0, v0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Lcom/facebook/imageutils/BitmapUtil;->getPixelSizeForBitmapConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 110
    .local v0, "pixelSize":I
    const/high16 v1, 0x6400000

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSizeJPEG(Lcom/facebook/imagepipeline/image/EncodedImage;II)I

    move-result v1

    .line 109
    nop

    .line 111
    .local v1, "sampleSize":I
    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->setSampleSize(I)V

    .line 112
    return-void
.end method

.method private final setImageExtras(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    .locals 4
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "image"    # Lcom/facebook/imagepipeline/image/CloseableImage;
    .param p3, "lastScheduledScanNumber"    # I

    .line 288
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encoded_width"

    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encoded_height"

    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encoded_size"

    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "image_color_space"

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    instance-of v0, p2, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz v0, :cond_0

    .line 294
    move-object v0, p2

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 295
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "bitmap_config"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/image/CloseableImage;->putExtras(Ljava/util/Map;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "last_scan_num"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    return-void
.end method


# virtual methods
.method protected abstract getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I
.end method

.method protected final getLastScheduledScanNumber()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->lastScheduledScanNumber:I

    return v0
.end method

.method protected abstract getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
.end method

.method public onCancellationImpl()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V

    .line 153
    return-void
.end method

.method public onFailureImpl(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 10
    .param p1, "newResult"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I

    .line 115
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "DecodeProducer#onNewResultImpl"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 546
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const-string v4, "Encoded image is null."

    const-string v5, "Encoded image is not valid."

    const/4 v6, 0x1

    .line 121
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 546
    const-string v7, "cached_value_found"

    const/4 v8, 0x4

    if-nez v3, :cond_6

    .line 547
    const/4 v3, 0x0

    .line 116
    .local v3, "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v9

    .line 117
    .local v9, "isLast":Z
    if-eqz v9, :cond_2

    .line 118
    if-nez p1, :cond_1

    .line 120
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v5, v7}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 121
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 120
    nop

    .line 119
    nop

    .line 122
    .local v5, "cacheHit":Z
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v6}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getCancelDecodeOnCacheMiss()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v6}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 124
    sget-object v7, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    if-eq v6, v7, :cond_0

    .line 125
    if-eqz v5, :cond_2

    .line 126
    :cond_0
    new-instance v6, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    invoke-direct {v6, v4}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {p0, v6}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    .line 127
    return-void

    .line 129
    .end local v5    # "cacheHit":Z
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 130
    new-instance v4, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    invoke-direct {v4, v5}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    .line 131
    return-void

    .line 134
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    return-void

    .line 137
    :cond_3
    invoke-static {p2, v8}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result v4

    .line 138
    .local v4, "isPlaceholder":Z
    if-nez v9, :cond_4

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    :cond_4
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z

    .line 141
    :cond_5
    nop

    .line 547
    .end local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .end local v4    # "isPlaceholder":Z
    .end local v9    # "isLast":Z
    goto/16 :goto_1

    .line 550
    :cond_6
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 551
    nop

    .line 552
    const/4 v3, 0x0

    .line 116
    .restart local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v9

    .line 117
    .restart local v9    # "isLast":Z
    if-eqz v9, :cond_9

    .line 118
    if-nez p1, :cond_8

    .line 120
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v5, v7}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 121
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 120
    nop

    .line 119
    nop

    .line 122
    .restart local v5    # "cacheHit":Z
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v6}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getCancelDecodeOnCacheMiss()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 123
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v6}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 124
    sget-object v7, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    if-eq v6, v7, :cond_7

    .line 125
    if-eqz v5, :cond_9

    .line 126
    :cond_7
    new-instance v6, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    invoke-direct {v6, v4}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {p0, v6}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    nop

    .line 554
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .end local v5    # "cacheHit":Z
    .end local v9    # "isLast":Z
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    .line 129
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .restart local v9    # "isLast":Z
    :cond_8
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid()Z

    move-result v4

    if-nez v4, :cond_9

    .line 130
    new-instance v4, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    invoke-direct {v4, v5}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    .line 131
    nop

    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .end local v9    # "isLast":Z
    goto :goto_0

    .line 134
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .restart local v9    # "isLast":Z
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 135
    nop

    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .end local v9    # "isLast":Z
    goto :goto_0

    .line 137
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .restart local v9    # "isLast":Z
    :cond_a
    invoke-static {p2, v8}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result v4

    .line 138
    .restart local v4    # "isPlaceholder":Z
    if-nez v9, :cond_b

    if-nez v4, :cond_b

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 139
    :cond_b
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z

    .line 141
    :cond_c
    nop

    .end local v3    # "$i$a$-traceSection-DecodeProducer$ProgressiveDecoder$onNewResultImpl$1":I
    .end local v4    # "isPlaceholder":Z
    .end local v9    # "isLast":Z
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    nop

    .line 554
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 552
    nop

    .line 141
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    :goto_1
    return-void

    .line 554
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "newResult"    # Ljava/lang/Object;
    .param p2, "status"    # I

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method

.method protected onProgressUpdateImpl(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 144
    const v0, 0x3f7d70a4    # 0.99f

    mul-float/2addr v0, p1

    invoke-super {p0, v0}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->onProgressUpdateImpl(F)V

    .line 145
    return-void
.end method

.method protected final setLastScheduledScanNumber(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 102
    iput p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->lastScheduledScanNumber:I

    return-void
.end method

.method protected updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
    .locals 1
    .param p1, "ref"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I

    .line 157
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->jobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->updateJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v0

    return v0
.end method
