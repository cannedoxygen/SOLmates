.class public final Lexpo/modules/imagepicker/exporters/RawImageExporter;
.super Ljava/lang/Object;
.source "RawImageExporter.kt"

# interfaces
.implements Lexpo/modules/imagepicker/exporters/ImageExporter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0096@\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/imagepicker/exporters/RawImageExporter;",
        "Lexpo/modules/imagepicker/exporters/ImageExporter;",
        "()V",
        "exportAsync",
        "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
        "source",
        "Landroid/net/Uri;",
        "output",
        "Ljava/io/File;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exportAsync(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    instance-of v0, p4, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;

    iget v1, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;-><init>(Lexpo/modules/imagepicker/exporters/RawImageExporter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget v2, p4, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

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
    iget-object p1, p4, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .local p1, "output":Ljava/io/File;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "output":Ljava/io/File;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .local p1, "source":Landroid/net/Uri;
    .local p2, "output":Ljava/io/File;
    .local p3, "contentResolver":Landroid/content/ContentResolver;
    iput-object p2, p4, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p4, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    invoke-static {p1, p2, p3, p4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyFile(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "source":Landroid/net/Uri;
    .end local p3    # "contentResolver":Landroid/content/ContentResolver;
    if-ne p1, v1, :cond_1

    .line 9
    return-object v1

    .line 14
    :cond_1
    move-object p1, p2

    .line 15
    .end local p2    # "output":Ljava/io/File;
    .local p1, "output":Ljava/io/File;
    :goto_1
    new-instance p2, Lexpo/modules/imagepicker/exporters/DimensionsExporter;

    invoke-direct {p2, p1}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;-><init>(Ljava/io/File;)V

    .line 17
    .local p2, "dimensionsExporter":Lexpo/modules/imagepicker/exporters/DimensionsExporter;
    new-instance p3, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .line 18
    invoke-virtual {p2}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->getWidth()I

    move-result v1

    .line 19
    invoke-virtual {p2}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->getHeight()I

    move-result v2

    .line 20
    nop

    .line 17
    invoke-direct {p3, v1, v2, p1}, Lexpo/modules/imagepicker/exporters/ImageExportResult;-><init>(IILjava/io/File;)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
