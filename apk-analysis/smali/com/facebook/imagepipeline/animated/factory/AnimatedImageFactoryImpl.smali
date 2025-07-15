.class public Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;


# static fields
.field static sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

.field private final mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private final mIsNewRenderImplementation:Z

.field private final mTreatAnimatedImagesAsStateful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 43
    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 55
    const-string v0, "com.facebook.animated.gif.GifImage"

    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->loadIfPresent(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 56
    const-string v0, "com.facebook.animated.webp.WebPImage"

    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->loadIfPresent(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Z)V
    .locals 1
    .param p1, "animatedDrawableBackendProvider"    # Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    .param p2, "bitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .param p3, "isNewRenderImplementation"    # Z

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;ZZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;ZZ)V
    .locals 0
    .param p1, "animatedDrawableBackendProvider"    # Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    .param p2, "bitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .param p3, "isNewRenderImplementation"    # Z
    .param p4, "treatAnimatedImagesAsStateful"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 72
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 73
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mIsNewRenderImplementation:Z

    .line 74
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mTreatAnimatedImagesAsStateful:Z

    .line 75
    return-void
.end method

.method private createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 246
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 247
    .local v0, "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 248
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 249
    return-object v0
.end method

.method private createPreviewBitmap(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .param p1, "image"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "frameForPreview"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/AnimatedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 186
    nop

    .line 187
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 188
    .local v0, "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->forAnimatedImage(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v1

    .line 189
    .local v1, "tempResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 190
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;->get(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v2

    .line 191
    .local v2, "drawableBackend":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    new-instance v3, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mIsNewRenderImplementation:Z

    new-instance v5, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$1;

    invoke-direct {v5, p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$1;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;ZLcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;)V

    .line 206
    .local v3, "animatedImageCompositor":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, p3, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 207
    return-object v0
.end method

.method private decodeAllFrames(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 7
    .param p1, "image"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/AnimatedImage;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 212
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->forAnimatedImage(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v0

    .line 213
    .local v0, "tempResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 214
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;->get(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v1

    .line 215
    .local v1, "drawableBackend":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    new-instance v2, Ljava/util/ArrayList;

    .line 216
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;>;"
    new-instance v3, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mIsNewRenderImplementation:Z

    new-instance v5, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$2;

    invoke-direct {v5, p0, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$2;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;Ljava/util/List;)V

    invoke-direct {v3, v1, v4, v5}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;ZLcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;)V

    .line 233
    .local v3, "animatedImageCompositor":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 234
    nop

    .line 235
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getWidth()I

    move-result v5

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    .line 236
    .local v5, "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v5}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 237
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v5    # "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    .end local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method private getCloseableImage(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 6
    .param p1, "sourceUri"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p3, "image"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .param p4, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "decodedFrames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;>;"
    const/4 v1, 0x0

    .line 153
    .local v1, "previewBitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :try_start_0
    iget-boolean v2, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->useLastFrameForPreview:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p3}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 154
    .local v2, "frameForPreview":I
    :goto_0
    iget-boolean v4, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    if-eqz v4, :cond_1

    .line 155
    nop

    .line 156
    invoke-direct {p0, p3, p4, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createPreviewBitmap(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    sget-object v5, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 155
    invoke-static {v4, v5, v3}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->of(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 180
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    .line 155
    return-object v3

    .line 161
    :cond_1
    :try_start_1
    iget-boolean v3, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodeAllFrames:Z

    if-eqz v3, :cond_2

    .line 162
    invoke-direct {p0, p3, p4}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->decodeAllFrames(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/references/CloseableReference;

    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    move-object v1, v3

    .line 166
    :cond_2
    iget-boolean v3, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodePreviewFrame:Z

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 167
    invoke-direct {p0, p3, p4, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createPreviewBitmap(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    move-object v1, v3

    .line 169
    :cond_3
    nop

    .line 170
    invoke-static {p3}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->newBuilder(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v3

    .line 171
    invoke-virtual {v3, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setPreviewBitmap(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v3

    .line 172
    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setFrameForPreview(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setDecodedFrames(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;

    .line 174
    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setBitmapTransformation(Lcom/facebook/imagepipeline/transformation/BitmapTransformation;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setSource(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->build()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v3

    .line 177
    .local v3, "animatedImageResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    new-instance v4, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mTreatAnimatedImagesAsStateful:Z

    invoke-direct {v4, v3, v5}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 180
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    .line 177
    return-object v4

    .line 179
    .end local v2    # "frameForPreview":I
    .end local v3    # "animatedImageResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 180
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    .line 181
    throw v2
.end method

.method private static loadIfPresent(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 49
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 6
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .line 89
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 94
    .local v0, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 98
    .local v1, "input":Lcom/facebook/common/memory/PooledByteBuffer;
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    sget-object v2, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v2

    .local v2, "gifImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    goto :goto_0

    .line 101
    .end local v2    # "gifImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    :cond_0
    sget-object v2, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 103
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->getNativePtr()J

    move-result-wide v3

    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v5

    .line 102
    invoke-interface {v2, v3, v4, v5, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;->decodeFromNativeMemory(JILcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v2

    .line 105
    .restart local v2    # "gifImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, v2, p3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->getCloseableImage(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 105
    return-object v3

    .line 107
    .end local v1    # "input":Lcom/facebook/common/memory/PooledByteBuffer;
    .end local v2    # "gifImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 108
    throw v1

    .line 90
    .end local v0    # "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "To encode animated gif please add the dependency to the animated-gif module"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeWebP(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 6
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .line 123
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 128
    .local v0, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 132
    .local v1, "input":Lcom/facebook/common/memory/PooledByteBuffer;
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v2

    .local v2, "webPImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    goto :goto_0

    .line 135
    .end local v2    # "webPImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    :cond_0
    sget-object v2, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 137
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->getNativePtr()J

    move-result-wide v3

    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v5

    .line 136
    invoke-interface {v2, v3, v4, v5, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;->decodeFromNativeMemory(JILcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v2

    .line 139
    .restart local v2    # "webPImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, v2, p3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->getCloseableImage(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 139
    return-object v3

    .line 141
    .end local v1    # "input":Lcom/facebook/common/memory/PooledByteBuffer;
    .end local v2    # "webPImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 142
    throw v1

    .line 124
    .end local v0    # "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "To encode animated webp please add the dependency to the animated-webp module"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
