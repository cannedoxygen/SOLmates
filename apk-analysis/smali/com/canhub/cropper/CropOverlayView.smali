.class public final Lcom/canhub/cropper/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropOverlayView$Companion;,
        Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;,
        Lcom/canhub/cropper/CropOverlayView$ScaleListener;,
        Lcom/canhub/cropper/CropOverlayView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropOverlayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropOverlayView.kt\ncom/canhub/cropper/CropOverlayView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1231:1\n1#2:1232\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008/\u0018\u0000 \u00a5\u00012\u00020\u0001:\u0006\u00a5\u0001\u00a6\u0001\u00a7\u0001B\u001d\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\\\u001a\u0002002\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u000200H\u0002J\u0010\u0010`\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010c\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J0\u0010d\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u00192\u0006\u0010g\u001a\u00020\u0019H\u0002J(\u0010h\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u0019H\u0002J0\u0010i\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u00192\u0006\u0010g\u001a\u00020\u0019H\u0002J\u0010\u0010j\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010k\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J\u0010\u0010l\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0002J(\u0010m\u001a\u00020^2\u0006\u0010a\u001a\u00020b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00020\u0019H\u0002J\u0010\u0010n\u001a\u00020^2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0006\u0010o\u001a\u00020^J\u0008\u0010p\u001a\u00020^H\u0002J\u0018\u0010q\u001a\u00020^2\u0006\u0010r\u001a\u00020\u00192\u0006\u0010s\u001a\u00020\u0019H\u0002J\u0018\u0010t\u001a\u00020^2\u0006\u0010r\u001a\u00020\u00192\u0006\u0010s\u001a\u00020\u0019H\u0002J\u0008\u0010u\u001a\u00020^H\u0002J\u0010\u0010v\u001a\u00020^2\u0006\u0010a\u001a\u00020bH\u0014J\u0010\u0010w\u001a\u0002002\u0006\u0010x\u001a\u00020yH\u0016J\u0006\u0010z\u001a\u00020^J\u0006\u0010{\u001a\u00020^J \u0010|\u001a\u00020^2\u0008\u0010}\u001a\u0004\u0018\u00010>2\u0006\u0010~\u001a\u00020\u00082\u0006\u0010\u007f\u001a\u00020\u0008J\u0010\u0010\u0080\u0001\u001a\u0002002\u0007\u0010\u0081\u0001\u001a\u000200J\u0010\u0010\u0082\u0001\u001a\u00020^2\u0007\u0010\u0083\u0001\u001a\u00020\u0019J\u0010\u0010\u0084\u0001\u001a\u00020^2\u0007\u0010\u0085\u0001\u001a\u00020\u0011J\u0012\u0010\u0086\u0001\u001a\u00020^2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0088\u0001\u001a\u00020^2\u0007\u0010\u0089\u0001\u001a\u00020\u0008J\u0010\u0010\u008a\u0001\u001a\u00020^2\u0007\u0010\u008b\u0001\u001a\u00020\u0019J\u000f\u0010\u008c\u0001\u001a\u00020^2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0012\u0010\u008d\u0001\u001a\u00020^2\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010EJ+\u0010\u008f\u0001\u001a\u00020^2\u0007\u0010\u0090\u0001\u001a\u00020\u00192\u0007\u0010\u0091\u0001\u001a\u00020\u00192\u0007\u0010\u0092\u0001\u001a\u00020\u00192\u0007\u0010\u0093\u0001\u001a\u00020\u0019J\u0010\u0010\u0094\u0001\u001a\u00020^2\u0007\u0010\u0095\u0001\u001a\u000200J\u0010\u0010\u0096\u0001\u001a\u00020^2\u0007\u0010\u0097\u0001\u001a\u000200J\u000f\u0010\u0098\u0001\u001a\u00020^2\u0006\u0010&\u001a\u00020%J\u0010\u0010\u0099\u0001\u001a\u00020^2\u0007\u0010\u009a\u0001\u001a\u00020PJ\u0019\u0010\u009b\u0001\u001a\u00020^2\u0007\u0010\u009c\u0001\u001a\u00020\u00082\u0007\u0010\u009d\u0001\u001a\u00020\u0008J\u0019\u0010\u009e\u0001\u001a\u00020^2\u0007\u0010\u009f\u0001\u001a\u00020\u00082\u0007\u0010\u00a0\u0001\u001a\u00020\u0008J\u0010\u0010\u00a1\u0001\u001a\u0002002\u0007\u0010\u00a2\u0001\u001a\u000200J\u0010\u0010\u00a3\u0001\u001a\u00020^2\u0007\u0010\u00a4\u0001\u001a\u00020\u0019R$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\r\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\"\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u001a@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0010\u001a\u0004\u0018\u00010%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R(\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010\u001e\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00102\u001a\u0002002\u0006\u0010\u0010\u001a\u000200@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0014\u00104\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00103R\u000e\u00105\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010A\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010BR\u000e\u0010C\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u0004\u0018\u00010EX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020GX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010L\u001a\u0004\u0018\u00010MX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u0004\u0018\u00010PX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010Q\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010BR\u000e\u0010R\u001a\u00020SX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u0004\u0018\u00010UX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/canhub/cropper/CropOverlayView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "aspectRatioX",
        "",
        "getAspectRatioX",
        "()I",
        "setAspectRatioX",
        "(I)V",
        "aspectRatioY",
        "getAspectRatioY",
        "setAspectRatioY",
        "<set-?>",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cornerShape",
        "getCornerShape",
        "()Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cropLabelText",
        "",
        "cropLabelTextColor",
        "cropLabelTextSize",
        "",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropShape",
        "getCropShape",
        "()Lcom/canhub/cropper/CropImageView$CropShape;",
        "rect",
        "Landroid/graphics/RectF;",
        "cropWindowRect",
        "getCropWindowRect",
        "()Landroid/graphics/RectF;",
        "setCropWindowRect",
        "(Landroid/graphics/RectF;)V",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "guidelines",
        "getGuidelines",
        "()Lcom/canhub/cropper/CropImageView$Guidelines;",
        "Landroid/graphics/Rect;",
        "initialCropWindowRect",
        "getInitialCropWindowRect",
        "()Landroid/graphics/Rect;",
        "setInitialCropWindowRect",
        "(Landroid/graphics/Rect;)V",
        "initializedCropWindow",
        "",
        "isCropLabelEnabled",
        "isFixAspectRatio",
        "()Z",
        "isNonStraightAngleRotated",
        "mAspectRatioX",
        "mAspectRatioY",
        "mBackgroundPaint",
        "Landroid/graphics/Paint;",
        "mBorderCornerLength",
        "mBorderCornerOffset",
        "mBorderCornerPaint",
        "mBorderPaint",
        "mBoundsPoints",
        "",
        "mCalcBounds",
        "mCenterMoveEnabled",
        "mCircleCornerFillColor",
        "Ljava/lang/Integer;",
        "mCropCornerRadius",
        "mCropWindowChangeListener",
        "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;",
        "mCropWindowHandler",
        "Lcom/canhub/cropper/CropWindowHandler;",
        "mDrawRect",
        "mGuidelinePaint",
        "mInitialCropWindowPaddingRatio",
        "mInitialCropWindowRect",
        "mMoveHandler",
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "mMultiTouchEnabled",
        "mOptions",
        "Lcom/canhub/cropper/CropImageOptions;",
        "mOriginalLayerType",
        "mPath",
        "Landroid/graphics/Path;",
        "mScaleDetector",
        "Landroid/view/ScaleGestureDetector;",
        "mSnapRadius",
        "mTargetAspectRatio",
        "mTouchRadius",
        "mViewHeight",
        "mViewWidth",
        "textLabelPaint",
        "calculateBounds",
        "callOnCropWindowChanged",
        "",
        "inProgress",
        "drawBackground",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawBorders",
        "drawCircleShape",
        "cornerOffset",
        "cornerExtension",
        "radius",
        "drawCornerBasedOnShape",
        "drawCornerShape",
        "drawCorners",
        "drawCropLabelText",
        "drawGuidelines",
        "drawLineShape",
        "fixCropWindowRectByRules",
        "fixCurrentCropWindowRect",
        "initCropWindow",
        "onActionDown",
        "x",
        "y",
        "onActionMove",
        "onActionUp",
        "onDraw",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "resetCropOverlayView",
        "resetCropWindowRect",
        "setBounds",
        "boundsPoints",
        "viewWidth",
        "viewHeight",
        "setCenterMoveEnabled",
        "centerMoveEnabled",
        "setCropCornerRadius",
        "cornerRadius",
        "setCropCornerShape",
        "cropCornerShape",
        "setCropLabelText",
        "textLabel",
        "setCropLabelTextColor",
        "textColor",
        "setCropLabelTextSize",
        "textSize",
        "setCropShape",
        "setCropWindowChangeListener",
        "listener",
        "setCropWindowLimits",
        "maxWidth",
        "maxHeight",
        "scaleFactorWidth",
        "scaleFactorHeight",
        "setCropperTextLabelVisibility",
        "isEnabled",
        "setFixedAspectRatio",
        "fixAspectRatio",
        "setGuidelines",
        "setInitialAttributeValues",
        "options",
        "setMaxCropResultSize",
        "maxCropResultWidth",
        "maxCropResultHeight",
        "setMinCropResultSize",
        "minCropResultWidth",
        "minCropResultHeight",
        "setMultiTouchEnabled",
        "multiTouchEnabled",
        "setSnapRadius",
        "snapRadius",
        "Companion",
        "CropWindowChangeListener",
        "ScaleListener",
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
.field public static final Companion:Lcom/canhub/cropper/CropOverlayView$Companion;


