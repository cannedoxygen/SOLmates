.class final Lexpo/modules/imagepicker/exporters/DimensionsExporter$metadata$2;
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
        "Landroid/graphics/BitmapFactory$Options;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDimensionsExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DimensionsExporter.kt\nexpo/modules/imagepicker/exporters/DimensionsExporter$metadata$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/BitmapFactory$Options;",
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
.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/DimensionsExporter;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/exporters/DimensionsExporter;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter$metadata$2;->this$0:Lexpo/modules/imagepicker/exporters/DimensionsExporter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .line 24
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v1, v0

    .line 36
    .local v1, "$this$invoke_u24lambda_u240":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-apply-DimensionsExporter$metadata$2$options$1":I
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    .end local v1    # "$this$invoke_u24lambda_u240":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "$i$a$-apply-DimensionsExporter$metadata$2$options$1":I
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/DimensionsExporter$metadata$2;->this$0:Lexpo/modules/imagepicker/exporters/DimensionsExporter;

    invoke-static {v1}, Lexpo/modules/imagepicker/exporters/DimensionsExporter;->access$getFile$p(Lexpo/modules/imagepicker/exporters/DimensionsExporter;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 26
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/DimensionsExporter$metadata$2;->invoke()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method
