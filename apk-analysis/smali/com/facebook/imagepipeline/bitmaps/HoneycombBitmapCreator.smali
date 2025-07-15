.class public final Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.kt"

# interfaces
.implements Lcom/facebook/common/webp/BitmapCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;",
        "Lcom/facebook/common/webp/BitmapCreator;",
        "poolFactory",
        "Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "(Lcom/facebook/imagepipeline/memory/PoolFactory;)V",
        "flexByteArrayPool",
        "Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;",
        "jpegGenerator",
        "Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;",
        "createNakedBitmap",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
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
.field public static final Companion:Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;


# instance fields
.field private final flexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

.field private final jpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->Companion:Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/PoolFactory;)V
    .locals 2
    .param p1, "poolFactory"    # Lcom/facebook/imagepipeline/memory/PoolFactory;

    const-string/jumbo v0, "poolFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;-><init>(Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->jpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getFlexByteArrayPool()Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    move-result-object v0

    const-string/jumbo v1, "poolFactory.flexByteArrayPool"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->flexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    .line 22
    return-void
.end method


# virtual methods
.method public createNakedBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    const-string v0, "bitmapConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->jpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;->generate(SS)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    const-string v1, "jpegGenerator.generate(w\u2026hort(), height.toShort())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .local v0, "jpgRef":Lcom/facebook/common/references/CloseableReference;
    const/4 v1, 0x0

    .line 31
    .local v1, "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    const/4 v2, 0x0

    .line 32
    .local v2, "encodedBytesArrayRef":Lcom/facebook/common/references/CloseableReference;
    nop

    .line 33
    :try_start_0
    new-instance v3, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v3, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    move-object v1, v3

    .line 34
    sget-object v3, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/image/EncodedImage;->setImageFormat(Lcom/facebook/imageformat/ImageFormat;)V

    .line 35
    sget-object v3, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->Companion:Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v4

    invoke-static {v3, v4, p3}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;->access$getBitmapFactoryOptions(Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator$Companion;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 36
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v4}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v4

    .line 37
    .local v4, "length":I
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "jpgRef.get()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 38
    .local v5, "pooledByteBuffer":Lcom/facebook/common/memory/PooledByteBuffer;
    iget-object v6, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;->flexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->get(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v6

    move-object v2, v6

    .line 39
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "encodedBytesArrayRef.get()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [B

    .line 40
    .local v6, "encodedBytesArray":[B
    const/4 v7, 0x0

    invoke-interface {v5, v7, v6, v7, v4}, Lcom/facebook/common/memory/PooledByteBuffer;->read(I[BII)I

    .line 42
    invoke-static {v6, v7, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 41
    nop

    .line 43
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 44
    invoke-virtual {v8, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    nop

    .line 47
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "length":I
    .end local v5    # "pooledByteBuffer":Lcom/facebook/common/memory/PooledByteBuffer;
    .end local v6    # "encodedBytesArray":[B
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 48
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 49
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 50
    nop

    .line 32
    return-object v8

    .line 42
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "length":I
    .restart local v5    # "pooledByteBuffer":Lcom/facebook/common/memory/PooledByteBuffer;
    .restart local v6    # "encodedBytesArray":[B
    :cond_0
    :try_start_1
    const-string v7, "Required value was null."

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "jpgRef":Lcom/facebook/common/references/CloseableReference;
    .end local v1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v2    # "encodedBytesArrayRef":Lcom/facebook/common/references/CloseableReference;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "length":I
    .end local v5    # "pooledByteBuffer":Lcom/facebook/common/memory/PooledByteBuffer;
    .end local v6    # "encodedBytesArray":[B
    .restart local v0    # "jpgRef":Lcom/facebook/common/references/CloseableReference;
    .restart local v1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local v2    # "encodedBytesArrayRef":Lcom/facebook/common/references/CloseableReference;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 48
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 49
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v3
.end method
