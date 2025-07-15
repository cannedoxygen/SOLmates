.class public final Lcom/canhub/cropper/CropWindowHandler;
.super Ljava/lang/Object;
.source "CropWindowHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropWindowHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0007J\u0006\u0010\u0019\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\u0007J\u0006\u0010\u001b\u001a\u00020\u0007J0\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0017J\"\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0017H\u0002J\u0006\u0010&\u001a\u00020\u0004J*\u0010\'\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0017H\u0002J*\u0010(\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0017H\u0002J*\u0010)\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0017H\u0002J\u0006\u0010*\u001a\u00020\u0007J\u0006\u0010+\u001a\u00020\u0007J8\u0010,\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0002J0\u00101\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002J8\u00104\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u00106\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002J8\u00107\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002J&\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u0007J\u000e\u0010@\u001a\u00020;2\u0006\u0010A\u001a\u00020BJ\u0016\u0010C\u001a\u00020;2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020EJ\u0016\u0010G\u001a\u00020;2\u0006\u0010H\u001a\u00020E2\u0006\u0010I\u001a\u00020EJ\u000e\u0010J\u001a\u00020;2\u0006\u0010K\u001a\u00020\u0004J\u0006\u0010L\u001a\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowHandler;",
        "",
        "()V",
        "mEdges",
        "Landroid/graphics/RectF;",
        "mGetEdges",
        "mMaxCropResultHeight",
        "",
        "mMaxCropResultWidth",
        "mMaxCropWindowHeight",
        "mMaxCropWindowWidth",
        "mMinCropResultHeight",
        "mMinCropResultWidth",
        "mMinCropWindowHeight",
        "mMinCropWindowWidth",
        "mScaleFactorHeight",
        "mScaleFactorWidth",
        "distance",
        "x1",
        "y1",
        "x2",
        "y2",
        "focusCenter",
        "",
        "getMaxCropHeight",
        "getMaxCropWidth",
        "getMinCropHeight",
        "getMinCropWidth",
        "getMoveHandler",
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "x",
        "y",
        "targetRadius",
        "cropShape",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "isCenterMoveEnabled",
        "getOvalPressedMoveType",
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        "getRect",
        "getRectangleHorizontalOnlyPressedMoveType",
        "getRectanglePressedMoveType",
        "getRectangleVerticalOnlyPressedMoveType",
        "getScaleFactorHeight",
        "getScaleFactorWidth",
        "isInCenterTargetZone",
        "left",
        "top",
        "right",
        "bottom",
        "isInCornerTargetZone",
        "handleX",
        "handleY",
        "isInHorizontalTargetZone",
        "handleXStart",
        "handleXEnd",
        "isInVerticalTargetZone",
        "handleYStart",
        "handleYEnd",
        "setCropWindowLimits",
        "",
        "maxWidth",
        "maxHeight",
        "scaleFactorWidth",
        "scaleFactorHeight",
        "setInitialAttributeValues",
        "options",
        "Lcom/canhub/cropper/CropImageOptions;",
        "setMaxCropResultSize",
        "maxCropResultWidth",
        "",
        "maxCropResultHeight",
        "setMinCropResultSize",
        "minCropResultWidth",
        "minCropResultHeight",
        "setRect",
        "rect",
        "showGuidelines",
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
.field private final mEdges:Landroid/graphics/RectF;

.field private final mGetEdges:Landroid/graphics/RectF;

.field private mMaxCropResultHeight:F

.field private mMaxCropResultWidth:F

.field private mMaxCropWindowHeight:F

.field private mMaxCropWindowWidth:F

.field private mMinCropResultHeight:F

.field private mMinCropResultWidth:F

.field private mMinCropWindowHeight:F

.field private mMinCropWindowWidth:F

.field private mScaleFactorHeight:F

.field private mScaleFactorWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 64
    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorHeight:F

    .line 12
    return-void
.end method

