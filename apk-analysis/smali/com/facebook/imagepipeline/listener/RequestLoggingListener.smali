.class public final Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
.super Ljava/lang/Object;
.source "RequestLoggingListener.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/listener/RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0016J.\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0010H\u0016J6\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0010H\u0016J.\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0010H\u0016J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0016J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J(\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J(\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J \u0010\u001f\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J \u0010 \u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u001bH\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\u0006H\u0016R(\u0010\u0003\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00070\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/listener/RequestLoggingListener;",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "()V",
        "producerStartTimeMap",
        "",
        "Landroid/util/Pair;",
        "",
        "",
        "requestStartTimeMap",
        "onProducerEvent",
        "",
        "requestId",
        "producerName",
        "producerEventName",
        "onProducerFinishWithCancellation",
        "extraMap",
        "",
        "onProducerFinishWithFailure",
        "throwable",
        "",
        "onProducerFinishWithSuccess",
        "onProducerStart",
        "onRequestCancellation",
        "onRequestFailure",
        "request",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "isPrefetch",
        "",
        "onRequestStart",
        "callerContextObject",
        "",
        "onRequestSuccess",
        "onUltimateProducerReached",
        "successful",
        "requiresExtraMap",
        "id",
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
.field public static final Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

.field private static final TAG:Ljava/lang/String; = "RequestLoggingListener"