# instance fields
.field private cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

.field private cropLabelText:Ljava/lang/String;

.field private cropLabelTextColor:I

.field private cropLabelTextSize:F

.field private cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

.field private guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

.field private initializedCropWindow:Z

.field private isCropLabelEnabled:Z

.field private isFixAspectRatio:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderCornerLength:F

.field private mBorderCornerOffset:F

.field private mBorderCornerPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private final mBoundsPoints:[F

.field private final mCalcBounds:Landroid/graphics/RectF;

.field private mCenterMoveEnabled:Z

.field private mCircleCornerFillColor:Ljava/lang/Integer;

.field private mCropCornerRadius:F

.field private mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

.field private final mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

.field private final mDrawRect:Landroid/graphics/RectF;

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mInitialCropWindowPaddingRatio:F

.field private final mInitialCropWindowRect:Landroid/graphics/Rect;

.field private mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

.field private mMultiTouchEnabled:Z

.field private mOptions:Lcom/canhub/cropper/CropImageOptions;

.field private mOriginalLayerType:Ljava/lang/Integer;

.field private final mPath:Landroid/graphics/Path;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchRadius:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private textLabelPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropOverlayView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    .line 85
    new-instance v0, Lcom/canhub/cropper/CropWindowHandler;

    invoke-direct {v0}, Lcom/canhub/cropper/CropWindowHandler;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 108
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 164
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    .line 184
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 33
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1230
    return-void
.end method

.method public static final synthetic access$getMCropWindowHandler$p(Lcom/canhub/cropper/CropOverlayView;)Lcom/canhub/cropper/CropWindowHandler;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/CropOverlayView;

    .line 32
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    return-object v0
.end method

.method private final calculateBounds(Landroid/graphics/RectF;)Z
    .locals 24
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 1094
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v2

    .line 1095
    .local v2, "left":F
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    .line 1096
    .local v3, "top":F
    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v4, v5}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v4

    .line 1097
    .local v4, "right":F
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v5, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v5

    .line 1099
    .local v5, "bottom":F
    invoke-direct/range {p0 .. p0}, Lcom/canhub/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 1100
    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1101
    goto/16 :goto_7

    .line 1103
    :cond_0
    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v6, v7

    .line 1104
    .local v6, "x0":F
    iget-object v8, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 1105
    .local v8, "y0":F
    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    .line 1106
    .local v10, "x2":F
    iget-object v12, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v13, 0x5

    aget v12, v12, v13

    .line 1107
    .local v12, "y2":F
    iget-object v14, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v15, 0x6

    aget v14, v14, v15

    .line 1108
    .local v14, "x3":F
    iget-object v7, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/16 v17, 0x7

    aget v7, v7, v17

    .line 1109
    .local v7, "y3":F
    iget-object v13, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v13, v13, v17

    iget-object v11, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v11, v11, v9

    cmpg-float v11, v13, v11

    const/4 v13, 0x2

    const/16 v20, 0x3

    if-gez v11, :cond_2

    .line 1110
    iget-object v11, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v11, v11, v9

    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v9, v9, v20

    cmpg-float v9, v11, v9

    if-gez v9, :cond_1

    .line 1111
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v9, v15

    .line 1112
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v8, v9, v17

    .line 1113
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v10, v9, v13

    .line 1114
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v12, v9, v20

    .line 1115
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x4

    aget v14, v9, v11

    .line 1116
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v15, 0x5

    aget v7, v9, v15

    const/4 v11, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    const/4 v11, 0x4

    const/4 v15, 0x5

    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v9, v11

    .line 1119
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v8, v9, v15

    .line 1120
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x0

    aget v10, v9, v11

    .line 1121
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x1

    aget v12, v9, v11

    .line 1122
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v14, v9, v13

    .line 1123
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v7, v9, v20

    goto :goto_0

    .line 1125
    :cond_2
    move v11, v9

    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v9, v9, v11

    iget-object v11, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v11, v11, v20

    cmpl-float v9, v9, v11

    if-lez v9, :cond_3

    .line 1126
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v9, v13

    .line 1127
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v8, v9, v20

    .line 1128
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v10, v9, v15

    .line 1129
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v12, v9, v17

    .line 1130
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x0

    aget v14, v9, v11

    .line 1131
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x1

    aget v7, v9, v11

    goto :goto_0

    .line 1125
    :cond_3
    const/4 v11, 0x1

    .line 1133
    :goto_0
    sub-float v9, v7, v8

    sub-float v13, v14, v6

    div-float/2addr v9, v13

    .line 1134
    .local v9, "a0":F
    const/high16 v13, -0x40800000    # -1.0f

    div-float/2addr v13, v9

    .line 1135
    .local v13, "a1":F
    mul-float v15, v9, v6

    sub-float v15, v8, v15

    .line 1136
    .local v15, "b0":F
    mul-float v16, v13, v6

    sub-float v16, v8, v16

    .line 1137
    .local v16, "b1":F
    mul-float v17, v9, v10

    sub-float v17, v12, v17

    .line 1138
    .local v17, "b2":F
    mul-float v18, v13, v10

    sub-float v18, v12, v18

    .line 1139
    .local v18, "b3":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    iget v11, v1, Landroid/graphics/RectF;->top:F

    sub-float v19, v19, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    move/from16 v20, v6

    .end local v6    # "x0":F
    .local v20, "x0":F
    iget v6, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v6

    div-float v6, v19, v11

    .line 1140
    .local v6, "c0":F
    neg-float v11, v6

    .line 1141
    .local v11, "c1":F
    move/from16 v19, v7

    .end local v7    # "y3":F
    .local v19, "y3":F
    iget v7, v1, Landroid/graphics/RectF;->top:F

    move/from16 v21, v8

    .end local v8    # "y0":F
    .local v21, "y0":F
    iget v8, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    .line 1142
    .local v7, "d0":F
    iget v8, v1, Landroid/graphics/RectF;->top:F

    move/from16 v22, v10

    .end local v10    # "x2":F
    .local v22, "x2":F
    iget v10, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    .line 1143
    .local v8, "d1":F
    nop

    .line 1145
    sub-float v10, v7, v15

    sub-float v23, v9, v6

    div-float v10, v10, v23

    move/from16 v23, v12

    .end local v12    # "y2":F
    .local v23, "y2":F
    iget v12, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_4

    sub-float v10, v7, v15

    sub-float v12, v9, v6

    div-float/2addr v10, v12

    goto :goto_1

    :cond_4
    move v10, v2

    :goto_1
    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1143
    move v2, v10

    .line 1147
    nop

    .line 1149
    sub-float v10, v7, v16

    sub-float v12, v13, v6

    div-float/2addr v10, v12

    iget v12, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_5

    sub-float v10, v7, v16

    sub-float v12, v13, v6

    div-float/2addr v10, v12

    goto :goto_2

    :cond_5
    move v10, v2

    :goto_2
    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1147
    move v2, v10

    .line 1151
    nop

    .line 1153
    sub-float v10, v8, v18

    sub-float v12, v13, v11

    div-float/2addr v10, v12

    iget v12, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_6

    sub-float v10, v8, v18

    sub-float v12, v13, v11

    div-float/2addr v10, v12

    goto :goto_3

    :cond_6
    move v10, v2

    :goto_3
    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1151
    move v2, v10

    .line 1155
    nop

    .line 1157
    sub-float v10, v8, v16

    sub-float v12, v13, v11

    div-float/2addr v10, v12

    iget v12, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_7

    sub-float v10, v8, v16

    sub-float v12, v13, v11

    div-float/2addr v10, v12

    goto :goto_4

    :cond_7
    move v10, v4

    :goto_4
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1155
    move v4, v10

    .line 1159
    nop

    .line 1161
    sub-float v10, v8, v17

    sub-float v12, v9, v11

    div-float/2addr v10, v12

    iget v12, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_8

    sub-float v10, v8, v17

    sub-float v12, v9, v11

    div-float/2addr v10, v12

    goto :goto_5

    :cond_8
    move v10, v4

    :goto_5
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1159
    move v4, v10

    .line 1163
    nop

    .line 1165
    sub-float v10, v7, v17

    sub-float v12, v9, v6

    div-float/2addr v10, v12

    iget v12, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_9

    sub-float v10, v7, v17

    sub-float v12, v9, v6

    div-float/2addr v10, v12

    goto :goto_6

    :cond_9
    move v10, v4

    :goto_6
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1163
    move v4, v10

    .line 1167
    mul-float v10, v9, v2

    add-float/2addr v10, v15

    mul-float v12, v13, v4

    add-float v12, v12, v16

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1168
    mul-float v10, v13, v2

    add-float v10, v10, v18

    mul-float v12, v9, v4

    add-float v12, v12, v17

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1169
    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v2, v10, Landroid/graphics/RectF;->left:F

    .line 1170
    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v3, v10, Landroid/graphics/RectF;->top:F

    .line 1171
    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v4, v10, Landroid/graphics/RectF;->right:F

    .line 1172
    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v5, v10, Landroid/graphics/RectF;->bottom:F

    .line 1173
    const/4 v7, 0x1

    .line 1099
    .end local v6    # "c0":F
    .end local v7    # "d0":F
    .end local v8    # "d1":F
    .end local v9    # "a0":F
    .end local v11    # "c1":F
    .end local v13    # "a1":F
    .end local v14    # "x3":F
    .end local v15    # "b0":F
    .end local v16    # "b1":F
    .end local v17    # "b2":F
    .end local v18    # "b3":F
    .end local v19    # "y3":F
    .end local v20    # "x0":F
    .end local v21    # "y0":F
    .end local v22    # "x2":F
    .end local v23    # "y2":F
    :goto_7
    return v7
