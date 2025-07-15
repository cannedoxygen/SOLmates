.class Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/MultiplexProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Multiplexer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;
    }
.end annotation


# instance fields
.field private final mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private mLastIntermediateResult:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLastProgress:F

.field private mLastStatus:I

.field private mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConsumerContextPairs(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiplexProducerContext(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartInputProducerIfHasAttachedConsumers(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Lcom/facebook/common/util/TriState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->startInputProducerIfHasAttachedConsumers(Lcom/facebook/common/util/TriState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIsIntermediateResultExpected(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsIntermediateResultExpected()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateIsPrefetch(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsPrefetch()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePriority(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updatePriority()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {}, Lcom/facebook/common/internal/Sets;->newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 218
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1
    .param p2, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 291
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    new-instance v0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 349
    return-void
.end method

.method private closeSafely(Ljava/io/Closeable;)V
    .locals 2
    .param p1, "obj"    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 553
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    if-eqz p1, :cond_0

    .line 554
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 558
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 559
    return-void
.end method

.method private declared-synchronized computeIsIntermediateResultExpected()Z
    .locals 3

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 422
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 423
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 425
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_0
    goto :goto_0

    .line 426
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 420
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized computeIsPrefetch()Z
    .locals 3

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 404
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isPrefetch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 405
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 407
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_0
    goto :goto_0

    .line 408
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 402
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized computePriority()Lcom/facebook/imagepipeline/common/Priority;
    .locals 4

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 438
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 439
    .local v0, "priority":Lcom/facebook/imagepipeline/common/Priority;
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 440
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/imagepipeline/common/Priority;->getHigherPriority(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 441
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_0

    .line 442
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 437
    .end local v0    # "priority":Lcom/facebook/imagepipeline/common/Priority;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startInputProducerIfHasAttachedConsumers(Lcom/facebook/common/util/TriState;)V
    .locals 12
    .param p1, "startedAsPrefetch"    # Lcom/facebook/common/util/TriState;

    .line 359
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 361
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 364
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->removeMultiplexer(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 366
    monitor-exit p0

    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 370
    .local v0, "producerContext":Lcom/facebook/imagepipeline/producers/ProducerContext;
    new-instance v11, Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 372
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 373
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v4

    .line 375
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v5

    .line 376
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 377
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsPrefetch()Z

    move-result v7

    .line 378
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsIntermediateResultExpected()Z

    move-result v8

    .line 379
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computePriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 380
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    iput-object v11, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 381
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->putExtras(Ljava/util/Map;)V

    .line 382
    invoke-virtual {p1}, Lcom/facebook/common/util/TriState;->isSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    const-string/jumbo v2, "started_as_prefetch"

    .line 384
    invoke-virtual {p1}, Lcom/facebook/common/util/TriState;->asBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 383
    invoke-virtual {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_3
    new-instance v1, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer-IA;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    .line 388
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 389
    .local v1, "multiplexProducerContext":Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    move-object v0, v2

    .line 390
    .local v0, "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->-$$Nest$fgetmInputProducer(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 392
    return-void

    .line 390
    .end local v0    # "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    .end local v1    # "multiplexProducerContext":Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized updateIsIntermediateResultExpected()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 414
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 417
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsIntermediateResultExpected()Z

    move-result v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setIsIntermediateResultExpectedNoCallbacks(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 412
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized updateIsPrefetch()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 397
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsPrefetch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setIsPrefetchNoCallbacks(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 395
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized updatePriority()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 432
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 434
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computePriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setPriorityNoCallbacks(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 430
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public addNewConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .locals 8
    .param p2, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")Z"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<TT;>;"
    nop

    .line 233
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 244
    .local v0, "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->getExistingMultiplexer(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 246
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsPrefetch()Ljava/util/List;

    move-result-object v1

    .line 250
    .local v1, "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updatePriority()Ljava/util/List;

    move-result-object v2

    .line 251
    .local v2, "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsIntermediateResultExpected()Ljava/util/List;

    move-result-object v3

    .line 252
    .local v3, "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 253
    .local v4, "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    iget v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastProgress:F

    .line 254
    .local v5, "lastProgress":F
    iget v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastStatus:I

    .line 255
    .local v6, "lastStatus":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 257
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsPrefetchChanged(Ljava/util/List;)V

    .line 258
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    .line 259
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsIntermediateResultExpectedChanged(Ljava/util/List;)V

    .line 261
    monitor-enter v0

    .line 263
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    :try_start_2
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    if-eq v4, v7, :cond_1

    .line 265
    const/4 v4, 0x0

    goto :goto_0

    .line 266
    :cond_1
    if-eqz v4, :cond_2

    .line 267
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-virtual {v7, v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->cloneOrNull(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v7

    move-object v4, v7

    .line 269
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    if-eqz v4, :cond_4

    .line 272
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    .line 273
    :try_start_3
    invoke-interface {p1, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 275
    :cond_3
    invoke-interface {p1, v4, v6}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 276
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 278
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 281
    const/4 v7, 0x1

    return v7

    .line 269
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    .end local v1    # "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v2    # "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v3    # "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v4    # "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    .end local v5    # "lastProgress":F
    .end local v6    # "lastStatus":I
    .end local p1    # "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<TT;>;"
    .end local p2    # "producerContext":Lcom/facebook/imagepipeline/producers/ProducerContext;
    :try_start_5
    throw v7

    .line 278
    .restart local v0    # "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    .restart local v1    # "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .restart local v2    # "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .restart local v3    # "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .restart local v4    # "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    .restart local v5    # "lastProgress":F
    .restart local v6    # "lastStatus":I
    .restart local p1    # "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<TT;>;"
    .restart local p2    # "producerContext":Lcom/facebook/imagepipeline/producers/ProducerContext;
    :catchall_1
    move-exception v7

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 255
    .end local v1    # "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v2    # "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v3    # "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v4    # "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    .end local v5    # "lastProgress":F
    .end local v6    # "lastStatus":I
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public onCancelled(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;)V"
        }
    .end annotation

    .line 516
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 519
    monitor-exit p0

    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    .line 523
    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 524
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 525
    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 526
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->startInputProducerIfHasAttachedConsumers(Lcom/facebook/common/util/TriState;)V

    .line 529
    return-void

    .line 526
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFailure(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/lang/Throwable;)V
    .locals 6
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 447
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 450
    monitor-exit p0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 455
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 456
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->removeMultiplexer(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 457
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 458
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 459
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 463
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter v2

    .line 464
    :try_start_1
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 465
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->-$$Nest$fgetmProducerName(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-interface {v3, v4, v5, p2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 467
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v3, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 468
    monitor-exit v2

    .line 469
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_0

    .line 468
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 470
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_1
    return-void

    .line 459
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onNextResult(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/io/Closeable;I)V
    .locals 7
    .param p2    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;TT;I)V"
        }
    .end annotation

    .line 478
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    .local p2, "closeableObject":Ljava/io/Closeable;, "TT;"
    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 481
    monitor-exit p0

    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 487
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 488
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v2

    .line 489
    .local v2, "size":I
    invoke-static {p3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isNotLast(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-virtual {v3, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->cloneOrNull(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 491
    iput p3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastStatus:I

    goto :goto_0

    .line 493
    :cond_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 494
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->removeMultiplexer(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 496
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 500
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter v3

    .line 501
    :try_start_1
    invoke-static {p3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 503
    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v6}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->-$$Nest$fgetmProducerName(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;

    move-result-object v6

    .line 504
    invoke-interface {v4, v5, v6, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 505
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    if-eqz v4, :cond_2

    .line 506
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtras(Ljava/util/Map;)V

    .line 508
    :cond_2
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->-$$Nest$fgetmDedupedRequestsCountKey(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    :cond_3
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v4, p2, p3}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 511
    monitor-exit v3

    .line 512
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_1

    .line 511
    .restart local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 513
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_4
    return-void

    .line 496
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    .end local v2    # "size":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onProgressUpdate(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;F)V
    .locals 3
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;F)V"
        }
    .end annotation

    .line 533
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 536
    monitor-exit p0

    return-void

    .line 539
    :cond_0
    iput p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastProgress:F

    .line 540
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 541
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 545
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter v1

    .line 546
    :try_start_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v2, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 547
    monitor-exit v1

    .line 548
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_0

    .line 547
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 549
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_1
    return-void

    .line 541
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
