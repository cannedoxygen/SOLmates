.class public final Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;
.super Ljava/lang/Object;
.source "DidJSUpdateUiDuringFrameDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDidJSUpdateUiDuringFrameDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DidJSUpdateUiDuringFrameDetector.kt\ncom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1747#2,3:148\n*S KotlinDebug\n*F\n+ 1 DidJSUpdateUiDuringFrameDetector.kt\ncom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt\n*L\n114#1:148,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u001a(\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a0\u0010\u0007\u001a\u00020\u00042\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a0\u0010\t\u001a\u00020\n2\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "cleanUp",
        "",
        "eventArray",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "endTime",
        "getLastEventBetweenTimestamps",
        "startTime",
        "hasEventBetweenTimestamps",
        "",
        "ReactAndroid_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$cleanUp(Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "eventArray"    # Ljava/util/ArrayList;
    .param p1, "endTime"    # J

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;->cleanUp(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static final synthetic access$getLastEventBetweenTimestamps(Ljava/util/ArrayList;JJ)J
    .locals 2
    .param p0, "eventArray"    # Ljava/util/ArrayList;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;->getLastEventBetweenTimestamps(Ljava/util/ArrayList;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$hasEventBetweenTimestamps(Ljava/util/ArrayList;JJ)Z
    .locals 1
    .param p0, "eventArray"    # Ljava/util/ArrayList;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;->hasEventBetweenTimestamps(Ljava/util/ArrayList;JJ)Z

    move-result v0

    return v0
.end method

.method private static final cleanUp(Ljava/util/ArrayList;J)V
    .locals 5
    .param p0, "eventArray"    # Ljava/util/ArrayList;
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    .local v0, "size":I
    const/4 v1, 0x0

    .line 135
    .local v1, "indicesToRemove":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    :cond_1
    if-lez v1, :cond_3

    .line 141
    const/4 v2, 0x0

    .restart local v2    # "i":I
    sub-int v3, v0, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 142
    add-int v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v2    # "i":I
    :cond_2
    move-object v2, p0

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    .line 146
    :cond_3
    return-void
.end method

.method private static final getLastEventBetweenTimestamps(Ljava/util/ArrayList;JJ)J
    .locals 8
    .param p0, "eventArray"    # Ljava/util/ArrayList;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;JJ)J"
        }
    .end annotation

    .line 121
    const-wide/16 v0, -0x1

    .line 122
    .local v0, "lastEvent":J
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 123
    .local v3, "time":Ljava/lang/Long;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v4

    const/4 v7, 0x0

    if-gtz v6, :cond_1

    cmp-long v4, v4, p3

    if-gez v4, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v7, :cond_2

    .line 124
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-ltz v4, :cond_0

    .line 126
    nop

    .line 129
    .end local v3    # "time":Ljava/lang/Long;
    :cond_3
    return-wide v0
.end method

.method private static final hasEventBetweenTimestamps(Ljava/util/ArrayList;JJ)Z
    .locals 10
    .param p0, "eventArray"    # Ljava/util/ArrayList;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    .line 114
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 148
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .local v5, "time":J
    const/4 v7, 0x0

    .line 114
    .local v7, "$i$a$-any-DidJSUpdateUiDuringFrameDetectorKt$hasEventBetweenTimestamps$1":I
    cmp-long v8, p1, v5

    const/4 v9, 0x1

    if-gtz v8, :cond_2

    cmp-long v8, v5, p3

    if-gez v8, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    move v5, v3

    .line 149
    .end local v5    # "time":J
    .end local v7    # "$i$a$-any-DidJSUpdateUiDuringFrameDetectorKt$hasEventBetweenTimestamps$1":I
    :goto_0
    if-eqz v5, :cond_1

    move v3, v9

    goto :goto_1

    .line 150
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 114
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_1
    return v3
.end method
