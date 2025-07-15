.class final Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ProducerSequenceFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;-><init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/NetworkFetcher;ZZLcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;ZZZLjava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProducerSequenceFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,636:1\n40#2,9:637\n*S KotlinDebug\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2\n*L\n341#1:637,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2;->this$0:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 342
    nop

    .line 341
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2;->this$0:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    const-string v2, "ProducerSequenceFactory#getBackgroundLocalContentUriFetchToEncodeMemorySequence:init"

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 637
    .local v3, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v4

    const-string/jumbo v5, "producerFactory.newLocalContentUriFetchProducer()"

    if-nez v4, :cond_0

    .line 638
    const/4 v4, 0x0

    .line 343
    .local v4, "$i$a$-traceSection-ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2$1":I
    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getProducerFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newLocalContentUriFetchProducer()Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v6

    .line 345
    .local v5, "localFileFetchProducer":Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;
    move-object v6, v5

    check-cast v6, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-static {v1, v6}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    .line 344
    nop

    .line 346
    .local v6, "toEncodedMultiplexProducer":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getProducerFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-result-object v7

    .line 347
    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getThreadHandoffProducerQueue$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    move-result-object v1

    .line 346
    invoke-virtual {v7, v6, v1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBackgroundThreadHandoffProducer(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    .line 638
    .end local v4    # "$i$a$-traceSection-ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2$1":I
    .end local v5    # "localFileFetchProducer":Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;
    .end local v6    # "toEncodedMultiplexProducer":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_0

    .line 641
    :cond_0
    invoke-static {v2}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 642
    nop

    .line 643
    const/4 v4, 0x0

    .line 343
    .restart local v4    # "$i$a$-traceSection-ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2$1":I
    :try_start_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getProducerFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newLocalContentUriFetchProducer()Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v6

    .line 345
    .restart local v5    # "localFileFetchProducer":Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;
    move-object v6, v5

    check-cast v6, Lcom/facebook/imagepipeline/producers/Producer;

    invoke-static {v1, v6}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$newEncodedCacheMultiplexToTranscodeSequence(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    .line 344
    nop

    .line 346
    .restart local v6    # "toEncodedMultiplexProducer":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getProducerFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-result-object v7

    .line 347
    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getThreadHandoffProducerQueue$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    move-result-object v1

    .line 346
    invoke-virtual {v7, v6, v1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBackgroundThreadHandoffProducer(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    .end local v4    # "$i$a$-traceSection-ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2$1":I
    .end local v5    # "localFileFetchProducer":Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;
    .end local v6    # "toEncodedMultiplexProducer":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 645
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 643
    nop

    .line 341
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$traceSection":I
    :goto_0
    return-object v1

    .line 645
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$traceSection":I
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundLocalContentUriFetchToEncodeMemorySequence$2;->invoke()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    return-object v0
.end method
