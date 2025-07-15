.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;


# instance fields
.field private final mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field private final mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

.field private final mAnimatedImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

.field private final mDownscaleFrameToDrawableDimensions:Z

.field private final mDurationMs:I

.field private final mFrameDurationsMs:[I

.field private final mFrameInfos:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

.field private final mFrameTimestampsMs:[I

.field private final mRenderDstRect:Landroid/graphics/Rect;

.field private final mRenderSrcRect:Landroid/graphics/Rect;

.field private final mRenderedBounds:Landroid/graphics/Rect;

.field private mTempBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTransparentPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "animatedDrawableUtil"    # Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
    .param p2, "animatedImageResult"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .param p3, "bounds"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "downscaleFrameToDrawableDimensions"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderSrcRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderDstRect:Landroid/graphics/Rect;

    .line 57
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 58
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    .line 59
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameDurations()[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameDurationsMs:[I

    .line 61
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameDurationsMs:[I

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->fixFrameDurations([I)V

    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameDurationsMs:[I

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getTotalDurationFromFrameDurations([I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mDurationMs:I

    .line 63
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameDurationsMs:[I

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getFrameTimeStampsFromDurations([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameTimestampsMs:[I

    .line 64
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->getBoundsToUse(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    .line 65
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mDownscaleFrameToDrawableDimensions:Z

    .line 66
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameInfos:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameInfos:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v2, v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTransparentPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTransparentPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    return-void
.end method

.method private declared-synchronized clearTempBitmap()V
    .locals 1

    monitor-enter p0

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .end local p0    # "this":Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getBoundsToUse(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "image"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .param p1, "targetBounds"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v2

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 78
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    return-object v1
.end method

.method private maybeDisposeBackground(Landroid/graphics/Canvas;FFLcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "xScale"    # F
    .param p3, "yScale"    # F
    .param p4, "previousFrameInfo"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 331
    iget-object v0, p4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->disposalMethod:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v1, :cond_0

    .line 332
    iget v0, p4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 333
    .local v0, "prevFrameWidth":I
    iget v1, p4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 334
    .local v1, "prevFrameHeight":I
    iget v2, p4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->xOffset:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 335
    .local v2, "prevXOffset":I
    iget v3, p4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->yOffset:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 336
    .local v3, "prevYOffset":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v2, v0

    add-int v6, v3, v1

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 342
    .local v4, "prevFrameSurface":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 344
    .end local v0    # "prevFrameWidth":I
    .end local v1    # "prevFrameHeight":I
    .end local v2    # "prevXOffset":I
    .end local v3    # "prevYOffset":I
    .end local v4    # "prevFrameSurface":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private declared-synchronized prepareTempBitmapForThisSize(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 227
    .end local p0    # "this":Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->clearTempBitmap()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 230
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 233
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 224
    .end local p1    # "width":I
    .end local p2    # "height":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private renderImageDoesNotSupportScaling(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;

    .line 348
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mDownscaleFrameToDrawableDimensions:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    .local v0, "fittedWidth":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 352
    .local v1, "fittedHeight":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 353
    .local v2, "scaleX":F
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 354
    .local v3, "scaleY":F
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 356
    .local v4, "scale":F
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 357
    .local v5, "frameWidth":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v6, v6

    .line 358
    .local v6, "frameHeight":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getXOffset()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-int v7, v7

    .line 359
    .local v7, "xOffset":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getYOffset()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    float-to-int v0, v8

    .line 360
    .end local v1    # "fittedHeight":I
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "scale":F
    .local v0, "yOffset":I
    goto :goto_0

    .line 361
    .end local v0    # "yOffset":I
    .end local v5    # "frameWidth":I
    .end local v6    # "frameHeight":I
    .end local v7    # "xOffset":I
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v5

    .line 362
    .restart local v5    # "frameWidth":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v6

    .line 363
    .restart local v6    # "frameHeight":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getXOffset()I

    move-result v7

    .line 364
    .restart local v7    # "xOffset":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getYOffset()I

    move-result v0

    .line 367
    .restart local v0    # "yOffset":I
    :goto_0
    monitor-enter p0

    .line 368
    :try_start_0
    invoke-direct {p0, v5, v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->prepareTempBitmapForThisSize(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 369
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p2, v5, v6, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    int-to-float v1, v7

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 373
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 375
    monitor-exit p0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renderImageSupportsScaling(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;

    .line 237
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v2, v0

    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 238
    .local v2, "xScale":D
    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v4, v0

    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    .line 240
    .local v4, "yScale":D
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 241
    .local v6, "frameWidth":I
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    .line 242
    .local v7, "frameHeight":I
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getXOffset()I

    move-result v0

    int-to-double v8, v0

    mul-double/2addr v8, v2

    double-to-int v8, v8

    .line 243
    .local v8, "xOffset":I
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getYOffset()I

    move-result v0

    int-to-double v9, v0

    mul-double/2addr v9, v4

    double-to-int v9, v9

    .line 245
    .local v9, "yOffset":I
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 247
    .local v0, "renderedWidth":I
    iget-object v10, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 249
    .local v10, "renderedHeight":I
    invoke-direct {v1, v0, v10}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->prepareTempBitmapForThisSize(II)Landroid/graphics/Bitmap;

    .line 250
    iget-object v11, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v11, :cond_0

    .line 251
    :try_start_1
    iget-object v11, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v12, p2

    :try_start_2
    invoke-interface {v12, v6, v7, v11}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->renderFrame(IILandroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 260
    .end local v0    # "renderedWidth":I
    .end local v10    # "renderedHeight":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v12, p2

    :goto_0
    move-wide/from16 v16, v2

    move-object/from16 v2, p1

    goto :goto_4

    .line 250
    .restart local v0    # "renderedWidth":I
    .restart local v10    # "renderedHeight":I
    :cond_0
    move-object/from16 v12, p2

    .line 254
    :goto_1
    :try_start_3
    iget-object v11, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderSrcRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v13, v0, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 255
    iget-object v11, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderDstRect:Landroid/graphics/Rect;

    add-int v13, v8, v0

    add-int v14, v9, v10

    invoke-virtual {v11, v8, v9, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    iget-object v11, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_1

    .line 258
    iget-object v11, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    iget-object v13, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderSrcRect:Landroid/graphics/Rect;

    iget-object v14, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderDstRect:Landroid/graphics/Rect;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v15, 0x0

    move-wide/from16 v16, v2

    move-object/from16 v2, p1

    .end local v2    # "xScale":D
    .local v16, "xScale":D
    :try_start_4
    invoke-virtual {v2, v11, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 257
    .end local v16    # "xScale":D
    .restart local v2    # "xScale":D
    :cond_1
    move-wide/from16 v16, v2

    move-object/from16 v2, p1

    .line 260
    .end local v0    # "renderedWidth":I
    .end local v2    # "xScale":D
    .end local v10    # "renderedHeight":I
    .restart local v16    # "xScale":D
    :goto_2
    monitor-exit p0

    .line 261
    return-void

    .line 260
    .end local v16    # "xScale":D
    .restart local v2    # "xScale":D
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v12, p2

    :goto_3
    move-wide/from16 v16, v2

    move-object/from16 v2, p1

    .end local v2    # "xScale":D
    .restart local v16    # "xScale":D
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4
.end method

.method private renderNonScalingFrames(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;
    .param p3, "frameInfo"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .param p4, "previousFrameInfo"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 383
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 390
    .local v0, "scale":F
    if-eqz p4, :cond_1

    .line 391
    invoke-direct {p0, p1, v0, v0, p4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->maybeDisposeBackground(Landroid/graphics/Canvas;FFLcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 395
    :cond_1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v1

    .line 396
    .local v1, "frameWidth":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v2

    .line 397
    .local v2, "frameHeight":I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 399
    .local v3, "src":Landroid/graphics/Rect;
    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 400
    .local v4, "resizedWidth":I
    int-to-float v5, v2

    mul-float/2addr v5, v0

    float-to-int v5, v5

    .line 402
    .local v5, "resizedHeight":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getXOffset()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    .line 403
    .local v6, "xOffset":I
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getYOffset()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    .line 406
    .local v7, "yOffset":I
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v6, v4

    add-int v10, v7, v5

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 408
    .local v8, "renderDstRect":Landroid/graphics/Rect;
    iget-object v9, p3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->blendOperation:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v10, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v9, v10, :cond_2

    .line 409
    iget-object v9, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 411
    :cond_2
    monitor-enter p0

    .line 413
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->prepareTempBitmapForThisSize(II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 414
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p2, v1, v2, v9}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 415
    const/4 v10, 0x0

    invoke-virtual {p1, v9, v3, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 416
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 384
    .end local v0    # "scale":F
    .end local v1    # "frameWidth":I
    .end local v2    # "frameHeight":I
    .end local v3    # "src":Landroid/graphics/Rect;
    .end local v4    # "resizedWidth":I
    .end local v5    # "resizedHeight":I
    .end local v6    # "xOffset":I
    .end local v7    # "yOffset":I
    .end local v8    # "renderDstRect":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return-void
.end method

.method private renderScalingFrames(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;
    .param p3, "frameInfo"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .param p4, "previousFrameInfo"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v4

    .line 269
    .local v4, "assetWidth":I
    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v5

    .line 272
    .local v5, "assetHeight":I
    int-to-float v0, v4

    .line 273
    .local v0, "scaledWidth":F
    int-to-float v6, v5

    .line 276
    .local v6, "scaledHeight":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 277
    .local v7, "xScale":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 279
    .local v8, "yScale":F
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v9

    .line 280
    .local v9, "frameWidth":I
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v10

    .line 281
    .local v10, "frameHeight":I
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getXOffset()I

    move-result v11

    .line 282
    .local v11, "xOffset":I
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getYOffset()I

    move-result v12

    .line 285
    .local v12, "yOffset":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v0, v13

    if-gtz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v6, v13

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_2

    .line 287
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 288
    .local v13, "maxCanvasWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 290
    .local v14, "maxCanvasHeight":I
    int-to-float v15, v4

    move/from16 v16, v0

    .end local v0    # "scaledWidth":F
    .local v16, "scaledWidth":F
    int-to-float v0, v5

    div-float/2addr v15, v0

    .line 291
    .local v15, "assetRatio":F
    if-le v13, v14, :cond_2

    .line 292
    int-to-float v0, v13

    .line 293
    .end local v16    # "scaledWidth":F
    .restart local v0    # "scaledWidth":F
    move/from16 v16, v0

    .end local v0    # "scaledWidth":F
    .restart local v16    # "scaledWidth":F
    int-to-float v0, v13

    div-float/2addr v0, v15

    move v6, v0

    move/from16 v0, v16

    .end local v6    # "scaledHeight":F
    .local v0, "scaledHeight":F
    goto :goto_1

    .line 295
    .end local v0    # "scaledHeight":F
    .restart local v6    # "scaledHeight":F
    :cond_2
    int-to-float v0, v14

    mul-float/2addr v0, v15

    .line 296
    .end local v16    # "scaledWidth":F
    .local v0, "scaledWidth":F
    int-to-float v6, v14

    .line 299
    :goto_1
    move/from16 v16, v7

    .end local v7    # "xScale":F
    .local v16, "xScale":F
    int-to-float v7, v4

    div-float v7, v0, v7

    .line 300
    .end local v16    # "xScale":F
    .restart local v7    # "xScale":F
    move/from16 v16, v0

    .end local v0    # "scaledWidth":F
    .local v16, "scaledWidth":F
    int-to-float v0, v5

    div-float v8, v6, v0

    .line 302
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "assetWidth":I
    .end local v5    # "assetHeight":I
    .local v17, "assetWidth":I
    .local v18, "assetHeight":I
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v9, v4

    .line 303
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v10, v4

    .line 304
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getXOffset()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v11, v4

    .line 305
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getYOffset()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v12, v4

    .line 308
    .end local v13    # "maxCanvasWidth":I
    .end local v14    # "maxCanvasHeight":I
    .end local v15    # "assetRatio":F
    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v0

    .line 309
    .local v4, "renderSrcRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    add-int v5, v11, v9

    add-int v13, v12, v10

    invoke-direct {v0, v11, v12, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    .line 312
    .local v5, "renderDstRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_3

    .line 313
    invoke-direct {v1, v2, v7, v8, v3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->maybeDisposeBackground(Landroid/graphics/Canvas;FFLcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 317
    :cond_3
    move-object/from16 v13, p3

    iget-object v0, v13, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->blendOperation:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v14, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v0, v14, :cond_4

    .line 318
    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 321
    :cond_4
    monitor-enter p0

    .line 323
    :try_start_0
    invoke-direct {v1, v9, v10}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->prepareTempBitmapForThisSize(II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    .local v0, "frameBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v14, p2

    :try_start_1
    invoke-interface {v14, v9, v10, v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 325
    const/4 v15, 0x0

    invoke-virtual {v2, v0, v4, v5, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 326
    .end local v0    # "frameBitmap":Landroid/graphics/Bitmap;
    monitor-exit p0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v14, p2

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized dropCaches()V
    .locals 1

    monitor-enter p0

    .line 421
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->clearTempBitmap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 420
    .end local p0    # "this":Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->getBoundsToUse(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 154
    .local v0, "boundsToUse":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    return-object p0

    .line 158
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mDownscaleFrameToDrawableDimensions:Z

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;-><init>(Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;Z)V

    return-object v1
.end method

.method public getAnimatedImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mDurationMs:I

    return v0
.end method

.method public getDurationMsForFrame(I)I
    .locals 1
    .param p1, "frameNumber"    # I

    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameDurationsMs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameForPreview()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getFrameForPreview()I

    move-result v0

    return v0
.end method

.method public getFrameForTimestampMs(I)I
    .locals 2
    .param p1, "timestampMs"    # I

    .line 132
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameTimestampsMs:[I

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getFrameForTimestampMs([II)I

    move-result v0

    return v0
.end method

.method public getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1
    .param p1, "frameNumber"    # I

    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameInfos:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getMemoryUsage()I
    .locals 3

    monitor-enter p0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "bytes":I
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getSizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    .end local p0    # "this":Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getSizeInBytes()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 169
    monitor-exit p0

    return v0

    .line 163
    .end local v0    # "bytes":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .param p1, "frameNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public getRenderedHeight()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getRenderedWidth()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mRenderedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getTimestampMsForFrame(I)I
    .locals 1
    .param p1, "frameNumber"    # I

    .line 137
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameTimestampsMs:[I

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/facebook/common/internal/Preconditions;->checkElementIndex(II)I

    .line 138
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mFrameTimestampsMs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasPreDecodedFrame(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 179
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->hasDecodedFrame(I)Z

    move-result v0

    return v0
.end method

.method public renderDeltas(ILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "frameNumber"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 202
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrame(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;

    move-result-object v0

    .line 203
    .local v0, "frame":Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 205
    .local v1, "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    .line 207
    .local v2, "previousFrameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_2

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->doesRenderSupportScaling()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->renderScalingFrames(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    goto :goto_1

    .line 214
    :cond_2
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->renderNonScalingFrames(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_1
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->dispose()V

    .line 219
    nop

    .line 220
    return-void

    .line 218
    :cond_3
    :goto_2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->dispose()V

    .line 208
    return-void

    .line 218
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->dispose()V

    .line 219
    throw v3
.end method

.method public renderFrame(ILandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "frameNumber"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 184
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrame(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;

    move-result-object v0

    .line 186
    .local v0, "frame":Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->mAnimatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->doesRenderSupportScaling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->renderImageSupportsScaling(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendImpl;->renderImageDoesNotSupportScaling(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->dispose()V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->dispose()V

    .line 187
    return-void

    .line 196
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->dispose()V

    .line 197
    throw v1
.end method
