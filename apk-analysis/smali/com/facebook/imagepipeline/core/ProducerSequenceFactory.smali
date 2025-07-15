.class public final Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
.super Ljava/lang/Object;
.source "ProducerSequenceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProducerSequenceFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,636:1\n40#2,9:637\n40#2,9:646\n40#2,2:655\n44#2,5:658\n40#2,9:663\n40#2,9:672\n40#2,9:681\n1#3:657\n*S KotlinDebug\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory\n*L\n79#1:637,9\n167#1:646,9\n198#1:655,2\n198#1:658,5\n298#1:663,9\n483#1:672,9\n511#1:681,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u0083\u00012\u00020\u0001:\u0002\u0083\u0001B\u0089\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\t\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\u0006\u0010\u0016\u001a\u00020\t\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018\u00a2\u0006\u0002\u0010\u001aJ\u001c\u0010j\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u0006\u0010k\u001a\u00020lH\u0002J(\u0010m\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u0012\u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001cH\u0002J\u0016\u0010o\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\u001c2\u0006\u0010k\u001a\u00020lJ$\u0010p\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\u001c2\u0012\u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001cH\u0002J\u001a\u0010q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u0006\u0010k\u001a\u00020lJ(\u0010r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u0012\u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001cH\u0002J\u0016\u0010s\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\u001c2\u0006\u0010k\u001a\u00020lJ\u001a\u0010t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0*0\u001c2\u0006\u0010k\u001a\u00020lJ(\u0010u\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u0012\u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001cH\u0002J(\u0010v\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u0012\u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001cH\u0002J \u0010w\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cJ\"\u0010x\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J;\u0010x\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c2\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0012\u0010y\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0{0zH\u0002\u00a2\u0006\u0002\u0010|J\u0018\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0007J\u001c\u0010~\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u001c\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J)\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0012\u0010y\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0{0zH\u0002\u00a2\u0006\u0003\u0010\u0081\u0001J6\u0010\u0082\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0012\u0010y\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0{0zH\u0002\u00a2\u0006\u0002\u0010|R\u000e\u0010\u0016\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001e\u0010\u001fR#\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010!\u001a\u0004\u0008#\u0010\u001fR#\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010!\u001a\u0004\u0008&\u0010\u001fRH\u0010(\u001a&\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c0)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101RD\u00102\u001a\"\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001030\u001c0)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00084\u0010-\u001a\u0004\u00085\u0010/\"\u0004\u00086\u00101R!\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010!\u001a\u0004\u00088\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010!\u001a\u0004\u0008;\u0010\u001fR\u000e\u0010\u0011\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010!\u001a\u0004\u0008>\u0010\u001fR\'\u0010@\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010!\u001a\u0004\u0008B\u0010\u001fR\'\u0010D\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010!\u001a\u0004\u0008E\u0010\u001fR-\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0*0\u001c8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008J\u0010!\u0012\u0004\u0008H\u0010-\u001a\u0004\u0008I\u0010\u001fR#\u0010K\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008M\u0010!\u001a\u0004\u0008L\u0010\u001fR\'\u0010N\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010!\u001a\u0004\u0008O\u0010\u001fR\'\u0010Q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010!\u001a\u0004\u0008R\u0010\u001fR\'\u0010T\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8GX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010!\u001a\u0004\u0008U\u0010\u001fR\'\u0010W\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010!\u001a\u0004\u0008X\u0010\u001fR\'\u0010Z\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010!\u001a\u0004\u0008[\u0010\u001fR\'\u0010]\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010!\u001a\u0004\u0008^\u0010\u001fR#\u0010`\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010!\u001a\u0004\u0008a\u0010\u001fR\u0012\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000RH\u0010c\u001a&\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c0)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008d\u0010-\u001a\u0004\u0008e\u0010/\"\u0004\u0008f\u00101R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010g\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010!\u001a\u0004\u0008h\u0010\u001fR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0084\u0001"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
        "",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "producerFactory",
        "Lcom/facebook/imagepipeline/core/ProducerFactory;",
        "networkFetcher",
        "Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "resizeAndRotateEnabledForNetwork",
        "",
        "webpSupportEnabled",
        "threadHandoffProducerQueue",
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
        "downsampleMode",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "useBitmapPrepareToDraw",
        "partialImageCachingEnabled",
        "diskCacheEnabled",
        "imageTranscoderFactory",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "isEncodedMemoryCacheProbingEnabled",
        "isDiskCacheProbingEnabled",
        "allowDelay",
        "customProducerSequenceFactories",
        "",
        "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
        "(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/NetworkFetcher;ZZLcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;ZZZLjava/util/Set;)V",
        "backgroundLocalContentUriFetchToEncodeMemorySequence",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "getBackgroundLocalContentUriFetchToEncodeMemorySequence",
        "()Lcom/facebook/imagepipeline/producers/Producer;",
        "backgroundLocalContentUriFetchToEncodeMemorySequence$delegate",
        "Lkotlin/Lazy;",
        "backgroundLocalFileFetchToEncodeMemorySequence",
        "getBackgroundLocalFileFetchToEncodeMemorySequence",
        "backgroundLocalFileFetchToEncodeMemorySequence$delegate",
        "backgroundNetworkFetchToEncodedMemorySequence",
        "getBackgroundNetworkFetchToEncodedMemorySequence",
        "backgroundNetworkFetchToEncodedMemorySequence$delegate",
        "bitmapPrepareSequences",
        "",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "getBitmapPrepareSequences$annotations",
        "()V",
        "getBitmapPrepareSequences",
        "()Ljava/util/Map;",
        "setBitmapPrepareSequences",
        "(Ljava/util/Map;)V",
        "closeableImagePrefetchSequences",
        "Ljava/lang/Void;",
        "getCloseableImagePrefetchSequences$annotations",
        "getCloseableImagePrefetchSequences",
        "setCloseableImagePrefetchSequences",
        "commonNetworkFetchToEncodedMemorySequence",
        "getCommonNetworkFetchToEncodedMemorySequence",
        "commonNetworkFetchToEncodedMemorySequence$delegate",
        "dataFetchSequence",
        "getDataFetchSequence",
        "dataFetchSequence$delegate",
        "localAssetFetchSequence",
        "getLocalAssetFetchSequence",
        "localAssetFetchSequence$delegate",
        "localContentUriFetchEncodedImageProducerSequence",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "getLocalContentUriFetchEncodedImageProducerSequence",
        "localContentUriFetchEncodedImageProducerSequence$delegate",
        "localContentUriFetchSequence",
        "getLocalContentUriFetchSequence",
        "localContentUriFetchSequence$delegate",
        "localFileFetchEncodedImageProducerSequence",
        "getLocalFileFetchEncodedImageProducerSequence$annotations",
        "getLocalFileFetchEncodedImageProducerSequence",
        "localFileFetchEncodedImageProducerSequence$delegate",
        "localFileFetchToEncodedMemoryPrefetchSequence",
        "getLocalFileFetchToEncodedMemoryPrefetchSequence",
        "localFileFetchToEncodedMemoryPrefetchSequence$delegate",
        "localImageFileFetchSequence",
        "getLocalImageFileFetchSequence",
        "localImageFileFetchSequence$delegate",
        "localResourceFetchSequence",
        "getLocalResourceFetchSequence",
        "localResourceFetchSequence$delegate",
        "localThumbnailBitmapSdk29FetchSequence",
        "getLocalThumbnailBitmapSdk29FetchSequence",
        "localThumbnailBitmapSdk29FetchSequence$delegate",
        "localVideoFileFetchSequence",
        "getLocalVideoFileFetchSequence",
        "localVideoFileFetchSequence$delegate",
        "networkFetchEncodedImageProducerSequence",
        "getNetworkFetchEncodedImageProducerSequence",
        "networkFetchEncodedImageProducerSequence$delegate",
        "networkFetchSequence",
        "getNetworkFetchSequence",
        "networkFetchSequence$delegate",
        "networkFetchToEncodedMemoryPrefetchSequence",
        "getNetworkFetchToEncodedMemoryPrefetchSequence",
        "networkFetchToEncodedMemoryPrefetchSequence$delegate",
        "postprocessorSequences",
        "getPostprocessorSequences$annotations",
        "getPostprocessorSequences",
        "setPostprocessorSequences",
        "qualifiedResourceFetchSequence",
        "getQualifiedResourceFetchSequence",
        "qualifiedResourceFetchSequence$delegate",
        "getBasicDecodedImageSequence",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "getBitmapPrepareSequence",
        "inputProducer",
        "getDecodedImagePrefetchProducerSequence",
        "getDecodedImagePrefetchSequence",
        "getDecodedImageProducerSequence",
        "getDelaySequence",
        "getEncodedImagePrefetchProducerSequence",
        "getEncodedImageProducerSequence",
        "getPostprocessorSequence",
        "newBitmapCacheGetToBitmapCacheSequence",
        "newBitmapCacheGetToDecodeSequence",
        "newBitmapCacheGetToLocalTransformSequence",
        "thumbnailProducers",
        "",
        "Lcom/facebook/imagepipeline/producers/ThumbnailProducer;",
        "(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;",
        "newCommonNetworkFetchToEncodedMemorySequence",
        "newDiskCacheSequence",
        "newEncodedCacheMultiplexToTranscodeSequence",
        "newLocalThumbnailProducer",
        "([Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;",
        "newLocalTransformationsSequence",
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
.field public static final Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;


