.class public final Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;
.super Ljava/lang/Object;
.source "CanvasTransformationHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;",
        "",
        "canvasTransformation",
        "Lcom/facebook/fresco/vito/renderer/CanvasTransformation;",
        "(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;)V",
        "getCanvasTransformation",
        "()Lcom/facebook/fresco/vito/renderer/CanvasTransformation;",
        "setCanvasTransformation",
        "drawMatrix",
        "Landroid/graphics/Matrix;",
        "tempMatrix",
        "configure",
        "",
        "bounds",
        "Landroid/graphics/Rect;",
        "childWidth",
        "",
        "childHeight",
        "getMatrix",
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


# instance fields
.field private canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

.field private drawMatrix:Landroid/graphics/Matrix;

.field private final tempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;-><init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;)V
    .locals 1
    .param p1, "canvasTransformation"    # Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->tempMatrix:Landroid/graphics/Matrix;

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;-><init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final configure(Landroid/graphics/Rect;II)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "childWidth"    # I
    .param p3, "childHeight"    # I

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    if-lez p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    nop

    .line 28
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->tempMatrix:Landroid/graphics/Matrix;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/CanvasTransformation;->calculateTransformation(Landroid/graphics/Matrix;Landroid/graphics/Rect;II)Landroid/graphics/Matrix;

    move-result-object v0

    .line 27
    :cond_1
    iput-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->drawMatrix:Landroid/graphics/Matrix;

    .line 29
    return-void

    .line 24
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->drawMatrix:Landroid/graphics/Matrix;

    .line 25
    return-void
.end method

.method public final getCanvasTransformation()Lcom/facebook/fresco/vito/renderer/CanvasTransformation;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    return-object v0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->drawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final setCanvasTransformation(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    .line 13
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    return-void
.end method
