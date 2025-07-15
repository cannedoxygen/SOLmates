.class final Lcom/canhub/cropper/CropOverlayView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CropOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScaleListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/canhub/cropper/CropOverlayView$ScaleListener;",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "(Lcom/canhub/cropper/CropOverlayView;)V",
        "onScale",
        "",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
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


# instance fields
.field final synthetic this$0:Lcom/canhub/cropper/CropOverlayView;


# direct methods
.method public constructor <init>(Lcom/canhub/cropper/CropOverlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/canhub/cropper/CropOverlayView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1202
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/canhub/cropper/CropOverlayView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 11
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lcom/canhub/cropper/CropOverlayView;->access$getMCropWindowHandler$p(Lcom/canhub/cropper/CropOverlayView;)Lcom/canhub/cropper/CropWindowHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1207
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 1208
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 1209
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1210
    .local v3, "dY":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v5

    div-float/2addr v5, v4

    .line 1211
    .local v5, "dX":F
    sub-float v4, v2, v3

    .line 1212
    .local v4, "newTop":F
    sub-float v6, v1, v5

    .line 1213
    .local v6, "newLeft":F
    add-float v7, v1, v5

    .line 1214
    .local v7, "newRight":F
    add-float v8, v2, v3

    .line 1216
    .local v8, "newBottom":F
    cmpg-float v9, v6, v7

    if-gez v9, :cond_0

    .line 1217
    cmpg-float v9, v4, v8

    if-gtz v9, :cond_0

    .line 1218
    const/4 v9, 0x0

    cmpl-float v10, v6, v9

    if-ltz v10, :cond_0

    .line 1219
    iget-object v10, p0, Lcom/canhub/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v10}, Lcom/canhub/cropper/CropOverlayView;->access$getMCropWindowHandler$p(Lcom/canhub/cropper/CropOverlayView;)Lcom/canhub/cropper/CropWindowHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v10

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_0

    .line 1220
    cmpl-float v9, v4, v9

    if-ltz v9, :cond_0

    .line 1221
    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v9}, Lcom/canhub/cropper/CropOverlayView;->access$getMCropWindowHandler$p(Lcom/canhub/cropper/CropOverlayView;)Lcom/canhub/cropper/CropWindowHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_0

    .line 1223
    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1224
    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v9}, Lcom/canhub/cropper/CropOverlayView;->access$getMCropWindowHandler$p(Lcom/canhub/cropper/CropOverlayView;)Lcom/canhub/cropper/CropWindowHandler;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 1225
    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v9}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 1227
    :cond_0
    const/4 v9, 0x1

    return v9
.end method
