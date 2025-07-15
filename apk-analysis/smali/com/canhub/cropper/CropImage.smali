.class public final Lcom/canhub/cropper/CropImage;
.super Ljava/lang/Object;
.source "CropImage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImage$ActivityResult;,
        Lcom/canhub/cropper/CropImage$CancelledResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u001a\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J$\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0007J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImage;",
        "",
        "()V",
        "CAMERA_CAPTURE_PERMISSIONS_REQUEST_CODE",
        "",
        "CROP_IMAGE_ACTIVITY_REQUEST_CODE",
        "CROP_IMAGE_ACTIVITY_RESULT_ERROR_CODE",
        "CROP_IMAGE_EXTRA_BUNDLE",
        "",
        "CROP_IMAGE_EXTRA_OPTIONS",
        "CROP_IMAGE_EXTRA_RESULT",
        "CROP_IMAGE_EXTRA_SOURCE",
        "PICK_IMAGE_CHOOSER_REQUEST_CODE",
        "PICK_IMAGE_PERMISSIONS_REQUEST_CODE",
        "getCaptureImageOutputUriContent",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "getCaptureImageOutputUriFilePath",
        "uniqueName",
        "",
        "getPickImageResultUriContent",
        "data",
        "Landroid/content/Intent;",
        "getPickImageResultUriFilePath",
        "toOvalBitmap",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "ActivityResult",
        "CancelledResult",
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
.field public static final CAMERA_CAPTURE_PERMISSIONS_REQUEST_CODE:I = 0x7db

.field public static final CROP_IMAGE_ACTIVITY_REQUEST_CODE:I = 0xcb

.field public static final CROP_IMAGE_ACTIVITY_RESULT_ERROR_CODE:I = 0xcc

.field public static final CROP_IMAGE_EXTRA_BUNDLE:Ljava/lang/String; = "CROP_IMAGE_EXTRA_BUNDLE"

.field public static final CROP_IMAGE_EXTRA_OPTIONS:Ljava/lang/String; = "CROP_IMAGE_EXTRA_OPTIONS"

.field public static final CROP_IMAGE_EXTRA_RESULT:Ljava/lang/String; = "CROP_IMAGE_EXTRA_RESULT"

.field public static final CROP_IMAGE_EXTRA_SOURCE:Ljava/lang/String; = "CROP_IMAGE_EXTRA_SOURCE"

.field public static final INSTANCE:Lcom/canhub/cropper/CropImage;

.field public static final PICK_IMAGE_CHOOSER_REQUEST_CODE:I = 0xc8

.field public static final PICK_IMAGE_PERMISSIONS_REQUEST_CODE:I = 0xc9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/canhub/cropper/CropImage;

    invoke-direct {v0}, Lcom/canhub/cropper/CropImage;-><init>()V

    sput-object v0, Lcom/canhub/cropper/CropImage;->INSTANCE:Lcom/canhub/cropper/CropImage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getCaptureImageOutputUriFilePath$default(Lcom/canhub/cropper/CropImage;Landroid/content/Context;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 144
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/CropImage;->getCaptureImageOutputUriFilePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPickImageResultUriContent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, "isCamera":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 165
    .end local v2    # "action":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    .line 166
    :cond_3
    move-object v2, v1

    goto :goto_3

    .line 165
    :cond_4
    :goto_2
    sget-object v2, Lcom/canhub/cropper/CropImage;->INSTANCE:Lcom/canhub/cropper/CropImage;

    invoke-virtual {v2, p0}, Lcom/canhub/cropper/CropImage;->getCaptureImageOutputUriContent(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    :goto_3
    return-object v2
.end method

.method public static final getPickImageResultUriFilePath(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "uniqueName"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImage;->getPickImageResultUriContent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/canhub/cropper/utils/GetFilePathFromUriKt;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPickImageResultUriFilePath$default(Landroid/content/Context;Landroid/content/Intent;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 179
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 182
    const/4 p2, 0x0

    .line 179
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/canhub/cropper/CropImage;->getPickImageResultUriFilePath(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCaptureImageOutputUriContent(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "outputFileUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 118
    .local v1, "getImage":Ljava/io/File;
    sget-object v2, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v2}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastQ29()Z

    move-result v2

    const-string/jumbo v3, "pickImageResult.jpeg"

    if-eqz v2, :cond_0

    .line 119
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 120
    nop

    .line 122
    nop

    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".cropper.fileprovider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p1, v2, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 120
    const-string/jumbo v4, "{\n                FilePr\u2026          )\n            }"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 126
    const-string/jumbo v4, "{\n                Uri.fr\u2026ult.jpeg\"))\n            }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "fromFile(File(getImage!!\u2026 \"pickImageResult.jpeg\"))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 133
    :goto_1
    return-object v0
.end method

.method public final getCaptureImageOutputUriFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Z

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImage;->getCaptureImageOutputUriContent(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/canhub/cropper/utils/GetFilePathFromUriKt;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toOvalBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 90
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 91
    .local v1, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 92
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, -0xbdbdbe

    .line 94
    .local v4, "color":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 95
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 97
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v0

    int-to-float v8, v1

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    .local v6, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v6, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 100
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v7, Landroid/graphics/Xfermode;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    invoke-virtual {v3, p1, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    const-string/jumbo v7, "output"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
