.class public final Lcom/canhub/cropper/CropOverlayView$Companion;
.super Ljava/lang/Object;
.source "CropOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/canhub/cropper/CropOverlayView$Companion;",
        "",
        "()V",
        "getNewPaint",
        "Landroid/graphics/Paint;",
        "color",
        "",
        "getNewPaintOrNull",
        "thickness",
        "",
        "getNewPaintWithFill",
        "getTextPaint",
        "options",
        "Lcom/canhub/cropper/CropImageOptions;",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNewPaint(Lcom/canhub/cropper/CropOverlayView$Companion;I)Landroid/graphics/Paint;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/CropOverlayView$Companion;
    .param p1, "color"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/CropOverlayView$Companion;
    .param p1, "thickness"    # F
    .param p2, "color"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getNewPaintWithFill(Lcom/canhub/cropper/CropOverlayView$Companion;I)Landroid/graphics/Paint;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/CropOverlayView$Companion;
    .param p1, "color"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaintWithFill(I)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTextPaint(Lcom/canhub/cropper/CropOverlayView$Companion;Lcom/canhub/cropper/CropImageOptions;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/CropOverlayView$Companion;
    .param p1, "options"    # Lcom/canhub/cropper/CropImageOptions;

    .line 35
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView$Companion;->getTextPaint(Lcom/canhub/cropper/CropImageOptions;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private final getNewPaint(I)Landroid/graphics/Paint;
    .locals 3
    .param p1, "color"    # I

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v0

    .local v1, "$this$getNewPaint_u24lambda_u2d1":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-apply-CropOverlayView$Companion$getNewPaint$1":I
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    nop

    .line 49
    .end local v1    # "$this$getNewPaint_u24lambda_u2d1":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-CropOverlayView$Companion$getNewPaint$1":I
    nop

    .line 51
    return-object v0
.end method

.method private final getNewPaintOrNull(FI)Landroid/graphics/Paint;
    .locals 2
    .param p1, "thickness"    # F
    .param p2, "color"    # I

    .line 55
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .local v0, "borderPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    nop

    .end local v0    # "borderPaint":Landroid/graphics/Paint;
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getNewPaintWithFill(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .local v0, "borderPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    return-object v0
.end method

.method private final getTextPaint(Lcom/canhub/cropper/CropImageOptions;)Landroid/graphics/Paint;
    .locals 4
    .param p1, "options"    # Lcom/canhub/cropper/CropImageOptions;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v0

    .local v1, "$this$getTextPaint_u24lambda_u2d0":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 41
    .local v2, "$i$a$-apply-CropOverlayView$Companion$getTextPaint$1":I
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    nop

    .line 40
    .end local v1    # "$this$getTextPaint_u24lambda_u2d0":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-CropOverlayView$Companion$getTextPaint$1":I
    nop

    .line 46
    return-object v0
.end method
