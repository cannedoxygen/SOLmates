.class final synthetic Lcom/canhub/cropper/CropImageActivity$onCreate$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CropImageActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/canhub/cropper/CropImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/canhub/cropper/CropImageActivity$Source;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/canhub/cropper/CropImageActivity;

    const-string/jumbo v5, "openSource(Lcom/canhub/cropper/CropImageActivity$Source;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "openSource"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/canhub/cropper/CropImageActivity$Source;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity$onCreate$1;->invoke(Lcom/canhub/cropper/CropImageActivity$Source;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/canhub/cropper/CropImageActivity$Source;)V
    .locals 1
    .param p1, "p0"    # Lcom/canhub/cropper/CropImageActivity$Source;

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity$onCreate$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/canhub/cropper/CropImageActivity;

    invoke-static {v0, p1}, Lcom/canhub/cropper/CropImageActivity;->access$openSource(Lcom/canhub/cropper/CropImageActivity;Lcom/canhub/cropper/CropImageActivity$Source;)V

    return-void
.end method
