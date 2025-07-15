.class public Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;
.super Ljava/lang/Object;
.source "AnimationFrameCacheKey.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# static fields
.field private static final URI_PREFIX:Ljava/lang/String; = "anim://"


# instance fields
.field private final mAnimationUriString:Ljava/lang/String;

.field private final mDeepEquals:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "imageId"    # I

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;-><init>(IZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "imageId"    # I
    .param p2, "deepEquals"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anim://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mDeepEquals:Z

    .line 32
    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mDeepEquals:Z

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_0
    if-ne p0, p1, :cond_1

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;

    .line 63
    .local v0, "that":Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    iget-object v2, v0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 59
    .end local v0    # "that":Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mDeepEquals:Z

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isResourceIdForDebugging()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method
