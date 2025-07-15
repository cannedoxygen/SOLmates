.class public final Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;
.super Ljava/lang/Object;
.source "CountingMemoryCacheInspector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;,
        Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003:\u0002\t\nB\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;",
        "K",
        "V",
        "",
        "countingBitmapCache",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache;",
        "(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V",
        "dumpCacheContent",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;",
        "DumpInfo",
        "DumpInfoEntry",
        "imagepipeline-base_release"
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
.field private final countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V
    .locals 1
    .param p1, "countingBitmapCache"    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "countingBitmapCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 17
    return-void
.end method


# virtual methods
.method public final dumpCacheContent()Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    monitor-enter v0

    const/4 v1, 0x0

    .line 86
    .local v1, "$i$a$-synchronized-CountingMemoryCacheInspector$dumpCacheContent$1":I
    :try_start_0
    new-instance v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;

    .line 87
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getSizeInBytes()I

    move-result v3

    .line 88
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getEvictionQueueSizeInBytes()I

    move-result v4

    .line 89
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getMemoryCacheParams()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    move-result-object v5

    const-string v6, "countingBitmapCache.memoryCacheParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;-><init>(IILcom/facebook/imagepipeline/cache/MemoryCacheParams;)V

    .line 85
    nop

    .line 90
    .local v2, "dumpInfo":Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getCachedEntries()Lcom/facebook/imagepipeline/cache/CountingLruMap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .end local v1    # "$i$a$-synchronized-CountingMemoryCacheInspector$dumpCacheContent$1":I
    .end local v2    # "dumpInfo":Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;
    monitor-exit v0

    return-object v2

    .restart local v1    # "$i$a$-synchronized-CountingMemoryCacheInspector$dumpCacheContent$1":I
    .restart local v2    # "dumpInfo":Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;
    :cond_0
    :try_start_1
    const-string v4, "countingBitmapCache.cach\u2026ntries ?: return dumpInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .local v3, "maybeCachedEntries":Lcom/facebook/imagepipeline/cache/CountingLruMap;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getMatchingEntries(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "maybeCachedEntries.getMatchingEntries(null)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 91
    nop

    .line 93
    .local v4, "cachedEntries":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 94
    .local v6, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
    new-instance v7, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;

    iget-object v8, v6, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    iget-object v9, v6, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    invoke-direct {v7, v8, v9}, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)V

    .line 95
    .local v7, "dumpEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;
    iget v8, v6, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-lez v8, :cond_1

    .line 96
    iget-object v8, v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->sharedEntries:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    iget-object v8, v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->lruEntries:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v6    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
    .end local v7    # "dumpEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;
    :cond_2
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getOtherEntries()Ljava/util/Map;

    move-result-object v5

    .line 102
    .local v5, "otherEntries":Ljava/util/Map;
    if-eqz v5, :cond_4

    .line 103
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 104
    .local v7, "entry":Ljava/util/Map$Entry;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 105
    iget-object v8, v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->otherEntries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "entry.key"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    const-string v11, "entry.value"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 109
    .end local v7    # "entry":Ljava/util/Map$Entry;
    :cond_4
    nop

    .end local v1    # "$i$a$-synchronized-CountingMemoryCacheInspector$dumpCacheContent$1":I
    .end local v2    # "dumpInfo":Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;
    .end local v3    # "maybeCachedEntries":Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .end local v4    # "cachedEntries":Ljava/util/List;
    .end local v5    # "otherEntries":Ljava/util/Map;
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
