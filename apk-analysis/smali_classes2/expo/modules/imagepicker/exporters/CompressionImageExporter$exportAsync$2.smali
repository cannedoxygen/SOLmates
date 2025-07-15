.class public final Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;
.super Lexpo/modules/imagepicker/exporters/ImageExportResult;
.source "CompressionImageExporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->exportAsync(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096@\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "expo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2",
        "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
        "data",
        "Ljava/io/ByteArrayOutputStream;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/graphics/Bitmap;Lexpo/modules/imagepicker/exporters/CompressionImageExporter;II)V
    .locals 0
    .param p1, "$output"    # Ljava/io/File;
    .param p2, "$bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "$receiver"    # Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    .param p4, "$super_call_param$1"    # I
    .param p5, "$super_call_param$2"    # I

    iput-object p2, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    .line 39
    nop

    .line 40
    nop

    .line 41
    nop

    .line 42
    nop

    .line 39
    invoke-direct {p0, p4, p5, p1}, Lexpo/modules/imagepicker/exporters/ImageExportResult;-><init>(IILjava/io/File;)V

    return-void
.end method


# virtual methods
.method public data(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/ByteArrayOutputStream;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;->$bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    invoke-static {v3}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->access$getCompressQuality$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)I

    move-result v3

    move-object v4, v0

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 47
    return-object v0
.end method
