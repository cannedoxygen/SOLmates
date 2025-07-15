.class public final Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "ImageLoaderModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imageloader/ImageLoaderModule;->loadImageForDisplayFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0016J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00022\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "expo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2",
        "Lcom/bumptech/glide/request/target/CustomTarget;",
        "Landroid/graphics/Bitmap;",
        "onLoadCleared",
        "",
        "placeholder",
        "Landroid/graphics/drawable/Drawable;",
        "onLoadFailed",
        "errorDrawable",
        "onResourceReady",
        "resource",
        "transition",
        "Lcom/bumptech/glide/request/transition/Transition;",
        "expo-image-loader_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $resultListener:Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;


# direct methods
.method constructor <init>(Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V
    .locals 0
    .param p1, "$resultListener"    # Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;

    iput-object p1, p0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2;->$resultListener:Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;

    .line 42
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2;->$resultListener:Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Loading bitmap failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;->onFailure(Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .param p1, "resource"    # Landroid/graphics/Bitmap;
    .param p2, "transition"    # Lcom/bumptech/glide/request/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2;->$resultListener:Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;

    invoke-interface {v0, p1}, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Lcom/bumptech/glide/request/transition/Transition;

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p2}, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
