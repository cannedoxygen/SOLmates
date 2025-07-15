.class public final Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
.super Ljava/lang/Object;
.source "CompressionImageExporter.kt"

# interfaces
.implements Lexpo/modules/imagepicker/exporters/ImageExporter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096@\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\u0014J&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/imagepicker/exporters/CompressionImageExporter;",
        "Lexpo/modules/imagepicker/exporters/ImageExporter;",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "quality",
        "",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;D)V",
        "compressQuality",
        "",
        "exportAsync",
        "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
        "source",
        "Landroid/net/Uri;",
        "output",
        "Ljava/io/File;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readBitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeImage",
        "",
        "bitmap",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-image-picker_debug"
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
.field private final appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

.field private final compressQuality:I


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/providers/AppContextProvider;D)V
    .locals 2
    .param p1, "appContextProvider"    # Lexpo/modules/kotlin/providers/AppContextProvider;
    .param p2, "quality"    # D

    const-string v0, "appContextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 27
    const/16 v0, 0x64

    int-to-double v0, v0

    mul-double/2addr v0, p2

    double-to-int v0, v0

    iput v0, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->compressQuality:I

    .line 22
    return-void
.end method

.method public static final synthetic access$getAppContextProvider$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)Lexpo/modules/kotlin/providers/AppContextProvider;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    .line 22
    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    return-object v0
.end method

.method public static final synthetic access$getCompressQuality$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)I
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    .line 22
    iget v0, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->compressQuality:I

    return v0
.end method

.method public static final synthetic access$readBitmap(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .param p1, "source"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 22
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$writeImage(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "output"    # Ljava/io/File;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->writeImage(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;

    iget v1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;

    invoke-direct {v0, p0, p2}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;-><init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, p2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .local v2, "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .local p1, "source":Landroid/net/Uri;
    new-instance v3, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;

    invoke-direct {v3, v2, p1}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;-><init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/net/Uri;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x1

    iput v4, p2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    const/4 v5, 0x0

    invoke-static {v5, v3, p2, v4, v5}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .end local p1    # "source":Landroid/net/Uri;
    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final writeImage(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "output"    # Ljava/io/File;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    new-instance v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;

    invoke-direct {v0, p2, p1, p3, p0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, p4, v1, v2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    return-object v0
.end method


# virtual methods
.method public exportAsync(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;

    iget v1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;-><init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    .local p1, "bitmap":Landroid/graphics/Bitmap;
    iget-object p2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    .local p2, "output":Ljava/io/File;
    iget-object p3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    .local p3, "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "output":Ljava/io/File;
    .end local p3    # "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    :pswitch_1
    iget-object p1, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$4:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    iget-object p2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    check-cast p2, Landroid/content/ContentResolver;

    .local p2, "contentResolver":Landroid/content/ContentResolver;
    iget-object p3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    check-cast p3, Ljava/io/File;

    .local p3, "output":Ljava/io/File;
    iget-object v2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    .local v2, "source":Landroid/net/Uri;
    iget-object v3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    .local v3, "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_2

    .end local v2    # "source":Landroid/net/Uri;
    .end local v3    # "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "contentResolver":Landroid/content/ContentResolver;
    .end local p3    # "output":Ljava/io/File;
    :pswitch_2
    iget-object p1, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroid/content/ContentResolver;

    .local p1, "contentResolver":Landroid/content/ContentResolver;
    iget-object p2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    .local p2, "output":Ljava/io/File;
    iget-object p3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    check-cast p3, Landroid/net/Uri;

    .local p3, "source":Landroid/net/Uri;
    iget-object v2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    .local v2, "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_1

    .end local v2    # "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .end local p1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p2    # "output":Ljava/io/File;
    .end local p3    # "source":Landroid/net/Uri;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 34
    .restart local v2    # "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .local p1, "source":Landroid/net/Uri;
    .restart local p2    # "output":Ljava/io/File;
    .local p3, "contentResolver":Landroid/content/ContentResolver;
    iput-object v2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    iput-object p2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    iput-object p3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    invoke-direct {v2, p1, p4}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 29
    return-object v1

    .line 34
    :cond_1
    move-object v9, p3

    move-object p3, p1

    move-object p1, v9

    .line 29
    .local p1, "contentResolver":Landroid/content/ContentResolver;
    .local p3, "source":Landroid/net/Uri;
    :goto_1
    check-cast v3, Landroid/graphics/Bitmap;

    .line 35
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toBitmapCompressFormat(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    .line 36
    .local v4, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    iput-object v2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    iput-object p2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    iput-object p1, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    iput-object v3, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    invoke-direct {v2, v3, p2, v4, p4}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->writeImage(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    if-ne v4, v1, :cond_2

    .line 29
    return-object v1

    .line 36
    :cond_2
    move-object v9, p3

    move-object p3, p1

    move-object p1, v3

    move-object v3, v9

    .line 37
    .local v3, "source":Landroid/net/Uri;
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    .local p3, "contentResolver":Landroid/content/ContentResolver;
    :goto_2
    iput-object v2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    iput-object p2, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    iput-object p1, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    iput-object v4, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    invoke-static {v3, p2, p3, p4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyExifData(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    .end local v3    # "source":Landroid/net/Uri;
    .end local p3    # "contentResolver":Landroid/content/ContentResolver;
    if-ne p3, v1, :cond_3

    .line 29
    return-object v1

    .line 37
    :cond_3
    move-object p3, v2

    .line 40
    .end local v2    # "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .local p3, "this":Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 39
    nop

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 39
    new-instance v1, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;

    move-object v3, v1

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;Lexpo/modules/imagepicker/exporters/CompressionImageExporter;II)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
