.class public Lcom/horcrux/svg/SvgView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SvgView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundView;
.implements Lcom/facebook/react/uimanager/ReactCompoundViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/SvgView$Events;
    }
.end annotation


# instance fields
.field private mAlign:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mCurrentColor:I

.field private final mDefinedBrushes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/Brush;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedClipPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedMarkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedMasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedTemplates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field final mInvViewBoxMatrix:Landroid/graphics/Matrix;

.field private mInvertible:Z

.field private mMeetOrSlice:I

.field private mMinX:F

.field private mMinY:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRemovalTransitionStarted:Z

.field private mRendered:Z

.field private mResponsible:Z

.field private final mScale:F

.field private mVbHeight:F

.field private mVbWidth:F

.field private mbbHeight:Lcom/horcrux/svg/SVGLength;

.field private mbbWidth:Lcom/horcrux/svg/SVGLength;

.field private toDataUrlTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mDefinedClipPaths:Ljava/util/Map;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mDefinedTemplates:Ljava/util/Map;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mDefinedMarkers:Ljava/util/Map;

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mDefinedMasks:Ljava/util/Map;

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mDefinedFilters:Ljava/util/Map;

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mDefinedBrushes:Ljava/util/Map;

    .line 180
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    .line 190
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mInvViewBoxMatrix:Landroid/graphics/Matrix;

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/horcrux/svg/SvgView;->mInvertible:Z

    .line 192
    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 193
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/horcrux/svg/SvgView;->mCurrentColor:I

    .line 67
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    .line 68
    iget-object v1, p0, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x181

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 69
    iget-object v1, p0, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 72
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/SvgView;->setWillNotDraw(Z)V

    .line 73
    return-void
.end method

.method private clearChildCache()V
    .locals 3

    .line 200
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 205
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, "node":Landroid/view/View;
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_1

    .line 207
    move-object v2, v1

    check-cast v2, Lcom/horcrux/svg/VirtualView;

    .line 208
    .local v2, "n":Lcom/horcrux/svg/VirtualView;
    invoke-virtual {v2}, Lcom/horcrux/svg/VirtualView;->clearChildCache()V

    .line 204
    .end local v1    # "node":Landroid/view/View;
    .end local v2    # "n":Lcom/horcrux/svg/VirtualView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private drawOutput()Landroid/graphics/Bitmap;
    .locals 7

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 269
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 270
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 271
    .local v2, "height":F
    nop

    .line 272
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_1

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_1

    float-to-double v3, v1

    .line 276
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4045000000000000L    # 42.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 277
    .local v0, "invalid":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 278
    const/4 v3, 0x0

    return-object v3

    .line 280
    :cond_2
    float-to-int v3, v1

    float-to-int v4, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 281
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iput-object v3, p0, Lcom/horcrux/svg/SvgView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 282
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 283
    return-object v3
.end method