# instance fields
.field private final allowDelay:Z

.field private final backgroundLocalContentUriFetchToEncodeMemorySequence$delegate:Lkotlin/Lazy;

.field private final backgroundLocalFileFetchToEncodeMemorySequence$delegate:Lkotlin/Lazy;

.field private final backgroundNetworkFetchToEncodedMemorySequence$delegate:Lkotlin/Lazy;

.field private bitmapPrepareSequences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private closeableImagePrefetchSequences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final commonNetworkFetchToEncodedMemorySequence$delegate:Lkotlin/Lazy;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final customProducerSequenceFactories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final dataFetchSequence$delegate:Lkotlin/Lazy;

.field private final diskCacheEnabled:Z

.field private final downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private final imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field private final isDiskCacheProbingEnabled:Z

.field private final isEncodedMemoryCacheProbingEnabled:Z

.field private final localAssetFetchSequence$delegate:Lkotlin/Lazy;

.field private final localContentUriFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

.field private final localContentUriFetchSequence$delegate:Lkotlin/Lazy;

.field private final localFileFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

.field private final localFileFetchToEncodedMemoryPrefetchSequence$delegate:Lkotlin/Lazy;

.field private final localImageFileFetchSequence$delegate:Lkotlin/Lazy;

.field private final localResourceFetchSequence$delegate:Lkotlin/Lazy;

.field private final localThumbnailBitmapSdk29FetchSequence$delegate:Lkotlin/Lazy;

.field private final localVideoFileFetchSequence$delegate:Lkotlin/Lazy;

.field private final networkFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

.field private final networkFetchSequence$delegate:Lkotlin/Lazy;

.field private final networkFetchToEncodedMemoryPrefetchSequence$delegate:Lkotlin/Lazy;

.field private final networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private final partialImageCachingEnabled:Z

.field private postprocessorSequences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

.field private final qualifiedResourceFetchSequence$delegate:Lkotlin/Lazy;

.field private final resizeAndRotateEnabledForNetwork:Z

.field private final threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

.field private final useBitmapPrepareToDraw:Z

