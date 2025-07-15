.class public final Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;",
        "",
        "()V",
        "PRODUCER_NAME",
        "",
        "getInstrumentationTag",
        "context",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "shouldRunImmediately",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;
    .param p1, "context"    # Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;
    .param p1, "context"    # Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result v0

    return v0
.end method

.method private final getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 60
    invoke-static {}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadHandoffProducer_produceResults_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0
.end method

.method private final shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .locals 3
    .param p1, "context"    # Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 65
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getHandOffOnUiThreadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