.method private getViewBox()Landroid/graphics/RectF;
    .locals 6

    .line 347
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/horcrux/svg/SvgView;->mMinX:F

    iget v2, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/horcrux/svg/SvgView;->mMinY:F

    iget v3, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/horcrux/svg/SvgView;->mMinX:F

    iget v4, p0, Lcom/horcrux/svg/SvgView;->mVbWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/horcrux/svg/SvgView;->mMinY:F

    iget v5, p0, Lcom/horcrux/svg/SvgView;->mVbHeight:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private hitTest(FF)I
    .locals 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 390
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mInvertible:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 394
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 395
    .local v0, "transformed":[F
    iget-object v1, p0, Lcom/horcrux/svg/SvgView;->mInvViewBoxMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 397
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v1

    .line 398
    .local v1, "count":I
    const/4 v2, -0x1

    .line 399
    .local v2, "viewTag":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-ltz v3, :cond_4

    .line 400
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 401
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Lcom/horcrux/svg/VirtualView;

    if-eqz v6, :cond_1

    .line 402
    move-object v6, v5

    check-cast v6, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v6, v0}, Lcom/horcrux/svg/VirtualView;->hitTest([F)I

    move-result v2

    goto :goto_1

    .line 403
    :cond_1
    instance-of v6, v5, Lcom/horcrux/svg/SvgView;

    if-eqz v6, :cond_2

    .line 404
    move-object v6, v5

    check-cast v6, Lcom/horcrux/svg/SvgView;

    invoke-direct {v6, p1, p2}, Lcom/horcrux/svg/SvgView;->hitTest(FF)I

    move-result v2

    .line 406
    :cond_2
    :goto_1
    if-eq v2, v4, :cond_3

    .line 407
    goto :goto_2

    .line 399
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 411
    .end local v3    # "i":I
    :cond_4
    :goto_2
    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getId()I

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    return v3

    .line 391
    .end local v0    # "transformed":[F
    .end local v1    # "count":I
    .end local v2    # "viewTag":I
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getId()I

    move-result v0

    return v0
.end method


# virtual methods
.method defineBrush(Lcom/horcrux/svg/Brush;Ljava/lang/String;)V
    .locals 1
    .param p1, "brush"    # Lcom/horcrux/svg/Brush;
    .param p2, "brushRef"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedBrushes:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method defineClipPath(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1
    .param p1, "clipPath"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "clipPathRef"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedClipPaths:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method defineFilter(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1
    .param p1, "filter"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "filterRef"    # Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedFilters:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method defineMarker(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1
    .param p1, "marker"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "markerRef"    # Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMarkers:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method defineMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1
    .param p1, "mask"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "maskRef"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMasks:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method defineTemplate(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Lcom/horcrux/svg/VirtualView;
    .param p2, "templateRef"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedTemplates:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-void
.end method

.method declared-synchronized drawChildren(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 303
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 304
    iput-object v0, v1, Lcom/horcrux/svg/SvgView;->mCanvas:Landroid/graphics/Canvas;

    .line 305
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    .local v3, "mViewBoxMatrix":Landroid/graphics/Matrix;
    iget-object v4, v1, Lcom/horcrux/svg/SvgView;->mAlign:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/horcrux/svg/SvgView;->getViewBox()Landroid/graphics/RectF;

    move-result-object v4

    .line 308
    .local v4, "vbRect":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 309
    .local v5, "width":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 310
    .local v6, "height":F
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/SvgView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Lcom/horcrux/svg/VirtualView;

    .line 311
    .local v7, "nested":Z
    if-eqz v7, :cond_0

    .line 312
    iget-object v8, v1, Lcom/horcrux/svg/SvgView;->mbbWidth:Lcom/horcrux/svg/SVGLength;

    float-to-double v9, v5

    iget v11, v1, Lcom/horcrux/svg/SvgView;->mScale:F

    float-to-double v13, v11

    const-wide/high16 v15, 0x4028000000000000L    # 12.0

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v16}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v8

    double-to-float v5, v8

    .line 313
    iget-object v8, v1, Lcom/horcrux/svg/SvgView;->mbbHeight:Lcom/horcrux/svg/SVGLength;

    float-to-double v9, v6

    iget v11, v1, Lcom/horcrux/svg/SvgView;->mScale:F

    float-to-double v13, v11

    const-wide/high16 v15, 0x4028000000000000L    # 12.0

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v16}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v8

    double-to-float v6, v8

    .line 315
    .end local p0    # "this":Lcom/horcrux/svg/SvgView;
    :cond_0
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 316
    .local v8, "eRect":Landroid/graphics/RectF;
    if-eqz v7, :cond_1

    .line 317
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 319
    :cond_1
    iget-object v9, v1, Lcom/horcrux/svg/SvgView;->mAlign:Ljava/lang/String;

    iget v10, v1, Lcom/horcrux/svg/SvgView;->mMeetOrSlice:I

    invoke-static {v4, v8, v9, v10}, Lcom/horcrux/svg/ViewBox;->getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object v9

    move-object v3, v9

    .line 320
    iget-object v9, v1, Lcom/horcrux/svg/SvgView;->mInvViewBoxMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/horcrux/svg/SvgView;->mInvertible:Z

    .line 321
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 324
    .end local v4    # "vbRect":Landroid/graphics/RectF;
    .end local v5    # "width":F
    .end local v6    # "height":F
    .end local v7    # "nested":Z
    .end local v8    # "eRect":Landroid/graphics/RectF;
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 325
    invoke-virtual {v1, v4}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 326
    .local v5, "node":Landroid/view/View;
    instance-of v6, v5, Lcom/horcrux/svg/VirtualView;

    if-eqz v6, :cond_3

    .line 327
    move-object v6, v5

    check-cast v6, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v6}, Lcom/horcrux/svg/VirtualView;->saveDefinition()V

    .line 324
    .end local v5    # "node":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 332
    invoke-virtual {v1, v4}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 333
    .local v5, "lNode":Landroid/view/View;
    instance-of v6, v5, Lcom/horcrux/svg/VirtualView;

    if-eqz v6, :cond_5

    .line 334
    move-object v6, v5

    check-cast v6, Lcom/horcrux/svg/VirtualView;

    .line 335
    .local v6, "node":Lcom/horcrux/svg/VirtualView;
    invoke-virtual {v6, v0, v3}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v7

    .line 336
    .local v7, "count":I
    iget-object v8, v1, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0, v8, v9}, Lcom/horcrux/svg/VirtualView;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 337
    invoke-virtual {v6, v0, v7}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    .line 339
    invoke-virtual {v6}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, v1, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    if-nez v8, :cond_5

    .line 340
    iput-boolean v2, v1, Lcom/horcrux/svg/SvgView;->mResponsible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local v5    # "lNode":Landroid/view/View;
    .end local v6    # "node":Lcom/horcrux/svg/VirtualView;
    .end local v7    # "count":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 344
    .end local v4    # "i":I
    :cond_6
    monitor-exit p0

    return-void

    .line 302
    .end local v3    # "mViewBoxMatrix":Landroid/graphics/Matrix;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method enableTouchEvents()V
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    .line 383
    :cond_0
    return-void
.end method

.method getCanvasBounds()Landroid/graphics/Rect;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getCanvasHeight()F
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method getCanvasWidth()F
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method getCtm()Landroid/graphics/Matrix;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getDefinedBrush(Ljava/lang/String;)Lcom/horcrux/svg/Brush;
    .locals 1
    .param p1, "brushRef"    # Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedBrushes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/Brush;

    return-object v0
.end method

.method getDefinedClipPath(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1
    .param p1, "clipPathRef"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedClipPaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/VirtualView;

    return-object v0
.end method

.method getDefinedFilter(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1
    .param p1, "filterRef"    # Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/VirtualView;

    return-object v0
.end method

.method getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1
    .param p1, "markerRef"    # Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/VirtualView;

    return-object v0
.end method

.method getDefinedMask(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1
    .param p1, "maskRef"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/VirtualView;

    return-object v0
.end method

.method getDefinedTemplate(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1
    .param p1, "templateRef"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedTemplates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/VirtualView;

    return-object v0
.end method

.method public interceptsTouchEvent(FF)Z
    .locals 1
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 94
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 95
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v1, :cond_1

    .line 96
    iget-boolean v1, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    if-nez v1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 100
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 101
    return-void

    .line 103
    :cond_1
    iget-boolean v1, p0, Lcom/horcrux/svg/SvgView;->mRemovalTransitionStarted:Z

    if-nez v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 112
    :cond_3
    return-void
.end method

.method isResponsible()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    return v0
.end method

.method notRendered()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onDetachedFromWindow()V

    .line 122
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 130
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 134
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->drawOutput()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 139
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x183

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 144
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 145
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/horcrux/svg/SvgView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    .line 151
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 83
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/SvgView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 87
    .local v1, "isVisible":Z
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/view/ReactViewGroup;->onSizeChanged(IIII)V

    .line 162
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 163
    return-void
.end method

.method public reactTagForTouch(FF)I
    .locals 1
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/SvgView;->hitTest(FF)I

    move-result v0

    return v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->mAlign:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 258
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 259
    return-void
.end method

.method public setBbHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "bbHeight"    # Lcom/facebook/react/bridge/Dynamic;

    .line 250
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mbbHeight:Lcom/horcrux/svg/SVGLength;

    .line 251
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 252
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 253
    return-void
.end method

.method public setBbWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "bbWidth"    # Lcom/facebook/react/bridge/Dynamic;

    .line 244
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mbbWidth:Lcom/horcrux/svg/SVGLength;

    .line 245
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 246
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 247
    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/horcrux/svg/SvgView;->mCurrentColor:I

    .line 215
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 216
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 217
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 77
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setId(I)V

    .line 78
    invoke-static {p1, p0}, Lcom/horcrux/svg/SvgViewManager;->setSvgView(ILcom/horcrux/svg/SvgView;)V

    .line 79
    return-void
.end method

.method public setMeetOrSlice(I)V
    .locals 0
    .param p1, "meetOrSlice"    # I

    .line 262
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mMeetOrSlice:I

    .line 263
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 264
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 265
    return-void
.end method

.method public setMinX(F)V
    .locals 0
    .param p1, "minX"    # F

    .line 220
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mMinX:F

    .line 221
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 222
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 223
    return-void
.end method

.method public setMinY(F)V
    .locals 0
    .param p1, "minY"    # F

    .line 226
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mMinY:F

    .line 227
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 228
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 229
    return-void
.end method

.method setToDataUrlTask(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    .line 157
    return-void
.end method

.method public setVbHeight(F)V
    .locals 0
    .param p1, "vbHeight"    # F

    .line 238
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mVbHeight:F

    .line 239
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 240
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 241
    return-void
.end method

.method public setVbWidth(F)V
    .locals 0
    .param p1, "vbWidth"    # F

    .line 232
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mVbWidth:F

    .line 233
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 234
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 235
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRemovalTransitionStarted:Z

    .line 117
    return-void
.end method

.method toDataURL()Ljava/lang/String;
    .locals 4

    .line 352
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 355
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 356
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 357
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 358
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 362
    .local v2, "bitmapBytes":[B
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method toDataURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 366
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 369
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 370
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 371
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 372
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 373
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 374
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 375
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 376
    .local v2, "bitmapBytes":[B
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
