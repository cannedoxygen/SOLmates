.class public final Lcom/facebook/imageutils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageutils/BitmapUtil$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapUtil.kt\ncom/facebook/imageutils/BitmapUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n1#2:207\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0002J\u001e\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J \u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J \u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00182\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0012\u0010!\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0007J\"\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0007J\u0012\u0010\'\u001a\u00020\u00042\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0007J\u0008\u0010*\u001a\u00020\tH\u0002J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\tH\u0002J\u0010\u0010.\u001a\u00020,2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R#\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/facebook/imageutils/BitmapUtil;",
        "",
        "()V",
        "ALPHA_8_BYTES_PER_PIXEL",
        "",
        "ARGB_4444_BYTES_PER_PIXEL",
        "ARGB_8888_BYTES_PER_PIXEL",
        "DECODE_BUFFERS",
        "Landroidx/core/util/Pools$SynchronizedPool;",
        "Ljava/nio/ByteBuffer;",
        "getDECODE_BUFFERS",
        "()Landroidx/core/util/Pools$SynchronizedPool;",
        "DECODE_BUFFERS$delegate",
        "Lkotlin/Lazy;",
        "MAX_BITMAP_SIZE",
        "",
        "POOL_SIZE",
        "RGBA_1010102_BYTES_PER_PIXEL",
        "RGBA_F16_BYTES_PER_PIXEL",
        "RGB_565_BYTES_PER_PIXEL",
        "useDecodeBufferHelper",
        "",
        "acquireByteBuffer",
        "decodeDimensions",
        "Landroid/util/Pair;",
        "uri",
        "Landroid/net/Uri;",
        "inputStream",
        "Ljava/io/InputStream;",
        "bytes",
        "",
        "decodeDimensionsAndColorSpace",
        "Lcom/facebook/imageutils/ImageMetaData;",
        "getPixelSizeForBitmapConfig",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "getSizeInByteForBitmap",
        "width",
        "height",
        "getSizeInBytes",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "obtainByteBuffer",
        "releaseByteBuffer",
        "",
        "byteBuffer",
        "setUseDecodeBufferHelper",
        "imagepipeline-base_release"
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
.field public static final ALPHA_8_BYTES_PER_PIXEL:I = 0x1

.field public static final ARGB_4444_BYTES_PER_PIXEL:I = 0x2

.field public static final ARGB_8888_BYTES_PER_PIXEL:I = 0x4

.field private static final DECODE_BUFFERS$delegate:Lkotlin/Lazy;

.field public static final INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

.field public static final MAX_BITMAP_SIZE:F = 2048.0f

.field private static final POOL_SIZE:I = 0xc

.field public static final RGBA_1010102_BYTES_PER_PIXEL:I = 0x4

.field public static final RGBA_F16_BYTES_PER_PIXEL:I = 0x8

.field public static final RGB_565_BYTES_PER_PIXEL:I = 0x2

.field private static useDecodeBufferHelper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imageutils/BitmapUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/BitmapUtil;-><init>()V

    sput-object v0, Lcom/facebook/imageutils/BitmapUtil;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

    .line 28
    sget-object v0, Lcom/facebook/imageutils/BitmapUtil$DECODE_BUFFERS$2;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil$DECODE_BUFFERS$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/facebook/imageutils/BitmapUtil;->DECODE_BUFFERS$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final acquireByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 184
    sget-boolean v0, Lcom/facebook/imageutils/BitmapUtil;->useDecodeBufferHelper:Z

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/facebook/common/memory/DecodeBufferHelper;->INSTANCE:Lcom/facebook/common/memory/DecodeBufferHelper;

    invoke-virtual {v0}, Lcom/facebook/common/memory/DecodeBufferHelper;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imageutils/BitmapUtil;->getDECODE_BUFFERS()Landroidx/core/util/Pools$SynchronizedPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 188
    :goto_0
    return-object v0
.end method

