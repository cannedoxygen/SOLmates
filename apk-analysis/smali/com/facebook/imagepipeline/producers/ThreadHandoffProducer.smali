.class public final Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadHandoffProducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadHandoffProducer.kt\ncom/facebook/imagepipeline/producers/ThreadHandoffProducer\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,72:1\n40#2,9:73\n*S KotlinDebug\n*F\n+ 1 ThreadHandoffProducer.kt\ncom/facebook/imagepipeline/producers/ThreadHandoffProducer\n*L\n22#1:73,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u0011*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0011B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;",
        "T",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "inputProducer",
        "threadHandoffProducerQueue",
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
        "(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)V",
        "getInputProducer",
        "()Lcom/facebook/imagepipeline/producers/Producer;",
        "getThreadHandoffProducerQueue",
        "()Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
        "produceResults",
        "",
        "consumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "context",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
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
.field public static final Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

.field public static final PRODUCER_NAME:Ljava/lang/String; = "BackgroundThreadHandoffProducer"


# instance fields
.field private final inputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)V
    .locals 1
    .param p1, "inputProducer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "threadHandoffProducerQueue"    # Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
            ")V"
        }
    .end annotation

    const-string v0, "inputProducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadHandoffProducerQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 18
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 16
    return-void
.end method


# virtual methods
.method public final getInputProducer()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getThreadHandoffProducerQueue()Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    return-object v0
.end method

.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 9
    .param p1, "consumer"    # Lcom/facebook/imagepipeline/producers/Consumer;
    .param p2, "context"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ThreadHandoffProducer#produceResults"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "BackgroundThreadHandoffProducer"

    if-nez v3, :cond_1

    .line 74
    const/4 v3, 0x0

    .line 23
    .local v3, "$i$a$-traceSection-ThreadHandoffProducer$produceResults$1":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v6

    .line 24
    .local v6, "producerListener":Lcom/facebook/imagepipeline/producers/ProducerListener2;
    sget-object v7, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    invoke-static {v7, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 25
    invoke-interface {v6, p2, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 26
    invoke-interface {v6, p2, v5, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v4, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 28
    return-void

    .line 31
    :cond_0
    new-instance v4, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;

    invoke-direct {v4, p1, v6, p2, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast v4, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    .line 30
    nop

    .line 44
    .local v4, "statefulRunnable":Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
    nop

    .line 45
    new-instance v5, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;

    invoke-direct {v5, v4, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;-><init>(Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast v5, Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;

    .line 44
    invoke-interface {p2, v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 51
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 52
    move-object v7, v4

    check-cast v7, Ljava/lang/Runnable;

    sget-object v8, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    invoke-static {v8, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v7

    .line 51
    invoke-interface {v5, v7}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->addToQueueOrExecute(Ljava/lang/Runnable;)V

    .line 53
    nop

    .line 74
    .end local v3    # "$i$a$-traceSection-ThreadHandoffProducer$produceResults$1":I
    .end local v4    # "statefulRunnable":Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
    .end local v6    # "producerListener":Lcom/facebook/imagepipeline/producers/ProducerListener2;
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 78
    nop

    .line 79
    const/4 v3, 0x0

    .line 23
    .restart local v3    # "$i$a$-traceSection-ThreadHandoffProducer$produceResults$1":I
    :try_start_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v6

    .line 24
    .restart local v6    # "producerListener":Lcom/facebook/imagepipeline/producers/ProducerListener2;
    sget-object v7, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    invoke-static {v7, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 25
    invoke-interface {v6, p2, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 26
    invoke-interface {v6, p2, v5, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v4, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    nop

    .line 81
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ThreadHandoffProducer$produceResults$1":I
    .end local v6    # "producerListener":Lcom/facebook/imagepipeline/producers/ProducerListener2;
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    .line 31
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-ThreadHandoffProducer$produceResults$1":I
    .restart local v6    # "producerListener":Lcom/facebook/imagepipeline/producers/ProducerListener2;
    :cond_2
    :try_start_1
    new-instance v4, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;

    invoke-direct {v4, p1, v6, p2, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast v4, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    .line 30
    nop

    .line 44
    .restart local v4    # "statefulRunnable":Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
    nop

    .line 45
    new-instance v5, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;

    invoke-direct {v5, v4, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;-><init>(Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast v5, Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;

    .line 44
    invoke-interface {p2, v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 51
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 52
    move-object v7, v4

    check-cast v7, Ljava/lang/Runnable;

    sget-object v8, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    invoke-static {v8, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v7

    .line 51
    invoke-interface {v5, v7}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->addToQueueOrExecute(Ljava/lang/Runnable;)V

    .line 53
    nop

    .end local v3    # "$i$a$-traceSection-ThreadHandoffProducer$produceResults$1":I
    .end local v4    # "statefulRunnable":Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
    .end local v6    # "producerListener":Lcom/facebook/imagepipeline/producers/ProducerListener2;
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    nop

    .line 81
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 79
    nop

    .line 54
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    :goto_0
    return-void

    .line 81
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method
