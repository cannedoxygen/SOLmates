.class public final Lcom/facebook/react/views/scroll/ReactScrollViewHelper;
.super Ljava/lang/Object;
.source "ReactScrollViewHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0008VWXYZ[\\]B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0007J+\u0010\u001e\u001a\u00020\u001c\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\"H\u0007J%\u0010&\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J5\u0010\'\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0010+J-\u0010,\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010-\u001a\u00020.H\u0002\u00a2\u0006\u0002\u0010/JG\u0010,\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010-\u001a\u00020.2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0008\u0008\u0002\u00100\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u00101J5\u0010,\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0010+J5\u00102\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u00103J%\u00104\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J+\u00105\u001a\u00020\u001c\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J\u0012\u00108\u001a\u00020\u000f2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0007JC\u0010;\u001a\u00020\u000f\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010<\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010?J\u0012\u0010@\u001a\u00020\u000f2\u0008\u0010A\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010B\u001a\u00020\u000f2\u0008\u0010C\u001a\u0004\u0018\u00010\u0004H\u0007JK\u0010D\u001a\u00020E\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010F\u001a\u00020\u000f2\u0006\u0010G\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010JJ/\u0010K\u001a\u00020\u001c\"\u001a\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f\u00a2\u0006\u0002\u0010$J\u0010\u0010L\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0007JA\u0010M\u001a\u00020\u001c\"\u001a\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u00103J1\u0010P\u001a\u00020\u001c\"\u001a\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J9\u0010P\u001a\u00020\u001c\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010Q\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020\u000f\u00a2\u0006\u0002\u00103JG\u0010S\u001a\u00020\u001c\" \u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u00010!*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0010+JO\u0010S\u001a\u00020\u001c\" \u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u00010!*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010T\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010UR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u0015*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006^"
    }
    d2 = {
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper;",
        "",
        "()V",
        "AUTO",
        "",
        "CONTENT_OFFSET_LEFT",
        "CONTENT_OFFSET_TOP",
        "DEBUG_MODE",
        "",
        "MOMENTUM_DELAY",
        "",
        "OVER_SCROLL_ALWAYS",
        "OVER_SCROLL_NEVER",
        "SCROLL_AWAY_PADDING_TOP",
        "SMOOTH_SCROLL_DURATION",
        "",
        "SNAP_ALIGNMENT_CENTER",
        "SNAP_ALIGNMENT_DISABLED",
        "SNAP_ALIGNMENT_END",
        "SNAP_ALIGNMENT_START",
        "TAG",
        "kotlin.jvm.PlatformType",
        "scrollListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;",
        "smoothScrollDurationInitialized",
        "addScrollListener",
        "",
        "listener",
        "dispatchMomentumEndOnAnimationEnd",
        "T",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
        "Landroid/view/ViewGroup;",
        "scrollView",
        "(Landroid/view/ViewGroup;)V",
        "emitLayoutEvent",
        "emitScrollBeginDragEvent",
        "emitScrollEndDragEvent",
        "xVelocity",
        "",
        "yVelocity",
        "(Landroid/view/ViewGroup;FF)V",
        "emitScrollEvent",
        "scrollEventType",
        "Lcom/facebook/react/views/scroll/ScrollEventType;",
        "(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V",
        "experimental_isSynchronous",
        "(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V",
        "emitScrollMomentumBeginEvent",
        "(Landroid/view/ViewGroup;II)V",
        "emitScrollMomentumEndEvent",
        "forceUpdateState",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
        "getDefaultScrollAnimationDuration",
        "context",
        "Landroid/content/Context;",
        "getNextFlingStartValue",
        "currentValue",
        "postAnimationValue",
        "velocity",
        "(Landroid/view/ViewGroup;III)I",
        "parseOverScrollMode",
        "jsOverScrollMode",
        "parseSnapToAlignment",
        "alignment",
        "predictFinalScrollPosition",
        "Landroid/graphics/Point;",
        "velocityX",
        "velocityY",
        "maximumOffsetX",
        "maximumOffsetY",
        "(Landroid/view/ViewGroup;IIII)Landroid/graphics/Point;",
        "registerFlingAnimator",
        "removeScrollListener",
        "smoothScrollTo",
        "x",
        "y",
        "updateFabricScrollState",
        "scrollX",
        "scrollY",
        "updateStateOnScrollChanged",
        "experimental_synchronous",
        "(Landroid/view/ViewGroup;FFZ)V",
        "HasFlingAnimator",
        "HasScrollEventThrottle",
        "HasScrollState",
        "HasSmoothScroll",
        "HasStateWrapper",
        "OverScrollerDurationGetter",
        "ReactScrollViewScrollState",
        "ScrollListener",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AUTO:Ljava/lang/String; = "auto"

.field private static final CONTENT_OFFSET_LEFT:Ljava/lang/String; = "contentOffsetLeft"

.field private static final CONTENT_OFFSET_TOP:Ljava/lang/String; = "contentOffsetTop"

.field private static final DEBUG_MODE:Z = false

.field public static final INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

.field public static final MOMENTUM_DELAY:J = 0x14L

.field public static final OVER_SCROLL_ALWAYS:Ljava/lang/String; = "always"

.field public static final OVER_SCROLL_NEVER:Ljava/lang/String; = "never"

.field private static final SCROLL_AWAY_PADDING_TOP:Ljava/lang/String; = "scrollAwayPaddingTop"

.field private static SMOOTH_SCROLL_DURATION:I = 0x0

.field public static final SNAP_ALIGNMENT_CENTER:I = 0x2

.field public static final SNAP_ALIGNMENT_DISABLED:I = 0x0

.field public static final SNAP_ALIGNMENT_END:I = 0x3

.field public static final SNAP_ALIGNMENT_START:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smoothScrollDurationInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;-><init>()V

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    .line 33
    const-class v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    const/16 v0, 0xfa

    sput v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public static final dispatchMomentumEndOnAnimationEnd(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 420
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    .line 421
    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 423
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$dispatchMomentumEndOnAnimationEnd$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$dispatchMomentumEndOnAnimationEnd$1;-><init>(Landroid/view/ViewGroup;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 422
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    return-void
.end method

.method public static final emitLayoutEvent(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "scrollView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 150
    .local v1, "scrollListener":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 152
    .end local v1    # "scrollListener":Ljava/lang/ref/WeakReference;
    :cond_1
    return-void
.end method

.method public static final emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 69
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->BEGIN_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    .line 70
    return-void
.end method

.method public static final emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V
    .locals 8
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "xVelocity"    # F
    .param p2, "yVelocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;FF)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 76
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->END_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static final emitScrollEvent(Landroid/view/ViewGroup;FF)V
    .locals 8
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "xVelocity"    # F
    .param p2, "yVelocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;FF)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 62
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method private final emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V
    .locals 8
    .param p1, "scrollView"    # Landroid/view/ViewGroup;
    .param p2, "scrollEventType"    # Lcom/facebook/react/views/scroll/ScrollEventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;",
            "Lcom/facebook/react/views/scroll/ScrollEventType;",
            ")V"
        }
    .end annotation

    .line 97
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method private final emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V
    .locals 20
    .param p1, "scrollView"    # Landroid/view/ViewGroup;
    .param p2, "scrollEventType"    # Lcom/facebook/react/views/scroll/ScrollEventType;
    .param p3, "xVelocity"    # F
    .param p4, "yVelocity"    # F
    .param p5, "experimental_isSynchronous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;",
            "Lcom/facebook/react/views/scroll/ScrollEventType;",
            "FFZ)V"
        }
    .end annotation

    .line 107
    move-object/from16 v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 111
    .local v1, "now":J
    move-object v3, v0

    check-cast v3, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;

    invoke-interface {v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->getScrollEventThrottle()I

    move-result v3

    int-to-long v3, v3

    move-object v5, v0

    check-cast v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;

    invoke-interface {v5}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->getLastScrollDispatchTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    const-wide/16 v7, 0x11

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 116
    .local v3, "contentView":Landroid/view/View;
    :cond_1
    sget-object v4, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 117
    .local v5, "scrollListener":Ljava/lang/ref/WeakReference;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    if-eqz v6, :cond_2

    move-object/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    invoke-interface {v6, v0, v15, v14, v13}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onScroll(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    goto :goto_0

    :cond_2
    move-object/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    goto :goto_0

    .line 119
    .end local v5    # "scrollListener":Ljava/lang/ref/WeakReference;
    :cond_3
    move-object/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/react/bridge/ReactContext;

    .line 120
    .local v4, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v5

    .line 126
    .local v5, "surfaceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v4, v6}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v6

    .line 127
    .local v6, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v6, :cond_4

    .line 128
    nop

    .line 129
    sget-object v7, Lcom/facebook/react/views/scroll/ScrollEvent;->Companion:Lcom/facebook/react/views/scroll/ScrollEvent$Companion;

    .line 130
    nop

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    .line 132
    nop

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    int-to-float v11, v8

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v8

    int-to-float v12, v8

    .line 135
    nop

    .line 136
    nop

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 138
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v18

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    .line 141
    nop

    .line 129
    move v8, v5

    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, p5

    invoke-virtual/range {v7 .. v19}, Lcom/facebook/react/views/scroll/ScrollEvent$Companion;->obtain(IILcom/facebook/react/views/scroll/ScrollEventType;FFFFIIIIZ)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/uimanager/events/Event;

    .line 128
    invoke-interface {v6, v7}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 142
    move-object v7, v0

    check-cast v7, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;

    invoke-interface {v7, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->setLastScrollDispatchTime(J)V

    .line 144
    :cond_4
    return-void
.end method

.method static synthetic emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V
    .locals 6

    .line 100
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 105
    const/4 p5, 0x0

    move v5, p5

    goto :goto_0

    .line 100
    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V

    return-void
.end method

.method public static final emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V
    .locals 8
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "xVelocity"    # I
    .param p2, "yVelocity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 83
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    .line 84
    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_BEGIN:Lcom/facebook/react/views/scroll/ScrollEventType;

    int-to-float v3, p1

    int-to-float v4, p2

    .line 83
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static final emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 91
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_END:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    .line 92
    return-void
.end method

.method public static final forceUpdateState(Landroid/view/ViewGroup;)V
    .locals 14
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 316
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    .line 317
    .local v0, "scrollState":Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getScrollAwayPaddingTop()I

    move-result v1

    .line 318
    .local v1, "scrollAwayPaddingTop":I
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLastStateUpdateScroll()Landroid/graphics/Point;

    move-result-object v2

    .line 319
    .local v2, "scrollPos":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 320
    .local v3, "scrollX":I
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 321
    .local v4, "scrollY":I
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLayoutDirection()I

    move-result v5

    .line 323
    .local v5, "layoutDirection":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 326
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 327
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 328
    .local v6, "contentWidth":I
    :cond_0
    sub-int v8, v6, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    neg-int v6, v8

    .end local v6    # "contentWidth":I
    .end local v7    # "child":Landroid/view/View;
    goto :goto_0

    .line 330
    :cond_1
    move v6, v3

    .line 323
    :goto_0
    nop

    .line 322
    nop

    .line 332
    .local v6, "fabricScrollX":I
    sget-boolean v7, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v7, :cond_2

    .line 334
    sget-object v8, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    .line 335
    nop

    .line 336
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 337
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 338
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 339
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 333
    const-string/jumbo v9, "updateFabricScrollState[%d] scrollX %d scrollY %d fabricScrollX %d"

    invoke-static/range {v8 .. v13}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    :cond_2
    move-object v7, p0

    check-cast v7, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;

    invoke-interface {v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;->getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object v7

    .line 342
    .local v7, "stateWrapper":Lcom/facebook/react/uimanager/StateWrapper;
    if-eqz v7, :cond_3

    .line 343
    new-instance v8, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v8}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v8, Lcom/facebook/react/bridge/WritableMap;

    .line 344
    .local v8, "newStateData":Lcom/facebook/react/bridge/WritableMap;
    int-to-float v9, v3

    invoke-static {v9}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v9

    float-to-double v9, v9

    const-string v11, "contentOffsetLeft"

    invoke-interface {v8, v11, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 345
    int-to-float v9, v4

    invoke-static {v9}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v9

    float-to-double v9, v9

    const-string v11, "contentOffsetTop"

    invoke-interface {v8, v11, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 346
    nop

    .line 347
    int-to-float v9, v1

    invoke-static {v9}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v9

    float-to-double v9, v9

    .line 346
    const-string/jumbo v11, "scrollAwayPaddingTop"

    invoke-interface {v8, v11, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 348
    invoke-interface {v7, v8}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;)V

    .line 350
    .end local v8    # "newStateData":Lcom/facebook/react/bridge/WritableMap;
    :cond_3
    return-void
.end method

.method public static final getDefaultScrollAnimationDuration(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 186
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->smoothScrollDurationInitialized:Z

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->smoothScrollDurationInitialized:Z

    .line 188
    nop

    .line 189
    :try_start_0
    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "overScrollerDurationGetter":Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;->getScrollAnimationDuration()I

    move-result v1

    sput v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "overScrollerDurationGetter":Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    .line 193
    :cond_0
    :goto_0
    sget v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    return v0
.end method

.method public static final getNextFlingStartValue(Landroid/view/ViewGroup;III)I
    .locals 4
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "currentValue"    # I
    .param p2, "postAnimationValue"    # I
    .param p3, "velocity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ">(TT;III)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 262
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    .line 263
    .local v0, "scrollState":Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int v2, p3, v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 265
    .local v2, "velocityDirectionMask":I
    :goto_0
    sub-int v3, p2, p1

    mul-int/2addr v3, v2

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 264
    :cond_1
    nop

    .line 271
    .local v1, "isMovingTowardsAnimatedValue":Z
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    .line 275
    :cond_2
    move v3, p1

    goto :goto_2

    .line 273
    :cond_3
    :goto_1
    move v3, p2

    .line 271
    :goto_2
    return v3
.end method

.method public static final parseOverScrollMode(Ljava/lang/String;)I
    .locals 3
    .param p0, "jsOverScrollMode"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 156
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "never"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x2

    goto :goto_3

    .line 156
    :sswitch_1
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :sswitch_2
    const-string v1, "always"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 163
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong overScrollMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    goto :goto_3

    .line 157
    :cond_3
    :goto_2
    nop

    .line 156
    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x54506df1 -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x63dca8c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final parseSnapToAlignment(Ljava/lang/String;)I
    .locals 3
    .param p0, "alignment"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 170
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 171
    goto :goto_0

    .line 172
    :cond_0
    const-string/jumbo v1, "start"

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    move v0, v2

    goto :goto_0

    .line 174
    :cond_1
    const-string v1, "center"

    invoke-static {v1, p0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    const/4 v0, 0x2

    goto :goto_0

    .line 176
    :cond_2
    const-string v1, "end"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    const/4 v0, 0x3

    goto :goto_0

    .line 179
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong snap alignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    nop

    .line 170
    :goto_0
    return v0
.end method

.method public static final predictFinalScrollPosition(Landroid/view/ViewGroup;IIII)Landroid/graphics/Point;
    .locals 18
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I
    .param p3, "maximumOffsetX"    # I
    .param p4, "maximumOffsetY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ">(TT;IIII)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 448
    move-object/from16 v0, p0

    move-object v1, v0

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v1

    .line 452
    .local v1, "scrollState":Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 453
    .local v2, "scroller":Landroid/widget/OverScroller;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getDecelerationRate()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    .line 457
    .local v3, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int v15, v4, v5

    .line 458
    .local v15, "height":I
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getFinalAnimatedPositionScroll()Landroid/graphics/Point;

    move-result-object v14

    .line 459
    .local v14, "finalAnimatedPositionScroll":Landroid/graphics/Point;
    nop

    .line 460
    nop

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    iget v5, v14, Landroid/graphics/Point;->x:I

    .line 460
    move/from16 v13, p1

    invoke-static {v0, v4, v5, v13}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v5

    .line 462
    nop

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget v6, v14, Landroid/graphics/Point;->y:I

    .line 462
    move/from16 v12, p2

    invoke-static {v0, v4, v6, v12}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v6

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
    div-int/lit8 v16, v3, 0x2

    .line 471
    div-int/lit8 v17, v15, 0x2

    .line 459
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p3

    move/from16 v12, p4

    move/from16 v13, v16

    move-object/from16 v16, v14

    .end local v14    # "finalAnimatedPositionScroll":Landroid/graphics/Point;
    .local v16, "finalAnimatedPositionScroll":Landroid/graphics/Point;
    move/from16 v14, v17

    invoke-virtual/range {v4 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 473
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method public static final removeScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public static final smoothScrollTo(Landroid/view/ViewGroup;II)V
    .locals 5
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 228
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "smoothScrollTo[%d] x %d y %d"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 234
    .local v0, "flingAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 235
    :cond_1
    sget-object v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->registerFlingAnimator(Landroid/view/ViewGroup;)V

    .line 237
    :cond_2
    move-object v1, p0

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v1

    .line 238
    .local v1, "scrollState":Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    invoke-virtual {v1, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setFinalAnimatedPositionScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    .line 240
    .local v2, "scrollX":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 243
    .local v3, "scrollY":I
    if-eq v2, p1, :cond_3

    .line 244
    move-object v4, p0

    check-cast v4, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    invoke-interface {v4, v2, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->startFlingAnimator(II)V

    .line 246
    :cond_3
    if-eq v3, p2, :cond_4

    .line 247
    move-object v4, p0

    check-cast v4, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    invoke-interface {v4, v3, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->startFlingAnimator(II)V

    .line 249
    :cond_4
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->fixIncorrectScrollViewStateUpdateOnAndroid()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    sget-object v4, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {v4, p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)V

    .line 252
    :cond_5
    return-void
.end method

.method public static final updateFabricScrollState(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 285
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)V

    .line 286
    return-void
.end method

.method public static final updateStateOnScrollChanged(Landroid/view/ViewGroup;FF)V
    .locals 1
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "xVelocity"    # F
    .param p2, "yVelocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;FF)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 363
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateStateOnScrollChanged(Landroid/view/ViewGroup;FFZ)V

    .line 364
    return-void
.end method

.method public static final updateStateOnScrollChanged(Landroid/view/ViewGroup;FFZ)V
    .locals 9
    .param p0, "scrollView"    # Landroid/view/ViewGroup;
    .param p1, "xVelocity"    # F
    .param p2, "yVelocity"    # F
    .param p3, "experimental_synchronous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;FFZ)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 382
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)V

    .line 383
    sget-object v3, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    .line 384
    sget-object v5, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 383
    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V

    .line 385
    return-void
.end method


# virtual methods
.method public final registerFlingAnimator(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "scrollView"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;)V"
        }
    .end annotation

    .line 392
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    .line 393
    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 395
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$registerFlingAnimator$1;

    invoke-direct {v1, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$registerFlingAnimator$1;-><init>(Landroid/view/ViewGroup;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 394
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    return-void
.end method

.method public final updateFabricScrollState(Landroid/view/ViewGroup;II)V
    .locals 5
    .param p1, "scrollView"    # Landroid/view/ViewGroup;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;II)V"
        }
    .end annotation

    .line 295
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 296
    const-string/jumbo v4, "updateFabricScrollState[%d] scrollX %d scrollY %d"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 300
    return-void

    .line 302
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    .line 304
    .local v0, "scrollState":Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLastStateUpdateScroll()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    return-void

    .line 307
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setLastStateUpdateScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 308
    invoke-static {p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->forceUpdateState(Landroid/view/ViewGroup;)V

    .line 309
    return-void
.end method
