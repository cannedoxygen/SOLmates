.class public final Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;
.super Ljava/lang/Object;
.source "ThreeFingerLongPressDetector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;",
        "",
        "longPressListener",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getLongPressListener",
        "()Lkotlin/jvm/functions/Function0;",
        "startPosition",
        "",
        "Landroid/view/MotionEvent$PointerCoords;",
        "[Landroid/view/MotionEvent$PointerCoords;",
        "startTime",
        "",
        "startedDetecting",
        "",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "expo-dev-menu_debug"
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
.field private final longPressListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private startPosition:[Landroid/view/MotionEvent$PointerCoords;

.field private startTime:J

.field private startedDetecting:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "longPressListener"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "longPressListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->longPressListener:Lkotlin/jvm/functions/Function0;

    .line 22
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startTime:J

    .line 23
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startPosition:[Landroid/view/MotionEvent$PointerCoords;

    .line 20
    return-void
.end method


# virtual methods
.method public final getLongPressListener()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->longPressListener:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 29
    iget-boolean v0, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startedDetecting:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 30
    iput-boolean v3, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startedDetecting:Z

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startTime:J

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 33
    iget-object v1, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startPosition:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 38
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v2, :cond_4

    goto :goto_5

    .line 43
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_7

    .line 44
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 45
    .local v1, "out":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 46
    nop

    .line 47
    iget v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v5, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startPosition:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    cmpl-double v3, v5, v7

    if-gtz v3, :cond_6

    .line 48
    iget v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v5, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startPosition:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    cmpl-double v3, v5, v7

    if-lez v3, :cond_5

    goto :goto_4

    .line 43
    .end local v1    # "out":Landroid/view/MotionEvent$PointerCoords;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 50
    .restart local v1    # "out":Landroid/view/MotionEvent$PointerCoords;
    :cond_6
    :goto_4
    iput-boolean v4, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startedDetecting:Z

    .line 51
    return-void

    .line 55
    .end local v0    # "i":I
    .end local v1    # "out":Landroid/view/MotionEvent$PointerCoords;
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 56
    iget-object v0, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->longPressListener:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 57
    iput-boolean v4, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startedDetecting:Z

    .line 59
    :cond_8
    return-void

    .line 39
    :cond_9
    :goto_5
    iput-boolean v4, p0, Lexpo/modules/devmenu/detectors/ThreeFingerLongPressDetector;->startedDetecting:Z

    .line 40
    return-void
.end method
