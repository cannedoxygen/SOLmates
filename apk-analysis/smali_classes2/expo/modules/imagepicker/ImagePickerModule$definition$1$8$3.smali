.class final Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$3;
.super Ljava/lang/Object;
.source "ImagePickerModule.kt"

# interfaces
.implements Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Ljava/io/Serializable;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "input",
        "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
        "result",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        "onActivityResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/imagepicker/ImagePickerModule;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/ImagePickerModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$3;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;)V
    .locals 2
    .param p1, "input"    # Lexpo/modules/imagepicker/contracts/CropImageContractOptions;
    .param p2, "result"    # Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$3;->this$0:Lexpo/modules/imagepicker/ImagePickerModule;

    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lexpo/modules/imagepicker/ImagePickerModule;->access$handleResultUponActivityDestruction(Lexpo/modules/imagepicker/ImagePickerModule;Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;Lexpo/modules/imagepicker/ImagePickerOptions;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/io/Serializable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "input"    # Ljava/io/Serializable;
    .param p2, "result"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    move-object v1, p2

    check-cast v1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/imagepicker/ImagePickerModule$definition$1$8$3;->onActivityResult(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;)V

    return-void
.end method
