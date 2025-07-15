.class final Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2;
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
    value = "SMAP\nProducerSequenceFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,636:1\n40#2,9:637\n*S KotlinDebug\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2\n*L\n267#1:637,9\n*E\n"
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

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2;->this$0:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence:init"

    .local v1, "name$iv":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2;->this$0:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    const/4 v3, 0x0

    .line 637
    .local v3, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 638
    const/4 v4, 0x0

    .line 269
    .local v4, "$i$a$-traceSection-ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2$1":I
    invoke-static {v2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getProducerFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-result-object v5

    .line 270
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getCommonNetworkFetchToEncodedMemorySequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    invoke-static {v2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getThreadHandoffProducerQueue$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    move-result-object v2

    .line 269
    invoke-virtual {v5, v6, v2}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBackgroundThreadHandoffProducer(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 638
    .end local v4    # "$i$a$-traceSection-ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2$1":I
    goto :goto_0

    .line 641
    :cond_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 642
    nop

    .line 643
    const/4 v4, 0x0

    .line 269
    .restart local v4    # "$i$a$-traceSection-ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2$1":I
    :try_start_0
    invoke-static {v2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getProducerFactory$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-result-object v5

    .line 270
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getCommonNetworkFetchToEncodedMemorySequence()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v6

    invoke-static {v2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->access$getThreadHandoffProducerQueue$p(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;)Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    move-result-object v2

    .line 269
    invoke-virtual {v5, v6, v2}, Lcom/facebook/imagepipeline/core/ProducerFactory;->newBackgroundThreadHandoffProducer(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    .end local v4    # "$i$a$-traceSection-ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2$1":I
    nop

    .line 645
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 643
    nop

    .line 267
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$traceSection":I
    :goto_0
    return-object v2

    .line 645
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$traceSection":I
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory$backgroundNetworkFetchToEncodedMemorySequence$2;->invoke()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    return-object v0
.end method
