.class Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameKey"
.end annotation


# instance fields
.field private final mFrameIndex:I

.field private final mImageCacheKey:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/CacheKey;I)V
    .locals 0
    .param p1, "imageCacheKey"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "frameIndex"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 37
    iput p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    .line 38
    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v0, p1}, Lcom/facebook/cache/common/CacheKey;->containsUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 51
    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 54
    move-object v1, p1

    check-cast v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    .line 55
    .local v1, "that":Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    iget v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    iget v4, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    iget-object v4, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    :goto_0
    return v0

    .line 58
    .end local v1    # "that":Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    :cond_2
    return v2
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f5

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isResourceIdForDebugging()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 43
    const-string v2, "imageCacheKey"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    .line 44
    const-string v2, "frameIndex"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method
