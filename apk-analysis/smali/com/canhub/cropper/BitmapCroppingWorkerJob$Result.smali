.class public final Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;
.super Ljava/lang/Object;
.source "BitmapCroppingWorkerJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/BitmapCroppingWorkerJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0019\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tB\u0019\u0008\u0016\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "sampleSize",
        "",
        "(Landroid/graphics/Bitmap;I)V",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;I)V",
        "error",
        "Ljava/lang/Exception;",
        "isSave",
        "",
        "(Ljava/lang/Exception;Z)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getError",
        "()Ljava/lang/Exception;",
        "()Z",
        "getSampleSize",
        "()I",
        "getUri",
        "()Landroid/net/Uri;",
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

.field private final error:Ljava/lang/Exception;

.field private final isSave:Z

.field private final sampleSize:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sampleSize"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->uri:Landroid/net/Uri;

    .line 147
    iput-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->error:Ljava/lang/Exception;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->isSave:Z

    .line 149
    iput p2, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->sampleSize:I

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sampleSize"    # I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 154
    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->uri:Landroid/net/Uri;

    .line 155
    iput-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->error:Ljava/lang/Exception;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->isSave:Z

    .line 157
    iput p2, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->sampleSize:I

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Z)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "isSave"    # Z

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 162
    iput-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->uri:Landroid/net/Uri;

    .line 163
    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->error:Ljava/lang/Exception;

    .line 164
    iput-boolean p2, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->isSave:Z

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->sampleSize:I

    .line 166
    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getSampleSize()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->sampleSize:I

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final isSave()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->isSave:Z

    return v0
.end method
