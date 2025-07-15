.class public final Lcom/canhub/cropper/CropWindowMoveHandler;
.super Ljava/lang/Object;
.source "CropWindowMoveHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropWindowMoveHandler$Type;,
        Lcom/canhub/cropper/CropWindowMoveHandler$Companion;,
        Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001f\u0018\u0000 82\u00020\u0001:\u000289B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJH\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0018\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J@\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u001bH\u0002J\u0018\u0010\"\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J \u0010#\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0007H\u0002JH\u0010$\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u001bH\u0002J\u0018\u0010\'\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J@\u0010(\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J \u0010*\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J\u0018\u0010+\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J \u0010,\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002JN\u0010-\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u0007J@\u00101\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u0007H\u0002JH\u00103\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J@\u00104\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J \u00105\u001a\u00020\u00112\u0006\u00106\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u00107\u001a\u00020\u0007H\u0002R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "",
        "type",
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        "cropWindowHandler",
        "Lcom/canhub/cropper/CropWindowHandler;",
        "touchX",
        "",
        "touchY",
        "(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V",
        "mMaxCropHeight",
        "mMaxCropWidth",
        "mMinCropHeight",
        "mMinCropWidth",
        "mTouchOffset",
        "Landroid/graphics/PointF;",
        "adjustBottom",
        "",
        "rect",
        "Landroid/graphics/RectF;",
        "bottom",
        "bounds",
        "viewHeight",
        "",
        "snapMargin",
        "aspectRatio",
        "leftMoves",
        "",
        "rightMoves",
        "adjustBottomByAspectRatio",
        "adjustLeft",
        "left",
        "topMoves",
        "bottomMoves",
        "adjustLeftByAspectRatio",
        "adjustLeftRightByAspectRatio",
        "adjustRight",
        "right",
        "viewWidth",
        "adjustRightByAspectRatio",
        "adjustTop",
        "top",
        "adjustTopBottomByAspectRatio",
        "adjustTopByAspectRatio",
        "calculateTouchOffset",
        "move",
        "x",
        "y",
        "fixedAspectRatio",
        "moveCenter",
        "snapRadius",
        "moveSizeWithFixedAspectRatio",
        "moveSizeWithFreeAspectRatio",
        "snapEdgesToBounds",
        "edges",
        "margin",
        "Companion",
        "Type",
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


# static fields
.field public static final Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;


# instance fields
.field private final mMaxCropHeight:F

.field private final mMaxCropWidth:F

.field private final mMinCropHeight:F

.field private final mMinCropWidth:F

.field private final mTouchOffset:Landroid/graphics/PointF;

.field private final type:Lcom/canhub/cropper/CropWindowMoveHandler$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V
    .locals 2
    .param p1, "type"    # Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .param p2, "cropWindowHandler"    # Lcom/canhub/cropper/CropWindowHandler;
    .param p3, "touchX"    # F
    .param p4, "touchY"    # F

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropWindowHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->type:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    .line 38
    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    .line 41
    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    .line 44
    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    .line 47
    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    .line 57
    nop

    .line 58
    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/canhub/cropper/CropWindowMoveHandler;->calculateTouchOffset(Landroid/graphics/RectF;FF)V

    .line 59
    nop

    .line 16
    return-void
.end method

.method private final adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bottom"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "viewHeight"    # I
    .param p5, "snapMargin"    # F
    .param p6, "aspectRatio"    # F
    .param p7, "leftMoves"    # Z
    .param p8, "rightMoves"    # Z

    .line 791
    move v0, p2

    .line 792
    .local v0, "newBottom":F
    int-to-float v1, p4

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 793
    int-to-float v1, p4

    int-to-float v2, p4

    sub-float v2, v0, v2

    const v3, 0x3f866666    # 1.05f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    .line 794
    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    int-to-float v3, p4

    sub-float v3, v0, v3

    const v4, 0x3f8ccccd    # 1.1f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 796
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 798
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    cmpg-float v1, v1, p5

    if-gez v1, :cond_2

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 800
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    add-float v0, v1, v2

    .line 802
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    add-float v0, v1, v2

    .line 803
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    cmpg-float v1, v1, p5

    if-gez v1, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 805
    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, p6, v1

    if-lez v1, :cond_a

    .line 806
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, v1

    mul-float/2addr v1, p6

    .line 808
    .local v1, "newWidth":F
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 809
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 810
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v2, p6

    .line 813
    :cond_6
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 814
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 815
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v2, p6

    .line 818
    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 820
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 819
    move v0, v2

    goto :goto_0

    .line 823
    :cond_8
    if-eqz p7, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 825
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 824
    move v0, v2

    .line 826
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v2, p6

    .line 829
    :cond_9
    if-eqz p8, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 830
    nop

    .line 832
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 830
    move v0, v2

    .line 837
    .end local v1    # "newWidth":F
    :cond_a
    :goto_0
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 838
    return-void