.method private final distance(FFFF)F
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 399
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p2, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private final focusCenter()Z
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/canhub/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final getOvalPressedMoveType(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isCenterMoveEnabled"    # Z

    .line 264
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x6

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 265
    .local v0, "cellLength":F
    iget-object v2, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    .line 266
    .local v2, "leftCenter":F
    iget-object v3, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x5

    int-to-float v4, v4

    mul-float v5, v4, v0

    add-float/2addr v3, v5

    .line 267
    .local v3, "rightCenter":F
    iget-object v5, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v1

    .line 268
    .local v5, "cellHeight":F
    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v5

    .line 269
    .local v1, "topCenter":F
    iget-object v6, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    add-float/2addr v6, v4

    .line 270
    .local v6, "bottomCenter":F
    nop

    .line 271
    cmpg-float v4, p1, v2

    if-gez v4, :cond_2

    .line 272
    nop

    .line 273
    cmpg-float v4, p2, v1

    if-gez v4, :cond_0

    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 274
    :cond_0
    cmpg-float v4, p2, v6

    if-gez v4, :cond_1

    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 275
    :cond_1
    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 278
    :cond_2
    cmpg-float v4, p1, v3

    if-gez v4, :cond_6

    .line 279
    nop

    .line 280
    cmpg-float v4, p2, v1

    if-gez v4, :cond_3

    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 281
    :cond_3
    cmpg-float v4, p2, v6

    if-gez v4, :cond_5

    if-eqz p3, :cond_4

    .line 282
    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 283
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 284
    :cond_5
    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 288
    :cond_6
    nop

    .line 289
    cmpg-float v4, p2, v1

    if-gez v4, :cond_7

    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 290
    :cond_7
    cmpg-float v4, p2, v6

    if-gez v4, :cond_8

    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 291
    :cond_8
    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    .line 270
    :goto_0
    return-object v4
.end method

.method private final getRectangleHorizontalOnlyPressedMoveType(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetRadius"    # F
    .param p4, "isCenterMoveEnabled"    # Z

    .line 352
    nop

    .line 353
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/canhub/cropper/CropWindowHandler;->distance(FFFF)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    .line 354
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/canhub/cropper/CropWindowHandler;->distance(FFFF)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_1

    .line 357
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 359
    :cond_1
    if-eqz p4, :cond_2

    .line 360
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 363
    :cond_2
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0
.end method

.method private final getRectanglePressedMoveType(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetRadius"    # F
    .param p4, "isCenterMoveEnabled"    # Z

    .line 199
    nop

    .line 200
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/canhub/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 212
    :cond_3
    if-eqz p4, :cond_4

    .line 213
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    invoke-direct {p0}, Lcom/canhub/cropper/CropWindowHandler;->focusCenter()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 227
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 229
    :cond_8
    if-eqz p4, :cond_9

    .line 230
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    invoke-direct {p0}, Lcom/canhub/cropper/CropWindowHandler;->focusCenter()Z

    move-result v0

    if-nez v0, :cond_9

    .line 232
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 234
    :cond_9
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0
.end method

.method private final getRectangleVerticalOnlyPressedMoveType(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetRadius"    # F
    .param p4, "isCenterMoveEnabled"    # Z

    .line 317
    nop

    .line 318
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/canhub/cropper/CropWindowHandler;->distance(FFFF)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    .line 319
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/canhub/cropper/CropWindowHandler;->distance(FFFF)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_1

    .line 322
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 324
    :cond_1
    if-eqz p4, :cond_2

    .line 325
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/canhub/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 328
    :cond_2
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0
.end method

.method private final isInCenterTargetZone(FFFFFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F

    .line 459
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p5

    if-gez v0, :cond_0

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    cmpg-float v0, p2, p6

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isInCornerTargetZone(FFFFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "handleX"    # F
    .param p4, "handleY"    # F
    .param p5, "targetRadius"    # F

    .line 383
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropWindowHandler;->distance(FFFF)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isInHorizontalTargetZone(FFFFFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "handleXStart"    # F
    .param p4, "handleXEnd"    # F
    .param p5, "handleY"    # F
    .param p6, "targetRadius"    # F

    .line 419
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p4

    if-gez v0, :cond_0

    sub-float v0, p2, p5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p6

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isInVerticalTargetZone(FFFFFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "handleX"    # F
    .param p4, "handleYStart"    # F
    .param p5, "handleYEnd"    # F
    .param p6, "targetRadius"    # F

    .line 439
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p6

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    cmpg-float v0, p2, p5

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getMaxCropHeight()F
    .locals 3

    .line 86
    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    return v0
.end method

.method public final getMaxCropWidth()F
    .locals 3

    .line 82
    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    return v0
.end method

.method public final getMinCropHeight()F
    .locals 3

    .line 78
    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropResultHeight:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    return v0
.end method

.method public final getMinCropWidth()F
    .locals 3

    .line 74
    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropResultWidth:F

    iget v2, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    return v0
.end method

.method public final getMoveHandler(FFFLcom/canhub/cropper/CropImageView$CropShape;Z)Lcom/canhub/cropper/CropWindowMoveHandler;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetRadius"    # F
    .param p4, "cropShape"    # Lcom/canhub/cropper/CropImageView$CropShape;
    .param p5, "isCenterMoveEnabled"    # Z

    const-string v0, "cropShape"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/canhub/cropper/CropWindowHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/canhub/cropper/CropWindowHandler;->getRectangleHorizontalOnlyPressedMoveType(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/canhub/cropper/CropWindowHandler;->getRectangleVerticalOnlyPressedMoveType(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-direct {p0, p1, p2, p5}, Lcom/canhub/cropper/CropWindowHandler;->getOvalPressedMoveType(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/canhub/cropper/CropWindowHandler;->getRectanglePressedMoveType(FFFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    .line 169
    :goto_0
    nop

    .line 176
    .local v0, "type":Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/canhub/cropper/CropWindowMoveHandler;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/canhub/cropper/CropWindowMoveHandler;-><init>(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 69
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getScaleFactorHeight()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return v0
.end method

.method public final getScaleFactorWidth()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorWidth:F

    return v0
.end method

.method public final setCropWindowLimits(FFFF)V
    .locals 0
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "scaleFactorWidth"    # F
    .param p4, "scaleFactorHeight"    # F

    .line 122
    iput p1, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    .line 123
    iput p2, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    .line 124
    iput p3, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 125
    iput p4, p0, Lcom/canhub/cropper/CropWindowHandler;->mScaleFactorHeight:F

    .line 126
    return-void
.end method

.method public final setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 1
    .param p1, "options"    # Lcom/canhub/cropper/CropImageOptions;

    const-string/jumbo v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    .line 131
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    .line 132
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropResultWidth:F

    .line 133
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropResultHeight:F

    .line 134
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    .line 135
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    .line 136
    return-void
.end method

.method public final setMaxCropResultSize(II)V
    .locals 1
    .param p1, "maxCropResultWidth"    # I
    .param p2, "maxCropResultHeight"    # I

    .line 108
    int-to-float v0, p1

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    .line 109
    int-to-float v0, p2

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    .line 110
    return-void
.end method

.method public final setMinCropResultSize(II)V
    .locals 1
    .param p1, "minCropResultWidth"    # I
    .param p2, "minCropResultHeight"    # I

    .line 99
    int-to-float v0, p1

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropResultWidth:F

    .line 100
    int-to-float v0, p2

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mMinCropResultHeight:F

    .line 101
    return-void
.end method

.method public final setRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    const-string/jumbo v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 141
    return-void
.end method

.method public final showGuidelines()Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
