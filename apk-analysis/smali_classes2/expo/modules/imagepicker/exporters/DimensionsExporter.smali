.class public final Lexpo/modules/imagepicker/exporters/DimensionsExporter;
.super Ljava/lang/Object;
.source "DimensionsExporter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\t\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0013\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/imagepicker/exporters/DimensionsExporter;",
        "",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "height",
        "",
        "getHeight",
        "()I",
        "isRotatedLandscape",
        "",
        "()Z",
        "isRotatedLandscape$delegate",
        "Lkotlin/Lazy;",
        "metadata",
        "Landroid/graphics/BitmapFactory$Options;",
        "getMetadata",
        "()Landroid/graphics/BitmapFactory$Options;",
        "metadata$delegate",
        "width",
        "getWidth",
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
.field private final file:Ljava/io/File;

.field private final isRotatedLandscape$delegate:Lkotlin/Lazy;

.field private final metadata$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->file:Ljava/io/File;

    .line 12
    new-instance v0, Lexpo/modules/imagepicker/exporters/DimensionsExporter$isRotatedLandscape$2;

    invoke-direct {v0, p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter$isRotatedLandscape$2;-><init>(Lexpo/modules/imagepicker/exporters/DimensionsExporter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->isRotatedLandscape$delegate:Lkotlin/Lazy;

    .line 23
    new-instance v0, Lexpo/modules/imagepicker/exporters/DimensionsExporter$metadata$2;

    invoke-direct {v0, p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter$metadata$2;-><init>(Lexpo/modules/imagepicker/exporters/DimensionsExporter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->metadata$delegate:Lkotlin/Lazy;

    .line 11
    return-void
.end method

.method public static final synthetic access$getFile$p(Lexpo/modules/imagepicker/exporters/DimensionsExporter;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/exporters/DimensionsExporter;

    .line 11
    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->file:Ljava/io/File;

    return-object v0
.end method

.method private final getMetadata()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->metadata$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private final isRotatedLandscape()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->isRotatedLandscape$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 33
    invoke-direct {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->isRotatedLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->getMetadata()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->getMetadata()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 30
    invoke-direct {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->isRotatedLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->getMetadata()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->getMetadata()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v0
.end method
