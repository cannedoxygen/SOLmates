.class public final Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
.super Ljava/lang/Object;
.source "BufferedDiskCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/BufferedDiskCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedDiskCache.kt\ncom/facebook/imagepipeline/cache/BufferedDiskCache\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n40#2,2:393\n44#2,5:396\n40#2,9:401\n1#3:395\n*S KotlinDebug\n*F\n+ 1 BufferedDiskCache.kt\ncom/facebook/imagepipeline/cache/BufferedDiskCache\n*L\n115#1:393,2\n115#1:396,5\n234#1:401,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 /2\u00020\u0001:\u0001/B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bJ\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001b2\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010 \u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017J\u001e\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\"H\u0002J\u001f\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0086\u0002J\u001e\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0002J\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010)\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010*\u001a\u00020\"J\u0012\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010.\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010*\u001a\u0004\u0018\u00010\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
        "",
        "fileCache",
        "Lcom/facebook/cache/disk/FileCache;",
        "pooledByteBufferFactory",
        "Lcom/facebook/common/memory/PooledByteBufferFactory;",
        "pooledByteStreams",
        "Lcom/facebook/common/memory/PooledByteStreams;",
        "readExecutor",
        "Ljava/util/concurrent/Executor;",
        "writeExecutor",
        "imageCacheStatsTracker",
        "Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "(Lcom/facebook/cache/disk/FileCache;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/PooledByteStreams;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V",
        "size",
        "",
        "getSize",
        "()J",
        "stagingArea",
        "Lcom/facebook/imagepipeline/cache/StagingArea;",
        "addKeyForAsyncProbing",
        "",
        "key",
        "Lcom/facebook/cache/common/CacheKey;",
        "checkInStagingAreaAndFileCache",
        "",
        "clearAll",
        "Lbolts/Task;",
        "Ljava/lang/Void;",
        "contains",
        "containsAsync",
        "containsSync",
        "diskCheckSync",
        "foundPinnedImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "pinnedImage",
        "get",
        "isCancelled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getAsync",
        "probe",
        "put",
        "encodedImage",
        "readFromDiskCache",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "remove",
        "writeToDiskCache",
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
.field public static final Companion:Lcom/facebook/imagepipeline/cache/BufferedDiskCache$Companion;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final fileCache:Lcom/facebook/cache/disk/FileCache;

.field private final imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field private final pooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

.field private final pooledByteStreams:Lcom/facebook/common/memory/PooledByteStreams;

.field private final readExecutor:Ljava/util/concurrent/Executor;

.field private final stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

.field private final writeExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$2jrd-Cez49t2pJvUhy3EednKvKM(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeToDiskCache$lambda$9(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GccGFzlrMbz278yFNAoQsObBnbo(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove$lambda$7(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xi8OsSSDnMevR6CCYihna7wDklU(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put$lambda$6$lambda$5(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IEoM2HHtuUrfwgO7E9Df3ETbt0(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsAsync$lambda$0(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o3OTMj35doxN0R2zeG8NsQEGpMo(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->clearAll$lambda$8(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ruHA294AFklyuc1C2xxjVYJLTpM(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->probe$lambda$3(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vaIZbByACJ_oaNMhyp8n6lFtsWg(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getAsync$lambda$4(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->Companion:Lcom/facebook/imagepipeline/cache/BufferedDiskCache$Companion;

    .line 389
    const-class v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    sput-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/FileCache;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/PooledByteStreams;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V
    .locals 2
    .param p1, "fileCache"    # Lcom/facebook/cache/disk/FileCache;
    .param p2, "pooledByteBufferFactory"    # Lcom/facebook/common/memory/PooledByteBufferFactory;
    .param p3, "pooledByteStreams"    # Lcom/facebook/common/memory/PooledByteStreams;
    .param p4, "readExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "writeExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "imageCacheStatsTracker"    # Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    const-string v0, "fileCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pooledByteBufferFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pooledByteStreams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writeExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCacheStatsTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    .line 33
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->pooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 34
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->pooledByteStreams:Lcom/facebook/common/memory/PooledByteStreams;

    .line 35
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->readExecutor:Ljava/util/concurrent/Executor;

    .line 36
    iput-object p5, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeExecutor:Ljava/util/concurrent/Executor;

    .line 37
    iput-object p6, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/cache/StagingArea;->getInstance()Lcom/facebook/imagepipeline/cache/StagingArea;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    .line 31
    return-void
.end method

.method private final checkInStagingAreaAndFileCache(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;

    .line 159
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/StagingArea;->get(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    .line 160
    .local v0, "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 162
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v2, "Found image for %s in staging area"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onStagingAreaHit(Lcom/facebook/cache/common/CacheKey;)V

    .line 164
    const/4 v1, 0x1

    goto :goto_1

    .line 166
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v2, "Did not find image for %s in staging area"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onStagingAreaMiss(Lcom/facebook/cache/common/CacheKey;)V

    .line 168
    nop

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v1, p1}, Lcom/facebook/cache/disk/FileCache;->hasKey(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "exception":Ljava/lang/Exception;
    const/4 v2, 0x0

    move v1, v2

    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    nop

    .line 160
    :goto_1
    return v1
.end method

.method private static final clearAll$lambda$8(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)Ljava/lang/Void;
    .locals 3
    .param p0, "$token"    # Ljava/lang/Object;
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 304
    .local v1, "currentToken":Ljava/lang/Object;
    nop

    .line 305
    :try_start_0
    iget-object v2, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/StagingArea;->clearAll()V

    .line 306
    iget-object v2, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v2}, Lcom/facebook/cache/disk/FileCache;->clearAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    nop

    .line 312
    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 307
    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    .local v0, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 310
    nop

    .end local v1    # "currentToken":Ljava/lang/Object;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    .end local v0    # "th":Ljava/lang/Throwable;
    .restart local v1    # "currentToken":Ljava/lang/Object;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    throw v0
.end method

.method private final containsAsync(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;
    .locals 5
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 69
    nop

    .line 70
    :try_start_0
    const-string v0, "BufferedDiskCache_containsAsync"

    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "token":Ljava/lang/Object;
    new-instance v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)V

    .line 83
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->readExecutor:Ljava/util/concurrent/Executor;

    .line 71
    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 69
    .end local v0    # "token":Ljava/lang/Object;
    const-string/jumbo v0, "{\n      val token = Fres\u2026      readExecutor)\n    }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 87
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to schedule disk-cache read for %s"

    invoke-static {v1, v2, v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "{\n      // Log failure\n \u2026forError(exception)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method private static final containsAsync$lambda$0(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "$token"    # Ljava/lang/Object;
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p2, "$key"    # Lcom/facebook/cache/common/CacheKey;

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "currentToken":Ljava/lang/Object;
    nop

    .line 75
    :try_start_0
    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->checkInStagingAreaAndFileCache(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 75
    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {p0, v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    nop

    .end local v0    # "currentToken":Ljava/lang/Object;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local p2    # "$key":Lcom/facebook/cache/common/CacheKey;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "currentToken":Ljava/lang/Object;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .restart local p2    # "$key":Lcom/facebook/cache/common/CacheKey;
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    throw v1
.end method

.method private final foundPinnedImage(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Lbolts/Task;
    .locals 3
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "pinnedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ")",
            "Lbolts/Task<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 328
    sget-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v1, "Found image for %s in staging area"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onStagingAreaHit(Lcom/facebook/cache/common/CacheKey;)V

    .line 330
    invoke-static {p2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    const-string v1, "forResult(pinnedImage)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getAsync(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;
    .locals 5
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "isCancelled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/Task<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 177
    nop

    .line 178
    :try_start_0
    const-string v0, "BufferedDiskCache_getAsync"

    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    .local v0, "token":Ljava/lang/Object;
    new-instance v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p2, p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)V

    .line 220
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->readExecutor:Ljava/util/concurrent/Executor;

    .line 179
    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 177
    .end local v0    # "token":Ljava/lang/Object;
    const-string/jumbo v0, "{\n      val token = Fres\u2026      readExecutor)\n    }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 224
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to schedule disk-cache read for %s"

    invoke-static {v1, v2, v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    .line 221
    const-string/jumbo v2, "{\n      // Log failure\n \u2026forError(exception)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method private static final getAsync$lambda$4(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 6
    .param p0, "$token"    # Ljava/lang/Object;
    .param p1, "$isCancelled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "this$0"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p3, "$key"    # Lcom/facebook/cache/common/CacheKey;

    const-string v0, "$isCancelled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "currentToken":Ljava/lang/Object;
    nop

    .line 183
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 186
    iget-object v2, p2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v2, p3}, Lcom/facebook/imagepipeline/cache/StagingArea;->get(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v2

    .line 187
    .local v2, "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v2, :cond_0

    .line 188
    sget-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v3, "Found image for %s in staging area"

    invoke-interface {p3}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iget-object v0, p2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v0, p3}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onStagingAreaHit(Lcom/facebook/cache/common/CacheKey;)V

    goto :goto_0

    .line 191
    :cond_0
    sget-object v3, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v4, "Did not find image for %s in staging area"

    invoke-interface {p3}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object v3, p2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v3, p3}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onStagingAreaMiss(Lcom/facebook/cache/common/CacheKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    nop

    .line 195
    :try_start_1
    invoke-direct {p2, p3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->readFromDiskCache(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    .line 217
    .end local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 195
    .restart local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    return-object v0

    .line 196
    .local v3, "buffer":Lcom/facebook/common/memory/PooledByteBuffer;
    :cond_1
    :try_start_2
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    const-string/jumbo v5, "of(buffer)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    .local v4, "ref":Lcom/facebook/common/references/CloseableReference;
    nop

    .line 198
    :try_start_3
    new-instance v5, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v5, v4}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :try_start_4
    invoke-static {v4}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    nop

    .line 200
    nop

    .line 193
    .end local v3    # "buffer":Lcom/facebook/common/memory/PooledByteBuffer;
    .end local v4    # "ref":Lcom/facebook/common/references/CloseableReference;
    move-object v2, v5

    .line 206
    :goto_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_2

    .line 211
    nop

    .line 217
    .end local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    move-object v0, v2

    .line 211
    .local v0, "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    return-object v2

    .line 207
    .end local v0    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    :cond_2
    :try_start_6
    sget-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v3, "Host thread was interrupted, decreasing reference count"

    invoke-static {v0, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 209
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .end local v1    # "currentToken":Ljava/lang/Object;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 200
    .restart local v1    # "currentToken":Ljava/lang/Object;
    .restart local v3    # "buffer":Lcom/facebook/common/memory/PooledByteBuffer;
    .restart local v4    # "ref":Lcom/facebook/common/references/CloseableReference;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .restart local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    :catchall_0
    move-exception v5

    :try_start_7
    invoke-static {v4}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .end local v1    # "currentToken":Ljava/lang/Object;
    .end local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 202
    .end local v3    # "buffer":Lcom/facebook/common/memory/PooledByteBuffer;
    .end local v4    # "ref":Lcom/facebook/common/references/CloseableReference;
    .restart local v1    # "currentToken":Ljava/lang/Object;
    .restart local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .restart local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    :catch_0
    move-exception v3

    .line 203
    .local v3, "exception":Ljava/lang/Exception;
    nop

    .line 217
    .end local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v3    # "exception":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 203
    .restart local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local v3    # "exception":Ljava/lang/Exception;
    return-object v0

    .line 184
    .end local v2    # "result":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_3
    :try_start_8
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    .end local v1    # "currentToken":Ljava/lang/Object;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 213
    .restart local v1    # "currentToken":Ljava/lang/Object;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .restart local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    :catchall_1
    move-exception v0

    .line 214
    .local v0, "th":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 215
    nop

    .end local v1    # "currentToken":Ljava/lang/Object;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 217
    .end local v0    # "th":Ljava/lang/Throwable;
    .restart local v1    # "currentToken":Ljava/lang/Object;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "$isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p2    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .restart local p3    # "$key":Lcom/facebook/cache/common/CacheKey;
    :catchall_2
    move-exception v0

    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    throw v0
.end method

.method private static final probe$lambda$3(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Void;
    .locals 3
    .param p0, "$token"    # Ljava/lang/Object;
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p2, "$key"    # Lcom/facebook/cache/common/CacheKey;

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "currentToken":Ljava/lang/Object;
    nop

    .line 134
    :try_start_0
    iget-object v2, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v2, p2}, Lcom/facebook/cache/disk/FileCache;->probe(Lcom/facebook/cache/common/CacheKey;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 137
    nop

    .line 138
    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    throw v0
.end method

.method private static final put$lambda$6$lambda$5(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 3
    .param p0, "$token"    # Ljava/lang/Object;
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p2, "$key"    # Lcom/facebook/cache/common/CacheKey;
    .param p3, "$finalEncodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "currentToken":Ljava/lang/Object;
    nop

    .line 249
    :try_start_0
    invoke-direct {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeToDiskCache(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3}, Lcom/facebook/imagepipeline/cache/StagingArea;->remove(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    .line 255
    invoke-static {p3}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 256
    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 257
    nop

    .line 258
    return-void

    .line 250
    :catchall_0
    move-exception v1

    .line 251
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {p0, v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 252
    nop

    .end local v0    # "currentToken":Ljava/lang/Object;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local p2    # "$key":Lcom/facebook/cache/common/CacheKey;
    .end local p3    # "$finalEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "currentToken":Ljava/lang/Object;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .restart local p2    # "$key":Lcom/facebook/cache/common/CacheKey;
    .restart local p3    # "$finalEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :catchall_1
    move-exception v1

    iget-object v2, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, p3}, Lcom/facebook/imagepipeline/cache/StagingArea;->remove(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    .line 255
    invoke-static {p3}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 256
    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    throw v1
.end method

.method private final readFromDiskCache(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 6
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    nop

    .line 337
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/FileCache;->getResource(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object v0

    .line 339
    .local v0, "diskCacheResource":Lcom/facebook/binaryresource/BinaryResource;
    if-nez v0, :cond_0

    .line 340
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v2, "Disk cache miss for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onDiskCacheMiss(Lcom/facebook/cache/common/CacheKey;)V

    .line 342
    const/4 v1, 0x0

    return-object v1

    .line 344
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onDiskCacheHit(Lcom/facebook/cache/common/CacheKey;)V

    .line 347
    invoke-interface {v0}, Lcom/facebook/binaryresource/BinaryResource;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .local v1, "is":Ljava/io/InputStream;
    nop

    .line 350
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->pooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-interface {v0}, Lcom/facebook/binaryresource/BinaryResource;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 353
    nop

    .line 349
    nop

    .line 348
    nop

    .line 354
    .local v2, "byteBuffer":Lcom/facebook/common/memory/PooledByteBuffer;
    sget-object v3, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v4, "Successful read from disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    nop

    .line 336
    .end local v0    # "diskCacheResource":Lcom/facebook/binaryresource/BinaryResource;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "byteBuffer":Lcom/facebook/common/memory/PooledByteBuffer;
    return-object v2

    .line 352
    .restart local v0    # "diskCacheResource":Lcom/facebook/binaryresource/BinaryResource;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .end local p1    # "key":Lcom/facebook/cache/common/CacheKey;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 356
    .end local v0    # "diskCacheResource":Lcom/facebook/binaryresource/BinaryResource;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "key":Lcom/facebook/cache/common/CacheKey;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Exception reading from cache for %s"

    invoke-static {v1, v2, v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onDiskCacheGetFail(Lcom/facebook/cache/common/CacheKey;)V

    .line 362
    throw v0
.end method

.method private static final remove$lambda$7(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Ljava/lang/Void;
    .locals 3
    .param p0, "$token"    # Ljava/lang/Object;
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p2, "$key"    # Lcom/facebook/cache/common/CacheKey;

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    .local v1, "currentToken":Ljava/lang/Object;
    nop

    .line 277
    :try_start_0
    iget-object v2, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v2, p2}, Lcom/facebook/imagepipeline/cache/StagingArea;->remove(Lcom/facebook/cache/common/CacheKey;)Z

    .line 278
    iget-object v2, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v2, p2}, Lcom/facebook/cache/disk/FileCache;->remove(Lcom/facebook/cache/common/CacheKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 284
    nop

    .line 285
    return-object v0

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    .local v0, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 281
    nop

    .end local v1    # "currentToken":Ljava/lang/Object;
    .end local p0    # "$token":Ljava/lang/Object;
    .end local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local p2    # "$key":Lcom/facebook/cache/common/CacheKey;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    .end local v0    # "th":Ljava/lang/Throwable;
    .restart local v1    # "currentToken":Ljava/lang/Object;
    .restart local p0    # "$token":Ljava/lang/Object;
    .restart local p1    # "this$0":Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .restart local p2    # "$key":Lcom/facebook/cache/common/CacheKey;
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onEndWork(Ljava/lang/Object;)V

    throw v0
.end method

.method private final writeToDiskCache(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 5
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 372
    sget-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v1, "About to write to disk-cache for key %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    nop

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    new-instance v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/cache/disk/FileCache;->insert(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/cache/common/WriterCallback;)Lcom/facebook/binaryresource/BinaryResource;

    .line 379
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onDiskCachePut(Lcom/facebook/cache/common/CacheKey;)V

    .line 380
    sget-object v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    const-string v1, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 384
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to write to disk-cache for key %s"

    invoke-static {v1, v2, v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static final writeToDiskCache$lambda$9(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "$encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p2, "os"    # Ljava/io/OutputStream;

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "os"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 376
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->pooledByteStreams:Lcom/facebook/common/memory/PooledByteStreams;

    invoke-virtual {v1, v0, p2}, Lcom/facebook/common/memory/PooledByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 378
    return-void

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final addKeyForAsyncProbing(Lcom/facebook/cache/common/CacheKey;)V
    .locals 1
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/FileCache;->probe(Lcom/facebook/cache/common/CacheKey;)Z

    .line 149
    return-void
.end method

.method public final clearAll()Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/StagingArea;->clearAll()V

    .line 299
    const-string v0, "BufferedDiskCache_clearAll"

    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, "token":Ljava/lang/Object;
    nop

    .line 301
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)V

    .line 315
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeExecutor:Ljava/util/concurrent/Executor;

    .line 301
    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 300
    const-string/jumbo v2, "{\n      Task.call(\n     \u2026     writeExecutor)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 319
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Failed to schedule disk-cache clear"

    invoke-static {v2, v3, v5, v4}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-static {v1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v2

    .line 316
    const-string/jumbo v3, "{\n      // Log failure\n \u2026forError(exception)\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 300
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public final contains(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;
    .locals 2
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "{\n        Task.forResult(true)\n      }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsAsync(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0
.end method

.method public final containsSync(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/StagingArea;->containsKey(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/FileCache;->hasKeySync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final diskCheckSync(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->checkInStagingAreaAndFileCache(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    .line 103
    :goto_0
    return v0
.end method

.method public final get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;
    .locals 8
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "isCancelled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/Task<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isCancelled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "BufferedDiskCache#get"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 393
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 394
    const/4 v3, 0x0

    .line 116
    .local v3, "$i$a$-traceSection-BufferedDiskCache$get$1":I
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v4, p1}, Lcom/facebook/imagepipeline/cache/StagingArea;->get(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v4

    .line 117
    .local v4, "pinnedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 395
    .local v5, "it":Lcom/facebook/imagepipeline/image/EncodedImage;
    const/4 v6, 0x0

    .line 117
    .local v6, "$i$a$-let-BufferedDiskCache$get$1$1":I
    invoke-direct {p0, p1, v5}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->foundPinnedImage(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Lbolts/Task;

    move-result-object v5

    .end local v5    # "it":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v6    # "$i$a$-let-BufferedDiskCache$get$1$1":I
    if-nez v5, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getAsync(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object v5

    .line 394
    .end local v3    # "$i$a$-traceSection-BufferedDiskCache$get$1":I
    .end local v4    # "pinnedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :cond_1
    goto :goto_2

    .line 396
    :cond_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 397
    nop

    .line 398
    const/4 v3, 0x0

    .line 116
    .restart local v3    # "$i$a$-traceSection-BufferedDiskCache$get$1":I
    :try_start_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v4, p1}, Lcom/facebook/imagepipeline/cache/StagingArea;->get(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v4

    .line 117
    .restart local v4    # "pinnedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v4, :cond_4

    move-object v5, v4

    .line 395
    .restart local v5    # "it":Lcom/facebook/imagepipeline/image/EncodedImage;
    const/4 v6, 0x0

    .line 117
    .restart local v6    # "$i$a$-let-BufferedDiskCache$get$1$1":I
    invoke-direct {p0, p1, v5}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->foundPinnedImage(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Lbolts/Task;

    move-result-object v7

    .end local v5    # "it":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v6    # "$i$a$-let-BufferedDiskCache$get$1$1":I
    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v7

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getAsync(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v3    # "$i$a$-traceSection-BufferedDiskCache$get$1":I
    .end local v4    # "pinnedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :goto_1
    nop

    .line 400
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 398
    nop

    .line 118
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    :goto_2
    return-object v5

    .line 400
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method

.method public final getSize()J
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->fileCache:Lcom/facebook/cache/disk/FileCache;

    invoke-interface {v0}, Lcom/facebook/cache/disk/FileCache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final probe(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;
    .locals 5
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    nop

    .line 128
    nop

    .line 129
    :try_start_0
    const-string v0, "BufferedDiskCache_probe"

    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "token":Ljava/lang/Object;
    new-instance v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)V

    .line 140
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeExecutor:Ljava/util/concurrent/Executor;

    .line 130
    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 128
    .end local v0    # "token":Ljava/lang/Object;
    const-string/jumbo v0, "{\n      val token = Fres\u2026     writeExecutor)\n    }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to schedule disk-cache probe for %s"

    invoke-static {v1, v2, v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    .line 141
    const-string/jumbo v2, "{\n      FLog.w(TAG, exce\u2026forError(exception)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public final put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 10
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "BufferedDiskCache#put"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 401
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const-string v4, "Failed to schedule disk-cache write for %s"

    const-string v5, "BufferedDiskCache_putAsync"

    const-string v6, "Check failed."

    if-nez v3, :cond_1

    .line 402
    const/4 v3, 0x0

    .line 235
    .local v3, "$i$a$-traceSection-BufferedDiskCache$put$1":I
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 238
    iget-object v6, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v6, p1, p2}, Lcom/facebook/imagepipeline/cache/StagingArea;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 243
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->cloneOrNull(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v6

    .line 244
    .local v6, "finalEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    nop

    .line 245
    :try_start_0
    invoke-static {v5}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 246
    .local v5, "token":Ljava/lang/Object;
    iget-object v7, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda1;

    invoke-direct {v8, v5, p0, p1, v6}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "token":Ljava/lang/Object;
    goto :goto_0

    .line 259
    :catch_0
    move-exception v5

    .line 262
    .local v5, "exception":Ljava/lang/Exception;
    sget-object v7, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v8, v4, v9}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v4, p1, p2}, Lcom/facebook/imagepipeline/cache/StagingArea;->remove(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    .line 264
    invoke-static {v6}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 266
    .end local v5    # "exception":Ljava/lang/Exception;
    :goto_0
    nop

    .line 402
    .end local v3    # "$i$a$-traceSection-BufferedDiskCache$put$1":I
    .end local v6    # "finalEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    goto :goto_2

    .line 235
    .restart local v3    # "$i$a$-traceSection-BufferedDiskCache$put$1":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 405
    .end local v3    # "$i$a$-traceSection-BufferedDiskCache$put$1":I
    :cond_1
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 406
    nop

    .line 407
    const/4 v3, 0x0

    .line 235
    .restart local v3    # "$i$a$-traceSection-BufferedDiskCache$put$1":I
    :try_start_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 238
    iget-object v6, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v6, p1, p2}, Lcom/facebook/imagepipeline/cache/StagingArea;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 243
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->cloneOrNull(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .restart local v6    # "finalEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    nop

    .line 245
    :try_start_2
    invoke-static {v5}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 246
    .local v5, "token":Ljava/lang/Object;
    iget-object v7, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda1;

    invoke-direct {v8, v5, p0, p1, v6}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v5    # "token":Ljava/lang/Object;
    goto :goto_1

    .line 259
    :catch_1
    move-exception v5

    .line 262
    .local v5, "exception":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v8, v4, v9}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v4, p1, p2}, Lcom/facebook/imagepipeline/cache/StagingArea;->remove(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    .line 264
    invoke-static {v6}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 266
    .end local v5    # "exception":Ljava/lang/Exception;
    :goto_1
    nop

    .end local v3    # "$i$a$-traceSection-BufferedDiskCache$put$1":I
    .end local v6    # "finalEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    nop

    .line 409
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 407
    nop

    .line 266
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    :goto_2
    return-void

    .line 235
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local v3    # "$i$a$-traceSection-BufferedDiskCache$put$1":I
    :cond_2
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local p1    # "key":Lcom/facebook/cache/common/CacheKey;
    .end local p2    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 409
    .end local v3    # "$i$a$-traceSection-BufferedDiskCache$put$1":I
    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    .restart local p1    # "key":Lcom/facebook/cache/common/CacheKey;
    .restart local p2    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method

.method public final remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;
    .locals 5
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->stagingArea:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/StagingArea;->remove(Lcom/facebook/cache/common/CacheKey;)Z

    .line 271
    nop

    .line 272
    :try_start_0
    const-string v0, "BufferedDiskCache_remove"

    invoke-static {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "token":Ljava/lang/Object;
    new-instance v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)V

    .line 287
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->writeExecutor:Ljava/util/concurrent/Executor;

    .line 273
    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 271
    .end local v0    # "token":Ljava/lang/Object;
    const-string/jumbo v0, "{\n      val token = Fres\u2026     writeExecutor)\n    }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 291
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->TAG:Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {p1}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to schedule disk-cache remove for %s"

    invoke-static {v1, v2, v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    .line 288
    const-string/jumbo v2, "{\n      // Log failure\n \u2026forError(exception)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method
