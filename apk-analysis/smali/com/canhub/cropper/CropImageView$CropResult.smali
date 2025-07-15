.class public Lcom/canhub/cropper/CropImageView$CropResult;
.super Ljava/lang/Object;
.source "CropImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropResult"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageView.kt\ncom/canhub/cropper/CropImageView$CropResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1985:1\n1#2:1986\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001Bk\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0008\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00032\u0006\u0010\'\u001a\u00020(J\u001a\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010+\u001a\u00020\u001dR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0019\u0010\u0008\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010#R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010!R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "",
        "originalBitmap",
        "Landroid/graphics/Bitmap;",
        "originalUri",
        "Landroid/net/Uri;",
        "bitmap",
        "uriContent",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "cropPoints",
        "",
        "cropRect",
        "Landroid/graphics/Rect;",
        "wholeImageRect",
        "rotation",
        "",
        "sampleSize",
        "(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getCropPoints",
        "()[F",
        "getCropRect",
        "()Landroid/graphics/Rect;",
        "getError",
        "()Ljava/lang/Exception;",
        "isSuccessful",
        "",
        "()Z",
        "getOriginalBitmap",
        "getOriginalUri",
        "()Landroid/net/Uri;",
        "getRotation",
        "()I",
        "getSampleSize",
        "getUriContent",
        "getWholeImageRect",
        "context",
        "Landroid/content/Context;",
        "getUriFilePath",
        "",
        "uniqueName",
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


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final cropPoints:[F

.field private final cropRect:Landroid/graphics/Rect;

.field private final error:Ljava/lang/Exception;

.field private final originalBitmap:Landroid/graphics/Bitmap;

.field private final originalUri:Landroid/net/Uri;

.field private final rotation:I

.field private final sampleSize:I

.field private final uriContent:Landroid/net/Uri;

.field private final wholeImageRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 1
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "originalUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "uriContent"    # Landroid/net/Uri;
    .param p5, "error"    # Ljava/lang/Exception;
    .param p6, "cropPoints"    # [F
    .param p7, "cropRect"    # Landroid/graphics/Rect;
    .param p8, "wholeImageRect"    # Landroid/graphics/Rect;
    .param p9, "rotation"    # I
    .param p10, "sampleSize"    # I

    const-string v0, "cropPoints"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView$CropResult;->originalBitmap:Landroid/graphics/Bitmap;

    .line 1657
    iput-object p2, p0, Lcom/canhub/cropper/CropImageView$CropResult;->originalUri:Landroid/net/Uri;

    .line 1662
    iput-object p3, p0, Lcom/canhub/cropper/CropImageView$CropResult;->bitmap:Landroid/graphics/Bitmap;

    .line 1669
    iput-object p4, p0, Lcom/canhub/cropper/CropImageView$CropResult;->uriContent:Landroid/net/Uri;

    .line 1671
    iput-object p5, p0, Lcom/canhub/cropper/CropImageView$CropResult;->error:Ljava/lang/Exception;

    .line 1673
    iput-object p6, p0, Lcom/canhub/cropper/CropImageView$CropResult;->cropPoints:[F

    .line 1675
    iput-object p7, p0, Lcom/canhub/cropper/CropImageView$CropResult;->cropRect:Landroid/graphics/Rect;

    .line 1677
    iput-object p8, p0, Lcom/canhub/cropper/CropImageView$CropResult;->wholeImageRect:Landroid/graphics/Rect;

    .line 1679
    iput p9, p0, Lcom/canhub/cropper/CropImageView$CropResult;->rotation:I

    .line 1681
    iput p10, p0, Lcom/canhub/cropper/CropImageView$CropResult;->sampleSize:I

    .line 1647
    return-void
.end method

.method public static synthetic getUriFilePath$default(Lcom/canhub/cropper/CropImageView$CropResult;Landroid/content/Context;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1734
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getUriFilePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getUriFilePath"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1719
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView$CropResult;->uriContent:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 1718
    :cond_0
    return-object v0
.end method

.method public final getCropPoints()[F
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->cropPoints:[F

    return-object v0
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->originalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getOriginalUri()Landroid/net/Uri;
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->originalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getRotation()I
    .locals 1

    .line 1679
    iget v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->rotation:I

    return v0
.end method

.method public final getSampleSize()I
    .locals 1

    .line 1681
    iget v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->sampleSize:I

    return v0
.end method

.method public final getUriContent()Landroid/net/Uri;
    .locals 1

    .line 1669
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->uriContent:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUriFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Z

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->uriContent:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1986
    .local v0, "it":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1735
    .local v1, "$i$a$-let-CropImageView$CropResult$getUriFilePath$1":I
    invoke-static {p1, v0, p2}, Lcom/canhub/cropper/utils/GetFilePathFromUriKt;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "it":Landroid/net/Uri;
    .end local v1    # "$i$a$-let-CropImageView$CropResult$getUriFilePath$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getWholeImageRect()Landroid/graphics/Rect;
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->wholeImageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView$CropResult;->error:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
