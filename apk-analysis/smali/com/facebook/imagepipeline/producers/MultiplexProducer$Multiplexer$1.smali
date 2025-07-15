.class Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

.field final synthetic val$consumerContextPair:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 292
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->val$consumerContextPair:Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .locals 7

    .line 295
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;"
    const/4 v0, 0x0

    .line 296
    .local v0, "contextToCancel":Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    const/4 v1, 0x0

    .line 297
    .local v1, "isPrefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    const/4 v2, 0x0

    .line 298
    .local v2, "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    const/4 v3, 0x0

    .line 301
    .local v3, "isIntermediateResultExpectedCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    monitor-enter v4

    .line 302
    :try_start_0
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$fgetmConsumerContextPairs(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->val$consumerContextPair:Landroid/util/Pair;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 303
    .local v5, "pairWasRemoved":Z
    if-eqz v5, :cond_1

    .line 304
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v6}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$fgetmConsumerContextPairs(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v6}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$fgetmMultiplexProducerContext(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 307
    :cond_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v6}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$mupdateIsPrefetch(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v6

    move-object v1, v6

    .line 308
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v6}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$mupdatePriority(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 309
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v6}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$mupdateIsIntermediateResultExpected(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 312
    :cond_1
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsPrefetchChanged(Ljava/util/List;)V

    .line 315
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    .line 316
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsIntermediateResultExpectedChanged(Ljava/util/List;)V

    .line 319
    if-eqz v0, :cond_3

    .line 320
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    iget-object v4, v4, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->-$$Nest$fgetmKeepCancelledFetchAsLowPriority(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->isPrefetch()Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    sget-object v4, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 322
    invoke-virtual {v0, v4}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setPriorityNoCallbacks(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object v4

    .line 323
    .local v4, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    .line 324
    .end local v4    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->cancel()V

    .line 328
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 329
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->val$consumerContextPair:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    .line 331
    :cond_4
    return-void

    .line 312
    .end local v5    # "pairWasRemoved":Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onIsIntermediateResultExpectedChanged()V
    .locals 1

    .line 340
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 341
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$mupdateIsIntermediateResultExpected(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsIntermediateResultExpectedChanged(Ljava/util/List;)V

    .line 342
    return-void
.end method

.method public onIsPrefetchChanged()V
    .locals 1

    .line 335
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$mupdateIsPrefetch(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsPrefetchChanged(Ljava/util/List;)V

    .line 336
    return-void
.end method

.method public onPriorityChanged()V
    .locals 1

    .line 346
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->-$$Nest$mupdatePriority(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    .line 347
    return-void
.end method
