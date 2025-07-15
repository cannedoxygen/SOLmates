.class public abstract Lcom/facebook/imagepipeline/platform/DefaultDecoder;
.super Ljava/lang/Object;
.source "DefaultDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/platform/PlatformDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;
    }
.end annotation


# static fields
.field private static final EOI_TAIL:[B

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAvoidPoolGet:Z

.field private mAvoidPoolRelease:Z

.field private final mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

.field final mDecodeBuffers:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreverificationHelper:Lcom/facebook/imagepipeline/platform/PreverificationHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;

    sput-object v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->TAG:Ljava/lang/Class;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->EOI_TAIL:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/BitmapPool;Landroidx/core/util/Pools$Pool;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)V
    .locals 2
    .param p1, "bitmapPool"    # Lcom/facebook/imagepipeline/memory/BitmapPool;
    .param p3, "platformDecoderOptions"    # Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/BitmapPool;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;",
            ")V"
        }
    .end annotation

    .line 68
    .local p2, "decodeBuffers":Landroidx/core/util/Pools$Pool;, "Landroidx/core/util/Pools$Pool<Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    nop

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/platform/PreverificationHelper;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mPreverificationHelper:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    .line 69
    iput-object p1, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    .line 70
    instance-of v0, p1, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;->getAvoidPoolGet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    .line 72
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;->getAvoidPoolRelease()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolRelease:Z

    .line 74
    :cond_1
    iput-object p2, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    .line 75
    return-void
.end method