.end method

.method private final adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .line 869
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 870
    return-void
.end method

.method private final adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "left"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "snapMargin"    # F
    .param p5, "aspectRatio"    # F
    .param p6, "topMoves"    # Z
    .param p7, "bottomMoves"    # Z

    .line 586
    move v0, p2

    .line 587
    .local v0, "newLeft":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 588
    const v2, 0x3f866666    # 1.05f

    div-float/2addr v0, v2

    .line 589
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const v4, 0x3f8ccccd    # 1.1f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 591
    :cond_0
    iget v2, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 593
    :cond_1
    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    iget v0, p3, Landroid/graphics/RectF;->left:F

    .line 595
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    sub-float v0, v2, v3

    .line 597
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    sub-float v0, v2, v3

    .line 599
    :cond_4
    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->left:F

    .line 601
    :cond_5
    cmpl-float v1, p5, v1

    if-lez v1, :cond_a

    .line 602
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    div-float/2addr v1, p5

    .line 604
    .local v1, "newHeight":F
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 605
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 606
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    div-float v1, v2, p5

    .line 609
    :cond_6
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 610
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 611
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    div-float v1, v2, p5

    .line 614
    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 615
    nop

    .line 617
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 615
    move v0, v2

    goto :goto_0

    .line 621
    :cond_8
    if-eqz p6, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 623
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 622
    move v0, v2

    .line 624
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    div-float v1, v2, p5

    .line 627
    :cond_9
    if-eqz p7, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 628
    nop

    .line 630
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 628
    move v0, v2

    .line 635
    .end local v1    # "newHeight":F
    :cond_a
    :goto_0
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 636
    return-void
.end method

.method private final adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .line 845
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 846
    return-void
.end method

.method private final adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "aspectRatio"    # F

    .line 877
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 878
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 879
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 880
    :cond_1
    return-void
.end method

.method private final adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "right"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "viewWidth"    # I
    .param p5, "snapMargin"    # F
    .param p6, "aspectRatio"    # F
    .param p7, "topMoves"    # Z
    .param p8, "bottomMoves"    # Z

    .line 657
    move v0, p2

    .line 658
    .local v0, "newRight":F
    int-to-float v1, p4

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 659
    int-to-float v1, p4

    int-to-float v2, p4

    sub-float v2, v0, v2

    const v3, 0x3f866666    # 1.05f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    .line 660
    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    int-to-float v3, p4

    sub-float v3, v0, v3

    const v4, 0x3f8ccccd    # 1.1f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 662
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 664
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    cmpg-float v1, v1, p5

    if-gez v1, :cond_2

    iget v0, p3, Landroid/graphics/RectF;->right:F

    .line 666
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    add-float v0, v1, v2

    .line 668
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    add-float v0, v1, v2

    .line 670
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    cmpg-float v1, v1, p5

    if-gez v1, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->right:F

    .line 672
    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, p6, v1

    if-lez v1, :cond_a

    .line 673
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v1

    div-float/2addr v1, p6

    .line 675
    .local v1, "newHeight":F
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 676
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 677
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, v2

    div-float v1, v2, p6

    .line 680
    :cond_6
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 681
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 682
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, v2

    div-float v1, v2, p6

    .line 685
    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 687
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 686
    move v0, v2

    goto :goto_0

    .line 690
    :cond_8
    if-eqz p7, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 692
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 691
    move v0, v2

    .line 693
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, v2

    div-float v1, v2, p6

    .line 696
    :cond_9
    if-eqz p8, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 697
    nop

    .line 699
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 697
    move v0, v2

    .line 704
    .end local v1    # "newHeight":F
    :cond_a
    :goto_0
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 705
    return-void
