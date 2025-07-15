.class public final Lcom/canhub/cropper/CropImageContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "CropImageContract.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Lcom/canhub/cropper/CropImageContractOptions;",
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageContract;",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "Lcom/canhub/cropper/CropImageContractOptions;",
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "()V",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "parseResult",
        "resultCode",
        "",
        "intent",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Lcom/canhub/cropper/CropImageContractOptions;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Lcom/canhub/cropper/CropImageContractOptions;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageContractOptions;->getCropImageOptions()Lcom/canhub/cropper/CropImageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageOptions;->validate()V

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/canhub/cropper/CropImageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$createIntent_u24lambda_u2d0":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-apply-CropImageContract$createIntent$1":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageContractOptions;->getUri()Landroid/net/Uri;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageContractOptions;->getCropImageOptions()Lcom/canhub/cropper/CropImageOptions;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    const-string v4, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    nop

    .line 23
    .end local v1    # "$this$createIntent_u24lambda_u2d0":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-CropImageContract$createIntent$1":I
    .end local v3    # "bundle":Landroid/os/Bundle;
    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/Object;

    .line 18
    move-object v0, p2

    check-cast v0, Lcom/canhub/cropper/CropImageContractOptions;

    invoke-virtual {p0, p1, v0}, Lcom/canhub/cropper/CropImageContract;->createIntent(Landroid/content/Context;Lcom/canhub/cropper/CropImageContractOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public parseResult(ILandroid/content/Intent;)Lcom/canhub/cropper/CropImageView$CropResult;
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 35
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lcom/canhub/cropper/CropImage$ActivityResult;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/canhub/cropper/CropImage$ActivityResult;

    .line 37
    .local v0, "result":Lcom/canhub/cropper/CropImage$ActivityResult;
    :cond_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/canhub/cropper/CropImageView$CropResult;

    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    sget-object v1, Lcom/canhub/cropper/CropImage$CancelledResult;->INSTANCE:Lcom/canhub/cropper/CropImage$CancelledResult;

    check-cast v1, Lcom/canhub/cropper/CropImageView$CropResult;

    .line 37
    :goto_2
    return-object v1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/CropImageContract;->parseResult(ILandroid/content/Intent;)Lcom/canhub/cropper/CropImageView$CropResult;

    move-result-object v0

    return-object v0
.end method
