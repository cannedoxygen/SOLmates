.class public Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;
.super Ljava/lang/Object;
.source "DefaultCacheKeyFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/CacheKeyFactory;


# static fields
.field private static sInstance:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->sInstance:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->sInstance:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->sInstance:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    .line 30
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->sInstance:Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;
    .locals 8
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    new-instance v7, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    .line 37
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->getCacheKeySourceUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)V

    .line 43
    .local v0, "cacheKey":Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    invoke-virtual {v0, p2}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->setCallerContext(Ljava/lang/Object;)V

    .line 44
    return-object v0
.end method

.method protected getCacheKeySourceUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .line 87
    return-object p1
.end method

.method public getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;
    .locals 2
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    new-instance v0, Lcom/facebook/cache/common/SimpleCacheKey;

    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->getCacheKeySourceUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/SimpleCacheKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;
    .locals 1
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    return-object v0
.end method

.method public getPostprocessedBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;
    .locals 11
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v0

    .line 53
    .local v0, "postprocessor":Lcom/facebook/imagepipeline/request/Postprocessor;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/Postprocessor;->getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    .line 55
    .local v1, "postprocessorCacheKey":Lcom/facebook/cache/common/CacheKey;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "postprocessorName":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v1    # "postprocessorCacheKey":Lcom/facebook/cache/common/CacheKey;
    .end local v2    # "postprocessorName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 58
    .restart local v1    # "postprocessorCacheKey":Lcom/facebook/cache/common/CacheKey;
    const/4 v2, 0x0

    .line 60
    .restart local v2    # "postprocessorName":Ljava/lang/String;
    :goto_0
    new-instance v10, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    .line 62
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->getCacheKeySourceUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v5

    .line 64
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v6

    .line 65
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v7

    move-object v3, v10

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)V

    .line 68
    .local v3, "cacheKey":Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    invoke-virtual {v3, p2}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->setCallerContext(Ljava/lang/Object;)V

    .line 69
    return-object v3
.end method
