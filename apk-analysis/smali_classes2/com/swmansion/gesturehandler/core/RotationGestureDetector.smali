.class public final Lcom/swmansion/gesturehandler/core/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001!B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u000e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\""
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/RotationGestureDetector;",
        "",
        "gestureListener",
        "Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;",
        "(Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;)V",
        "<set-?>",
        "",
        "anchorX",
        "getAnchorX",
        "()F",
        "anchorY",
        "getAnchorY",
        "currentTime",
        "",
        "isInProgress",
        "",
        "pointerIds",
        "",
        "previousAngle",
        "",
        "previousTime",
        "rotation",
        "getRotation",
        "()D",
        "timeDelta",
        "getTimeDelta",
        "()J",
        "finish",
        "",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "updateCurrent",
        "OnRotationGestureListener",
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
.field private anchorX:F

.field private anchorY:F

.field private currentTime:J

.field private final gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

.field private isInProgress:Z

.field private final pointerIds:[I

.field private previousAngle:D

.field private previousTime:J

.field private rotation:D


# direct methods
.method public constructor <init>(Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 1
    .param p1, "gestureListener"    # Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    .line 6
    return-void
.end method

.method private final finish()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    .line 91
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;->onRotationEnd(Lcom/swmansion/gesturehandler/core/RotationGestureDetector;)V

    .line 93
    :cond_0
    return-void
.end method

.method private final updateCurrent(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->currentTime:J

    iput-wide v2, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->previousTime:J

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->currentTime:J

    .line 58
    iget-object v2, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 59
    .local v2, "firstPointerIndex":I
    iget-object v3, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 60
    .local v3, "secondPointerIndex":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 61
    .local v4, "firstPtX":F
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 62
    .local v5, "firstPtY":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 63
    .local v6, "secondPtX":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 64
    .local v7, "secondPtY":F
    sub-float v8, v6, v4

    .line 65
    .local v8, "vectorX":F
    sub-float v9, v7, v5

    .line 66
    .local v9, "vectorY":F
    add-float v10, v4, v6

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    iput v10, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->anchorX:F

    .line 67
    add-float v10, v5, v7

    mul-float/2addr v10, v11

    iput v10, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->anchorY:F

    .line 70
    float-to-double v10, v9

    float-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    neg-double v10, v10

    .line 71
    .local v10, "angle":D
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->previousAngle:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 72
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 73
    :cond_0
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->previousAngle:D

    sub-double/2addr v12, v10

    .line 71
    :goto_0
    iput-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    .line 75
    iput-wide v10, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->previousAngle:D

    .line 76
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 77
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    sub-double/2addr v12, v14

    iput-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    goto :goto_1

    .line 78
    :cond_1
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    const-wide v16, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v12, v12, v16

    if-gez v12, :cond_2

    .line 79
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    add-double/2addr v12, v14

    iput-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    .line 81
    :cond_2
    :goto_1
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v12, v12, v16

    if-lez v12, :cond_3

    .line 82
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    sub-double/2addr v12, v14

    iput-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    goto :goto_2

    .line 83
    :cond_3
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    const-wide v16, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v12, v12, v16

    if-gez v12, :cond_4

    .line 84
    iget-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    add-double/2addr v12, v14

    iput-wide v12, v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    .line 86
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final getAnchorX()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->anchorX:F

    return v0
.end method

.method public final getAnchorY()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->anchorY:F

    return v0
.end method

.method public final getRotation()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->rotation:D

    return-wide v0
.end method

.method public final getTimeDelta()J
    .locals 4

    .line 50
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->currentTime:J

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->previousTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 118
    .local v0, "pointerId":I
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    aget v4, v4, v2

    if-ne v0, v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v4, :cond_0

    invoke-interface {v4, p0}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;->onRotationEnd(Lcom/swmansion/gesturehandler/core/RotationGestureDetector;)V

    .line 123
    :cond_0
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    invoke-static {v4, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    aget v4, v4, v2

    if-ne v0, v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    iget-object v5, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    aget v5, v5, v3

    aput v5, v4, v2

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    aput v1, v4, v3

    .line 128
    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    .end local v0    # "pointerId":I
    goto :goto_0

    .line 102
    :pswitch_2
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    aput v1, v0, v3

    .line 104
    iput-boolean v3, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->previousTime:J

    .line 106
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->previousAngle:D

    .line 107
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->updateCurrent(Landroid/view/MotionEvent;)V

    .line 108
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;->onRotationBegin(Lcom/swmansion/gesturehandler/core/RotationGestureDetector;)Z

    goto :goto_0

    .line 110
    :pswitch_3
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    if-eqz v0, :cond_2

    .line 111
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->updateCurrent(Landroid/view/MotionEvent;)V

    .line 112
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;->onRotation(Lcom/swmansion/gesturehandler/core/RotationGestureDetector;)Z

    goto :goto_0

    .line 131
    :pswitch_4
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->finish()V

    goto :goto_0

    .line 98
    :pswitch_5
    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->isInProgress:Z

    .line 99
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    aput v4, v0, v2

    .line 100
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->pointerIds:[I

    aput v1, v0, v3

    .line 133
    :cond_2
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