.end method

.method private final adjustRightByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .line 861
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 862
    return-void
.end method

.method private final adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "top"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "snapMargin"    # F
    .param p5, "aspectRatio"    # F
    .param p6, "leftMoves"    # Z
    .param p7, "rightMoves"    # Z

    .line 724
    move v0, p2

    .line 725
    .local v0, "newTop":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 726
    const v2, 0x3f866666    # 1.05f

    div-float/2addr v0, v2

    .line 727
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    const v4, 0x3f8ccccd    # 1.1f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 729
    :cond_0
    iget v2, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 731
    :cond_1
    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    iget v0, p3, Landroid/graphics/RectF;->top:F

    .line 733
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    sub-float v0, v2, v3

    .line 735
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    sub-float v0, v2, v3

    .line 737
    :cond_4
    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->top:F

    .line 739
    :cond_5
    cmpl-float v1, p5, v1

    if-lez v1, :cond_a

    .line 740
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p5

    .line 742
    .local v1, "newWidth":F
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 743
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 744
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    mul-float v1, v2, p5

    .line 747
    :cond_6
    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 748
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 749
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    mul-float v1, v2, p5

    .line 752
    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 753
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 756
    :cond_8
    if-eqz p6, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 757
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 758
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    mul-float v1, v2, p5

    .line 761
    :cond_9
    if-eqz p7, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 762
    nop

    .line 764
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 762
    move v0, v2

    .line 769
    .end local v1    # "newWidth":F
    :cond_a
    :goto_0
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 770
    return-void
.end method

.method private final adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "aspectRatio"    # F

    .line 887
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 888
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 889
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 890
    :cond_1
    return-void
.end method

.method private final adjustTopByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .line 853
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 854
    return-void
.end method

