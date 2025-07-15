.class public final Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/AnimationBackend;
.implements Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0018\u0000 U2\u00020\u00012\u00020\u0002:\u0003UVWBM\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010*\u001a\u00020+H\u0016J \u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0002J0\u00102\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u00192\u000e\u00103\u001a\n\u0012\u0004\u0012\u00020/\u0018\u0001042\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020\u0019H\u0002J \u00106\u001a\u00020\u000c2\u0006\u00107\u001a\u0002082\u0006\u00100\u001a\u0002012\u0006\u0010-\u001a\u00020\u0019H\u0016J \u00109\u001a\u00020\u000c2\u0006\u00100\u001a\u0002012\u0006\u0010-\u001a\u00020\u00192\u0006\u00105\u001a\u00020\u0019H\u0002J\u0008\u0010:\u001a\u00020\u0019H\u0016J\u0010\u0010;\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\u0019H\u0016J\u0008\u0010<\u001a\u00020\u0019H\u0016J\u0008\u0010=\u001a\u00020\u0019H\u0016J\u0008\u0010>\u001a\u00020\u0019H\u0016J\u0008\u0010?\u001a\u00020\u0019H\u0016J\u0008\u0010@\u001a\u00020\u0019H\u0016J\u0008\u0010A\u001a\u00020\u0019H\u0016J\u0008\u0010B\u001a\u00020+H\u0016J\u0008\u0010C\u001a\u00020+H\u0016J \u0010D\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u00192\u000e\u0010E\u001a\n\u0012\u0004\u0012\u00020/\u0018\u000104H\u0002J\u0012\u0010F\u001a\u00020+2\u0008\u0008\u0001\u0010G\u001a\u00020\u0019H\u0016J\u0012\u0010H\u001a\u00020+2\u0008\u0010I\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010J\u001a\u00020+2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010K\u001a\u00020+2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u0010\u0010N\u001a\u00020+2\u0008\u0010!\u001a\u0004\u0018\u00010\"J\u0008\u0010O\u001a\u00020+H\u0002J(\u0010P\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020/2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020RH\u0002J\u0008\u0010T\u001a\u00020\u0019H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006X"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "bitmapFrameCache",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "bitmapFrameRenderer",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;",
        "isNewRenderImplementation",
        "",
        "bitmapFramePreparationStrategy",
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;",
        "bitmapFramePreparer",
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
        "roundingOptions",
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V",
        "animationListener",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "bitmapHeight",
        "",
        "bitmapWidth",
        "bounds",
        "Landroid/graphics/Rect;",
        "cornerRadii",
        "",
        "getCornerRadii",
        "()[F",
        "frameListener",
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "paint",
        "Landroid/graphics/Paint;",
        "path",
        "Landroid/graphics/Path;",
        "pathFrameNumber",
        "clear",
        "",
        "drawBitmap",
        "frameNumber",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawBitmapAndCache",
        "bitmapReference",
        "Lcom/facebook/common/references/CloseableReference;",
        "frameType",
        "drawFrame",
        "parent",
        "Landroid/graphics/drawable/Drawable;",
        "drawFrameOrFallback",
        "getFrameCount",
        "getFrameDurationMs",
        "getIntrinsicHeight",
        "getIntrinsicWidth",
        "getLoopCount",
        "getLoopDurationMs",
        "getSizeInBytes",
        "height",
        "onInactive",
        "preloadAnimation",
        "renderFrameInBitmap",
        "targetBitmap",
        "setAlpha",
        "alpha",
        "setAnimationListener",
        "listener",
        "setBounds",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "setFrameListener",
        "updateBitmapDimensions",
        "updatePath",
        "currentBoundsWidth",
        "",
        "currentBoundsHeight",
        "width",
        "Companion",
        "FrameListener",
        "FrameType",
        "animated-drawable_release"
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
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

.field public static final FRAME_TYPE_CACHED:I = 0x0

.field public static final FRAME_TYPE_CREATED:I = 0x2

.field public static final FRAME_TYPE_FALLBACK:I = 0x3

.field public static final FRAME_TYPE_REUSED:I = 0x1

.field public static final FRAME_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

.field private animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

.field private final bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

.field private final bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bounds:Landroid/graphics/Rect;