.method public static final decodeDimensions(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 86
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static final decodeDimensions(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 99
    if-eqz p0, :cond_2

    .line 100
    sget-object v0, Lcom/facebook/imageutils/BitmapUtil;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/BitmapUtil;->obtainByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 102
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 103
    nop

    .line 104
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 105
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 106
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v2, Landroid/util/Pair;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    :goto_0
    sget-object v3, Lcom/facebook/imageutils/BitmapUtil;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

    invoke-direct {v3, v0}, Lcom/facebook/imageutils/BitmapUtil;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 110
    nop

    .line 103
    return-object v2

    .line 109
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/facebook/imageutils/BitmapUtil;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

    invoke-direct {v3, v0}, Lcom/facebook/imageutils/BitmapUtil;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    throw v2

    .line 99
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final decodeDimensions([B)Landroid/util/Pair;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 73
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/imageutils/BitmapUtil;->decodeDimensions(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final decodeDimensionsAndColorSpace(Ljava/io/InputStream;)Lcom/facebook/imageutils/ImageMetaData;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 122
    if-eqz p0, :cond_1

    .line 123
    sget-object v0, Lcom/facebook/imageutils/BitmapUtil;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

    invoke-direct {v0}, Lcom/facebook/imageutils/BitmapUtil;->obtainByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    nop

    .line 127
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 128
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 129
    :cond_0
    nop

    .line 132
    .local v2, "colorSpace":Landroid/graphics/ColorSpace;
    new-instance v3, Lcom/facebook/imageutils/ImageMetaData;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v4, v5, v2}, Lcom/facebook/imageutils/ImageMetaData;-><init>(IILandroid/graphics/ColorSpace;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v2    # "colorSpace":Landroid/graphics/ColorSpace;
    sget-object v2, Lcom/facebook/imageutils/BitmapUtil;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

    invoke-direct {v2, v0}, Lcom/facebook/imageutils/BitmapUtil;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 135
    nop

    .line 126
    return-object v3

    .line 134
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/facebook/imageutils/BitmapUtil;->INSTANCE:Lcom/facebook/imageutils/BitmapUtil;

    invoke-direct {v3, v0}, Lcom/facebook/imageutils/BitmapUtil;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    throw v2

    .line 122
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getDECODE_BUFFERS()Landroidx/core/util/Pools$SynchronizedPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/facebook/imageutils/BitmapUtil;->DECODE_BUFFERS$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method public static final getPixelSizeForBitmapConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 3
    .param p0, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 148
    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/imageutils/BitmapUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The provided Bitmap.Config is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_0
    move v1, v2

    goto :goto_1

    .line 154
    :pswitch_1
    move v1, v2

    goto :goto_1

    .line 153
    :pswitch_2
    const/16 v1, 0x8

    goto :goto_1

    .line 152
    :pswitch_3
    goto :goto_1

    .line 151
    :pswitch_4
    goto :goto_1

    .line 150
    :pswitch_5
    const/4 v1, 0x1

    goto :goto_1

    .line 149
    :pswitch_6
    move v1, v2

    .line 158
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getSizeInByteForBitmap(IILandroid/graphics/Bitmap$Config;)I
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 173
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 174
    if-lez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 175
    invoke-static {p2}, Lcom/facebook/imageutils/BitmapUtil;->getPixelSizeForBitmapConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v2

    .line 176
    .local v2, "pixelSize":I
    mul-int v3, p0, p1

    mul-int/2addr v3, v2

    .line 177
    .local v3, "size":I
    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 180
    return v3

    .line 177
    :cond_3
    const/4 v0, 0x0

    .line 178
    .local v0, "$i$a$-check-BitmapUtil$getSizeInByteForBitmap$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size must be > 0: size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", width: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", height: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", pixelSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .end local v0    # "$i$a$-check-BitmapUtil$getSizeInByteForBitmap$3":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    .end local v2    # "pixelSize":I
    .end local v3    # "size":I
    :cond_4
    const/4 v0, 0x0

    .line 174
    .local v0, "$i$a$-require-BitmapUtil$getSizeInByteForBitmap$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height must be > 0, height is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BitmapUtil$getSizeInByteForBitmap$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_5
    const/4 v0, 0x0

    .line 173
    .local v0, "$i$a$-require-BitmapUtil$getSizeInByteForBitmap$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width must be > 0, width is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BitmapUtil$getSizeInByteForBitmap$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getSizeInBytes(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    nop

    .line 54
    nop

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method private final obtainByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 202
    invoke-direct {p0}, Lcom/facebook/imageutils/BitmapUtil;->acquireByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/facebook/common/memory/DecodeBufferHelper;->getRecommendedDecodeBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "allocate(DecodeBufferHel\u2026mendedDecodeBufferSize())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-object v0
.end method

.method private final releaseByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 191
    sget-boolean v0, Lcom/facebook/imageutils/BitmapUtil;->useDecodeBufferHelper:Z

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/facebook/imageutils/BitmapUtil;->getDECODE_BUFFERS()Landroidx/core/util/Pools$SynchronizedPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-void
.end method

.method public static final setUseDecodeBufferHelper(Z)V
    .locals 0
    .param p0, "useDecodeBufferHelper"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 198
    sput-boolean p0, Lcom/facebook/imageutils/BitmapUtil;->useDecodeBufferHelper:Z

    .line 199
    return-void
.end method
