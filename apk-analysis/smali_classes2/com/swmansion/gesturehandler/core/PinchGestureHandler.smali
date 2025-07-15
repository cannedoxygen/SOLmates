.class public final Lcom/swmansion/gesturehandler/core/PinchGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "PinchGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/PinchGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0014J\u0008\u0010\u001e\u001a\u00020\u0017H\u0014J\u0008\u0010\u001f\u001a\u00020\u0017H\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/PinchGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "()V",
        "<set-?>",
        "",
        "focalPointX",
        "getFocalPointX",
        "()F",
        "focalPointY",
        "getFocalPointY",
        "gestureListener",
        "Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;",
        "",
        "scale",
        "getScale",
        "()D",
        "scaleGestureDetector",
        "Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;",
        "spanSlop",
        "startingSpan",
        "velocity",
        "getVelocity",
        "activate",
        "",
        "force",
        "",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "sourceEvent",
        "onReset",
        "resetProgress",
        "react-native-gesture-handler_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private focalPointX:F

.field private focalPointY:F

.field private final gestureListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

.field private scale:D

.field private scaleGestureDetector:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

.field private spanSlop:F

.field private startingSpan:F

.field private velocity:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 13
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointX:F

    .line 15
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointY:F

    .line 21
    new-instance v0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler$gestureListener$1;-><init>(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;)V

    check-cast v0, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    .line 8
    return-void
.end method

.method public static final synthetic access$getSpanSlop$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;)F
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    .line 8
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->spanSlop:F

    return v0
.end method

.method public static final synthetic access$getStartingSpan$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;)F
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/PinchGestureHandler;

    .line 8
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->startingSpan:F

    return v0
.end method

.method public static final synthetic access$setScale$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;D)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/PinchGestureHandler;
    .param p1, "<set-?>"    # D

    .line 8
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->scale:D

    return-void
.end method

.method public static final synthetic access$setStartingSpan$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;F)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/PinchGestureHandler;
    .param p1, "<set-?>"    # F

    .line 8
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->startingSpan:F

    return-void
.end method

.method public static final synthetic access$setVelocity$p(Lcom/swmansion/gesturehandler/core/PinchGestureHandler;D)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/PinchGestureHandler;
    .param p1, "<set-?>"    # D

    .line 8
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->velocity:D

    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 86
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->resetProgress()V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    .line 90
    return-void
.end method

.method public final getFocalPointX()F
    .locals 1

    .line 13
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointX:F

    return v0
.end method

.method public final getFocalPointY()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointY:F

    return v0
.end method

.method public final getScale()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->scale:D

    return-wide v0
.end method

.method public final getVelocity()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->velocity:D

    return-wide v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->resetProgress()V

    .line 58
    new-instance v1, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v0, v2}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    .line 59
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 60
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->spanSlop:F

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointX:F

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointY:F

    .line 66
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->begin()V

    .line 68
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    if-eqz v0, :cond_2

    .local v0, "it":Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;
    const/4 v1, 0x0

    .line 70
    .local v1, "$i$a$-let-PinchGestureHandler$onHandle$1":I
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->transformPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 71
    .local v2, "point":Landroid/graphics/PointF;
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointX:F

    .line 72
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointY:F

    .line 73
    nop

    .line 69
    .end local v0    # "it":Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;
    .end local v1    # "$i$a$-let-PinchGestureHandler$onHandle$1":I
    .end local v2    # "point":Landroid/graphics/PointF;
    nop

    .line 75
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 76
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->end()V

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->fail()V

    .line 82
    :cond_4
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->scaleGestureDetector:Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    .line 94
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointX:F

    .line 95
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->focalPointY:F

    .line 96
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->resetProgress()V

    .line 97
    return-void
.end method

.method public resetProgress()V
    .locals 2

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->velocity:D

    .line 101
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/PinchGestureHandler;->scale:D

    .line 102
    return-void
.end method
