.class public abstract Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "AbstractProducerToDataSourceAdapter.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/request/HasImageRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;",
        "Lcom/facebook/imagepipeline/request/HasImageRequest;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractProducerToDataSourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractProducerToDataSourceAdapter.kt\ncom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,106:1\n40#2,2:107\n40#2,9:109\n40#2,9:118\n44#2,3:127\n40#2,9:130\n40#2,9:139\n48#2:148\n*S KotlinDebug\n*F\n+ 1 AbstractProducerToDataSourceAdapter.kt\ncom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter\n*L\n95#1:107,2\n97#1:109,9\n100#1:118,9\n95#1:127,3\n97#1:130,9\n100#1:139,9\n95#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B%\u0008\u0004\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0002J\u001e\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0004J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!H\u0002J\'\u0010\"\u001a\u00020\u001e2\u0008\u0010#\u001a\u0004\u0018\u00018\u00002\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001b\u001a\u00020\u001cH\u0014\u00a2\u0006\u0002\u0010&R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;",
        "T",
        "Lcom/facebook/datasource/AbstractDataSource;",
        "Lcom/facebook/imagepipeline/request/HasImageRequest;",
        "producer",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "settableProducerContext",
        "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
        "requestListener",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)V",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "getImageRequest",
        "()Lcom/facebook/imagepipeline/request/ImageRequest;",
        "getRequestListener",
        "()Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "getSettableProducerContext",
        "()Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
        "close",
        "",
        "createConsumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "getExtras",
        "",
        "",
        "",
        "producerContext",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "onCancellationImpl",
        "",
        "onFailureImpl",
        "throwable",
        "",
        "onNewResultImpl",
        "result",
        "status",
        "",
        "(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/ProducerContext;)V",
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
.field private final requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

.field private final settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)V
    .locals 10
    .param p1, "producer"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "settableProducerContext"    # Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "producer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settableProducerContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 33
    iput-object p3, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 94
    nop

    .line 95
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "AbstractProducerToDataSourceAdapter()"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 107
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    const/4 v3, 0x0

    .line 96
    .local v3, "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    iget-object v4, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->setExtras(Ljava/util/Map;)V

    .line 97
    sget-object v4, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v4, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v5, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    .local v5, "name$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 109
    .local v6, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    const/4 v7, 0x0

    .line 98
    .local v7, "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    iget-object v8, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v8, v9}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 99
    nop

    .line 110
    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v5}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 114
    nop

    .line 115
    const/4 v7, 0x0

    .line 98
    .restart local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    :try_start_0
    iget-object v8, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v8, v9}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 99
    nop

    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    nop

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 115
    nop

    .line 100
    .end local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$traceSection":I
    :goto_0
    sget-object v4, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .restart local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v5, "AbstractProducerToDataSourceAdapter()->produceResult"

    .restart local v5    # "name$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 118
    .restart local v6    # "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 119
    const/4 v7, 0x0

    .line 101
    .local v7, "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v8, v9}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 102
    nop

    .line 119
    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    goto :goto_1

    .line 122
    :cond_1
    invoke-static {v5}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 123
    nop

    .line 124
    const/4 v7, 0x0

    .line 101
    .restart local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v8, v9}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 102
    nop

    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    nop

    .line 126
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 124
    nop

    .line 103
    .end local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$traceSection":I
    :goto_1
    nop

    .line 108
    .end local v3    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    goto/16 :goto_4

    .line 126
    .restart local v3    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    .restart local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v5    # "name$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$traceSection":I
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v7

    .line 117
    :catchall_1
    move-exception v7

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v7

    .line 127
    .end local v3    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    .end local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$traceSection":I
    :cond_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 128
    nop

    .line 129
    const/4 v3, 0x0

    .line 96
    .restart local v3    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    :try_start_2
    iget-object v4, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->setExtras(Ljava/util/Map;)V

    .line 97
    sget-object v4, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    const-string v5, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    .restart local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v5    # "name$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 130
    .restart local v6    # "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 131
    const/4 v7, 0x0

    .line 98
    .local v7, "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    iget-object v8, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v8, v9}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 99
    nop

    .line 131
    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    goto :goto_2

    .line 134
    :cond_3
    invoke-static {v5}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 135
    nop

    .line 136
    const/4 v7, 0x0

    .line 98
    .restart local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    :try_start_3
    iget-object v8, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v8, v9}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 99
    nop

    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 136
    nop

    .line 138
    :try_start_4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 136
    nop

    .line 100
    .end local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$traceSection":I
    :goto_2
    sget-object v4, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    const-string v5, "AbstractProducerToDataSourceAdapter()->produceResult"

    .restart local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v5    # "name$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 139
    .restart local v6    # "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 140
    const/4 v7, 0x0

    .line 101
    .local v7, "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v8, v9}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 102
    nop

    .line 140
    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    goto :goto_3

    .line 143
    :cond_4
    invoke-static {v5}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 144
    nop

    .line 145
    const/4 v7, 0x0

    .line 101
    .restart local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    :try_start_5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v9, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v8, v9}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 102
    nop

    .end local v7    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1$2":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 145
    nop

    .line 147
    :try_start_6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 145
    nop

    .line 103
    .end local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$traceSection":I
    :goto_3
    nop

    .end local v3    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 129
    nop

    .line 148
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 129
    nop

    .line 104
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    :goto_4
    nop

    .line 30
    return-void

    .line 147
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    .restart local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v5    # "name$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$traceSection":I
    :catchall_2
    move-exception v7

    :try_start_7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local p1    # "producer":Lcom/facebook/imagepipeline/producers/Producer;
    .end local p2    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .end local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener2;
    throw v7

    .line 138
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local p1    # "producer":Lcom/facebook/imagepipeline/producers/Producer;
    .restart local p2    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .restart local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener2;
    :catchall_3
    move-exception v7

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local p1    # "producer":Lcom/facebook/imagepipeline/producers/Producer;
    .end local p2    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .end local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener2;
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 148
    .end local v3    # "$i$a$-traceSection-AbstractProducerToDataSourceAdapter$1":I
    .end local v4    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$traceSection":I
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local p1    # "producer":Lcom/facebook/imagepipeline/producers/Producer;
    .restart local p2    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .restart local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener2;
    :catchall_4
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method

.method public static final synthetic access$onCancellationImpl(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 28
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->onCancellationImpl()V

    return-void
.end method

.method public static final synthetic access$onFailureImpl(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->onFailureImpl(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setProgress(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;F)Z
    .locals 1
    .param p0, "$this"    # Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
    .param p1, "p0"    # F

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->setProgress(F)Z

    move-result v0

    return v0
.end method

.method private final createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;-><init>(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Consumer;

    return-object v0
.end method

.method private final declared-synchronized onCancellationImpl()V
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->isClosed()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final onFailureImpl(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->getExtras(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->setFailure(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/Throwable;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->cancel()V

    .line 91
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected final getExtras(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;
    .locals 1
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener2;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    return-object v0
.end method

.method public final getSettableProducerContext()Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    return-object v0
.end method

.method protected onNewResultImpl(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "status"    # I
    .param p3, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "producerContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v0

    .line 59
    .local v0, "isLast":Z
    invoke-virtual {p0, p3}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->getExtras(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 64
    :cond_0
    return-void
.end method