.field private final cornerRadii:[F

.field private frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

.field private final isNewRenderImplementation:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private pathFrameNumber:I

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->Companion:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

    .line 394
    const-class v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V
    .locals 17
    .param p1, "platformBitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .param p2, "bitmapFrameCache"    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
    .param p3, "animationInformation"    # Lcom/facebook/fresco/animation/backend/AnimationInformation;
    .param p4, "bitmapFrameRenderer"    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    .param p5, "isNewRenderImplementation"    # Z
    .param p6, "bitmapFramePreparationStrategy"    # Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;
    .param p7, "bitmapFramePreparer"    # Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;
    .param p8, "roundingOptions"    # Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string/jumbo v5, "platformBitmapFactory"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bitmapFrameCache"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "animationInformation"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bitmapFrameRenderer"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 43
    iput-object v2, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 44
    iput-object v3, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 45
    iput-object v4, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 46
    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 47
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 48
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    .line 53
    if-eqz p8, :cond_2

    move-object/from16 v8, p8

    .local v8, "roundingOptions":Lcom/facebook/fresco/vito/options/RoundingOptions;
    const/4 v9, 0x0

    .line 54
    .local v9, "$i$a$-let-BitmapAnimationBackend$cornerRadii$1":I
    invoke-virtual {v8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadius()F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_1

    .line 55
    const/16 v10, 0x8

    new-array v10, v10, [F

    .line 56
    .local v10, "corners":[F
    invoke-virtual {v8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadius()F

    move-result v12

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v10

    invoke-static/range {v11 .. v16}, Lkotlin/collections/ArraysKt;->fill$default([FFIIILjava/lang/Object;)V

    .line 57
    nop

    .end local v10    # "corners":[F
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadii()[F

    move-result-object v10

    .line 54
    :goto_1
    nop

    .line 53
    .end local v8    # "roundingOptions":Lcom/facebook/fresco/vito/options/RoundingOptions;
    .end local v9    # "$i$a$-let-BitmapAnimationBackend$cornerRadii$1":I
    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    iput-object v10, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    .line 100
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 102
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 107
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    .line 108
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    .line 109
    const/4 v8, -0x1

    iput v8, v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    .line 114
    nop

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updateBitmapDimensions()V

    .line 116
    nop

    .line 41
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    .line 41
    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    .line 41
    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;-><init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V

    .line 396
    return-void
.end method

.method public static final synthetic access$getAnimationListener$p(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    return-object v0
.end method

.method private final drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "frameNumber"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 340
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    .line 342
    .local v0, "currentBounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p3, p2, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 345
    :cond_0
    nop

    .line 346
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 345
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updatePath(ILandroid/graphics/Bitmap;FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 349
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 352
    :goto_0
    return-void
.end method

.method private final drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z
    .locals 2
    .param p1, "frameNumber"    # I
    .param p2, "bitmapReference"    # Lcom/facebook/common/references/CloseableReference;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "frameType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    .line 372
    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bitmapReference.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 380
    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v0, p1, p2, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->onFrameRendered(ILcom/facebook/common/references/CloseableReference;I)V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onFrameDrawn(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;II)V

    .line 385
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final drawFrameOrFallback(Landroid/graphics/Canvas;II)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frameNumber"    # I
    .param p3, "frameType"    # I

    .line 157
    const/4 v0, 0x0

    .local v0, "bitmapReference":Lcom/facebook/common/references/CloseableReference;
    const/4 v1, 0x0

    .line 159
    .local v1, "drawn":Z
    const/4 v2, -0x1

    .line 161
    .local v2, "nextFrameType":I
    nop

    .line 162
    :try_start_0
    iget-boolean v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-interface {v3, p2, v7, v8}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->getBitmapFrame(III)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 163
    :goto_0
    move-object v0, v3

    .line 166
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "bitmapReference.get()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, p2, v3, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    nop

    .line 214
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 168
    return v4

    .line 172
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-interface {v3, v4, v7, v6}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(IILkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_2
    nop

    .line 214
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 173
    return v5

    .line 176
    :cond_3
    packed-switch p3, :pswitch_data_0

    .line 211
    nop

    .line 214
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 211
    return v5

    .line 208
    :pswitch_0
    :try_start_2
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v3, p2}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getFallbackFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    move-object v0, v3

    .line 209
    const/4 v3, 0x3

    invoke-direct {p0, p2, v0, p1, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    goto :goto_3

    .line 193
    :pswitch_1
    nop

    .line 194
    :try_start_3
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    iget v7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    iget-object v8, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v6, v7, v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    move-object v0, v3

    .line 203
    :try_start_4
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->renderFrameInBitmap(ILcom/facebook/common/references/CloseableReference;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    const/4 v3, 0x2

    invoke-direct {p0, p2, v0, p1, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    .line 202
    :goto_1
    move v1, v4

    .line 205
    const/4 v2, 0x3

    goto :goto_3

    .line 195
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->TAG:Ljava/lang/Class;

    const-string v6, "Failed to create frame bitmap"

    move-object v7, v3

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v4, v6, v7}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    nop

    .line 214
    .end local v3    # "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 199
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    return v5

    .line 184
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_5
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    iget v7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    invoke-interface {v3, p2, v6, v7}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getBitmapToReuseForFrame(III)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    .line 183
    move-object v0, v3

    .line 187
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->renderFrameInBitmap(ILcom/facebook/common/references/CloseableReference;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    invoke-direct {p0, p2, v0, p1, v4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    .line 186
    :goto_2
    move v1, v4

    .line 189
    const/4 v2, 0x2

    goto :goto_3

    .line 178
    :pswitch_3
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v3, p2}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getCachedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    move-object v0, v3

    .line 179
    invoke-direct {p0, p2, v0, p1, v5}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v3

    .line 180
    const/4 v2, 0x1

    .line 214
    :goto_3
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 215
    nop

    .line 216
    if-nez v1, :cond_7

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 219
    :cond_6
    invoke-direct {p0, p1, p2, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawFrameOrFallback(Landroid/graphics/Canvas;II)Z

    move-result v3

    goto :goto_5

    .line 217
    :cond_7
    :goto_4
    move v3, v1

    .line 216
    :goto_5
    return v3

    .line 214
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final renderFrameInBitmap(ILcom/facebook/common/references/CloseableReference;)Z
    .locals 3
    .param p1, "frameNumber"    # I
    .param p2, "targetBitmap"    # Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 302
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "targetBitmap.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 307
    .local v0, "frameRendered":Z
    if-nez v0, :cond_1

    .line 308
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 310
    :cond_1
    return v0

    .line 303
    .end local v0    # "frameRendered":Z
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final updateBitmapDimensions()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 280
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 284
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    if-ne v0, v1, :cond_3

    .line 285
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_2
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 287
    :cond_3
    return-void
.end method

.method private final updatePath(ILandroid/graphics/Bitmap;FF)Z
    .locals 8
    .param p1, "frameNumber"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "currentBoundsWidth"    # F
    .param p4, "currentBoundsHeight"    # F

    .line 319
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 323
    return v1

    .line 326
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 327
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 328
    .local v2, "src":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v5, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 329
    .local v3, "dst":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v2, v3, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 330
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 331
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    move-object v6, v0

    check-cast v6, Landroid/graphics/Shader;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 332
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    .line 333
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 332
    invoke-virtual {v4, v6, v5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 335
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    .line 336
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->clearFrames()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->clear()V

    .line 249
    :cond_1
    :goto_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 10
    .param p1, "parent"    # Landroid/graphics/drawable/Drawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "frameNumber"    # I

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onDrawFrameStart(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawFrameOrFallback(Landroid/graphics/Canvas;II)Z

    move-result v0

    .line 140
    .local v0, "drawn":Z
    if-nez v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onFrameDropped(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 145
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    if-eqz v1, :cond_2

    .line 146
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v2, :cond_2

    .line 147
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    move-object v5, p0

    check-cast v5, Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 146
    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move v6, p3

    invoke-static/range {v2 .. v9}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->prepareFrames$default(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 149
    :cond_2
    return v0
.end method

.method public final getCornerRadii()[F
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameDurationMs(I)I
    .locals 1
    .param p1, "frameNumber"    # I

    .line 125
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getLoopDurationMs()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    move-result v0

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getSizeInBytes()I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->height()I

    move-result v0

    return v0
.end method

.method public onInactive()V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->onStop()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->clear()V

    .line 271
    :cond_1
    :goto_0
    return-void
.end method

.method public preloadAnimation()V
    .locals 7

    .line 252
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v1, :cond_1

    .line 254
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    move-object v4, p0

    check-cast v4, Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 253
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$preloadAnimation$1;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$preloadAnimation$1;-><init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->width()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->height()I

    move-result v2

    .line 258
    new-instance v3, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$preloadAnimation$2;

    invoke-direct {v3, p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$preloadAnimation$2;-><init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(IILkotlin/jvm/functions/Function0;)V

    .line 263
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 224
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    return-void
.end method

.method public setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 274
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 275
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 232
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updateBitmapDimensions()V

    .line 235
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 228
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 229
    return-void
.end method

.method public final setFrameListener(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;)V
    .locals 0
    .param p1, "frameListener"    # Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    .line 119
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    .line 120
    return-void
.end method

.method public width()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->width()I

    move-result v0

    return v0
.end method