.method private final calculateTouchOffset(Landroid/graphics/RectF;FF)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "touchOffsetX":F
    const/4 v1, 0x0

    .line 144
    .local v1, "touchOffsetY":F
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->type:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v3, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v0, v2, p2

    .line 179
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v1, v2, p3

    goto :goto_0

    .line 174
    :pswitch_1
    const/4 v0, 0x0

    .line 175
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, p3

    goto :goto_0

    .line 170
    :pswitch_2
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, p2

    .line 171
    const/4 v1, 0x0

    goto :goto_0

    .line 166
    :pswitch_3
    const/4 v0, 0x0

    .line 167
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, p3

    goto :goto_0

    .line 162
    :pswitch_4
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, p2

    .line 163
    const/4 v1, 0x0

    goto :goto_0

    .line 158
    :pswitch_5
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, p2

    .line 159
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, p3

    goto :goto_0

    .line 154
    :pswitch_6
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, p2

    .line 155
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, p3

    goto :goto_0

    .line 150
    :pswitch_7
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, p2

    .line 151
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, p3

    goto :goto_0

    .line 146
    :pswitch_8
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, p2

    .line 147
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, p3

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 183
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 184
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final moveCenter(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapRadius"    # F

    .line 196
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v0, p2, v0

    .line 197
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v1, p3, v1

    .line 198
    .local v1, "dy":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    const/4 v4, 0x2

    const v5, 0x3f866666    # 1.05f

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    int-to-float v6, p5

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget v6, p4, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iget v6, p4, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 199
    :cond_0
    div-float/2addr v0, v5

    .line 200
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    int-to-float v7, v4

    div-float v7, v0, v7

    sub-float/2addr v6, v7

    iput v6, v2, Landroid/graphics/PointF;->x:F

    .line 202
    :cond_1
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    int-to-float v3, p6

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iget v3, p4, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iget v3, p4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 203
    :cond_2
    div-float/2addr v1, v5

    .line 204
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    int-to-float v4, v4

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 206
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 207
    invoke-direct {p0, p1, p4, p7}, Lcom/canhub/cropper/CropWindowMoveHandler;->snapEdgesToBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 208
    return-void
.end method

.method private final moveSizeWithFixedAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V
    .locals 15
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapMargin"    # F
    .param p8, "aspectRatio"    # F

    .line 368
    move-object v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p8

    iget-object v0, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->type:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 537
    :pswitch_0
    nop

    .line 538
    nop

    .line 539
    nop

    .line 540
    nop

    .line 541
    nop

    .line 542
    nop

    .line 543
    nop

    .line 544
    nop

    .line 545
    nop

    .line 537
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 547
    nop

    .line 548
    nop

    .line 549
    nop

    .line 550
    nop

    .line 547
    invoke-direct {p0, v10, v13, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 520
    :pswitch_1
    nop

    .line 521
    nop

    .line 522
    nop

    .line 523
    nop

    .line 524
    nop

    .line 525
    nop

    .line 526
    nop

    .line 527
    nop

    .line 528
    nop

    .line 520
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 530
    nop

    .line 531
    nop

    .line 532
    nop

    .line 533
    nop

    .line 530
    invoke-direct {p0, v10, v13, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 504
    :pswitch_2
    nop

    .line 505
    nop

    .line 506
    nop

    .line 507
    nop

    .line 508
    nop

    .line 509
    nop

    .line 510
    nop

    .line 511
    nop

    .line 504
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 513
    nop

    .line 514
    nop

    .line 515
    nop

    .line 516
    nop

    .line 513
    invoke-direct {p0, v10, v13, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 488
    :pswitch_3
    nop

    .line 489
    nop

    .line 490
    nop

    .line 491
    nop

    .line 492
    nop

    .line 493
    nop

    .line 494
    nop

    .line 495
    nop

    .line 488
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 497
    nop

    .line 498
    nop

    .line 499
    nop

    .line 500
    nop

    .line 497
    invoke-direct {p0, v10, v13, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 456
    :pswitch_4
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    .line 457
    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 458
    iget v2, v10, Landroid/graphics/RectF;->top:F

    .line 459
    nop

    .line 460
    nop

    .line 456
    invoke-static {v0, v1, v2, v11, v12}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->access$calculateAspectRatio(Lcom/canhub/cropper/CropWindowMoveHandler$Companion;FFFF)F

    move-result v0

    .line 461
    cmpg-float v0, v0, v14

    if-gez v0, :cond_0

    .line 463
    nop

    .line 464
    nop

    .line 465
    nop

    .line 466
    nop

    .line 467
    nop

    .line 468
    nop

    .line 469
    nop

    .line 470
    nop

    .line 471
    nop

    .line 463
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 473
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRightByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 475
    :cond_0
    nop

    .line 476
    nop

    .line 477
    nop

    .line 478
    nop

    .line 479
    nop

    .line 480
    nop

    .line 481
    nop

    .line 482
    nop

    .line 483
    nop

    .line 475
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 485
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 425
    :pswitch_5
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    .line 426
    nop

    .line 427
    iget v1, v10, Landroid/graphics/RectF;->top:F

    .line 428
    iget v2, v10, Landroid/graphics/RectF;->right:F

    .line 429
    nop

    .line 425
    invoke-static {v0, v11, v1, v2, v12}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->access$calculateAspectRatio(Lcom/canhub/cropper/CropWindowMoveHandler$Companion;FFFF)F

    move-result v0

    .line 430
    cmpg-float v0, v0, v14

    if-gez v0, :cond_1

    .line 432
    nop

    .line 433
    nop

    .line 434
    nop

    .line 435
    nop

    .line 436
    nop

    .line 437
    nop

    .line 438
    nop

    .line 439
    nop

    .line 440
    nop

    .line 432
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 442
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 444
    :cond_1
    nop

    .line 445
    nop

    .line 446
    nop

    .line 447
    nop

    .line 448
    nop

    .line 449
    nop

    .line 450
    nop

    .line 451
    nop

    .line 444
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 453
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 394
    :pswitch_6
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    .line 395
    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 396
    nop

    .line 397
    nop

    .line 398
    iget v2, v10, Landroid/graphics/RectF;->bottom:F

    .line 394
    invoke-static {v0, v1, v12, v11, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->access$calculateAspectRatio(Lcom/canhub/cropper/CropWindowMoveHandler$Companion;FFFF)F

    move-result v0

    .line 399
    cmpg-float v0, v0, v14

    if-gez v0, :cond_2

    .line 401
    nop

    .line 402
    nop

    .line 403
    nop

    .line 404
    nop

    .line 405
    nop

    .line 406
    nop

    .line 407
    nop

    .line 408
    nop

    .line 401
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 410
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRightByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 412
    :cond_2
    nop

    .line 413
    nop

    .line 414
    nop

    .line 415
    nop

    .line 416
    nop

    .line 417
    nop

    .line 418
    nop

    .line 419
    nop

    .line 420
    nop

    .line 412
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 422
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTopByAspectRatio(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 370
    :pswitch_7
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->Companion:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    iget v1, v10, Landroid/graphics/RectF;->right:F

    iget v2, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v11, v12, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->access$calculateAspectRatio(Lcom/canhub/cropper/CropWindowMoveHandler$Companion;FFFF)F

    move-result v0

    cmpg-float v0, v0, v14

    if-gez v0, :cond_3

    .line 371
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 377
    nop

    .line 378
    nop

    .line 371
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 380
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 382
    :cond_3
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 386
    nop

    .line 387
    nop

    .line 388
    nop

    .line 389
    nop

    .line 382
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 391
    invoke-direct {p0, v10, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTopByAspectRatio(Landroid/graphics/RectF;F)V

    .line 556
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final moveSizeWithFreeAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 10
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapMargin"    # F

    .line 224
    move-object v9, p0

    iget-object v0, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->type:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 337
    :pswitch_0
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    nop

    .line 341
    nop

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    nop

    .line 337
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_0

    .line 327
    :pswitch_1
    nop

    .line 328
    nop

    .line 329
    nop

    .line 330
    nop

    .line 331
    nop

    .line 332
    nop

    .line 333
    nop

    .line 334
    nop

    .line 335
    nop

    .line 327
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_0

    .line 318
    :pswitch_2
    nop

    .line 319
    nop

    .line 320
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    nop

    .line 324
    nop

    .line 325
    nop

    .line 318
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_0

    .line 309
    :pswitch_3
    nop

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 309
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_0

    .line 288
    :pswitch_4
    nop

    .line 289
    nop

    .line 290
    nop

    .line 291
    nop

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    nop

    .line 296
    nop

    .line 288
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 298
    nop

    .line 299
    nop

    .line 300
    nop

    .line 301
    nop

    .line 302
    nop

    .line 303
    nop

    .line 304
    nop

    .line 305
    nop

    .line 306
    nop

    .line 298
    move v2, p2

    move v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_0

    .line 267
    :pswitch_5
    nop

    .line 268
    nop

    .line 269
    nop

    .line 270
    nop

    .line 271
    nop

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 267
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 277
    nop

    .line 278
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    nop

    .line 277
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_0

    .line 246
    :pswitch_6
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 246
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 255
    nop

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 263
    nop

    .line 255
    const/4 v6, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_0

    .line 226
    :pswitch_7
    nop

    .line 227
    nop

    .line 228
    nop

    .line 229
    nop

    .line 230
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 226
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 235
    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 350
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final snapEdgesToBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "edges"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "margin"    # F

    .line 560
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p3

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 562
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 564
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 566
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 567
    :cond_3
    return-void
.end method


# virtual methods
.method public final move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V
    .locals 14
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapMargin"    # F
    .param p8, "fixedAspectRatio"    # Z
    .param p9, "aspectRatio"    # F

    move-object v9, p0

    const-string/jumbo v0, "rect"

    move-object v10, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float v12, p2, v0

    .line 99
    .local v12, "adjX":F
    iget-object v0, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float v13, p3, v0

    .line 100
    .local v13, "adjY":F
    iget-object v0, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->type:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    if-ne v0, v1, :cond_0

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 101
    move-object v0, p0

    move-object v1, p1

    move v2, v12

    move v3, v13

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->moveCenter(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    goto :goto_0

    .line 111
    :cond_0
    if-eqz p8, :cond_1

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 112
    move-object v0, p0

    move-object v1, p1

    move v2, v12

    move v3, v13

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropWindowMoveHandler;->moveSizeWithFixedAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V

    goto :goto_0

    .line 123
    :cond_1
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 123
    move-object v0, p0

    move-object v1, p1

    move v2, v12

    move v3, v13

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/CropWindowMoveHandler;->moveSizeWithFreeAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    .line 134
    :goto_0
    return-void
.end method
