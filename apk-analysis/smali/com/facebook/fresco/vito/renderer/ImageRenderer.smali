.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n1#1,125:1\n46#1,2:126\n107#1,4:128\n48#1,3:132\n120#1,3:135\n112#1,3:138\n52#1:141\n107#1,4:142\n55#1:146\n120#1,3:147\n112#1,3:150\n57#1:153\n61#1,2:154\n112#1,3:156\n72#1,2:159\n91#1:161\n107#1,4:162\n120#1,3:166\n112#1,3:169\n107#1,4:172\n120#1,3:176\n112#1,3:179\n107#1,4:182\n120#1,3:186\n112#1,3:189\n107#1,4:192\n120#1,3:196\n112#1,3:199\n112#1,3:202\n*S KotlinDebug\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n35#1:126,2\n35#1:128,4\n35#1:132,3\n35#1:135,3\n35#1:138,3\n35#1:141\n35#1:142,4\n35#1:146\n35#1:147,3\n35#1:150,3\n35#1:153\n36#1:154,2\n36#1:156,3\n37#1:159,2\n37#1:161\n47#1:162,4\n50#1:166,3\n50#1:169,3\n52#1:172,4\n55#1:176,3\n55#1:179,3\n47#1:182,4\n50#1:186,3\n50#1:189,3\n52#1:192,4\n55#1:196,3\n55#1:199,3\n62#1:202,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0086\u0008J:\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rJ)\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\tH\u0086\u0008J9\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007*\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0086\u0008J-\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007*\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\tH\u0086\u0008J9\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007*\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0086\u0008J!\u0010\u0018\u001a\u00020\t*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\rH\u0086\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/renderer/ImageRenderer;",
        "",
        "()V",
        "bitmapRenderCommand",
        "Lkotlin/Function1;",
        "Landroid/graphics/Canvas;",
        "",
        "Lcom/facebook/fresco/vito/renderer/RenderCommand;",
        "paint",
        "Landroid/graphics/Paint;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "imageTransformation",
        "Landroid/graphics/Matrix;",
        "createImageDataModelRenderCommand",
        "model",
        "Lcom/facebook/fresco/vito/renderer/ImageDataModel;",
        "shape",
        "Lcom/facebook/fresco/vito/renderer/Shape;",
        "paintRenderCommand",
        "createRenderCommand",
        "Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;",
        "Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;",
        "Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;",
        "setBitmap",
        "shaderTransformation",
        "renderer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer;

    invoke-direct {v0}, Lcom/facebook/fresco/vito/renderer/ImageRenderer;-><init>()V

    sput-object v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createImageDataModelRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 28
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 32
    const/4 p4, 0x0

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->createImageDataModelRenderCommand(Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 6
    .param p0, "$this"    # Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .param p1, "$receiver"    # Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;
    .param p2, "shape"    # Lcom/facebook/fresco/vito/renderer/Shape;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "imageTransformation"    # Landroid/graphics/Matrix;

    .line 41
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 44
    const/4 p4, 0x0

    .line 41
    :cond_0
    const-string p5, "<this>"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "shape"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "paint"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 46
    .local p5, "$i$f$createRenderCommand":I
    nop

    .line 47
    instance-of p6, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz p6, :cond_1

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p6

    .local p6, "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v0, p0

    .local v0, "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$f$bitmapRenderCommand":I
    new-instance v2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v2, p4, p6, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 185
    nop

    .end local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v1    # "$i$f$bitmapRenderCommand":I
    .end local p6    # "bitmap$iv":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 48
    :cond_1
    instance-of p6, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz p6, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result p6

    if-nez p6, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p6

    .restart local p6    # "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v0, p0

    .restart local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    move-object v1, p3

    .local v1, "$this$setBitmap$iv":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 186
    .local v2, "$i$f$setBitmap":I
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p6, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 188
    nop

    .line 50
    .end local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v1    # "$this$setBitmap$iv":Landroid/graphics/Paint;
    .end local v2    # "$i$f$setBitmap":I
    .end local p6    # "bitmap$iv":Landroid/graphics/Bitmap;
    move-object p6, v1

    .restart local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .local p6, "paint$iv":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 189
    .local v1, "$i$f$paintRenderCommand":I
    new-instance v2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v2, p2, p6}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 191
    nop

    .end local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v1    # "$i$f$paintRenderCommand":I
    .end local p6    # "paint$iv":Landroid/graphics/Paint;
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p6

    .local p6, "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v0, p0

    .restart local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v1, 0x0

    .line 192
    .local v1, "$i$f$bitmapRenderCommand":I
    new-instance v2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v2, p4, p6, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 195
    nop

    .end local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v1    # "$i$f$bitmapRenderCommand":I
    .end local p6    # "bitmap$iv":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p6

    .restart local p6    # "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v0, p0

    .restart local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    move-object v1, p3

    .local v1, "$this$setBitmap$iv":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 196
    .restart local v2    # "$i$f$setBitmap":I
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p6, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 197
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 198
    nop

    .line 55
    .end local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v1    # "$this$setBitmap$iv":Landroid/graphics/Paint;
    .end local v2    # "$i$f$setBitmap":I
    .end local p6    # "bitmap$iv":Landroid/graphics/Bitmap;
    move-object p6, v1

    .restart local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .local p6, "paint$iv":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$paintRenderCommand":I
    new-instance v2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v2, p2, p6}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 201
    nop

    .line 57
    .end local v0    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v1    # "$i$f$paintRenderCommand":I
    .end local p6    # "paint$iv":Landroid/graphics/Paint;
    :goto_0
    return-object v2