.method private decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 209
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 211
    .local v0, "targetWidth":I
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 212
    .local v1, "targetHeight":I
    if-eqz p3, :cond_0

    .line 213
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v0, v2, v3

    .line 214
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v1, v2, v3

    .line 216
    :cond_0
    const/4 v2, 0x0

    .line 217
    .local v2, "bitmapToReuse":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 218
    .local v3, "shouldUseHardwareBitmapConfig":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1a

    if-lt v4, v7, :cond_2

    .line 219
    iget-object v4, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mPreverificationHelper:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mPreverificationHelper:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    iget-object v8, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 221
    invoke-virtual {v4, v8}, Lcom/facebook/imagepipeline/platform/PreverificationHelper;->shouldUseHardwareBitmapConfig(Landroid/graphics/Bitmap$Config;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    move v3, v4

    .line 223
    :cond_2
    if-nez p3, :cond_3

    if-eqz v3, :cond_3

    .line 225
    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_1

    .line 227
    :cond_3
    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    .line 229
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 231
    :cond_4
    iget-boolean v4, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    if-nez v4, :cond_6

    .line 232
    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->getBitmapSize(IILandroid/graphics/BitmapFactory$Options;)I

    move-result v4

    .line 233
    .local v4, "sizeInBytes":I
    iget-object v6, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {v6, v4}, Lcom/facebook/imagepipeline/memory/BitmapPool;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/graphics/Bitmap;

    .line 234
    if-eqz v2, :cond_5

    goto :goto_1

    .line 235
    :cond_5
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "BitmapPool.get returned null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    .end local v4    # "sizeInBytes":I
    :cond_6
    :goto_1
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 244
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_8

    .line 245
    nop

    .line 246
    if-nez p4, :cond_7

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, p4

    :goto_2
    iput-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 249
    :cond_8
    const/4 v4, 0x0

    .line 250
    .local v4, "decodedBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {v6}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 251
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    if-nez v6, :cond_9

    .line 252
    invoke-static {}, Lcom/facebook/common/memory/DecodeBufferHelper;->getRecommendedDecodeBufferSize()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 255
    :cond_9
    :try_start_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iput-object v7, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 256
    if-eqz p3, :cond_c

    if-eqz v2, :cond_c

    iget-object v7, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_c

    .line 260
    const/4 v7, 0x0

    .line 262
    .local v7, "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_1
    iget-object v8, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v0, v1, v8}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 263
    invoke-static {p1, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    move-object v7, v5

    .line 264
    if-eqz v7, :cond_a

    .line 265
    invoke-virtual {v7, p3, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    .line 270
    :cond_a
    if-eqz v7, :cond_c

    .line 271
    :goto_3
    :try_start_2
    invoke-virtual {v7}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    .line 270
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 267
    :catch_0
    move-exception v5

    .line 268
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v8, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->TAG:Ljava/lang/Class;

    const-string v9, "Could not decode region %s, decoding full bitmap instead."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_c

    .line 271
    goto :goto_3

    .line 270
    :goto_4
    if-eqz v7, :cond_b

    .line 271
    :try_start_4
    invoke-virtual {v7}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 273
    :cond_b
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v3    # "shouldUseHardwareBitmapConfig":Z
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    .end local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v5

    .line 275
    .end local v7    # "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v3    # "shouldUseHardwareBitmapConfig":Z
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    .restart local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_c
    :goto_5
    if-nez v4, :cond_d

    .line 276
    const/4 v5, 0x0

    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v5

    .line 304
    :cond_d
    iget-object v5, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {v5, v6}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 305
    nop

    .line 309
    if-eqz v2, :cond_f

    if-eq v2, v4, :cond_f

    .line 310
    iget-object v5, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {v5, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V

    .line 311
    if-eqz v4, :cond_e

    .line 312
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    :cond_e
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 317
    :cond_f
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolRelease:Z

    if-eqz v5, :cond_10

    .line 318
    invoke-static {}, Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;->-$$Nest$sfgetINSTANCE()Lcom/facebook/imagepipeline/platform/DefaultDecoder$NoOpResourceReleaser;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    return-object v5

    .line 320
    :cond_10
    iget-object v5, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-static {v4, v5}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    return-object v5

    .line 304
    :catchall_1
    move-exception v5

    goto :goto_6

    .line 298
    :catch_1
    move-exception v5

    .line 299
    .local v5, "re":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_11

    .line 300
    :try_start_5
    iget-object v7, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {v7, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V

    .line 302
    :cond_11
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v3    # "shouldUseHardwareBitmapConfig":Z
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    .end local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v5

    .line 278
    .end local v5    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v3    # "shouldUseHardwareBitmapConfig":Z
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    .restart local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    :catch_2
    move-exception v5

    .line 279
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v2, :cond_12

    .line 280
    iget-object v7, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-interface {v7, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 286
    :cond_12
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 288
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 289
    .local v7, "naiveDecodedBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_13

    .line 292
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->getInstance()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 304
    iget-object v9, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {v9, v6}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 292
    return-object v8

    .line 290
    :cond_13
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v3    # "shouldUseHardwareBitmapConfig":Z
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    .end local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 293
    .end local v7    # "naiveDecodedBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v3    # "shouldUseHardwareBitmapConfig":Z
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    .restart local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    :catch_3
    move-exception v7

    .line 296
    .local v7, "re":Ljava/io/IOException;
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v3    # "shouldUseHardwareBitmapConfig":Z
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    .end local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 304
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "re":Ljava/io/IOException;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v3    # "shouldUseHardwareBitmapConfig":Z
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    .restart local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    :goto_6
    iget-object v7, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mDecodeBuffers:Landroidx/core/util/Pools$Pool;

    invoke-interface {v7, v6}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 305
    throw v5
.end method

.method private static getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .param p0, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p2, "skipDecoding"    # Z

    .line 329
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 331
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 333
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 334
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 336
    .local v2, "isHardwareBitmap":Z
    :goto_0
    if-nez v2, :cond_1

    .line 337
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 339
    :cond_1
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 340
    if-nez p2, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 343
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 344
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 347
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 348
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 350
    :cond_4
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 351
    return-object v0
.end method


# virtual methods
.method public decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public decodeFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    .line 113
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 114
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 116
    .local v1, "retryOnFail":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 117
    .local v2, "s":Ljava/io/InputStream;
    invoke-direct {p0, v2, v0, p3, p4}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 118
    .end local v2    # "s":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "re":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_1

    .line 120
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    return-object v3

    .line 123
    :cond_1
    throw v2
.end method

.method public decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;I)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 89
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeJPEGFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public decodeJPEGFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;
    .locals 17
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "length"    # I
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "I",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 148
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    invoke-virtual {v8, v9}, Lcom/facebook/imagepipeline/image/EncodedImage;->isCompleteAt(I)Z

    move-result v10

    .line 149
    .local v10, "isJpegComplete":Z
    iget-boolean v0, v7, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->mAvoidPoolGet:Z

    .line 150
    move-object/from16 v11, p2

    invoke-static {v8, v11, v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    .line 151
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 155
    .local v0, "jpegDataStream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v1

    if-le v1, v9, :cond_0

    .line 157
    new-instance v1, Lcom/facebook/common/streams/LimitedInputStream;

    invoke-direct {v1, v0, v9}, Lcom/facebook/common/streams/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    .line 159
    :cond_0
    if-nez v10, :cond_1

    .line 160
    new-instance v1, Lcom/facebook/common/streams/TailAppendingInputStream;

    sget-object v2, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->EOI_TAIL:[B

    invoke-direct {v1, v0, v2}, Lcom/facebook/common/streams/TailAppendingInputStream;-><init>(Ljava/io/InputStream;[B)V

    move-object v0, v1

    move-object v13, v0

    goto :goto_0

    .line 159
    :cond_1
    move-object v13, v0

    .line 162
    .end local v0    # "jpegDataStream":Ljava/io/InputStream;
    .local v13, "jpegDataStream":Ljava/io/InputStream;
    :goto_0
    iget-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v14, v0

    .line 164
    .local v14, "retryOnFail":Z
    move-object/from16 v15, p3

    move-object/from16 v6, p5

    :try_start_0
    invoke-direct {v7, v13, v12, v15, v6}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    goto :goto_2

    .line 174
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-object v1

    .line 172
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .line 165
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v1

    .line 166
    .local v16, "re":Ljava/lang/RuntimeException;
    if-eqz v14, :cond_3

    .line 167
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeJPEGFromEncodedImageWithColorSpace(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 176
    goto :goto_3

    .line 174
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 175
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-object v1

    .line 170
    :cond_3
    nop

    .end local v10    # "isJpegComplete":Z
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "jpegDataStream":Ljava/io/InputStream;
    .end local v14    # "retryOnFail":Z
    .end local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local p2    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    .end local p4    # "length":I
    .end local p5    # "colorSpace":Landroid/graphics/ColorSpace;
    :try_start_4
    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .end local v16    # "re":Ljava/lang/RuntimeException;
    .restart local v10    # "isJpegComplete":Z
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "jpegDataStream":Ljava/io/InputStream;
    .restart local v14    # "retryOnFail":Z
    .restart local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local p2    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    .restart local p4    # "length":I
    .restart local p5    # "colorSpace":Landroid/graphics/ColorSpace;
    :goto_4
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 176
    goto :goto_5

    .line 174
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 175
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    throw v1
.end method

.method protected decodeStaticImageFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/platform/DefaultDecoder;->decodeFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBitmapSize(IILandroid/graphics/BitmapFactory$Options;)I
.end method