.end method

.method private final callOnCropWindowChanged(Z)V
    .locals 4
    .param p1, "inProgress"    # Z

    .line 1183
    nop

    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in crop window changed"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "AIC"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 650
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 651
    .local v0, "rect":Landroid/graphics/RectF;
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 652
    .local v1, "left":F
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 653
    .local v2, "top":F
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 654
    .local v11, "right":F
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 655
    .local v12, "bottom":F
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v3

    aget v3, v4, v3

    :goto_0
    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_0

    .line 695
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unrecognized crop shape"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 681
    :pswitch_0
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 682
    sget-object v3, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v3}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastJ18()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 683
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 684
    :cond_1
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v4

    add-float/2addr v5, v4

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v4

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v4

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v4

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 686
    :goto_1
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 689
    sget-object v3, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v3}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastO26()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_2

    .line 690
    :cond_2
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 692
    :goto_2
    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move v4, v1

    move v5, v2

    move v6, v11

    move v7, v12

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 693
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 659
    :pswitch_1
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v3}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastJ18()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_4

    .line 665
    :cond_3
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 666
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 667
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v4, v5, v4

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 668
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 669
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 670
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 671
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 673
    sget-object v3, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v3}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastO26()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_3

    .line 674
    :cond_4
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 676
    :goto_3
    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 677
    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move v4, v1

    move v5, v2

    move v6, v11

    move v7, v12

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 678
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 660
    :cond_5
    :goto_4
    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move v4, v1

    move v5, v2

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 661
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v7, v12

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 662
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 663
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, p1

    move v8, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 697
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final drawBorders(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 781
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 783
    .local v0, "w":F
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 784
    .local v1, "rect":Landroid/graphics/RectF;
    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v3, v0, v2

    div-float v2, v0, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 786
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 793
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unrecognized crop shape"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 792
    :pswitch_0
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 790
    :pswitch_1
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 796
    .end local v0    # "w":F
    .end local v1    # "rect":Landroid/graphics/RectF;
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final drawCircleShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "cornerOffset"    # F
    .param p4, "cornerExtension"    # F
    .param p5, "radius"    # F

    .line 982
    nop

    .line 983
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p4

    .line 984
    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p4

    .line 985
    nop

    .line 986
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 982
    invoke-virtual {p1, v0, v1, p5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 989
    nop

    .line 990
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p4

    .line 991
    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p4

    .line 992
    nop

    .line 993
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 989
    invoke-virtual {p1, v0, v1, p5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 996
    nop

    .line 997
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p4

    .line 998
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p4

    .line 999
    nop

    .line 1000
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 996
    invoke-virtual {p1, v0, v1, p5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1003
    nop

    .line 1004
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p4

    .line 1005
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p4

    .line 1006
    nop

    .line 1007
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1003
    invoke-virtual {p1, v0, v1, p5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1009
    return-void
.end method

.method private final drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "cornerOffset"    # F
    .param p4, "cornerExtension"    # F

    .line 834
    move-object v6, p0

    move-object/from16 v7, p2

    iget-object v0, v6, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 877
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized crop shape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :pswitch_0
    invoke-direct/range {p0 .. p4}, Lcom/canhub/cropper/CropOverlayView;->drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    goto/16 :goto_1

    .line 862
    :pswitch_1
    nop

    .line 863
    iget v0, v7, Landroid/graphics/RectF;->left:F

    sub-float v9, v0, p3

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v10, v0, v1

    .line 865
    iget v0, v7, Landroid/graphics/RectF;->left:F

    sub-float v11, v0, p3

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v12, v0, v1

    .line 867
    iget-object v13, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 862
    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 869
    nop

    .line 870
    iget v0, v7, Landroid/graphics/RectF;->right:F

    add-float v9, v0, p3

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v10, v0, v1

    .line 872
    iget v0, v7, Landroid/graphics/RectF;->right:F

    add-float v11, v0, p3

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v12, v0, v1

    .line 874
    iget-object v13, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 869
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 844
    :pswitch_2
    nop

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v9, v0, v1

    .line 846
    iget v0, v7, Landroid/graphics/RectF;->top:F

    sub-float v10, v0, p3

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v11, v0, v1

    .line 848
    iget v0, v7, Landroid/graphics/RectF;->top:F

    sub-float v12, v0, p3

    .line 849
    iget-object v13, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 844
    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 851
    nop

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v9, v0, v1

    .line 853
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    add-float v10, v0, p3

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v11, v0, v1

    .line 855
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    add-float v12, v0, p3

    .line 856
    iget-object v13, v6, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 851
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 836
    :pswitch_3
    iget v5, v6, Lcom/canhub/cropper/CropOverlayView;->mCropCornerRadius:F

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/canhub/cropper/CropOverlayView;->drawCornerShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    .line 879
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final drawCornerShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "cornerOffset"    # F
    .param p4, "cornerExtension"    # F
    .param p5, "radius"    # F

    .line 962
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 966
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropOverlayView;->drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    goto :goto_1

    .line 964
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/canhub/cropper/CropOverlayView;->drawCircleShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    goto :goto_1

    .line 967
    :pswitch_3
    nop

    .line 969
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final drawCorners(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 800
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 802
    .local v0, "lineWidth":F
    :goto_0
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 803
    .local v1, "cornerWidth":F
    sub-float v2, v1, v0

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 804
    .local v2, "cornerOffset":F
    div-float v4, v1, v3

    add-float/2addr v4, v2

    .line 805
    .local v4, "cornerExtension":F
    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v5

    aget v5, v6, v5

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 811
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Unrecognized crop shape"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :pswitch_0
    div-float v3, v1, v3

    goto :goto_2

    .line 809
    :pswitch_1
    div-float v3, v1, v3

    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerOffset:F

    add-float/2addr v3, v5

    .line 805
    :goto_2
    nop

    .line 813
    .local v3, "w":F
    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v5}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    .line 814
    .local v5, "rect":Landroid/graphics/RectF;
    invoke-virtual {v5, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 815
    invoke-direct {p0, p1, v5, v2, v4}, Lcom/canhub/cropper/CropOverlayView;->drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    .line 816
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    sget-object v7, Lcom/canhub/cropper/CropImageView$CropCornerShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-ne v6, v7, :cond_3

    .line 818
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCircleCornerFillColor:Ljava/lang/Integer;

    if-eqz v6, :cond_2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1232
    nop

    .local v6, "it":I
    const/4 v7, 0x0

    .line 818
    .local v7, "$i$a$-let-CropOverlayView$drawCorners$1":I
    sget-object v8, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    invoke-static {v8, v6}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintWithFill(Lcom/canhub/cropper/CropOverlayView$Companion;I)Landroid/graphics/Paint;

    move-result-object v6

    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-CropOverlayView$drawCorners$1":I
    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    iput-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 819
    invoke-direct {p0, p1, v5, v2, v4}, Lcom/canhub/cropper/CropOverlayView;->drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    .line 822
    .end local v0    # "lineWidth":F
    .end local v1    # "cornerWidth":F
    .end local v2    # "cornerOffset":F
    .end local v3    # "w":F
    .end local v4    # "cornerExtension":F
    .end local v5    # "rect":Landroid/graphics/RectF;
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final drawCropLabelText(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 635
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isCropLabelEnabled:Z

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 637
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 638
    .local v1, "xCoordinate":F
    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/16 v3, 0x32

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 639
    .local v2, "yCoordinate":F
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_0

    .local v3, "$this$drawCropLabelText_u24lambda_u2d3":Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 640
    .local v4, "$i$a$-apply-CropOverlayView$drawCropLabelText$1":I
    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 641
    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 642
    nop

    .line 639
    .end local v3    # "$this$drawCropLabelText_u24lambda_u2d3":Landroid/graphics/Paint;
    .end local v4    # "$i$a$-apply-CropOverlayView$drawCropLabelText$1":I
    nop

    .line 643
    :cond_0
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 644
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 646
    .end local v0    # "rect":Landroid/graphics/RectF;
    .end local v1    # "xCoordinate":F
    .end local v2    # "yCoordinate":F
    :cond_1
    return-void
.end method

.method private final drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 706
    .local v1, "sw":F
    :goto_0
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 707
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 708
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x3

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 709
    .local v3, "oneThirdCropWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    .local v5, "oneThirdCropHeight":F
    const/4 v4, 0x0

    .local v4, "x1":F
    const/4 v6, 0x0

    .local v6, "x2":F
    const/4 v7, 0x0

    .local v7, "y1":F
    const/4 v8, 0x0

    .line 714
    .local v8, "y2":F
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v9, :cond_1

    const/4 v9, -0x1

    goto :goto_1

    :cond_1
    sget-object v10, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v9

    aget v9, v10, v9

    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 774
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Unrecognized crop shape"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 716
    :pswitch_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/4 v10, 0x2

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v9, v1

    .line 717
    .local v9, "w":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v11, v10

    sub-float/2addr v11, v1

    .line 719
    .local v11, "h":F
    iget v10, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v3

    .line 720
    .end local v4    # "x1":F
    .local v10, "x1":F
    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    .line 721
    .end local v6    # "x2":F
    .local v4, "x2":F
    float-to-double v12, v11

    sub-float v6, v9, v3

    div-float/2addr v6, v9

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v6, v12

    .line 723
    .local v6, "yv":F
    nop

    .line 725
    nop

    .line 726
    iget v12, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v11

    sub-float v14, v12, v6

    .line 727
    nop

    .line 728
    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v11

    add-float v16, v12, v6

    .line 729
    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 724
    move-object/from16 v12, p1

    move v13, v10

    move-object/from16 v17, v15

    move v15, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 731
    nop

    .line 733
    nop

    .line 734
    iget v12, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v11

    sub-float v14, v12, v6

    .line 735
    nop

    .line 736
    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v11

    add-float v16, v12, v6

    .line 737
    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 732
    move-object/from16 v12, p1

    move v13, v4

    move-object/from16 v17, v15

    move v15, v4

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 740
    iget v12, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v5

    .line 741
    .end local v7    # "y1":F
    .local v12, "y1":F
    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v5

    .line 742
    .end local v8    # "y2":F
    .local v7, "y2":F
    float-to-double v13, v9

    sub-float v8, v11, v5

    div-float/2addr v8, v11

    move/from16 v20, v10

    move/from16 v19, v11

    .end local v10    # "x1":F
    .end local v11    # "h":F
    .local v19, "h":F
    .local v20, "x1":F
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v13, v10

    double-to-float v8, v13

    .line 743
    .local v8, "xv":F
    nop

    .line 745
    iget v10, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v9

    sub-float v14, v10, v8

    .line 746
    nop

    .line 747
    iget v10, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v9

    add-float v16, v10, v8

    .line 748
    nop

    .line 749
    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 744
    move-object/from16 v13, p1

    move v15, v12

    move/from16 v17, v12

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 751
    nop

    .line 753
    iget v10, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v9

    sub-float v14, v10, v8

    .line 754
    nop

    .line 755
    iget v10, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v9

    add-float v16, v10, v8

    .line 756
    nop

    .line 757
    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 752
    move v15, v7

    move/from16 v17, v7

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .end local v6    # "yv":F
    .end local v8    # "xv":F
    .end local v9    # "w":F
    .end local v19    # "h":F
    goto :goto_2

    .line 764
    .end local v12    # "y1":F
    .end local v20    # "x1":F
    .local v4, "x1":F
    .local v6, "x2":F
    .local v7, "y1":F
    .local v8, "y2":F
    :pswitch_1
    iget v9, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v3

    .line 765
    .end local v4    # "x1":F
    .local v9, "x1":F
    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    .line 766
    .end local v6    # "x2":F
    .local v4, "x2":F
    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    move v11, v9

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 767
    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v11, v4

    move v13, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 769
    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    .line 770
    .end local v7    # "y1":F
    .local v6, "y1":F
    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v5

    .line 771
    .end local v8    # "y2":F
    .local v7, "y2":F
    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->right:F

    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v12, v6

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 772
    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->right:F

    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v12, v7

    move v14, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 777
    .end local v1    # "sw":F
    .end local v2    # "rect":Landroid/graphics/RectF;
    .end local v3    # "oneThirdCropWidth":F
    .end local v4    # "x2":F
    .end local v5    # "oneThirdCropHeight":F
    .end local v6    # "y1":F
    .end local v7    # "y2":F
    .end local v9    # "x1":F
    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "cornerOffset"    # F
    .param p4, "cornerExtension"    # F

    .line 891
    nop

    .line 892
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p3

    .line 893
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p4

    .line 894
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, p3

    .line 895
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v5, v0, v1

    .line 896
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 891
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 898
    nop

    .line 899
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p4

    .line 900
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p3

    .line 901
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v4, v0, v1

    .line 902
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v5, v0, p3

    .line 903
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 898
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 906
    nop

    .line 907
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p3

    .line 908
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p4

    .line 909
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v4, v0, p3

    .line 910
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v5, v0, v1

    .line 911
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 906
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 913
    nop

    .line 914
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p4

    .line 915
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, p3

    .line 916
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v4, v0, v1

    .line 917
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float v5, v0, p3

    .line 918
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 913
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 921
    nop

    .line 922
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p3

    .line 923
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, p4

    .line 924
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, p3

    .line 925
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v5, v0, v1

    .line 926
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 921
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 928
    nop

    .line 929
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p4

    .line 930
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, p3

    .line 931
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v4, v0, v1

    .line 932
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v5, v0, p3

    .line 933
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 928
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 936
    nop

    .line 937
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p3

    .line 938
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, p4

    .line 939
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v4, v0, p3

    .line 940
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v5, v0, v1

    .line 941
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 936
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 943
    nop

    .line 944
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v2, v0, p4

    .line 945
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, p3

    .line 946
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v4, v0, v1

    .line 947
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v5, v0, p3

    .line 948
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 943
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 950
    return-void
.end method

.method private final fixCropWindowRectByRules(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 565
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x2

    if-gez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 567
    .local v0, "adj":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 568
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 570
    .end local v0    # "adj":F
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 572
    .restart local v0    # "adj":F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 573
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 575
    .end local v0    # "adj":F
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 576
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 577
    .restart local v0    # "adj":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 578
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 580
    .end local v0    # "adj":F
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 581
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 582
    .restart local v0    # "adj":F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 583
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 585
    .end local v0    # "adj":F
    :cond_3
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    .line 587
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 588
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 589
    .local v0, "leftLimit":F
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 590
    .local v2, "topLimit":F
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 591
    .local v3, "rightLimit":F
    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 593
    .local v4, "bottomLimit":F
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_4

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 594
    :cond_4
    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v2

    if-gez v5, :cond_5

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 595
    :cond_5
    iget v5, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_6

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 596
    :cond_6
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_7

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 598
    .end local v0    # "leftLimit":F
    .end local v2    # "topLimit":F
    .end local v3    # "rightLimit":F
    .end local v4    # "bottomLimit":F
    :cond_7
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_9

    .line 599
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 600
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 601
    .local v0, "adj":F
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 602
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .end local v0    # "adj":F
    goto :goto_0

    .line 604
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 605
    .restart local v0    # "adj":F
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 606
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 609
    .end local v0    # "adj":F
    :cond_9
    :goto_0
    return-void
.end method

.method private final initCropWindow()V
    .locals 13

    .line 495
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 496
    .local v0, "leftLimit":F
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 497
    .local v1, "topLimit":F
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 498
    .local v2, "rightLimit":F
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 499
    .local v3, "bottomLimit":F
    cmpg-float v4, v2, v0

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 500
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 502
    .local v4, "rect":Landroid/graphics/RectF;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    .line 503
    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v6, v2, v0

    mul-float/2addr v5, v6

    .line 504
    .local v5, "horizontalPadding":F
    iget v6, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v7, v3, v1

    mul-float/2addr v6, v7

    .line 505
    .local v6, "verticalPadding":F
    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-lez v7, :cond_1

    .line 507
    nop

    .line 508
    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v8}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v7, v0

    .line 507
    iput v7, v4, Landroid/graphics/RectF;->left:F

    .line 509
    nop

    .line 510
    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v8}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    .line 509
    iput v7, v4, Landroid/graphics/RectF;->top:F

    .line 511
    nop

    .line 512
    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v9}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 511
    iput v7, v4, Landroid/graphics/RectF;->right:F

    .line 513
    nop

    .line 514
    iget v7, v4, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v9}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 513
    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    .line 517
    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v4, Landroid/graphics/RectF;->left:F

    .line 518
    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v4, Landroid/graphics/RectF;->top:F

    .line 519
    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v4, Landroid/graphics/RectF;->right:F

    .line 520
    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 521
    :cond_1
    iget-boolean v7, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eqz v7, :cond_3

    cmpl-float v7, v2, v0

    if-lez v7, :cond_3

    cmpl-float v7, v3, v1

    if-lez v7, :cond_3

    .line 524
    sub-float v7, v2, v0

    sub-float v8, v3, v1

    div-float/2addr v7, v8

    .line 525
    .local v7, "bitmapAspectRatio":F
    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    cmpl-float v8, v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    if-lez v8, :cond_2

    .line 526
    add-float v8, v1, v6

    iput v8, v4, Landroid/graphics/RectF;->top:F

    .line 527
    sub-float v8, v3, v6

    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    .line 528
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    .line 530
    .local v8, "centerX":F
    iget v10, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 532
    nop

    .line 533
    iget-object v10, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v10}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v10

    .line 534
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v11

    iget v12, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 532
    nop

    .line 536
    .local v10, "cropWidth":F
    div-float v9, v10, v9

    .line 537
    .local v9, "halfCropWidth":F
    sub-float v11, v8, v9

    iput v11, v4, Landroid/graphics/RectF;->left:F

    .line 538
    add-float v11, v8, v9

    iput v11, v4, Landroid/graphics/RectF;->right:F

    .end local v8    # "centerX":F
    .end local v9    # "halfCropWidth":F
    .end local v10    # "cropWidth":F
    goto :goto_0

    .line 540
    :cond_2
    add-float v8, v0, v5

    iput v8, v4, Landroid/graphics/RectF;->left:F

    .line 541
    sub-float v8, v2, v5

    iput v8, v4, Landroid/graphics/RectF;->right:F

    .line 542
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    .line 544
    .local v8, "centerY":F
    nop

    .line 545
    iget-object v10, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v10}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v10

    .line 546
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v11

    iget v12, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 544
    nop

    .line 548
    .local v10, "cropHeight":F
    div-float v9, v10, v9

    .line 549
    .local v9, "halfCropHeight":F
    sub-float v11, v8, v9

    iput v11, v4, Landroid/graphics/RectF;->top:F

    .line 550
    add-float v11, v8, v9

    iput v11, v4, Landroid/graphics/RectF;->bottom:F

    .end local v7    # "bitmapAspectRatio":F
    .end local v8    # "centerY":F
    .end local v9    # "halfCropHeight":F
    .end local v10    # "cropHeight":F
    goto :goto_0

    .line 554
    :cond_3
    add-float v7, v0, v5

    iput v7, v4, Landroid/graphics/RectF;->left:F

    .line 555
    add-float v7, v1, v6

    iput v7, v4, Landroid/graphics/RectF;->top:F

    .line 556
    sub-float v7, v2, v5

    iput v7, v4, Landroid/graphics/RectF;->right:F

    .line 557
    sub-float v7, v3, v6

    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    .line 559
    :goto_0
    invoke-direct {p0, v4}, Lcom/canhub/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 560
    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v7, v4}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 561
    return-void

    .line 499
    .end local v4    # "rect":Landroid/graphics/RectF;
    .end local v5    # "horizontalPadding":F
    .end local v6    # "verticalPadding":F
    :cond_4
    :goto_1
    return-void
.end method

.method private final isNonStraightAngleRotated()Z
    .locals 5

    .line 1179
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v0, v0, v2

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private final onActionDown(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1040
    nop

    .line 1041
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/canhub/cropper/CropWindowHandler;->getMoveHandler(FFFLcom/canhub/cropper/CropImageView$CropShape;Z)Lcom/canhub/cropper/CropWindowMoveHandler;

    move-result-object v0

    .line 1040
    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    .line 1043
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 1044
    :cond_0
    return-void
.end method

.method private final onActionMove(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1060
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 1061
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mSnapRadius:F

    .line 1062
    .local v0, "snapRadius":F
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 1063
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-direct {p0, v1}, Lcom/canhub/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    const/4 v0, 0x0

    .line 1066
    :cond_0
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1067
    nop

    .line 1068
    nop

    .line 1069
    nop

    .line 1070
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 1071
    iget v7, p0, Lcom/canhub/cropper/CropOverlayView;->mViewWidth:I

    .line 1072
    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mViewHeight:I

    .line 1073
    nop

    .line 1074
    iget-boolean v10, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    .line 1075
    iget v11, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 1066
    move-object v3, v1

    move v4, p1

    move v5, p2

    move v9, v0

    invoke-virtual/range {v2 .. v11}, Lcom/canhub/cropper/CropWindowMoveHandler;->move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V

    .line 1077
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2, v1}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 1078
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 1079
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 1081
    .end local v0    # "snapRadius":F
    .end local v1    # "rect":Landroid/graphics/RectF;
    :cond_1
    return-void
.end method

.method private final onActionUp()V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    .line 1049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    .line 1050
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 1051
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 1053
    :cond_0
    return-void
.end method


# virtual methods
.method public final fixCurrentCropWindowRect()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 211
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 212
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1, v0}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 213
    return-void
.end method

.method public final getAspectRatioX()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    return v0
.end method

.method public final getAspectRatioY()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    return v0
.end method

.method public final getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    return-object v0
.end method

.method public final getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    return-object v0
.end method

.method public final getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    return-object v0
.end method

.method public final getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final isFixAspectRatio()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 619
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/canhub/cropper/CropImageView$Guidelines;->ON:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/canhub/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 623
    nop

    .line 622
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 627
    :cond_1
    :goto_0
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 628
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawCropLabelText(Landroid/graphics/Canvas;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 630
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    .line 631
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1013
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1015
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1030
    goto :goto_0

    .line 1026
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/canhub/cropper/CropOverlayView;->onActionMove(FF)V

    .line 1027
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1028
    move v1, v2

    goto :goto_0

    .line 1021
    :pswitch_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1022
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->onActionUp()V

    .line 1023
    move v1, v2

    goto :goto_0

    .line 1017
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/canhub/cropper/CropOverlayView;->onActionDown(FF)V

    .line 1018
    move v1, v2

    goto :goto_0

    .line 1032
    :cond_1
    nop

    .line 1012
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final resetCropOverlayView()V
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils;->getEMPTY_RECT_F()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 239
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 240
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 242
    :cond_0
    return-void
.end method

.method public final resetCropWindowRect()V
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 451
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 454
    :cond_0
    return-void
.end method

.method public final setAspectRatioX(I)V
    .locals 2
    .param p1, "aspectRatioX"    # I

    .line 338
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 339
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    if-eq v0, p1, :cond_1

    .line 340
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    .line 341
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 342
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 344
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 347
    :cond_1
    return-void

    .line 1232
    :cond_2
    const/4 v0, 0x0

    .line 338
    .local v0, "$i$a$-require-CropOverlayView$aspectRatioX$1":I
    nop

    .end local v0    # "$i$a$-require-CropOverlayView$aspectRatioX$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAspectRatioY(I)V
    .locals 2
    .param p1, "aspectRatioY"    # I

    .line 357
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 358
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    if-eq v0, p1, :cond_1

    .line 359
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    .line 360
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 361
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 363
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 366
    :cond_1
    return-void

    .line 1232
    :cond_2
    const/4 v0, 0x0

    .line 357
    .local v0, "$i$a$-require-CropOverlayView$aspectRatioY$1":I
    nop

    .end local v0    # "$i$a$-require-CropOverlayView$aspectRatioY$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBounds([FII)V
    .locals 5
    .param p1, "boundsPoints"    # [F
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .line 224
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 225
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    :goto_0
    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->mViewWidth:I

    .line 229
    iput p3, p0, Lcom/canhub/cropper/CropOverlayView;->mViewHeight:I

    .line 230
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 231
    .local v2, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, v0

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v3, v0

    if-nez v0, :cond_3

    move v1, v4

    :cond_3
    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 233
    .end local v2    # "cropRect":Landroid/graphics/RectF;
    :cond_5
    return-void
.end method

.method public final setCenterMoveEnabled(Z)Z
    .locals 1
    .param p1, "centerMoveEnabled"    # Z

    .line 398
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    if-eq v0, p1, :cond_0

    .line 399
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    .line 400
    const/4 v0, 0x1

    return v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setCropCornerRadius(F)V
    .locals 0
    .param p1, "cornerRadius"    # F

    .line 381
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropCornerRadius:F

    .line 382
    return-void
.end method

.method public final setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V
    .locals 1
    .param p1, "cropCornerShape"    # Lcom/canhub/cropper/CropImageView$CropCornerShape;

    const-string v0, "cropCornerShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-eq v0, p1, :cond_0

    .line 272
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 273
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 275
    :cond_0
    return-void
.end method

.method public final setCropLabelText(Ljava/lang/String;)V
    .locals 2
    .param p1, "textLabel"    # Ljava/lang/String;

    .line 288
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 289
    .local v1, "$i$a$-let-CropOverlayView$setCropLabelText$1":I
    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    .line 290
    nop

    .line 288
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-CropOverlayView$setCropLabelText$1":I
    nop

    .line 291
    :cond_0
    return-void
.end method

.method public final setCropLabelTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 304
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 305
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 306
    return-void
.end method

.method public final setCropLabelTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .line 297
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    .line 298
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 299
    return-void
.end method

.method public final setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V
    .locals 3
    .param p1, "cropShape"    # Lcom/canhub/cropper/CropImageView$CropShape;

    const-string v0, "cropShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-eq v0, p1, :cond_4

    .line 247
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 248
    sget-object v0, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-virtual {v0}, Lcom/canhub/cropper/common/CommonVersionCheck;->isAtLeastJ18()Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropShape;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getLayerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    .line 252
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 253
    :goto_0
    nop

    .line 254
    nop

    .line 252
    invoke-virtual {p0, v1, v2}, Lcom/canhub/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 256
    :cond_1
    iput-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    goto :goto_1

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/canhub/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 260
    iput-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    .line 263
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 265
    :cond_4
    return-void
.end method

.method public final setCropWindowChangeListener(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    .line 198
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    .line 199
    return-void
.end method

.method public final setCropWindowLimits(FFFF)V
    .locals 1
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "scaleFactorWidth"    # F
    .param p4, "scaleFactorHeight"    # F

    .line 431
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 432
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropWindowHandler;->setCropWindowLimits(FFFF)V

    .line 433
    return-void
.end method

.method public final setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    const-string/jumbo v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 206
    return-void
.end method

.method public final setCropperTextLabelVisibility(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->isCropLabelEnabled:Z

    .line 281
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 282
    return-void
.end method

.method public final setFixedAspectRatio(Z)V
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .line 325
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eq v0, p1, :cond_0

    .line 326
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    .line 327
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 329
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 332
    :cond_0
    return-void
.end method

.method public final setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V
    .locals 1
    .param p1, "guidelines"    # Lcom/canhub/cropper/CropImageView$Guidelines;

    const-string v0, "guidelines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-eq v0, p1, :cond_0

    .line 313
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 314
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 318
    :cond_0
    return-void
.end method

.method public final setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 3
    .param p1, "options"    # Lcom/canhub/cropper/CropImageOptions;

    const-string/jumbo v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    .line 462
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropWindowHandler;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    .line 463
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextColor(I)V

    .line 464
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextSize(F)V

    .line 465
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelText(Ljava/lang/String;)V

    .line 466
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    .line 467
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropCornerRadius(F)V

    .line 468
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V

    .line 469
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    .line 470
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 471
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V

    .line 472
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 473
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 474
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 475
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    .line 476
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCenterMoveEnabled(Z)Z

    .line 477
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    .line 478
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    .line 479
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    iget v2, p1, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 480
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerOffset:F

    .line 481
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    .line 482
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCircleCornerFillColor:Ljava/lang/Integer;

    .line 483
    nop

    .line 484
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    iget v2, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v0

    .line 483
    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 485
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    iget v2, p1, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    invoke-static {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaintOrNull(Lcom/canhub/cropper/CropOverlayView$Companion;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 486
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    invoke-static {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getNewPaint(Lcom/canhub/cropper/CropOverlayView$Companion;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 487
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    invoke-static {v0, p1}, Lcom/canhub/cropper/CropOverlayView$Companion;->access$getTextPaint(Lcom/canhub/cropper/CropOverlayView$Companion;Lcom/canhub/cropper/CropImageOptions;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    .line 488
    return-void
.end method

.method public final setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 439
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapUtils;->getEMPTY_RECT()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 440
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 442
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 445
    :cond_1
    return-void
.end method

.method public final setMaxCropResultSize(II)V
    .locals 1
    .param p1, "maxCropResultWidth"    # I
    .param p2, "maxCropResultHeight"    # I

    .line 418
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropWindowHandler;->setMaxCropResultSize(II)V

    .line 419
    return-void
.end method

.method public final setMinCropResultSize(II)V
    .locals 1
    .param p1, "minCropResultWidth"    # I
    .param p2, "minCropResultHeight"    # I

    .line 410
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropWindowHandler;->setMinCropResultSize(II)V

    .line 411
    return-void
.end method

.method public final setMultiTouchEnabled(Z)Z
    .locals 3
    .param p1, "multiTouchEnabled"    # Z

    .line 386
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 387
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    .line 388
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/canhub/cropper/CropOverlayView$ScaleListener;

    invoke-direct {v2, p0}, Lcom/canhub/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/canhub/cropper/CropOverlayView;)V

    check-cast v2, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 391
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 393
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final setSnapRadius(F)V
    .locals 0
    .param p1, "snapRadius"    # F

    .line 374
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mSnapRadius:F

    .line 375
    return-void
.end method
