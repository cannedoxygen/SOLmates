.class public Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "GenericByteArrayPool.kt"

# interfaces
.implements Lcom/facebook/common/memory/ByteArrayPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "[B>;",
        "Lcom/facebook/common/memory/ByteArrayPool;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000eH\u0014J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0014J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000eH\u0014J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0002H\u0014J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0014R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;",
        "Lcom/facebook/imagepipeline/memory/BasePool;",
        "",
        "Lcom/facebook/common/memory/ByteArrayPool;",
        "memoryTrimmableRegistry",
        "Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "poolParams",
        "Lcom/facebook/imagepipeline/memory/PoolParams;",
        "poolStatsTracker",
        "Lcom/facebook/imagepipeline/memory/PoolStatsTracker;",
        "(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V",
        "bucketSizes",
        "",
        "minBufferSize",
        "",
        "getMinBufferSize",
        "()I",
        "alloc",
        "bucketedSize",
        "free",
        "",
        "value",
        "getBucketedSize",
        "requestSize",
        "getBucketedSizeForValue",
        "getSizeInBytes",
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
.field private final bucketSizes:[I


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V
    .locals 5
    .param p1, "memoryTrimmableRegistry"    # Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .param p2, "poolParams"    # Lcom/facebook/imagepipeline/memory/PoolParams;
    .param p3, "poolStatsTracker"    # Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    const-string v0, "memoryTrimmableRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "poolParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "poolStatsTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    .line 45
    nop

    .line 46
    iget-object v0, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 47
    .local v0, "bucketSizes":Landroid/util/SparseIntArray;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->bucketSizes:[I

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 50
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->bucketSizes:[I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->bucketSizes:[I

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->initialize()V

    .line 56
    .end local v0    # "bucketSizes":Landroid/util/SparseIntArray;
    nop

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic alloc(I)Ljava/lang/Object;
    .locals 1
    .param p1, "bucketedSize"    # I

    .line 21
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->alloc(I)[B

    move-result-object v0

    return-object v0
.end method

.method protected alloc(I)[B
    .locals 1
    .param p1, "bucketedSize"    # I

    .line 64
    new-array v0, p1, [B

    return-object v0
.end method

.method public bridge synthetic free(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 21
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->free([B)V

    return-void
.end method

.method protected free([B)V
    .locals 1
    .param p1, "value"    # [B

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    nop

    .line 74
    return-void
.end method

.method protected getBucketedSize(I)I
    .locals 4
    .param p1, "requestSize"    # I

    .line 95
    if-lez p1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->bucketSizes:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 101
    .local v3, "bucketedSize":I
    if-lt v3, p1, :cond_0

    .line 102
    return v3

    .line 100
    .end local v3    # "bucketedSize":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return p1

    .line 96
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic getBucketedSizeForValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 21
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->getBucketedSizeForValue([B)I

    move-result v0

    return v0
.end method

.method protected getBucketedSizeForValue([B)I
    .locals 1
    .param p1, "value"    # [B

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    nop

    .line 119
    array-length v0, p1

    return v0
.end method

.method public final getMinBufferSize()I
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->bucketSizes:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;->bucketSizes:[I

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method protected getSizeInBytes(I)I
    .locals 0
    .param p1, "bucketedSize"    # I

    .line 82
    return p1
.end method