# instance fields
.field private final producerStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final requestStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "producerEventName"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerEventName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 129
    .local v0, "mapKey":Landroid/util/Pair;
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 130
    .local v1, "startTime":Ljava/lang/Long;
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v2

    .line 132
    .local v2, "currentTime":J
    const-string v4, "RequestLoggingListener"

    .line 133
    const-string/jumbo v5, "time %d: onProducerEvent: {requestId: %s, stage: %s, eventName: %s; elapsedTime: %d ms}"

    .line 134
    sget-object v6, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v6}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 135
    nop

    .line 134
    nop

    .line 136
    nop

    .line 134
    nop

    .line 137
    nop

    .line 134
    nop

    .line 138
    sget-object v7, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v7, v1, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, p1, p2, p3, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 134
    nop

    .line 131
    invoke-static {v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v0    # "mapKey":Landroid/util/Pair;
    .end local v1    # "startTime":Ljava/lang/Long;
    .end local v2    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "producerName":Ljava/lang/String;
    .end local p3    # "producerEventName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "extraMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 112
    .local v0, "mapKey":Landroid/util/Pair;
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 113
    .local v1, "startTime":Ljava/lang/Long;
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v2

    .line 115
    .local v2, "currentTime":J
    const-string v4, "RequestLoggingListener"

    .line 116
    const-string/jumbo v5, "time %d: onProducerFinishWithCancellation: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s}"

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 118
    nop

    .line 117
    nop

    .line 119
    nop

    .line 117
    nop

    .line 120
    sget-object v7, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v7, v1, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 117
    nop

    .line 121
    filled-new-array {v6, p1, p2, v7, p3}, [Ljava/lang/Object;

    move-result-object v6

    .line 117
    nop

    .line 114
    invoke-static {v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0    # "mapKey":Landroid/util/Pair;
    .end local v1    # "startTime":Ljava/lang/Long;
    .end local v2    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "producerName":Ljava/lang/String;
    .end local p3    # "extraMap":Ljava/util/Map;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 16
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "extraMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "requestId"

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "producerName"

    move-object/from16 v10, p2

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "throwable"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static/range {p1 .. p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 89
    .local v2, "mapKey":Landroid/util/Pair;
    iget-object v3, v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v11, v3

    .line 90
    .local v11, "startTime":Ljava/lang/Long;
    sget-object v3, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v3

    move-wide v12, v3

    .line 92
    .local v12, "currentTime":J
    const-string v14, "RequestLoggingListener"

    .line 93
    nop

    .line 94
    const-string/jumbo v15, "time %d: onProducerFinishWithFailure: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s, throwable: %s}"

    .line 95
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 96
    nop

    .line 95
    nop

    .line 97
    nop

    .line 95
    nop

    .line 98
    sget-object v4, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v4, v11, v12, v13}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 95
    nop

    .line 99
    nop

    .line 95
    nop

    .line 100
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v3

    .line 95
    nop

    .line 91
    invoke-static {v14, v0, v15, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v2    # "mapKey":Landroid/util/Pair;
    .end local v11    # "startTime":Ljava/lang/Long;
    .end local v12    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "producerName":Ljava/lang/String;
    .end local p3    # "throwable":Ljava/lang/Throwable;
    .end local p4    # "extraMap":Ljava/util/Map;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "extraMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 67
    .local v0, "mapKey":Landroid/util/Pair;
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 68
    .local v1, "startTime":Ljava/lang/Long;
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v2

    .line 70
    .local v2, "currentTime":J
    const-string v4, "RequestLoggingListener"

    .line 71
    const-string/jumbo v5, "time %d: onProducerFinishWithSuccess: {requestId: %s, producer: %s, elapsedTime: %d ms, extraMap: %s}"

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 73
    nop

    .line 72
    nop

    .line 74
    nop

    .line 72
    nop

    .line 75
    sget-object v7, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v7, v1, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 72
    nop

    .line 76
    filled-new-array {v6, p1, p2, v7, p3}, [Ljava/lang/Object;

    move-result-object v6

    .line 72
    nop

    .line 69
    invoke-static {v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v0    # "mapKey":Landroid/util/Pair;
    .end local v1    # "startTime":Ljava/lang/Long;
    .end local v2    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "producerName":Ljava/lang/String;
    .end local p3    # "extraMap":Ljava/util/Map;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 48
    .local v0, "mapKey":Landroid/util/Pair;
    sget-object v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v1

    .local v1, "startTime":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    const-string v5, "mapKey"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "RequestLoggingListener"

    .line 52
    const-string/jumbo v4, "time %d: onProducerStart: {requestId: %s, producer: %s}"

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 54
    nop

    .line 55
    nop

    .line 50
    invoke-static {v3, v4, v5, p1, p2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v0    # "mapKey":Landroid/util/Pair;
    .end local v1    # "startTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "producerName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestCancellation(Ljava/lang/String;)V
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 201
    .local v0, "startTime":Ljava/lang/Long;
    sget-object v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v1

    .line 203
    .local v1, "currentTime":J
    const-string v3, "RequestLoggingListener"

    .line 204
    const-string/jumbo v4, "time %d: onRequestCancellation: {requestId: %s, elapsedTime: %d ms}"

    .line 205
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 206
    nop

    .line 207
    sget-object v6, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v6, v0, v1, v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 202
    invoke-static {v3, v4, v5, p1, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v0    # "startTime":Ljava/lang/Long;
    .end local v1    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    .end local p1    # "requestId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestFailure(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 8
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "isPrefetch"    # Z

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "throwable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 186
    .local v0, "startTime":Ljava/lang/Long;
    sget-object v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v1

    .line 188
    .local v1, "currentTime":J
    const-string v3, "RequestLoggingListener"

    .line 189
    const-string/jumbo v4, "time %d: onRequestFailure: {requestId: %s, elapsedTime: %d ms, throwable: %s}"

    .line 190
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 191
    nop

    .line 190
    nop

    .line 192
    sget-object v6, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v6, v0, v1, v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 190
    nop

    .line 193
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, p2, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 190
    nop

    .line 187
    invoke-static {v3, v4, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v0    # "startTime":Ljava/lang/Long;
    .end local v1    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    .end local p1    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p2    # "requestId":Ljava/lang/String;
    .end local p3    # "throwable":Ljava/lang/Throwable;
    .end local p4    # "isPrefetch":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestStart(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContextObject"    # Ljava/lang/Object;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "isPrefetch"    # Z

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerContextObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v1, "RequestLoggingListener"

    .line 35
    const-string/jumbo v2, "time %d: onRequestSubmit: {requestId: %s, callerContext: %s, isPrefetch: %b}"

    .line 36
    sget-object v0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v0}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 37
    nop

    .line 38
    nop

    .line 39
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 33
    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    .end local p1    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p2    # "callerContextObject":Ljava/lang/Object;
    .end local p3    # "requestId":Ljava/lang/String;
    .end local p4    # "isPrefetch":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRequestSuccess(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "isPrefetch"    # Z

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->requestStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 167
    .local v0, "startTime":Ljava/lang/Long;
    sget-object v1, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v1}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v1

    .line 169
    .local v1, "currentTime":J
    const-string v3, "RequestLoggingListener"

    .line 170
    const-string/jumbo v4, "time %d: onRequestSuccess: {requestId: %s, elapsedTime: %d ms}"

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 172
    nop

    .line 173
    sget-object v6, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v6, v0, v1, v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 168
    invoke-static {v3, v4, v5, p2, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v0    # "startTime":Ljava/lang/Long;
    .end local v1    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    .end local p1    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p2    # "requestId":Ljava/lang/String;
    .end local p3    # "isPrefetch":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "successful"    # Z

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 150
    .local v0, "mapKey":Landroid/util/Pair;
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->producerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 151
    .local v1, "startTime":Ljava/lang/Long;
    sget-object v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;)J

    move-result-wide v2

    .line 153
    .local v2, "currentTime":J
    const-string v4, "RequestLoggingListener"

    .line 154
    const-string/jumbo v5, "time %d: onUltimateProducerReached: {requestId: %s, producer: %s, elapsedTime: %d ms, success: %b}"

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 156
    nop

    .line 155
    nop

    .line 157
    nop

    .line 155
    nop

    .line 158
    sget-object v7, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->Companion:Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;

    invoke-static {v7, v1, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;->access$getElapsedTime(Lcom/facebook/imagepipeline/listener/RequestLoggingListener$Companion;Ljava/lang/Long;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 155
    nop

    .line 159
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v6, p1, p2, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 155
    nop

    .line 152
    invoke-static {v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v0    # "mapKey":Landroid/util/Pair;
    .end local v1    # "startTime":Ljava/lang/Long;
    .end local v2    # "currentTime":J
    .end local p0    # "this":Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "producerName":Ljava/lang/String;
    .end local p3    # "successful":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public requiresExtraMap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    return v0
.end method
