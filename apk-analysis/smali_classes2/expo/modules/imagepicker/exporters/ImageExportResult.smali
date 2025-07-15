.class public Lexpo/modules/imagepicker/exporters/ImageExportResult;
.super Ljava/lang/Object;
.source "ImageExporter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u000fJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
        "",
        "width",
        "",
        "height",
        "imageFile",
        "Ljava/io/File;",
        "(IILjava/io/File;)V",
        "getHeight",
        "()I",
        "getWidth",
        "data",
        "Ljava/io/ByteArrayOutputStream;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "exif",
        "Landroid/os/Bundle;",
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
.field private final height:I

.field private final imageFile:Ljava/io/File;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/io/File;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFile"    # Ljava/io/File;

    const-string v0, "imageFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult;->width:I

    .line 30
    iput p2, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult;->height:I

    .line 31
    iput-object p3, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult;->imageFile:Ljava/io/File;

    .line 28
    return-void
.end method

.method public static final synthetic access$getImageFile$p(Lexpo/modules/imagepicker/exporters/ImageExportResult;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .line 28
    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult;->imageFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic data$suspendImpl(Lexpo/modules/imagepicker/exporters/ImageExportResult;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/ByteArrayOutputStream;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    new-instance v0, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;

    invoke-direct {v0, p1, p0}, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;-><init>(Landroid/content/ContentResolver;Lexpo/modules/imagepicker/exporters/ImageExportResult;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, p2, v1, v2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method static synthetic exif$suspendImpl(Lexpo/modules/imagepicker/exporters/ImageExportResult;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 48
    new-instance v0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;

    invoke-direct {v0, p1, p0}, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;-><init>(Landroid/content/ContentResolver;Lexpo/modules/imagepicker/exporters/ImageExportResult;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, p2, v1, v2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    return-object v0
.end method


# virtual methods
.method public data(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    invoke-static {p0, p1, p2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->data$suspendImpl(Lexpo/modules/imagepicker/exporters/ImageExportResult;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exif(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->exif$suspendImpl(Lexpo/modules/imagepicker/exporters/ImageExportResult;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 29
    iget v0, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult;->width:I

    return v0
.end method