.end method

.method public static synthetic createRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .param p0, "$this"    # Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .param p1, "$receiver"    # Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;
    .param p2, "shape"    # Lcom/facebook/fresco/vito/renderer/Shape;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "imageTransformation"    # Landroid/graphics/Matrix;

    .line 65
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 68
    const/4 p4, 0x0

    .line 65
    :cond_0
    const-string p5, "<this>"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "shape"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "paint"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 72
    .local p5, "$i$f$createRenderCommand":I
    nop

    .line 73
    instance-of p6, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz p6, :cond_1

    new-instance p6, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {p6, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p6, Lkotlin/jvm/functions/Function1;

    return-object p6

    .line 91
    :cond_1
    new-instance p6, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {p6, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    check-cast p6, Lkotlin/jvm/functions/Function1;

    return-object p6
.end method

.method public static synthetic setBitmap$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/Paint;
    .locals 2
    .param p0, "$this"    # Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .param p1, "$receiver"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "shaderTransformation"    # Landroid/graphics/Matrix;

    .line 116
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 118
    const/4 p3, 0x0

    .line 116
    :cond_0
    const-string p4, "<this>"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "bitmap"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 120
    .local p4, "$i$f$setBitmap":I
    new-instance p5, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p5, p2, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast p5, Landroid/graphics/Shader;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 122
    return-object p1
.end method


# virtual methods
.method public final bitmapRenderCommand(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageTransformation"    # Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$bitmapRenderCommand":I
    new-instance v1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v1, p3, p2, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 110
    return-object v1
.end method

.method public final createImageDataModelRenderCommand(Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 10
    .param p1, "model"    # Lcom/facebook/fresco/vito/renderer/ImageDataModel;
    .param p2, "shape"    # Lcom/facebook/fresco/vito/renderer/Shape;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "imageTransformation"    # Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/ImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 35
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;

    .local v0, "$this$createRenderCommand$iv":Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$f$createRenderCommand":I
    nop

    .line 127
    instance-of v3, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap$iv$iv":Landroid/graphics/Bitmap;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v5, 0x0

    .line 128
    .local v5, "$i$f$bitmapRenderCommand":I
    new-instance v6, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v6, p4, v3, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 131
    nop

    .end local v3    # "bitmap$iv$iv":Landroid/graphics/Bitmap;
    .end local v4    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v5    # "$i$f$bitmapRenderCommand":I
    goto/16 :goto_0

    .line 132
    :cond_0
    instance-of v3, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "bitmap$iv$iv":Landroid/graphics/Bitmap;
    move-object v4, p3

    .local v4, "$this$setBitmap$iv$iv":Landroid/graphics/Paint;
    move-object v5, v1

    .local v5, "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v6, 0x0

    .line 135
    .local v6, "$i$f$setBitmap":I
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v3, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v7, Landroid/graphics/Shader;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    invoke-virtual {v7, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 137
    nop

    .line 134
    .end local v3    # "bitmap$iv$iv":Landroid/graphics/Bitmap;
    .end local v4    # "$this$setBitmap$iv$iv":Landroid/graphics/Paint;
    .end local v5    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v6    # "$i$f$setBitmap":I
    move-object v3, v4

    .local v3, "paint$iv$iv":Landroid/graphics/Paint;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v5, 0x0

    .line 138
    .local v5, "$i$f$paintRenderCommand":I
    new-instance v6, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v6, p2, v3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 140
    nop

    .end local v3    # "paint$iv$iv":Landroid/graphics/Paint;
    .end local v4    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v5    # "$i$f$paintRenderCommand":I
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap$iv$iv":Landroid/graphics/Bitmap;
    move-object v4, v1

    .restart local v4    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v5, 0x0

    .line 142
    .local v5, "$i$f$bitmapRenderCommand":I
    new-instance v6, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v6, p4, v3, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 145
    nop

    .end local v3    # "bitmap$iv$iv":Landroid/graphics/Bitmap;
    .end local v4    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v5    # "$i$f$bitmapRenderCommand":I
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "bitmap$iv$iv":Landroid/graphics/Bitmap;
    move-object v4, p3

    .local v4, "$this$setBitmap$iv$iv":Landroid/graphics/Paint;
    move-object v5, v1

    .local v5, "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v6, 0x0

    .line 147
    .restart local v6    # "$i$f$setBitmap":I
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v3, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v7, Landroid/graphics/Shader;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    invoke-virtual {v7, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 149
    nop

    .line 146
    .end local v3    # "bitmap$iv$iv":Landroid/graphics/Bitmap;
    .end local v4    # "$this$setBitmap$iv$iv":Landroid/graphics/Paint;
    .end local v5    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v6    # "$i$f$setBitmap":I
    move-object v3, v4

    .local v3, "paint$iv$iv":Landroid/graphics/Paint;
    move-object v4, v1

    .local v4, "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v5, 0x0

    .line 150
    .local v5, "$i$f$paintRenderCommand":I
    new-instance v6, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v6, p2, v3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 152
    nop

    .line 153
    .end local v3    # "paint$iv$iv":Landroid/graphics/Paint;
    .end local v4    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v5    # "$i$f$paintRenderCommand":I
    :goto_0
    nop

    .end local v0    # "$this$createRenderCommand$iv":Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;
    .end local v1    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v2    # "$i$f$createRenderCommand":I
    goto :goto_1

    .line 36
    :cond_3
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;

    .local v0, "$this$createRenderCommand$iv":Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;
    move-object v1, p0

    .restart local v1    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v2, 0x0

    .line 154
    .restart local v2    # "$i$f$createRenderCommand":I
    sget-object v3, Lcom/facebook/fresco/vito/renderer/util/ColorUtils;->Companion:Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->getColorInt()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;->multiplyColorAlpha(II)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    move-object v3, v1

    .local v3, "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v4, 0x0

    .line 156
    .local v4, "$i$f$paintRenderCommand":I
    new-instance v5, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v5, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 158
    nop

    .line 155
    .end local v3    # "this_$iv$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v4    # "$i$f$paintRenderCommand":I
    nop

    .end local v0    # "$this$createRenderCommand$iv":Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;
    .end local v1    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v2    # "$i$f$createRenderCommand":I
    goto :goto_1

    .line 37
    :cond_4
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    .local v0, "$this$createRenderCommand$iv":Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;
    move-object v1, p0

    .restart local v1    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v2, 0x0

    .line 159
    .restart local v2    # "$i$f$createRenderCommand":I
    nop

    .line 160
    instance-of v3, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {v3, v0, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    .line 161
    :cond_5
    new-instance v3, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {v3, v0, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 34
    .end local v0    # "$this$createRenderCommand$iv":Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;
    .end local v1    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v2    # "$i$f$createRenderCommand":I
    :goto_1
    return-object v6

    .line 161
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 8
    .param p1, "$this$createRenderCommand"    # Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;
    .param p2, "shape"    # Lcom/facebook/fresco/vito/renderer/Shape;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "imageTransformation"    # Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    .local v0, "$i$f$createRenderCommand":I
    nop

    .line 47
    instance-of v1, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v2, p0

    .local v2, "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v3, 0x0

    .line 162
    .local v3, "$i$f$bitmapRenderCommand":I
    new-instance v4, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v4, p4, v1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 165
    nop

    .end local v1    # "bitmap$iv":Landroid/graphics/Bitmap;
    .end local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v3    # "$i$f$bitmapRenderCommand":I
    goto :goto_0

    .line 48
    :cond_0
    instance-of v1, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v2, p0

    .restart local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    move-object v3, p3

    .local v3, "$this$setBitmap$iv":Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 166
    .local v4, "$i$f$setBitmap":I
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v5, Landroid/graphics/Shader;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 168
    nop

    .line 50
    .end local v1    # "bitmap$iv":Landroid/graphics/Bitmap;
    .end local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v3    # "$this$setBitmap$iv":Landroid/graphics/Paint;
    .end local v4    # "$i$f$setBitmap":I
    move-object v1, v3

    .local v1, "paint$iv":Landroid/graphics/Paint;
    .restart local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v3, 0x0

    .line 169
    .local v3, "$i$f$paintRenderCommand":I
    new-instance v4, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v4, p2, v1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 171
    nop

    .end local v1    # "paint$iv":Landroid/graphics/Paint;
    .end local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v3    # "$i$f$paintRenderCommand":I
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v2, p0

    .restart local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$f$bitmapRenderCommand":I
    new-instance v4, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v4, p4, v1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 175
    nop

    .end local v1    # "bitmap$iv":Landroid/graphics/Bitmap;
    .end local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v3    # "$i$f$bitmapRenderCommand":I
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap$iv":Landroid/graphics/Bitmap;
    move-object v2, p0

    .restart local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    move-object v3, p3

    .local v3, "$this$setBitmap$iv":Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 176
    .restart local v4    # "$i$f$setBitmap":I
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v5, Landroid/graphics/Shader;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 177
    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 178
    nop

    .line 55
    .end local v1    # "bitmap$iv":Landroid/graphics/Bitmap;
    .end local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v3    # "$this$setBitmap$iv":Landroid/graphics/Paint;
    .end local v4    # "$i$f$setBitmap":I
    move-object v1, v3

    .local v1, "paint$iv":Landroid/graphics/Paint;
    .restart local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v3, 0x0

    .line 179
    .local v3, "$i$f$paintRenderCommand":I
    new-instance v4, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v4, p2, v1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 181
    nop

    .line 57
    .end local v1    # "paint$iv":Landroid/graphics/Paint;
    .end local v2    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v3    # "$i$f$paintRenderCommand":I
    :goto_0
    return-object v4
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;
    .locals 4
    .param p1, "$this$createRenderCommand"    # Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;
    .param p2, "shape"    # Lcom/facebook/fresco/vito/renderer/Shape;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$createRenderCommand":I
    sget-object v1, Lcom/facebook/fresco/vito/renderer/util/ColorUtils;->Companion:Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->getColorInt()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;->multiplyColorAlpha(II)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    const/4 v2, 0x0

    .line 202
    .local v2, "$i$f$paintRenderCommand":I
    new-instance v3, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v3, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 204
    nop

    .line 62
    .end local v1    # "this_$iv":Lcom/facebook/fresco/vito/renderer/ImageRenderer;
    .end local v2    # "$i$f$paintRenderCommand":I
    return-object v3
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p1, "$this$createRenderCommand"    # Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;
    .param p2, "shape"    # Lcom/facebook/fresco/vito/renderer/Shape;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "imageTransformation"    # Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    .local v0, "$i$f$createRenderCommand":I
    nop

    .line 73
    instance-of v1, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    return-object v1

    .line 91
    :cond_0
    new-instance v1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {v1, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    return-object v1
.end method

.method public final paintRenderCommand(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p1, "shape"    # Lcom/facebook/fresco/vito/renderer/Shape;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 112
    .local v0, "$i$f$paintRenderCommand":I
    new-instance v1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v1, p1, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 114
    return-object v1
.end method

.method public final setBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Paint;
    .locals 4
    .param p1, "$this$setBitmap"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "shaderTransformation"    # Landroid/graphics/Matrix;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    .local v0, "$i$f$setBitmap":I
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p2, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 122
    return-object p1
.end method