.field private final webpSupportEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/NetworkFetcher;ZZLcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;ZZZLjava/util/Set;)V
    .locals 17
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "producerFactory"    # Lcom/facebook/imagepipeline/core/ProducerFactory;
    .param p3, "networkFetcher"    # Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .param p4, "resizeAndRotateEnabledForNetwork"    # Z
    .param p5, "webpSupportEnabled"    # Z
    .param p6, "threadHandoffProducerQueue"    # Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;
    .param p7, "downsampleMode"    # Lcom/facebook/imagepipeline/core/DownsampleMode;
    .param p8, "useBitmapPrepareToDraw"    # Z
    .param p9, "partialImageCachingEnabled"    # Z
    .param p10, "diskCacheEnabled"    # Z
    .param p11, "imageTranscoderFactory"    # Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .param p12, "isEncodedMemoryCacheProbingEnabled"    # Z
    .param p13, "isDiskCacheProbingEnabled"    # Z
    .param p14, "allowDelay"    # Z
    .param p15, "customProducerSequenceFactories"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/facebook/imagepipeline/core/ProducerFactory;",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;ZZ",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
            "Lcom/facebook/imagepipeline/core/DownsampleMode;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
            "ZZZ",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p11

    const-string v7, "contentResolver"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "producerFactory"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "networkFetcher"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "threadHandoffProducerQueue"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "downsampleMode"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "imageTranscoderFactory"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 34
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 35
    iput-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 36
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->resizeAndRotateEnabledForNetwork:Z

    .line 37
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->webpSupportEnabled:Z

    .line 38
    iput-object v4, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 39
    iput-object v5, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 40
    move/from16 v9, p8

    iput-boolean v9, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->useBitmapPrepareToDraw:Z

    .line 41
    move/from16 v10, p9

    iput-boolean v10, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->partialImageCachingEnabled:Z

    .line 42
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->diskCacheEnabled:Z

    .line 43
    iput-object v6, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 44
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isEncodedMemoryCacheProbingEnabled:Z

    .line 45
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isDiskCacheProbingEnabled:Z

    .line 46
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->allowDelay:Z

    .line 47
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    .line 55
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v1, v16

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->postprocessorSequences:Ljava/util/Map;

    .line 60
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->closeableImagePrefetchSequences:Ljava/util/Map;

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->bitmapPrepareSequences:Ljava/util/Map;

    .line 108
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$networkFetchEncodedImageProducerSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$networkFetchEncodedImageProducerSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

    .line 117
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localFileFetchEncodedImageProducerSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localFileFetchEncodedImageProducerSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localFileFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

    .line 128
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localContentUriFetchEncodedImageProducerSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localContentUriFetchEncodedImageProducerSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localContentUriFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

    .line 256
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$networkFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$networkFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetchSequence$delegate:Lkotlin/Lazy;

    .line 266
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->backgroundNetworkFetchToEncodedMemorySequence$delegate:Lkotlin/Lazy;

    .line 278
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$networkFetchToEncodedMemoryPrefetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$networkFetchToEncodedMemoryPrefetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetchToEncodedMemoryPrefetchSequence$delegate:Lkotlin/Lazy;

    .line 288
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$commonNetworkFetchToEncodedMemorySequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$commonNetworkFetchToEncodedMemorySequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->commonNetworkFetchToEncodedMemorySequence$delegate:Lkotlin/Lazy;

    .line 316
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localFileFetchToEncodedMemoryPrefetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localFileFetchToEncodedMemoryPrefetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localFileFetchToEncodedMemoryPrefetchSequence$delegate:Lkotlin/Lazy;

    .line 326
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalFileFetchToEncodeMemorySequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalFileFetchToEncodeMemorySequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->backgroundLocalFileFetchToEncodeMemorySequence$delegate:Lkotlin/Lazy;

    .line 340
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->backgroundLocalContentUriFetchToEncodeMemorySequence$delegate:Lkotlin/Lazy;

    .line 357
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localImageFileFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localImageFileFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localImageFileFetchSequence$delegate:Lkotlin/Lazy;

    .line 363
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localVideoFileFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localVideoFileFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localVideoFileFetchSequence$delegate:Lkotlin/Lazy;

    .line 374
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localContentUriFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localContentUriFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localContentUriFetchSequence$delegate:Lkotlin/Lazy;

    .line 389
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localThumbnailBitmapSdk29FetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localThumbnailBitmapSdk29FetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localThumbnailBitmapSdk29FetchSequence$delegate:Lkotlin/Lazy;

    .line 403
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$qualifiedResourceFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$qualifiedResourceFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->qualifiedResourceFetchSequence$delegate:Lkotlin/Lazy;

    .line 414
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localResourceFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localResourceFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localResourceFetchSequence$delegate:Lkotlin/Lazy;

    .line 425
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localAssetFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$localAssetFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localAssetFetchSequence$delegate:Lkotlin/Lazy;

    .line 434
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$dataFetchSequence$2;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$dataFetchSequence$2;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->dataFetchSequence$delegate:Lkotlin/Lazy;

    .line 32
    return-void
.end method

.method public static final synthetic access$getImageTranscoderFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object v0
.end method

.method public static final synthetic access$getNetworkFetcher$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object v0
.end method

.method public static final synthetic access$getProducerFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/core/ProducerFactory;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    return-object v0
.end method

.method public static final synthetic access$getThreadHandoffProducerQueue$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    return-object v0
.end method

