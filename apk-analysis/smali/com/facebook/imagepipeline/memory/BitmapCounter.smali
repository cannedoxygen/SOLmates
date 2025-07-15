.class public Lcom/facebook/imagepipeline/memory/BitmapCounter;
.super Ljava/lang/Object;
.source "BitmapCounter.java"


# instance fields
.field private mCount:I

.field private final mMaxCount:I

.field private final mMaxSize:I

.field private mSize:J

.field private final mUnpooledBitmapsReleaser:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxCount"    # I
    .param p2, "maxSize"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 33
    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 34
    iput p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxCount:I

    .line 35
    iput p2, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxSize:I

    .line 36
    new-instance v0, Lcom/facebook/imagepipeline/memory/BitmapCounter$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/BitmapCounter$1;-><init>(Lcom/facebook/imagepipeline/memory/BitmapCounter;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mUnpooledBitmapsReleaser:Lcom/facebook/common/references/ResourceReleaser;

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized decrease(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 73
    .local v0, "bitmapSize":I
    iget v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "No bitmaps registered."

    invoke-static {v1, v4}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    int-to-long v4, v0

    iget-wide v6, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    move v2, v3

    :cond_1
    const-string v1, "Bitmap size bigger than the total registered size: %d, %d"

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    .line 78
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 74
    invoke-static {v2, v1, v4}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-wide v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    int-to-long v4, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    .line 80
    iget v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "bitmapSize":I
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/BitmapCounter;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 87
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/BitmapCounter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMaxCount()I
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 98
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/BitmapCounter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMaxSize()I
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/BitmapCounter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getReleaser()Lcom/facebook/common/references/ResourceReleaser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mUnpooledBitmapsReleaser:Lcom/facebook/common/references/ResourceReleaser;

    return-object v0
.end method

.method public declared-synchronized getSize()J
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 94
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/BitmapCounter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized increase(Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 58
    .local v0, "bitmapSize":I
    iget v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    iget v2, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxCount:I

    if-ge v1, v2, :cond_1

    iget-wide v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget v3, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxSize:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    .line 62
    iget-wide v3, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return v2

    .line 59
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/BitmapCounter;
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 56
    .end local v0    # "bitmapSize":I
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
