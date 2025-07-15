.class final Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CompressionImageExporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "invoke"
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
.field final synthetic $source:Landroid/net/Uri;

.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    iput-object p2, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->$source:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .locals 5

    .line 54
    nop

    .line 53
    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    invoke-static {v0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->access$getAppContextProvider$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)Lexpo/modules/kotlin/providers/AppContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getImageLoader()Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 53
    nop

    .line 54
    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->$source:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;->loadImageForManipulationFromURL(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    if-eqz v0, :cond_1

    .line 57
    .local v0, "loaderResult":Ljava/util/concurrent/Future;
    nop

    .line 58
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v1

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "cause":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v3, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->$source:Landroid/net/Uri;

    invoke-static {v3}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v2

    .line 55
    .end local v0    # "loaderResult":Ljava/util/concurrent/Future;
    .end local v1    # "cause":Ljava/util/concurrent/ExecutionException;
    :cond_1
    new-instance v0, Lexpo/modules/imagepicker/MissingModuleException;

    const-string v1, "ImageLoader"

    invoke-direct {v0, v1}, Lexpo/modules/imagepicker/MissingModuleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
