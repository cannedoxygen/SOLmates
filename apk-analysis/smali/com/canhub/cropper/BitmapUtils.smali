.class public final Lcom/canhub/cropper/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/BitmapUtils$BitmapSampled;,
        Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;,
        Lcom/canhub/cropper/BitmapUtils$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002ijB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u0018\u0010)\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000cH\u0002J(\u0010,\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000cH\u0002J\u0012\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002Jp\u00103\u001a\u0002042\u0006\u0010%\u001a\u00020&2\u0006\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\u000c2\u0006\u0010=\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010>\u001a\u0002092\u0006\u0010?\u001a\u000209H\u0002Jx\u00103\u001a\u0002042\u0006\u0010%\u001a\u00020&2\u0006\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u000c2\u0006\u0010@\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020\u000c2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010>\u001a\u0002092\u0006\u0010?\u001a\u0002092\u0006\u0010<\u001a\u00020\u000cH\u0002Jp\u00103\u001a\u0002042\u0006\u0010%\u001a\u00020&2\u0008\u00105\u001a\u0004\u0018\u00010$2\u0006\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u000c2\u0006\u0010@\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020\u000c2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010>\u001a\u0002092\u0006\u0010?\u001a\u000209JH\u0010B\u001a\u0002042\u0008\u0010C\u001a\u0004\u0018\u00010\u001b2\u0006\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000c2\u0006\u0010>\u001a\u0002092\u0006\u0010?\u001a\u000209JR\u0010D\u001a\u0004\u0018\u00010\u001b2\u0006\u0010C\u001a\u00020\u001b2\u0006\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020F2\u0006\u0010>\u001a\u0002092\u0006\u0010?\u001a\u000209H\u0002JD\u0010G\u001a\u0004\u0018\u00010\u001b2\u0008\u0010C\u001a\u0004\u0018\u00010\u001b2\u0006\u00106\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000cH\u0002J\"\u0010H\u001a\u0004\u0018\u00010\u001b2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020$2\u0006\u0010L\u001a\u00020MH\u0002J\u0018\u0010N\u001a\u00020M2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020$H\u0002J&\u0010O\u001a\u0002042\u0006\u0010%\u001a\u00020&2\u0006\u0010K\u001a\u00020$2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000cJ8\u0010P\u001a\u0002042\u0006\u0010%\u001a\u00020&2\u0006\u0010K\u001a\u00020$2\u0006\u0010=\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\u000cH\u0002J \u0010Q\u001a\u0002002\u0006\u0010=\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000cH\u0002J\u000e\u0010R\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ\u000e\u0010S\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ\u000e\u0010T\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ6\u0010U\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u000e2\u0006\u0010V\u001a\u00020\u000c2\u0006\u0010W\u001a\u00020\u000c2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u000cJ\u000e\u0010X\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ\u000e\u0010Y\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ\u000e\u0010Z\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ\u000e\u0010[\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ\u000e\u0010\\\u001a\u00020F2\u0006\u00106\u001a\u00020\u000eJ\"\u0010]\u001a\u00020^2\u0008\u0010C\u001a\u0004\u0018\u00010\u001b2\u0006\u0010%\u001a\u00020&2\u0008\u0010K\u001a\u0004\u0018\u00010$J\u0018\u0010]\u001a\u00020^2\u0008\u0010C\u001a\u0004\u0018\u00010\u001b2\u0006\u0010_\u001a\u00020`J(\u0010a\u001a\u00020\u001b2\u0008\u0010C\u001a\u0004\u0018\u00010\u001b2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010L\u001a\u00020bJ(\u0010c\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020\u001b2\u0006\u0010d\u001a\u00020\u000c2\u0006\u0010>\u001a\u0002092\u0006\u0010?\u001a\u000209H\u0002J2\u0010e\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\u0006\u0010C\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020(2\u0006\u0010f\u001a\u00020\u000c2\u0008\u0010g\u001a\u0004\u0018\u00010$J$\u0010h\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\u0008\u0010C\u001a\u0004\u0018\u00010\u001b2\u0008\u0010g\u001a\u0004\u0018\u00010$R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006k"
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapUtils;",
        "",
        "()V",
        "EMPTY_RECT",
        "Landroid/graphics/Rect;",
        "getEMPTY_RECT",
        "()Landroid/graphics/Rect;",
        "EMPTY_RECT_F",
        "Landroid/graphics/RectF;",
        "getEMPTY_RECT_F",
        "()Landroid/graphics/RectF;",
        "IMAGE_MAX_BITMAP_DIMENSION",
        "",
        "POINTS",
        "",
        "getPOINTS",
        "()[F",
        "POINTS2",
        "getPOINTS2",
        "RECT",
        "getRECT",
        "WRITE_AND_TRUNCATE",
        "",
        "mMaxTextureSize",
        "mStateBitmap",
        "Landroid/util/Pair;",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/graphics/Bitmap;",
        "getMStateBitmap",
        "()Landroid/util/Pair;",
        "setMStateBitmap",
        "(Landroid/util/Pair;)V",
        "maxTextureSize",
        "getMaxTextureSize",
        "()I",
        "buildUri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "calculateInSampleSizeByMaxTextureSize",
        "width",
        "height",
        "calculateInSampleSizeByReqestedSize",
        "reqWidth",
        "reqHeight",
        "closeSafe",
        "",
        "closeable",
        "Ljava/io/Closeable;",
        "cropBitmap",
        "Lcom/canhub/cropper/BitmapUtils$BitmapSampled;",
        "loadedImageUri",
        "points",
        "degreesRotated",
        "fixAspectRatio",
        "",
        "aspectRatioX",
        "aspectRatioY",
        "sampleMulti",
        "rect",
        "flipHorizontally",
        "flipVertically",
        "orgWidth",
        "orgHeight",
        "cropBitmapObjectHandleOOM",
        "bitmap",
        "cropBitmapObjectWithScale",
        "scale",
        "",
        "cropForRotatedImage",
        "decodeImage",
        "resolver",
        "Landroid/content/ContentResolver;",
        "uri",
        "options",
        "Landroid/graphics/BitmapFactory$Options;",
        "decodeImageForOption",
        "decodeSampledBitmap",
        "decodeSampledBitmapRegion",
        "fixRectForAspectRatio",
        "getRectBottom",
        "getRectCenterX",
        "getRectCenterY",
        "getRectFromPoints",
        "imageWidth",
        "imageHeight",
        "getRectHeight",
        "getRectLeft",
        "getRectRight",
        "getRectTop",
        "getRectWidth",
        "orientateBitmapByExif",
        "Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;",
        "exif",
        "Landroidx/exifinterface/media/ExifInterface;",
        "resizeBitmap",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "rotateAndFlipBitmapInt",
        "degrees",
        "writeBitmapToUri",
        "compressQuality",
        "customOutputUri",
        "writeTempStateStoreBitmap",
        "BitmapSampled",
        "RotateBitmapResult",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final EMPTY_RECT_F:Landroid/graphics/RectF;

.field private static final IMAGE_MAX_BITMAP_DIMENSION:I = 0x800

.field public static final INSTANCE:Lcom/canhub/cropper/BitmapUtils;

.field private static final POINTS:[F

.field private static final POINTS2:[F

.field private static final RECT:Landroid/graphics/RectF;

.field private static final WRITE_AND_TRUNCATE:Ljava/lang/String; = "wt"

.field private static mMaxTextureSize:I

.field private static mStateBitmap:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/BitmapUtils;

    invoke-direct {v0}, Lcom/canhub/cropper/BitmapUtils;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    .line 55
    const/4 v0, 0x6

    new-array v1, v0, [F

    sput-object v1, Lcom/canhub/cropper/BitmapUtils;->POINTS:[F

    .line 60
    new-array v0, v0, [F

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->POINTS2:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildUri(Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 446
    const-string v0, "file"

    .line 447
    :try_start_0
    sget-object v1, Lcom/canhub/cropper/BitmapUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 450
    const-string v1, ".webp"

    goto :goto_0

    .line 449
    :pswitch_0
    const-string v1, ".png"

    goto :goto_0

    .line 448
    :pswitch_1
    const-string v1, ".jpg"

    .line 447
    :goto_0
    nop

    .line 453
    .local v1, "ext":Ljava/lang/String;
    sget-object v2, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v2}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastQ29()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "cropped"

    if-eqz v2, :cond_0

    .line 454
    nop

    .line 456
    nop

    .line 457
    nop

    .line 458
    :try_start_1
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 455
    invoke-static {v3, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 460
    .local v2, "file":Ljava/io/File;
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/canhub/cropper/utils/GetUriForFileKt;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "file":Ljava/io/File;
    goto :goto_1

    .line 461
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "AIC"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 464
    .local v3, "file":Ljava/io/File;
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/canhub/cropper/utils/GetUriForFileKt;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v3, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "ext":Ljava/lang/String;
    :goto_2
    nop

    .line 469
    return-object v0

    .line 467
    :catch_1
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create temp file for output image"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final calculateInSampleSizeByMaxTextureSize(II)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 836
    const/4 v0, 0x1

    .line 837
    .local v0, "inSampleSize":I
    sget v1, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    if-nez v1, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/canhub/cropper/BitmapUtils;->getMaxTextureSize()I

    move-result v1

    sput v1, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    .line 840
    :cond_0
    sget v1, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    if-lez v1, :cond_2

    .line 842
    :goto_0
    div-int v1, p2, v0

    sget v2, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    if-gt v1, v2, :cond_1

    .line 843
    div-int v1, p1, v0

    sget v2, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    if-le v1, v2, :cond_2

    .line 845
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 848
    :cond_2
    return v0
.end method

.method private final calculateInSampleSizeByReqestedSize(IIII)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .line 819
    const/4 v0, 0x1

    .line 820
    .local v0, "inSampleSize":I
    if-gt p2, p4, :cond_0

    if-le p1, p3, :cond_1

    .line 821
    :cond_0
    :goto_0
    div-int/lit8 v1, p2, 0x2

    div-int/2addr v1, v0

    if-le v1, p4, :cond_1

    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_1

    .line 822
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 825
    :cond_1
    return v0
.end method

.method private final closeSafe(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 944
    nop

    .line 945
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 946
    :catch_0
    move-exception v0

    .line 948
    :cond_0
    :goto_0
    return-void
.end method

.method private final cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadedImageUri"    # Landroid/net/Uri;
    .param p3, "points"    # [F
    .param p4, "degreesRotated"    # I
    .param p5, "orgWidth"    # I
    .param p6, "orgHeight"    # I
    .param p7, "fixAspectRatio"    # Z
    .param p8, "aspectRatioX"    # I
    .param p9, "aspectRatioY"    # I
    .param p10, "reqWidth"    # I
    .param p11, "reqHeight"    # I
    .param p12, "flipHorizontally"    # Z
    .param p13, "flipVertically"    # Z
    .param p14, "sampleMulti"    # I

    .line 534
    move/from16 v15, p4

    .line 535
    nop

    .line 536
    nop

    .line 537
    nop

    .line 538
    nop

    .line 539
    nop

    .line 540
    nop

    .line 534
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lcom/canhub/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v23

    .line 542
    .local v23, "rect":Landroid/graphics/Rect;
    if-lez p10, :cond_0

    move/from16 v20, p10

    goto :goto_0

    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v0

    move/from16 v20, v0

    .line 543
    .local v20, "width":I
    :goto_0
    if-lez p11, :cond_1

    move/from16 v21, p11

    goto :goto_1

    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v0

    move/from16 v21, v0

    .line 544
    .local v21, "height":I
    :goto_1
    const/4 v1, 0x0

    .line 545
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .line 546
    .local v2, "sampleSize":I
    nop

    .line 550
    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, v23

    move/from16 v22, p14

    :try_start_0
    invoke-direct/range {v16 .. v22}, Lcom/canhub/cropper/BitmapUtils;->decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    .line 549
    nop

    .line 551
    .local v0, "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 552
    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getSampleSize()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    move-object v14, v1

    move v13, v2

    .end local v0    # "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    goto :goto_2

    .line 553
    :catch_0
    move-exception v0

    move-object v14, v1

    move v13, v2

    .line 555
    .end local v1    # "result":Landroid/graphics/Bitmap;
    .end local v2    # "sampleSize":I
    .local v13, "sampleSize":I
    .local v14, "result":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v14, :cond_3

    .line 556
    nop

    .line 559
    move-object/from16 v12, p0

    move/from16 v11, p12

    move/from16 v10, p13

    :try_start_1
    invoke-direct {v12, v14, v15, v11, v10}, Lcom/canhub/cropper/BitmapUtils;->rotateAndFlipBitmapInt(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 558
    nop

    .line 561
    .end local v14    # "result":Landroid/graphics/Bitmap;
    .local v2, "result":Landroid/graphics/Bitmap;
    :try_start_2
    rem-int/lit8 v0, v15, 0x5a

    if-eqz v0, :cond_2

    .line 564
    nop

    .line 565
    nop

    .line 566
    nop

    .line 567
    nop

    .line 568
    nop

    .line 569
    nop

    .line 570
    nop

    .line 571
    nop

    .line 564
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, v23

    move/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/canhub/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v0

    .end local v2    # "result":Landroid/graphics/Bitmap;
    .local v0, "result":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 561
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :cond_2
    move-object v14, v2

    .line 578
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .restart local v14    # "result":Landroid/graphics/Bitmap;
    :goto_3
    new-instance v0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v0, v14, v13}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    move/from16 v16, v13

    goto :goto_5

    .line 574
    .end local v14    # "result":Landroid/graphics/Bitmap;
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    move-object v14, v2

    goto :goto_4

    .end local v2    # "result":Landroid/graphics/Bitmap;
    .restart local v14    # "result":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :goto_4
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 576
    throw v0

    .line 581
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    move-object/from16 v12, p0

    move/from16 v11, p12

    move/from16 v10, p13

    .line 582
    nop

    .line 583
    nop

    .line 584
    nop

    .line 585
    nop

    .line 586
    nop

    .line 587
    nop

    .line 588
    nop

    .line 589
    nop

    .line 590
    nop

    .line 591
    nop

    .line 592
    nop

    .line 593
    nop

    .line 594
    nop

    .line 581
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p14

    move-object/from16 v10, v23

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v16, v13

    .end local v13    # "sampleSize":I
    .local v16, "sampleSize":I
    move/from16 v13, p12

    move-object/from16 v17, v14

    .end local v14    # "result":Landroid/graphics/Bitmap;
    .local v17, "result":Landroid/graphics/Bitmap;
    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    move-object/from16 v14, v17

    .line 555
    .end local v17    # "result":Landroid/graphics/Bitmap;
    .restart local v14    # "result":Landroid/graphics/Bitmap;
    :goto_5
    return-object v0
.end method

.method private final cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadedImageUri"    # Landroid/net/Uri;
    .param p3, "points"    # [F
    .param p4, "degreesRotated"    # I
    .param p5, "fixAspectRatio"    # Z
    .param p6, "aspectRatioX"    # I
    .param p7, "aspectRatioY"    # I
    .param p8, "sampleMulti"    # I
    .param p9, "rect"    # Landroid/graphics/Rect;
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "flipHorizontally"    # Z
    .param p13, "flipVertically"    # Z

    .line 618
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const/4 v14, 0x0

    .local v14, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 620
    .local v1, "sampleSize":I
    nop

    .line 621
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v15, v0

    .line 623
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 624
    nop

    .line 625
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 626
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 627
    nop

    .line 628
    nop

    .line 624
    move/from16 v10, p10

    move/from16 v9, p11

    invoke-direct {v11, v0, v2, v10, v9}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 623
    mul-int v0, v0, p8

    .line 622
    move v8, v0

    .line 631
    .end local v1    # "sampleSize":I
    .local v8, "sampleSize":I
    :try_start_1
    iput v8, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "context.contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v0, v12, v15}, Lcom/canhub/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v0

    .line 633
    .local v7, "fullBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_3

    .line 634
    nop

    .line 636
    :try_start_2
    array-length v0, v13

    new-array v0, v0, [F

    .line 637
    .local v0, "points2":[F
    array-length v1, v13

    const/4 v2, 0x0

    invoke-static {v13, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 639
    :try_start_3
    aget v3, v0, v1

    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "points2":[F
    .end local v1    # "i":I
    :catchall_0
    move-exception v0

    move-object v11, v7

    move v13, v8

    goto :goto_1

    .line 641
    .restart local v0    # "points2":[F
    :cond_0
    nop

    .line 642
    nop

    .line 643
    nop

    .line 644
    nop

    .line 645
    nop

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 649
    nop

    .line 641
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v0

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v11, v7

    .end local v7    # "fullBitmap":Landroid/graphics/Bitmap;
    .local v11, "fullBitmap":Landroid/graphics/Bitmap;
    move/from16 v7, p7

    move v13, v8

    .end local v8    # "sampleSize":I
    .local v13, "sampleSize":I
    move/from16 v8, v16

    move/from16 v9, p12

    move/from16 v10, p13

    :try_start_4
    invoke-direct/range {v1 .. v10}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v14, v1

    .line 652
    .end local v0    # "points2":[F
    :try_start_5
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 655
    :cond_1
    goto :goto_2

    .line 652
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v11    # "fullBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "sampleSize":I
    .restart local v7    # "fullBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "sampleSize":I
    :catchall_2
    move-exception v0

    move-object v11, v7

    move v13, v8

    .end local v7    # "fullBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "sampleSize":I
    .restart local v11    # "fullBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "sampleSize":I
    :goto_1
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 653
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    nop

    .end local v13    # "sampleSize":I
    .end local v14    # "result":Landroid/graphics/Bitmap;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "loadedImageUri":Landroid/net/Uri;
    .end local p3    # "points":[F
    .end local p4    # "degreesRotated":I
    .end local p5    # "fixAspectRatio":Z
    .end local p6    # "aspectRatioX":I
    .end local p7    # "aspectRatioY":I
    .end local p8    # "sampleMulti":I
    .end local p9    # "rect":Landroid/graphics/Rect;
    .end local p10    # "width":I
    .end local p11    # "height":I
    .end local p12    # "flipHorizontally":Z
    .end local p13    # "flipVertically":Z
    throw v0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 660
    .end local v11    # "fullBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "sampleSize":I
    .restart local v14    # "result":Landroid/graphics/Bitmap;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "loadedImageUri":Landroid/net/Uri;
    .restart local p3    # "points":[F
    .restart local p4    # "degreesRotated":I
    .restart local p5    # "fixAspectRatio":Z
    .restart local p6    # "aspectRatioX":I
    .restart local p7    # "aspectRatioY":I
    .restart local p8    # "sampleMulti":I
    .restart local p9    # "rect":Landroid/graphics/Rect;
    .restart local p10    # "width":I
    .restart local p11    # "height":I
    .restart local p12    # "flipHorizontally":Z
    .restart local p13    # "flipVertically":Z
    :catch_0
    move-exception v0

    move v1, v13

    goto :goto_3

    .line 657
    :catch_1
    move-exception v0

    move v1, v13

    goto :goto_4

    .line 633
    .end local v13    # "sampleSize":I
    .restart local v7    # "fullBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "sampleSize":I
    .restart local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    move-object v11, v7

    move v13, v8

    .line 663
    .end local v7    # "fullBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "sampleSize":I
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "sampleSize":I
    :goto_2
    new-instance v0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v0, v14, v13}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    .line 660
    .end local v13    # "sampleSize":I
    .restart local v8    # "sampleSize":I
    :catch_2
    move-exception v0

    move v13, v8

    move v1, v13

    .end local v8    # "sampleSize":I
    .restart local v13    # "sampleSize":I
    goto :goto_3

    .line 657
    .end local v13    # "sampleSize":I
    .restart local v8    # "sampleSize":I
    :catch_3
    move-exception v0

    move v13, v8

    move v1, v13

    .end local v8    # "sampleSize":I
    .restart local v13    # "sampleSize":I
    goto :goto_4

    .line 660
    .end local v13    # "sampleSize":I
    .local v1, "sampleSize":I
    :catch_4
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v2, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v3}, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    throw v2

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :goto_4
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    :cond_4
    throw v0
.end method

.method private final cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "points"    # [F
    .param p3, "degreesRotated"    # I
    .param p4, "fixAspectRatio"    # Z
    .param p5, "aspectRatioX"    # I
    .param p6, "aspectRatioY"    # I
    .param p7, "scale"    # F
    .param p8, "flipHorizontally"    # Z
    .param p9, "flipVertically"    # Z

    .line 205
    move-object/from16 v7, p1

    move/from16 v15, p3

    move/from16 v14, p7

    .line 206
    nop

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 209
    nop

    .line 210
    nop

    .line 211
    nop

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/canhub/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v13

    .line 214
    .local v13, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v0

    .line 215
    .local v12, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v12, v0, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 216
    nop

    .line 217
    if-eqz p8, :cond_0

    neg-float v0, v14

    goto :goto_0

    :cond_0
    move v0, v14

    .line 218
    :goto_0
    if-eqz p9, :cond_1

    neg-float v1, v14

    goto :goto_1

    :cond_1
    move v1, v14

    .line 216
    :goto_1
    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 221
    nop

    .line 222
    iget v1, v13, Landroid/graphics/Rect;->left:I

    .line 223
    iget v2, v13, Landroid/graphics/Rect;->top:I

    .line 224
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 225
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 226
    nop

    .line 227
    nop

    .line 220
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object v5, v12

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    :cond_2
    rem-int/lit8 v1, v15, 0x5a

    if-eqz v1, :cond_3

    .line 237
    nop

    .line 238
    nop

    .line 237
    move-object/from16 v8, p0

    move-object v9, v0

    move-object/from16 v10, p2

    move-object v11, v13

    move-object v1, v12

    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .local v1, "matrix":Landroid/graphics/Matrix;
    move/from16 v12, p3

    move-object v2, v13

    .end local v13    # "rect":Landroid/graphics/Rect;
    .local v2, "rect":Landroid/graphics/Rect;
    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/canhub/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 234
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "matrix":Landroid/graphics/Matrix;
    .restart local v13    # "rect":Landroid/graphics/Rect;
    :cond_3
    move-object v1, v12

    move-object v2, v13

    .line 241
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "rect":Landroid/graphics/Rect;
    .restart local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :goto_2
    return-object v0
.end method

.method private final cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "points"    # [F
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "degreesRotated"    # I
    .param p5, "fixAspectRatio"    # Z
    .param p6, "aspectRatioX"    # I
    .param p7, "aspectRatioY"    # I

    .line 766
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    .line 767
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    rem-int/lit8 v4, v2, 0x5a

    if-eqz v4, :cond_6

    .line 768
    const/4 v4, 0x0

    .line 769
    .local v4, "adjLeft":I
    const/4 v5, 0x0

    .line 770
    .local v5, "adjTop":I
    const/4 v6, 0x0

    .line 771
    .local v6, "width":I
    const/4 v7, 0x0

    .line 772
    .local v7, "height":I
    int-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 774
    .local v8, "rads":D
    const/16 v10, 0x5a

    if-lt v2, v10, :cond_2

    const/16 v10, 0xb5

    const/4 v11, 0x0

    if-gt v10, v2, :cond_0

    const/16 v10, 0x10e

    if-ge v2, v10, :cond_0

    const/4 v11, 0x1

    :cond_0
    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    iget v10, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 773
    :goto_1
    nop

    .line 775
    .local v10, "compareTo":I
    const/4 v11, 0x0

    .line 776
    .local v11, "i":I
    :goto_2
    array-length v12, v0

    if-ge v11, v12, :cond_4

    .line 777
    aget v12, v0, v11

    add-int/lit8 v13, v10, -0x1

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_3

    aget v12, v0, v11

    add-int/lit8 v13, v10, 0x1

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_3

    .line 779
    nop

    .line 778
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    add-int/lit8 v15, v11, 0x1

    aget v15, v0, v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 779
    double-to-int v12, v12

    .line 778
    move v4, v12

    .line 781
    nop

    .line 780
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-int/lit8 v14, v11, 0x1

    aget v14, v0, v14

    iget v15, v1, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 781
    double-to-int v12, v12

    .line 780
    move v5, v12

    .line 783
    nop

    .line 782
    add-int/lit8 v12, v11, 0x1

    aget v12, v0, v12

    iget v13, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 783
    double-to-int v12, v12

    .line 782
    move v6, v12

    .line 785
    nop

    .line 784
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    add-int/lit8 v13, v11, 0x1

    aget v13, v0, v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 785
    double-to-int v12, v12

    .line 784
    move v7, v12

    .line 786
    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x2

    .line 788
    goto :goto_2

    .line 790
    :cond_4
    :goto_3
    add-int v12, v4, v6

    add-int v13, v5, v7

    invoke-virtual {v1, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 791
    if-eqz p5, :cond_5

    .line 792
    move-object/from16 v12, p0

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct {v12, v1, v13, v14}, Lcom/canhub/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    goto :goto_4

    .line 791
    :cond_5
    move-object/from16 v12, p0

    move/from16 v13, p6

    move/from16 v14, p7

    .line 794
    :goto_4
    move-object v15, v3

    .line 795
    .local v15, "bitmapTmp":Landroid/graphics/Bitmap;
    nop

    .line 796
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 797
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 798
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 800
    move-object/from16 v16, v3

    .end local v3    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v16, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 795
    move/from16 v17, v4

    move-object/from16 v4, p1

    .end local v4    # "adjLeft":I
    .local v17, "adjLeft":I
    invoke-static {v4, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 802
    .end local v16    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "tempBitmap":Landroid/graphics/Bitmap;
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 803
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 767
    .end local v5    # "adjTop":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "rads":D
    .end local v10    # "compareTo":I
    .end local v11    # "i":I
    .end local v15    # "bitmapTmp":Landroid/graphics/Bitmap;
    .end local v17    # "adjLeft":I
    :cond_6
    move-object/from16 v12, p0

    move-object/from16 v4, p1

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v16, v3

    .line 806
    :cond_7
    :goto_5
    return-object v3
.end method

.method private final decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 695
    nop

    :goto_0
    const/4 v0, 0x0

    .line 696
    .local v0, "stream":Ljava/io/InputStream;
    nop

    .line 697
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 698
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    invoke-direct {p0, v2}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 698
    return-object v1

    .line 702
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    invoke-direct {p0, v1}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 703
    nop

    .line 704
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x200

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 705
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Lcom/canhub/cropper/CropException$FailedToDecodeImage;

    invoke-direct {v0, p2}, Lcom/canhub/cropper/CropException$FailedToDecodeImage;-><init>(Landroid/net/Uri;)V

    throw v0

    .line 702
    .restart local v0    # "stream":Ljava/io/InputStream;
    :goto_1
    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    invoke-direct {p0, v2}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    throw v1
.end method

.method private final decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "stream":Ljava/io/InputStream;
    nop

    .line 673
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 674
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 675
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 676
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 677
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    nop

    .line 680
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    invoke-direct {p0, v2}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 681
    nop

    .line 672
    return-object v1

    .line 680
    :catchall_0
    move-exception v1

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    invoke-direct {p0, v2}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    throw v1
.end method

.method private final decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "reqWidth"    # I
    .param p5, "reqHeight"    # I
    .param p6, "sampleMulti"    # I

    .line 722
    nop

    .line 723
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 724
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 725
    nop

    .line 726
    nop

    .line 727
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 726
    invoke-direct {p0, v1, v2, p4, p5}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result v1

    .line 725
    mul-int/2addr v1, p6

    .line 724
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 730
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 731
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 733
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :cond_0
    nop

    .line 734
    :try_start_1
    new-instance v3, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    .line 735
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p3, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 736
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 734
    invoke-direct {v3, v4, v5}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 738
    :catch_0
    move-exception v3

    .line 739
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 741
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v4, 0x200

    if-le v3, v4, :cond_0

    .line 743
    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-direct {p0, v3}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 744
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 748
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    new-instance v0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    .line 745
    :catch_1
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    throw v1
.end method

.method private final fixRectForAspectRatio(Landroid/graphics/Rect;II)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "aspectRatioX"    # I
    .param p3, "aspectRatioY"    # I

    .line 381
    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 383
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 385
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 388
    :cond_1
    :goto_0
    return-void
.end method

.method private final getMaxTextureSize()I
    .locals 13

    .line 895
    nop

    .line 897
    const/16 v0, 0x800

    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type javax.microedition.khronos.egl.EGL10"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 898
    .local v1, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    .line 900
    .local v2, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 901
    .local v3, "version":[I
    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 903
    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 904
    .local v5, "totalConfigurations":[I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v2, v6, v7, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 907
    aget v6, v5, v7

    new-array v6, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 906
    nop

    .line 909
    .local v6, "configurationsList":[Ljavax/microedition/khronos/egl/EGLConfig;
    nop

    .line 910
    nop

    .line 911
    nop

    .line 912
    aget v8, v5, v7

    .line 913
    nop

    .line 909
    invoke-interface {v1, v2, v6, v8, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 915
    new-array v4, v4, [I

    .line 916
    .local v4, "textureSize":[I
    const/4 v8, 0x0

    .line 918
    .local v8, "maximumTextureSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    aget v10, v5, v7

    :goto_0
    if-ge v9, v10, :cond_1

    .line 920
    nop

    .line 921
    aget-object v11, v6, v9

    .line 920
    const/16 v12, 0x302c

    invoke-interface {v1, v2, v11, v12, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 924
    aget v11, v4, v7

    if-ge v8, v11, :cond_0

    .line 925
    aget v11, v4, v7

    move v8, v11

    .line 918
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 929
    .end local v9    # "i":I
    :cond_1
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 931
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    .end local v2    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v3    # "version":[I
    .end local v4    # "textureSize":[I
    .end local v5    # "totalConfigurations":[I
    .end local v6    # "configurationsList":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8    # "maximumTextureSize":I
    goto :goto_1

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 895
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private final rotateAndFlipBitmapInt(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "degrees"    # I
    .param p3, "flipHorizontally"    # Z
    .param p4, "flipVertically"    # Z

    .line 861
    if-gtz p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    move-object v1, p1

    goto :goto_3

    .line 862
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 863
    .local v0, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 864
    nop

    .line 865
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    int-to-float v3, v3

    .line 866
    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    int-to-float v1, v1

    .line 864
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 869
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 868
    nop

    .line 870
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 873
    :cond_4
    nop

    .line 861
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    nop

    .line 864
    const-string/jumbo v0, "{\n            val matrix\u2026      newBitmap\n        }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    :goto_3
    return-object v1
.end method


# virtual methods
.method public final cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadedImageUri"    # Landroid/net/Uri;
    .param p3, "points"    # [F
    .param p4, "degreesRotated"    # I
    .param p5, "orgWidth"    # I
    .param p6, "orgHeight"    # I
    .param p7, "fixAspectRatio"    # Z
    .param p8, "aspectRatioX"    # I
    .param p9, "aspectRatioY"    # I
    .param p10, "reqWidth"    # I
    .param p11, "reqHeight"    # I
    .param p12, "flipHorizontally"    # Z
    .param p13, "flipVertically"    # Z

    const-string v0, "context"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "points"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    move/from16 v16, v0

    .line 265
    .local v16, "sampleMulti":I
    :goto_0
    nop

    .line 266
    nop

    .line 268
    nop

    .line 269
    nop

    .line 270
    :try_start_0
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 271
    nop

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    mul-int/lit8 v1, v16, 0x2

    .line 287
    .end local v16    # "sampleMulti":I
    .local v1, "sampleMulti":I
    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    move-object/from16 v15, p1

    move-object/from16 v14, p3

    move/from16 v16, v1

    goto :goto_0

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 289
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to handle OOM by sampling ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    .line 288
    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "points"    # [F
    .param p3, "degreesRotated"    # I
    .param p4, "fixAspectRatio"    # Z
    .param p5, "aspectRatioX"    # I
    .param p6, "aspectRatioY"    # I
    .param p7, "flipHorizontally"    # Z
    .param p8, "flipVertically"    # Z

    const-string/jumbo v0, "points"

    move-object v11, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    move v12, v0

    .line 160
    .local v12, "scale":I
    :goto_0
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    const/4 v0, 0x1

    int-to-float v0, v0

    int-to-float v1, v12

    div-float v8, v0, v1

    .line 170
    nop

    .line 171
    nop

    .line 162
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, "cropBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v1, v0, v12}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 174
    .end local v0    # "cropBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    mul-int/lit8 v12, v12, 0x2

    .line 176
    const/16 v1, 0x8

    if-gt v12, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    throw v0
.end method

.method public final decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    nop

    .line 122
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "resolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/canhub/cropper/BitmapUtils;->decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 125
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "File is not a picture"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "reqWidth":I
    .end local p4    # "reqHeight":I
    throw v2

    .line 127
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "reqWidth":I
    .restart local p4    # "reqHeight":I
    :cond_1
    :goto_0
    nop

    .line 128
    nop

    .line 129
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 128
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result v2

    .line 131
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v3, v4}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByMaxTextureSize(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 127
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    invoke-direct {p0, v0, p2, v1}, Lcom/canhub/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 135
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v3, v2, v4}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    return-object v3

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    throw v1
.end method

.method public final getEMPTY_RECT()Landroid/graphics/Rect;
    .locals 1

    .line 42
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getEMPTY_RECT_F()Landroid/graphics/RectF;
    .locals 1

    .line 43
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getMStateBitmap()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    return-object v0
.end method

.method public final getPOINTS()[F
    .locals 1

    .line 55
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->POINTS:[F

    return-object v0
.end method

.method public final getPOINTS2()[F
    .locals 1

    .line 60
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->POINTS2:[F

    return-object v0
.end method

.method public final getRECT()Landroid/graphics/RectF;
    .locals 1

    .line 50
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getRectBottom([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getRectCenterX([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getRectCenterY([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getRectFromPoints([FIIZII)Landroid/graphics/Rect;
    .locals 5
    .param p1, "points"    # [F
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "fixAspectRatio"    # Z
    .param p5, "aspectRatioX"    # I
    .param p6, "aspectRatioY"    # I

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 366
    .local v0, "left":I
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 367
    .local v1, "top":I
    int-to-float v2, p2

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 368
    .local v2, "right":I
    int-to-float v3, p3

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 369
    .local v3, "bottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    .local v4, "rect":Landroid/graphics/Rect;
    if-eqz p4, :cond_0

    .line 371
    invoke-direct {p0, v4, p5, p6}, Lcom/canhub/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    .line 373
    :cond_0
    return-object v4
.end method

.method public final getRectHeight([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getRectLeft([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final getRectRight([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getRectTop([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final getRectWidth([F)F
    .locals 2
    .param p1, "points"    # [F

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final orientateBitmapByExif(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "ei":Landroidx/exifinterface/media/ExifInterface;
    nop

    .line 80
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 81
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 82
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 83
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 87
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/canhub/cropper/BitmapUtils;->orientateBitmapByExif(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    return-object v1
.end method

.method public final orientateBitmapByExif(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "exif"    # Landroidx/exifinterface/media/ExifInterface;

    const-string v0, "exif"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 96
    nop

    .line 98
    .local v0, "orientationAttributeInt":I
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 103
    :pswitch_0
    move v3, v2

    goto :goto_0

    .line 102
    :pswitch_1
    const/16 v3, 0x10e

    goto :goto_0

    .line 100
    :pswitch_2
    const/16 v3, 0x5a

    goto :goto_0

    .line 101
    :pswitch_3
    const/16 v3, 0xb4

    .line 98
    :goto_0
    nop

    .line 105
    .local v3, "degrees":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 106
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v1

    .line 105
    :goto_2
    nop

    .line 107
    .local v4, "flipHorizontally":Z
    const/4 v5, 0x4

    if-eq v0, v5, :cond_3

    .line 108
    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_4

    :cond_3
    :goto_3
    nop

    .line 107
    :goto_4
    nop

    .line 109
    .local v1, "flipVertically":Z
    new-instance v2, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;IZZ)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final resizeBitmap(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "options"    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const-string/jumbo v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    nop

    .line 481
    if-lez p2, :cond_5

    if-lez p3, :cond_5

    :try_start_0
    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne p4, v0, :cond_5

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 483
    .local v0, "resized":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const/4 v2, 0x0

    if-ne p4, v1, :cond_1

    .line 484
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 487
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 488
    .local v3, "height":I
    int-to-float v4, v1

    int-to-float v5, p2

    div-float/2addr v4, v5

    int-to-float v5, v3

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 489
    .local v4, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_2

    sget-object v5, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne p4, v5, :cond_3

    .line 490
    :cond_2
    nop

    .line 491
    int-to-float v5, v1

    div-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v3

    div-float/2addr v6, v4

    float-to-int v6, v6

    .line 490
    invoke-static {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .line 495
    .end local v1    # "width":I
    .end local v3    # "height":I
    .end local v4    # "scale":F
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 496
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 497
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_4
    return-object v0

    .line 502
    .end local v0    # "resized":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to resize cropped image, return bitmap before resize"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "AIC"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final setMStateBitmap(Landroid/util/Pair;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .line 70
    sput-object p1, Lcom/canhub/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    return-void
.end method

.method public final writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "compressQuality"    # I
    .param p5, "customOutputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    if-nez p5, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/canhub/cropper/BitmapUtils;->buildUri(Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p5

    .line 431
    .local v0, "newUri":Landroid/net/Uri;
    :goto_0
    const/4 v1, 0x0

    .line 432
    .local v1, "outputStream":Ljava/io/OutputStream;
    nop

    .line 433
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v3, "wt"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v1, v2

    .line 435
    invoke-virtual {p2, p3, p4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-direct {p0, v2}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 438
    nop

    .line 439
    return-object v0

    .line 437
    :catchall_0
    move-exception v2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-direct {p0, v3}, Lcom/canhub/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    throw v2
.end method

.method public final writeTempStateStoreBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "customOutputUri"    # Landroid/net/Uri;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    nop

    .line 403
    nop

    .line 404
    nop

    .line 405
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 406
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 407
    nop

    .line 408
    nop

    .line 403
    const/16 v5, 0x5f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/BitmapUtils;->writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 413
    nop

    .line 414
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    .line 411
    const-string v2, "AIC"

    const-string v3, "Failed to write bitmap to temp file for image-cropper save instance state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    move-object v0, v1

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
