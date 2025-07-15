.class final Lexpo/modules/imagepicker/exporters/DimensionsExporter$isRotatedLandscape$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DimensionsExporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/DimensionsExporter;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/DimensionsExporter;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/exporters/DimensionsExporter;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter$isRotatedLandscape$2;->this$0:Lexpo/modules/imagepicker/exporters/DimensionsExporter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 4

    .line 13
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter$isRotatedLandscape$2;->this$0:Lexpo/modules/imagepicker/exporters/DimensionsExporter;

    invoke-static {v1}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->access$getFile$p(Lexpo/modules/imagepicker/exporters/DimensionsExporter;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 16
    .local v1, "imageRotation":I
    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    .line 17
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .line 18
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    .line 19
    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 15
    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter$isRotatedLandscape$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
