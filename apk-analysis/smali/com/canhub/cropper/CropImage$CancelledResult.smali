.class public final Lcom/canhub/cropper/CropImage$CancelledResult;
.super Lcom/canhub/cropper/CropImageView$CropResult;
.source "CropImage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancelledResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImage$CancelledResult;",
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "()V",
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
.field public static final INSTANCE:Lcom/canhub/cropper/CropImage$CancelledResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/canhub/cropper/CropImage$CancelledResult;

    invoke-direct {v0}, Lcom/canhub/cropper/CropImage$CancelledResult;-><init>()V

    sput-object v0, Lcom/canhub/cropper/CropImage$CancelledResult;->INSTANCE:Lcom/canhub/cropper/CropImage$CancelledResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    new-instance v0, Lcom/canhub/cropper/CropException$Cancellation;

    invoke-direct {v0}, Lcom/canhub/cropper/CropException$Cancellation;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/lang/Exception;

    const/4 v0, 0x0

    new-array v7, v0, [F

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 252
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/canhub/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method
