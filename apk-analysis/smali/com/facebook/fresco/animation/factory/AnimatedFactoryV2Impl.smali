.class public Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;


# static fields
.field private static final NUMBER_OF_FRAMES_TO_PREPARE:I = 0x3


# instance fields
.field private mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAnimationFpsLimit:I

.field private final mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownscaleFrameToDrawableDimensions:Z

.field private final mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private final mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private mSerialExecutorService:Lcom/facebook/common/executors/SerialExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUseBufferLoaderStrategy:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDownscaleFrameToDrawableDimensions(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mDownscaleFrameToDrawableDimensions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAnimatedDrawableUtil(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedDrawableUtil()Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAnimatedImageFactory(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/imagepipeline/core/ExecutorSupplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;ZZILcom/facebook/common/executors/SerialExecutorService;)V
    .locals 0
    .param p1, "platformBitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .param p2, "executorSupplier"    # Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .param p4, "downscaleFrameToDrawableDimensions"    # Z
    .param p5, "useBufferLoaderStrategy"    # Z
    .param p6, "animationFpsLimit"    # I
    .param p7, "serialExecutorServiceForFramePreparing"    # Lcom/facebook/common/executors/SerialExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;ZZI",
            "Lcom/facebook/common/executors/SerialExecutorService;",
            ")V"
        }
    .end annotation

    .line 70
    .local p3, "backingCache":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 72
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 73
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 74
    iput p6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimationFpsLimit:I

    .line 75
    iput-boolean p5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mUseBufferLoaderStrategy:Z

    .line 76
    iput-boolean p4, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mDownscaleFrameToDrawableDimensions:Z

    .line 77
    iput-object p7, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mSerialExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    .line 78
    return-void
.end method

.method private buildAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;
    .locals 4

    .line 171
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 183
    .local v0, "animatedDrawableBackendProvider":Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    new-instance v1, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    iget-boolean v3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mUseBufferLoaderStrategy:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Z)V

    return-object v1
.end method

.method private createDrawableFactory()Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;
    .locals 15

    .line 111
    new-instance v7, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$$ExternalSyntheticLambda1;-><init>()V

    .line 115
    .local v7, "cachingStrategySupplier":Lcom/facebook/common/internal/Supplier;, "Lcom/facebook/common/internal/Supplier<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mSerialExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/facebook/common/executors/DefaultSerialExecutorService;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->forDecode()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/executors/DefaultSerialExecutorService;-><init>(Ljava/util/concurrent/Executor;)V

    move-object v3, v0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mSerialExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    move-object v3, v0

    :goto_0
    nop

    .line 119
    .local v3, "serialExecutorServiceForFramePreparing":Lcom/facebook/common/executors/SerialExecutorService;
    new-instance v8, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$$ExternalSyntheticLambda2;-><init>()V

    .line 121
    .local v8, "numberOfFramesToPrepareSupplier":Lcom/facebook/common/internal/Supplier;, "Lcom/facebook/common/internal/Supplier<Ljava/lang/Integer;>;"
    sget-object v13, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;

    .line 123
    .local v13, "useDeepEquals":Lcom/facebook/common/internal/Supplier;, "Lcom/facebook/common/internal/Supplier<Ljava/lang/Boolean;>;"
    new-instance v14, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;

    .line 124
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedDrawableBackendProvider()Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->getInstance()Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    move-result-object v2

    .line 127
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    iget-object v6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    iget-boolean v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mUseBufferLoaderStrategy:Z

    .line 133
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v10

    iget-boolean v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mDownscaleFrameToDrawableDimensions:Z

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v11

    iget v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimationFpsLimit:I

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v12

    move-object v0, v14

    move-object v9, v13

    invoke-direct/range {v0 .. v12}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;)V

    .line 123
    return-object v14
.end method

.method private getAnimatedDrawableBackendProvider()Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    return-object v0
.end method

.method private getAnimatedDrawableUtil()Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    return-object v0
.end method

.method private getAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->buildAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    return-object v0
.end method

.method static synthetic lambda$createDrawableFactory$1()Ljava/lang/Integer;
    .locals 1

    .line 112
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createDrawableFactory$2()Ljava/lang/Integer;
    .locals 1

    .line 119
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnimatedDrawableFactory(Landroid/content/Context;)Lcom/facebook/imagepipeline/drawable/DrawableFactory;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->createDrawableFactory()Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    return-object v0
.end method

.method public getGifDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .locals 1

    .line 91
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    return-object v0
.end method

.method public getWebPDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .locals 1

    .line 106
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    return-object v0
.end method

.method synthetic lambda$getWebPDecoder$0$com-facebook-fresco-animation-factory-AnimatedFactoryV2Impl(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 2
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "length"    # I
    .param p3, "qualityInfo"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p4, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 107
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    move-result-object v0

    iget-object v1, p4, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->animatedBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, p1, p4, v1}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;->decodeWebP(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v0

    return-object v0
.end method