.method public static final synthetic access$newBitmapCacheGetToBitmapCacheSequence(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newBitmapCacheGetToBitmapCacheSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$newBitmapCacheGetToLocalTransformSequence(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newBitmapCacheGetToLocalTransformSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$newBitmapCacheGetToLocalTransformSequence(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "thumbnailProducers"    # [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newBitmapCacheGetToLocalTransformSequence(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    return-object v0
.end method

.method private final getBasicDecodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 16
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 198
    move-object/from16 v8, p0

    sget-object v9, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v9, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v0, "ProducerSequenceFactory#getBasicDecodedImageSequence"

    .local v0, "name$iv":Ljava/lang/String;
    move-object v10, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v10, "name$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 655
    .local v11, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const-string v12, "Unsupported uri scheme! Uri is: "

    const-string v1, "Uri is null."

    const-string v2, "imageRequest.sourceUri"

    if-nez v0, :cond_7

    .line 656
    const/4 v0, 0x0

    .line 199
    .local v0, "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v3

    .line 200
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_6

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUriType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 230
    :pswitch_0
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    if-eqz v1, :cond_5

    .line 231
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    goto :goto_1

    .line 227
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getQualifiedResourceFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDataFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_0

    .line 226
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalResourceFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_0

    .line 225
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalAssetFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_0

    .line 218
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLoadThumbnailOnlyForAndroidSdkAboveQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalThumbnailBitmapSdk29FetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    return-object v1

    .line 220
    :cond_0
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/media/MediaUtils;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalVideoFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    return-object v1

    .line 223
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalContentUriFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_0

    .line 211
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLoadThumbnailOnlyForAndroidSdkAboveQ()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalThumbnailBitmapSdk29FetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    return-object v1

    .line 214
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalImageFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_0

    .line 204
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLoadThumbnailOnlyForAndroidSdkAboveQ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalThumbnailBitmapSdk29FetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    return-object v1

    .line 207
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalVideoFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_0

    .line 202
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getNetworkFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    .line 201
    :goto_0
    nop

    .line 656
    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v13    # "uri":Landroid/net/Uri;
    goto/16 :goto_4

    .line 231
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;

    .line 233
    .local v15, "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    iget-object v4, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 237
    iget-object v5, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 238
    iget-boolean v6, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isEncodedMemoryCacheProbingEnabled:Z

    .line 239
    iget-boolean v7, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isDiskCacheProbingEnabled:Z

    .line 233
    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;->getCustomDecodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;ZZ)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    .line 232
    nop

    .line 240
    .local v1, "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    if-eqz v1, :cond_4

    .line 241
    return-object v1

    .line 245
    .end local v1    # "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    .end local v15    # "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 246
    sget-object v2, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v2, v13}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$getShortenedUriString(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :cond_6
    const/4 v2, 0x0

    .line 200
    .local v2, "$i$a$-checkNotNull-ProducerSequenceFactory$getBasicDecodedImageSequence$1$1":I
    nop

    .end local v2    # "$i$a$-checkNotNull-ProducerSequenceFactory$getBasicDecodedImageSequence$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-static {v10}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 659
    nop

    .line 660
    const/4 v0, 0x0

    .line 199
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v3

    .line 200
    .restart local v13    # "uri":Landroid/net/Uri;
    if-eqz v13, :cond_e

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUriType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 230
    :pswitch_9
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    goto :goto_5

    .line 227
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getQualifiedResourceFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_3

    .line 228
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDataFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_3

    .line 226
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalResourceFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_3

    .line 225
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalAssetFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_3

    .line 218
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLoadThumbnailOnlyForAndroidSdkAboveQ()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalThumbnailBitmapSdk29FetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    .end local v13    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v1

    .line 220
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_8
    :try_start_1
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/media/MediaUtils;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalVideoFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    .end local v13    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 223
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalContentUriFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_3

    .line 211
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLoadThumbnailOnlyForAndroidSdkAboveQ()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalThumbnailBitmapSdk29FetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    .end local v13    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 214
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalImageFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_3

    .line 204
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLoadThumbnailOnlyForAndroidSdkAboveQ()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalThumbnailBitmapSdk29FetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    .end local v13    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 207
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalVideoFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    goto :goto_3

    .line 202
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getNetworkFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_3
    nop

    .line 660
    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v13    # "uri":Landroid/net/Uri;
    nop

    .line 662
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 660
    nop

    .line 249
    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    :goto_4
    return-object v1

    .line 230
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :goto_5
    if-eqz v1, :cond_d

    .line 231
    :try_start_2
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;

    .line 233
    .local v1, "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    iget-object v4, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 237
    iget-object v5, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 238
    iget-boolean v6, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isEncodedMemoryCacheProbingEnabled:Z

    .line 239
    iget-boolean v7, v8, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isDiskCacheProbingEnabled:Z

    .line 233
    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;->getCustomDecodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;ZZ)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    nop

    .line 240
    .local v2, "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    if-eqz v2, :cond_c

    .line 241
    nop

    .line 662
    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v1    # "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    .end local v2    # "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    .end local v13    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v2

    .line 245
    .restart local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_d
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 246
    sget-object v2, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v2, v13}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$getShortenedUriString(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    .end local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    throw v1

    .line 657
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :cond_e
    const/4 v2, 0x0

    .line 200
    .local v2, "$i$a$-checkNotNull-ProducerSequenceFactory$getBasicDecodedImageSequence$1$1":I
    nop

    .end local v2    # "$i$a$-checkNotNull-ProducerSequenceFactory$getBasicDecodedImageSequence$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v10    # "name$iv":Ljava/lang/String;
    .end local v11    # "$i$f$traceSection":I
    .end local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 662
    .end local v0    # "$i$a$-traceSection-ProducerSequenceFactory$getBasicDecodedImageSequence$1":I
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local v9    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v10    # "name$iv":Ljava/lang/String;
    .restart local v11    # "$i$f$traceSection":I
    .restart local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private final declared-synchronized getBitmapPrepareSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->bitmapPrepareSequences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    .line 609
    .local v0, "bitmapPrepareProducer":Lcom/facebook/imagepipeline/producers/Producer;
    if-nez v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBitmapPrepareProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/Producer;

    move-object v0, v1

    .line 611
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->bitmapPrepareSequences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local p0    # "this":Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 607
    .end local v0    # "bitmapPrepareProducer":Lcom/facebook/imagepipeline/producers/Producer;
    .end local p1    # "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic getBitmapPrepareSequences$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCloseableImagePrefetchSequences$annotations()V
    .locals 0

    return-void
.end method

.method private final declared-synchronized getDecodedImagePrefetchSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->closeableImagePrefetchSequences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    .line 596
    .local v0, "result":Lcom/facebook/imagepipeline/producers/Producer;
    if-nez v0, :cond_0

    .line 597
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newSwallowResultProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/SwallowResultProducer;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/Producer;

    move-object v0, v1

    .line 598
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->closeableImagePrefetchSequences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    .end local p0    # "this":Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 594
    .end local v0    # "result":Lcom/facebook/imagepipeline/producers/Producer;
    .end local p1    # "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized getDelaySequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDelayProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DelayProducer;

    move-result-object v0

    const-string/jumbo v1, "producerFactory.newDelayProducer(inputProducer)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 620
    .end local p0    # "this":Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .end local p1    # "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic getLocalFileFetchEncodedImageProducerSequence$annotations()V
    .locals 0

    return-void
.end method

.method private final declared-synchronized getPostprocessorSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->postprocessorSequences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    .line 582
    .local v0, "result":Lcom/facebook/imagepipeline/producers/Producer;
    if-nez v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newPostprocessorProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    move-result-object v1

    const-string/jumbo v2, "producerFactory.newPostp\u2026orProducer(inputProducer)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    .local v1, "postprocessorProducer":Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-object v3, v1

    check-cast v3, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newPostprocessorBitmapMemoryCacheProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/producers/Producer;

    move-object v0, v2

    .line 585
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->postprocessorSequences:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    .end local v1    # "postprocessorProducer":Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
    .end local p0    # "this":Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 580
    .end local v0    # "result":Lcom/facebook/imagepipeline/producers/Producer;
    .end local p1    # "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic getPostprocessorSequences$annotations()V
    .locals 0

    return-void
.end method

.method private final newBitmapCacheGetToBitmapCacheSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 6
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBitmapMemoryCacheProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;

    move-result-object v0

    const-string/jumbo v1, "producerFactory.newBitma\u2026heProducer(inputProducer)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    .local v0, "bitmapMemoryCacheProducer":Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-object v2, v0

    check-cast v2, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBitmapMemoryCacheKeyMultiplexProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheKeyMultiplexProducer;

    move-result-object v1

    const-string/jumbo v2, "producerFactory.newBitma\u2026itmapMemoryCacheProducer)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    nop

    .line 536
    .local v1, "bitmapKeyMultiplexProducer":Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheKeyMultiplexProducer;
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 537
    move-object v3, v1

    check-cast v3, Lcom/facebook/imagepipeline/producers/Producer;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 536
    invoke-virtual {v2, v3, v4}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBackgroundThreadHandoffProducer(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    const-string/jumbo v3, "producerFactory.newBackg\u2026readHandoffProducerQueue)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    nop

    .line 538
    .local v2, "threadHandoffProducer":Lcom/facebook/imagepipeline/producers/Producer;
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isEncodedMemoryCacheProbingEnabled:Z

    const-string/jumbo v4, "producerFactory.newBitma\u2026er(threadHandoffProducer)"

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isDiskCacheProbingEnabled:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBitmapMemoryCacheGetProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v3

    .line 540
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBitmapMemoryCacheGetProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    nop

    .line 541
    .local v3, "bitmapMemoryCacheGetProducer":Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;
    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-object v5, v3

    check-cast v5, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-virtual {v4, v5}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBitmapProbeProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;

    move-result-object v4

    const-string/jumbo v5, "producerFactory.newBitma\u2026apMemoryCacheGetProducer)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v4
.end method

.method private final newBitmapCacheGetToLocalTransformSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 3
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 452
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newLocalExifThumbnailProducer()Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    move-result-object v1

    const-string/jumbo v2, "producerFactory.newLocalExifThumbnailProducer()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 451
    nop

    .line 453
    .local v0, "defaultThumbnailProducers":[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newBitmapCacheGetToLocalTransformSequence(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    return-object v1
.end method

.method private final newBitmapCacheGetToLocalTransformSequence(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "thumbnailProducers"    # [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;[",
            "Lcom/facebook/imagepipeline/producers/ThumbnailProducer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 468
    move-object v0, p1

    .line 469
    .local v0, "ip":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    .line 470
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newLocalTransformationsSequence(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newBitmapCacheGetToDecodeSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    return-object v1
.end method

.method private final newDiskCacheSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 8
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ProducerSequenceFactory#newDiskCacheSequence"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 681
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const-string/jumbo v4, "producerFactory.newDiskC\u2026ducer(cacheWriteProducer)"

    const-string v5, "if (partialImageCachingE\u2026utProducer)\n            }"

    const-string/jumbo v6, "producerFactory.newParti\u2026heProducer(inputProducer)"

    if-nez v3, :cond_1

    .line 682
    const/4 v3, 0x0

    .line 513
    .local v3, "$i$a$-traceSection-ProducerSequenceFactory$newDiskCacheSequence$1":I
    iget-boolean v7, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->partialImageCachingEnabled:Z

    if-eqz v7, :cond_0

    .line 515
    iget-object v7, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v7, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newPartialDiskCacheProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/facebook/imagepipeline/producers/Producer;

    .line 514
    move-object v6, v7

    .line 516
    .local v6, "partialDiskCacheProducer":Lcom/facebook/imagepipeline/producers/Producer;
    iget-object v7, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDiskCacheWriteProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;

    move-result-object v6

    .end local v6    # "partialDiskCacheProducer":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_0

    .line 518
    :cond_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v6, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDiskCacheWriteProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;

    move-result-object v6

    .line 513
    :goto_0
    nop

    .line 515
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    move-object v5, v6

    .line 520
    .local v5, "cacheWriteProducer":Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-object v7, v5

    check-cast v7, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-virtual {v6, v7}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDiskCacheReadProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v6

    .line 685
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newDiskCacheSequence$1":I
    .end local v5    # "cacheWriteProducer":Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
    :cond_1
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 686
    nop

    .line 687
    const/4 v3, 0x0

    .line 513
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newDiskCacheSequence$1":I
    :try_start_0
    iget-boolean v7, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->partialImageCachingEnabled:Z

    if-eqz v7, :cond_2

    .line 515
    iget-object v7, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v7, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newPartialDiskCacheProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/facebook/imagepipeline/producers/Producer;

    .line 514
    move-object v6, v7

    .line 516
    .restart local v6    # "partialDiskCacheProducer":Lcom/facebook/imagepipeline/producers/Producer;
    iget-object v7, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDiskCacheWriteProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;

    move-result-object v7

    .end local v6    # "partialDiskCacheProducer":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_1

    .line 518
    :cond_2
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v6, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDiskCacheWriteProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;

    move-result-object v7

    .line 513
    :goto_1
    nop

    .line 515
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    move-object v5, v7

    .line 520
    .restart local v5    # "cacheWriteProducer":Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-object v7, v5

    check-cast v7, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-virtual {v6, v7}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDiskCacheReadProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newDiskCacheSequence$1":I
    .end local v5    # "cacheWriteProducer":Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v6

    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method

.method private final newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 5
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 498
    move-object v0, p1

    .line 499
    .local v0, "ip":Lcom/facebook/imagepipeline/producers/Producer;
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->diskCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 500
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newDiskCacheSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newEncodedMemoryCacheProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    const-string/jumbo v2, "producerFactory.newEncodedMemoryCacheProducer(ip)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    .local v1, "encodedMemoryCacheProducer":Lcom/facebook/imagepipeline/producers/Producer;
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->isDiskCacheProbingEnabled:Z

    const-string/jumbo v3, "producerFactory.newEncod\u2026codedMemoryCacheProducer)"

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newEncodedProbeProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    .local v2, "probeProducer":Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-object v4, v2

    check-cast v4, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newEncodedCacheKeyMultiplexProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/EncodedCacheKeyMultiplexProducer;

    move-result-object v3

    const-string/jumbo v4, "producerFactory.newEncod\u2026exProducer(probeProducer)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v3

    .line 507
    .end local v2    # "probeProducer":Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newEncodedCacheKeyMultiplexProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/EncodedCacheKeyMultiplexProducer;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v2
.end method

.method private final newLocalThumbnailProducer([Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 5
    .param p1, "thumbnailProducers"    # [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/ThumbnailProducer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newThumbnailBranchProducer([Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;

    move-result-object v0

    const-string/jumbo v1, "producerFactory.newThumb\u2026ducer(thumbnailProducers)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    .local v0, "thumbnailBranchProducer":Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 573
    move-object v2, v0

    check-cast v2, Lcom/facebook/imagepipeline/producers/Producer;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 572
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newResizeAndRotateProducer(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object v1

    const-string/jumbo v2, "producerFactory.newResiz\u2026, imageTranscoderFactory)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v1
.end method

.method private final newLocalTransformationsSequence(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "thumbnailProducers"    # [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;[",
            "Lcom/facebook/imagepipeline/producers/ThumbnailProducer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 560
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newAddImageTransformMetaDataProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;

    move-result-object v0

    const-string v1, "newAddImageTransformMeta\u2026taProducer(inputProducer)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    .line 559
    nop

    .line 562
    .local v0, "localImageProducer":Lcom/facebook/imagepipeline/producers/Producer;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newResizeAndRotateProducer(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object v1

    const-string/jumbo v2, "producerFactory.newResiz\u2026, imageTranscoderFactory)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/imagepipeline/producers/Producer;

    .line 561
    move-object v0, v1

    .line 563
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newThrottlingProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    move-result-object v1

    const-string/jumbo v2, "producerFactory.newThrot\u2026ducer(localImageProducer)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    .local v1, "localImageThrottlingProducer":Lcom/facebook/imagepipeline/producers/ThrottlingProducer;
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newLocalThumbnailProducer([Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/facebook/imagepipeline/producers/Producer;

    .line 564
    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBranchOnSeparateImagesProducer(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;

    move-result-object v2

    const-string v3, "newBranchOnSeparateImage\u2026lImageThrottlingProducer)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v2
.end method


# virtual methods
.method public final getBackgroundLocalContentUriFetchToEncodeMemorySequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->backgroundLocalContentUriFetchToEncodeMemorySequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-backgroundLocalCont\u2026ncodeMemorySequence>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getBackgroundLocalFileFetchToEncodeMemorySequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->backgroundLocalFileFetchToEncodeMemorySequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-backgroundLocalFile\u2026ncodeMemorySequence>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getBackgroundNetworkFetchToEncodedMemorySequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->backgroundNetworkFetchToEncodedMemorySequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-backgroundNetworkFe\u2026codedMemorySequence>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getBitmapPrepareSequences()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->bitmapPrepareSequences:Ljava/util/Map;

    return-object v0
.end method

.method public final getCloseableImagePrefetchSequences()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->closeableImagePrefetchSequences:Ljava/util/Map;

    return-object v0
.end method

.method public final getCommonNetworkFetchToEncodedMemorySequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->commonNetworkFetchToEncodedMemorySequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getDataFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->dataFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getDecodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getBasicDecodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    .line 189
    .local v0, "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->useBitmapPrepareToDraw:Z

    if-eqz v1, :cond_0

    .line 190
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getBitmapPrepareSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    .line 192
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImagePrefetchSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    return-object v1
.end method

.method public final getDecodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 6
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ProducerSequenceFactory#getDecodedImageProducerSequence"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 646
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 647
    const/4 v3, 0x0

    .line 168
    .local v3, "$i$a$-traceSection-ProducerSequenceFactory$getDecodedImageProducerSequence$1":I
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getBasicDecodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    .line 169
    .local v4, "pipelineSequence":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 170
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getPostprocessorSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    .line 172
    :cond_0
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->useBitmapPrepareToDraw:Z

    if-eqz v5, :cond_1

    .line 173
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getBitmapPrepareSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    .line 175
    :cond_1
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->allowDelay:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getDelayMs()I

    move-result v5

    if-lez v5, :cond_2

    .line 176
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDelaySequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    .line 178
    :cond_2
    return-object v4

    .line 650
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getDecodedImageProducerSequence$1":I
    .end local v4    # "pipelineSequence":Lcom/facebook/imagepipeline/producers/Producer;
    :cond_3
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 651
    nop

    .line 652
    const/4 v3, 0x0

    .line 168
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getDecodedImageProducerSequence$1":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getBasicDecodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    .line 169
    .restart local v4    # "pipelineSequence":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 170
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getPostprocessorSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v5

    move-object v4, v5

    .line 172
    :cond_4
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->useBitmapPrepareToDraw:Z

    if-eqz v5, :cond_5

    .line 173
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getBitmapPrepareSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v5

    move-object v4, v5

    .line 175
    :cond_5
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->allowDelay:Z

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getDelayMs()I

    move-result v5

    if-lez v5, :cond_6

    .line 176
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDelaySequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 178
    :cond_6
    nop

    .line 654
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getDecodedImageProducerSequence$1":I
    .end local v4    # "pipelineSequence":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v4

    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method

.method public final getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 5
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$validateEncodedImageRequest(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 146
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUriType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "imageRequest.sourceUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 153
    sget-object v2, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v2, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$getShortenedUriString(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported uri scheme for encoded image fetch! Uri is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalFileFetchToEncodedMemoryPrefetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getNetworkFetchToEncodedMemoryPrefetchSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getEncodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 10
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ProducerSequenceFactory#getEncodedImageProducerSequence"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 637
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const-string v4, "Unsupported uri scheme for encoded image fetch! Uri is: "

    const-string v5, "imageRequest.sourceUri"

    if-nez v3, :cond_2

    .line 638
    const/4 v3, 0x0

    .line 80
    .local v3, "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    sget-object v6, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v6, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$validateEncodedImageRequest(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v6

    .line 82
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUriType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 89
    :pswitch_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    if-eqz v6, :cond_1

    .line 90
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    goto :goto_1

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalContentUriFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalFileFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    goto :goto_0

    .line 83
    :pswitch_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getNetworkFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    .line 82
    :goto_0
    nop

    .line 638
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .end local v5    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 90
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;

    .line 92
    .local v7, "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    nop

    .line 93
    iget-object v8, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    iget-object v9, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 92
    invoke-virtual {v7, p1, p0, v8, v9}, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;->getCustomEncodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v8

    .line 91
    nop

    .line 94
    .local v8, "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    if-eqz v8, :cond_0

    .line 95
    return-object v8

    .line 99
    .end local v7    # "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    .end local v8    # "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 101
    sget-object v7, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v7, v5}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$getShortenedUriString(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 641
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 642
    nop

    .line 643
    const/4 v3, 0x0

    .line 80
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    :try_start_0
    sget-object v6, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v6, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$validateEncodedImageRequest(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v6

    .line 82
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUriType()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 89
    :pswitch_4
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    goto :goto_4

    .line 87
    :pswitch_5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalContentUriFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    goto :goto_2

    .line 85
    :pswitch_6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getLocalFileFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4

    goto :goto_2

    .line 83
    :pswitch_7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getNetworkFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_2
    nop

    .line 643
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .end local v5    # "uri":Landroid/net/Uri;
    nop

    .line 645
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 643
    nop

    .line 104
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    :goto_3
    return-object v4

    .line 89
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .restart local v5    # "uri":Landroid/net/Uri;
    :goto_4
    if-eqz v6, :cond_4

    .line 90
    :try_start_1
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->customProducerSequenceFactories:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;

    .line 92
    .restart local v7    # "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    nop

    .line 93
    iget-object v8, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    iget-object v9, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 92
    invoke-virtual {v7, p1, p0, v8, v9}, Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;->getCustomEncodedImageSequence(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    nop

    .line 94
    .restart local v8    # "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    if-eqz v8, :cond_3

    .line 95
    nop

    .line 645
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "customProducerSequenceFactory":Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;
    .end local v8    # "sequence":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v8

    .line 99
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 101
    sget-object v7, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->Companion:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;

    invoke-static {v7, v5}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;->access$getShortenedUriString(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$Companion;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$getEncodedImageProducerSequence$1":I
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final getLocalAssetFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localAssetFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalContentUriFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localContentUriFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalContentUriFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localContentUriFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalFileFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localFileFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalFileFetchToEncodedMemoryPrefetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localFileFetchToEncodedMemoryPrefetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-localFileFetchToEnc\u2026oryPrefetchSequence>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalImageFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localImageFileFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalResourceFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localResourceFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalThumbnailBitmapSdk29FetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localThumbnailBitmapSdk29FetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getLocalVideoFileFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->localVideoFileFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getNetworkFetchEncodedImageProducerSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetchEncodedImageProducerSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getNetworkFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getNetworkFetchToEncodedMemoryPrefetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->networkFetchToEncodedMemoryPrefetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-networkFetchToEncod\u2026oryPrefetchSequence>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getPostprocessorSequences()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->postprocessorSequences:Ljava/util/Map;

    return-object v0
.end method

.method public final getQualifiedResourceFetchSequence()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->qualifiedResourceFetchSequence$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final newBitmapCacheGetToDecodeSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 6
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "inputProducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ProducerSequenceFactory#newBitmapCacheGetToDecodeSequence"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 672
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const-string/jumbo v4, "producerFactory.newDecodeProducer(inputProducer)"

    if-nez v3, :cond_0

    .line 673
    const/4 v3, 0x0

    .line 484
    .local v3, "$i$a$-traceSection-ProducerSequenceFactory$newBitmapCacheGetToDecodeSequence$1":I
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v5, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDecodeProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DecodeProducer;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    .line 485
    .local v4, "decodeProducer":Lcom/facebook/imagepipeline/producers/DecodeProducer;
    move-object v5, v4

    check-cast v5, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newBitmapCacheGetToBitmapCacheSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v5

    return-object v5

    .line 676
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newBitmapCacheGetToDecodeSequence$1":I
    .end local v4    # "decodeProducer":Lcom/facebook/imagepipeline/producers/DecodeProducer;
    :cond_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 677
    nop

    .line 678
    const/4 v3, 0x0

    .line 484
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newBitmapCacheGetToDecodeSequence$1":I
    :try_start_0
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v5, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newDecodeProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/DecodeProducer;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    .line 485
    .restart local v4    # "decodeProducer":Lcom/facebook/imagepipeline/producers/DecodeProducer;
    move-object v5, v4

    check-cast v5, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newBitmapCacheGetToBitmapCacheSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newBitmapCacheGetToDecodeSequence$1":I
    .end local v4    # "decodeProducer":Lcom/facebook/imagepipeline/producers/DecodeProducer;
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v5

    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method

.method public final declared-synchronized newCommonNetworkFetchToEncodedMemorySequence(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 11
    .param p1, "networkFetcher"    # Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "networkFetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    const-string v1, "ProducerSequenceFactory#createCommonNetworkFetchToEncodedMemorySequence"

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 663
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 664
    const/4 v3, 0x0

    .line 300
    .local v3, "$i$a$-traceSection-ProducerSequenceFactory$newCommonNetworkFetchToEncodedMemorySequence$1":I
    nop

    .line 301
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v6, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newNetworkFetchProducer(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    const-string/jumbo v7, "producerFactory.newNetwo\u2026hProducer(networkFetcher)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v6}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    .line 299
    nop

    .line 303
    .local v6, "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-static {v6}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newAddImageTransformMetaDataProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;

    move-result-object v7

    const-string v8, "newAddImageTransformMeta\u2026taProducer(inputProducer)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/facebook/imagepipeline/producers/Producer;

    .line 302
    nop

    .line 305
    .local v7, "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    iget-object v8, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 306
    nop

    .line 307
    iget-boolean v9, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->resizeAndRotateEnabledForNetwork:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    sget-object v10, Lcom/facebook/imagepipeline/core/DownsampleMode;->NEVER:Lcom/facebook/imagepipeline/core/DownsampleMode;

    if-eq v9, v10, :cond_0

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    :cond_0
    move v4, v5

    .line 308
    :goto_0
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 305
    invoke-virtual {v8, v7, v4, v5}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newResizeAndRotateProducer(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object v4

    const-string/jumbo v5, "producerFactory.newResiz\u2026  imageTranscoderFactory)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/imagepipeline/producers/Producer;

    .line 304
    nop

    .line 309
    .end local v7    # "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    .local v4, "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    const-string v5, "networkFetchToEncodedMemorySequence"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v4

    .line 667
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newCommonNetworkFetchToEncodedMemorySequence$1":I
    .end local v4    # "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    .end local v6    # "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 668
    nop

    .line 669
    const/4 v3, 0x0

    .line 300
    .restart local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newCommonNetworkFetchToEncodedMemorySequence$1":I
    nop

    .line 301
    :try_start_2
    iget-object v6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-virtual {v6, p1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newNetworkFetchProducer(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    const-string/jumbo v7, "producerFactory.newNetwo\u2026hProducer(networkFetcher)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v6}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    .line 299
    nop

    .line 303
    .restart local v6    # "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-static {v6}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newAddImageTransformMetaDataProducer(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;

    move-result-object v7

    const-string v8, "newAddImageTransformMeta\u2026taProducer(inputProducer)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/facebook/imagepipeline/producers/Producer;

    .line 302
    nop

    .line 305
    .restart local v7    # "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    iget-object v8, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->producerFactory:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 306
    nop

    .line 307
    iget-boolean v9, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->resizeAndRotateEnabledForNetwork:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    sget-object v10, Lcom/facebook/imagepipeline/core/DownsampleMode;->NEVER:Lcom/facebook/imagepipeline/core/DownsampleMode;

    if-eq v9, v10, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 308
    :goto_1
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 305
    invoke-virtual {v8, v7, v4, v5}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newResizeAndRotateProducer(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object v4

    const-string/jumbo v5, "producerFactory.newResiz\u2026  imageTranscoderFactory)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/imagepipeline/producers/Producer;

    .line 304
    nop

    .line 309
    .end local v7    # "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    .restart local v4    # "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    const-string v5, "networkFetchToEncodedMemorySequence"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ProducerSequenceFactory$newCommonNetworkFetchToEncodedMemorySequence$1":I
    .end local v4    # "networkFetchToEncodedMemorySequence":Lcom/facebook/imagepipeline/producers/Producer;
    .end local v6    # "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;
    :try_start_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v4

    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3

    .line 297
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local p1    # "networkFetcher":Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final setBitmapPrepareSequences(Ljava/util/Map;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->bitmapPrepareSequences:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public final setCloseableImagePrefetchSequences(Ljava/util/Map;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->closeableImagePrefetchSequences:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public final setPostprocessorSequences(Ljava/util/Map;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->postprocessorSequences:Ljava/util/Map;

    .line 55
    return-void
.end method
