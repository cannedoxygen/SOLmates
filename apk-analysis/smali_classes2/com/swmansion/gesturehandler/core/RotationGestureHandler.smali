.class public final Lcom/swmansion/gesturehandler/core/RotationGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "RotationGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/RotationGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/RotationGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014J\u0008\u0010\u001c\u001a\u00020\u0015H\u0014J\u0008\u0010\u001d\u001a\u00020\u0015H\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/RotationGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "()V",
        "<set-?>",
        "",
        "anchorX",
        "getAnchorX",
        "()F",
        "anchorY",
        "getAnchorY",
        "gestureListener",
        "Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;",
        "",
        "rotation",
        "getRotation",
        "()D",
        "rotationGestureDetector",
        "Lcom/swmansion/gesturehandler/core/RotationGestureDetector;",
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
        "Companion",
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


# static fields
.field public static final Companion:Lcom/swmansion/gesturehandler/core/RotationGestureHandler$Companion;

.field private static final ROTATION_RECOGNITION_THRESHOLD:D = 0.08726646259971647


# instance fields
.field private anchorX:F

.field private anchorY:F

.field private final gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

.field private rotation:D

.field private rotationGestureDetector:Lcom/swmansion/gesturehandler/core/RotationGestureDetector;

.field private velocity:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/RotationGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 14
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorX:F

    .line 16
    iput v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorY:F

    .line 19
    nop

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 21
    nop

    .line 23
    new-instance v0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler$gestureListener$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler$gestureListener$1;-><init>(Lcom/swmansion/gesturehandler/core/RotationGestureHandler;)V

    check-cast v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    .line 8
    return-void
.end method

.method public static final synthetic access$setRotation$p(Lcom/swmansion/gesturehandler/core/RotationGestureHandler;D)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/RotationGestureHandler;
    .param p1, "<set-?>"    # D

    .line 8
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->rotation:D

    return-void
.end method

.method public static final synthetic access$setVelocity$p(Lcom/swmansion/gesturehandler/core/RotationGestureHandler;D)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/RotationGestureHandler;
    .param p1, "<set-?>"    # D

    .line 8
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->velocity:D

    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 72
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->resetProgress()V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    .line 76
    return-void
.end method

.method public final getAnchorX()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorX:F

    return v0
.end method

.method public final getAnchorY()F
    .locals 1

    .line 16
    iget v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorY:F

    return v0
.end method

.method public final getRotation()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->rotation:D

    return-wide v0
.end method

.method public final getVelocity()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->velocity:D

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

    .line 45
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->resetProgress()V

    .line 47
    new-instance v0, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;-><init>(Lcom/swmansion/gesturehandler/core/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/core/RotationGestureDetector;

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorX:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorY:F

    .line 53
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->begin()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/core/RotationGestureDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/core/RotationGestureDetector;

    if-eqz v0, :cond_2

    .local v0, "it":Lcom/swmansion/gesturehandler/core/RotationGestureDetector;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-let-RotationGestureHandler$onHandle$1":I
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->getAnchorX()F

    move-result v3

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/RotationGestureDetector;->getAnchorY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->transformPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 58
    .local v2, "point":Landroid/graphics/PointF;
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorX:F

    .line 59
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iput v3, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorY:F

    .line 60
    nop

    .line 56
    .end local v0    # "it":Lcom/swmansion/gesturehandler/core/RotationGestureDetector;
    .end local v1    # "$i$a$-let-RotationGestureHandler$onHandle$1":I
    .end local v2    # "point":Landroid/graphics/PointF;
    nop

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->end()V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->fail()V

    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/core/RotationGestureDetector;

    .line 80
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorX:F

    .line 81
    iput v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->anchorY:F

    .line 82
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->resetProgress()V

    .line 83
    return-void
.end method

.method public resetProgress()V
    .locals 2

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->velocity:D

    .line 87
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/RotationGestureHandler;->rotation:D

    .line 88
    return-void
.end method
