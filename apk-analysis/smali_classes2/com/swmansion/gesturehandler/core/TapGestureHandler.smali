.class public final Lcom/swmansion/gesturehandler/core/TapGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "TapGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/TapGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/TapGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 12\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001aH\u0014J\u0018\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0014J\u0008\u0010#\u001a\u00020\u001aH\u0014J\u0008\u0010$\u001a\u00020\u001aH\u0016J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\nJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\rJ\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\nJ\u000e\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\nJ\u000e\u0010-\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004J\u0008\u0010/\u001a\u00020\u001cH\u0002J\u0008\u00100\u001a\u00020\u001aH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/TapGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "()V",
        "currentMaxNumberOfPointers",
        "",
        "failDelayed",
        "Ljava/lang/Runnable;",
        "handler",
        "Landroid/os/Handler;",
        "lastX",
        "",
        "lastY",
        "maxDelayMs",
        "",
        "maxDeltaX",
        "maxDeltaY",
        "maxDistSq",
        "maxDurationMs",
        "minNumberOfPointers",
        "numberOfTaps",
        "offsetX",
        "offsetY",
        "startX",
        "startY",
        "tapsSoFar",
        "activate",
        "",
        "force",
        "",
        "endTap",
        "onCancel",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "sourceEvent",
        "onReset",
        "resetConfig",
        "setMaxDelayMs",
        "setMaxDist",
        "maxDist",
        "setMaxDurationMs",
        "setMaxDx",
        "deltaX",
        "setMaxDy",
        "deltaY",
        "setMinNumberOfPointers",
        "setNumberOfTaps",
        "shouldFail",
        "startTap",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/core/TapGestureHandler$Companion;

.field private static final DEFAULT_MAX_DELAY_MS:J = 0xc8L

.field private static final DEFAULT_MAX_DURATION_MS:J = 0x1f4L

.field private static final DEFAULT_MIN_NUMBER_OF_POINTERS:I = 0x1

.field private static final DEFAULT_NUMBER_OF_TAPS:I = 0x1

.field private static final MAX_VALUE_IGNORE:F = 1.4E-45f


# instance fields
.field private currentMaxNumberOfPointers:I

.field private final failDelayed:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private lastX:F

.field private lastY:F

.field private maxDelayMs:J

.field private maxDeltaX:F

.field private maxDeltaY:F

.field private maxDistSq:F

.field private maxDurationMs:J

.field private minNumberOfPointers:I

.field private numberOfTaps:I

.field private offsetX:F

.field private offsetY:F

.field private startX:F

.field private startY:F

.field private tapsSoFar:I


# direct methods
.method public static synthetic $r8$lambda$im8uXJLFhNbSEBt2GsZ4lRpRb3Q(Lcom/swmansion/gesturehandler/core/TapGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->failDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/TapGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/TapGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/TapGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaX:F

    .line 12
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaY:F

    .line 13
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDistSq:F

    .line 14
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDurationMs:J

    .line 15
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDelayMs:J

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->numberOfTaps:I

    .line 17
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->minNumberOfPointers:I

    .line 18
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->currentMaxNumberOfPointers:I

    .line 27
    new-instance v1, Lcom/swmansion/gesturehandler/core/TapGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/TapGestureHandler;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->failDelayed:Ljava/lang/Runnable;

    .line 29
    nop

    .line 30
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 31
    nop

    .line 10
    return-void
.end method

.method private final endTap()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->tapsSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->tapsSoFar:I

    iget v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->tapsSoFar:I

    iget v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->numberOfTaps:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->currentMaxNumberOfPointers:I

    iget v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->minNumberOfPointers:I

    if-lt v0, v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->activate()V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->failDelayed:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :goto_1
    return-void
.end method

.method private static final failDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/TapGestureHandler;)V
    .locals 1
    .param p0, "this$0"    # Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->fail()V

    return-void
.end method

.method private final shouldFail()Z
    .locals 7

    .line 95
    iget v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 96
    .local v0, "dx":F
    iget v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaX:F

    const/4 v2, 0x1

    cmpg-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaX:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 97
    return v4

    .line 99
    :cond_1
    iget v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startY:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetY:F

    add-float/2addr v1, v5

    .line 100
    .local v1, "dy":F
    iget v5, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaY:F

    cmpg-float v5, v5, v2

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 101
    return v4

    .line 103
    :cond_3
    mul-float v5, v1, v1

    mul-float v6, v0, v0

    add-float/2addr v5, v6

    .line 104
    .local v5, "dist":F
    iget v6, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDistSq:F

    cmpg-float v2, v6, v2

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-nez v2, :cond_5

    iget v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDistSq:F

    cmpl-float v2, v5, v2

    if-lez v2, :cond_5

    move v3, v4

    :cond_5
    return v3
.end method

.method private final startTap()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->failDelayed:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 151
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->end()V

    .line 153
    return-void
.end method

.method protected onCancel()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    :cond_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->shouldActivateWithMouse(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->getState()I

    move-result v0

    .line 113
    .local v0, "state":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 114
    .local v1, "action":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 115
    const/4 v3, 0x0

    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetX:F

    .line 116
    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetY:F

    .line 117
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, p2, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startX:F

    .line 118
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, p2, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startY:F

    .line 120
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 128
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, p2, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastX:F

    .line 129
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, p2, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastY:F

    goto :goto_0

    .line 121
    :pswitch_0
    iget v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetX:F

    iget v4, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastX:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startX:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetX:F

    .line 122
    iget v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetY:F

    iget v4, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startY:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->offsetY:F

    .line 123
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, p2, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastX:F

    .line 124
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, p2, v2}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastY:F

    .line 125
    iget v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastX:F

    iput v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startX:F

    .line 126
    iget v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->lastY:F

    iput v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startY:F

    .line 131
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->currentMaxNumberOfPointers:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->currentMaxNumberOfPointers:I

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->shouldFail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->fail()V

    goto :goto_2

    .line 136
    :cond_3
    if-nez v0, :cond_4

    .line 137
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 138
    :sswitch_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->begin()V

    .line 140
    :goto_1
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startTap()V

    goto :goto_2

    .line 141
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 142
    sparse-switch v1, :sswitch_data_1

    goto :goto_2

    .line 143
    :sswitch_1
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->endTap()V

    goto :goto_2

    .line 145
    :sswitch_2
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->startTap()V

    .line 148
    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onReset()V
    .locals 2

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->tapsSoFar:I

    .line 161
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->currentMaxNumberOfPointers:I

    .line 162
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetConfig()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaX:F

    .line 36
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaY:F

    .line 37
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDistSq:F

    .line 38
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDurationMs:J

    .line 39
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDelayMs:J

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->numberOfTaps:I

    .line 41
    iput v0, p0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->minNumberOfPointers:I

    .line 42
    return-void
.end method

.method public final setMaxDelayMs(J)Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .locals 2
    .param p1, "maxDelayMs"    # J

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .local v0, "$this$setMaxDelayMs_u24lambda_u242":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    const/4 v1, 0x0

    .line 49
    .local v1, "$i$a$-apply-TapGestureHandler$setMaxDelayMs$1":I
    iput-wide p1, v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDelayMs:J

    .line 50
    nop

    .line 48
    .end local v0    # "$this$setMaxDelayMs_u24lambda_u242":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .end local v1    # "$i$a$-apply-TapGestureHandler$setMaxDelayMs$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .line 50
    return-object v0
.end method

.method public final setMaxDist(F)Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .locals 3
    .param p1, "maxDist"    # F

    .line 64
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .local v0, "$this$setMaxDist_u24lambda_u246":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-apply-TapGestureHandler$setMaxDist$1":I
    mul-float v2, p1, p1

    iput v2, v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDistSq:F

    .line 66
    nop

    .line 64
    .end local v0    # "$this$setMaxDist_u24lambda_u246":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .end local v1    # "$i$a$-apply-TapGestureHandler$setMaxDist$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .line 66
    return-object v0
.end method

.method public final setMaxDurationMs(J)Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .locals 2
    .param p1, "maxDurationMs"    # J

    .line 52
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .local v0, "$this$setMaxDurationMs_u24lambda_u243":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    const/4 v1, 0x0

    .line 53
    .local v1, "$i$a$-apply-TapGestureHandler$setMaxDurationMs$1":I
    iput-wide p1, v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDurationMs:J

    .line 54
    nop

    .line 52
    .end local v0    # "$this$setMaxDurationMs_u24lambda_u243":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .end local v1    # "$i$a$-apply-TapGestureHandler$setMaxDurationMs$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .line 54
    return-object v0
.end method

.method public final setMaxDx(F)Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .locals 2
    .param p1, "deltaX"    # F

    .line 56
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .local v0, "$this$setMaxDx_u24lambda_u244":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-apply-TapGestureHandler$setMaxDx$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaX:F

    .line 58
    nop

    .line 56
    .end local v0    # "$this$setMaxDx_u24lambda_u244":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .end local v1    # "$i$a$-apply-TapGestureHandler$setMaxDx$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .line 58
    return-object v0
.end method

.method public final setMaxDy(F)Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .locals 2
    .param p1, "deltaY"    # F

    .line 60
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .local v0, "$this$setMaxDy_u24lambda_u245":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    const/4 v1, 0x0

    .line 61
    .local v1, "$i$a$-apply-TapGestureHandler$setMaxDy$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->maxDeltaY:F

    .line 62
    nop

    .line 60
    .end local v0    # "$this$setMaxDy_u24lambda_u245":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .end local v1    # "$i$a$-apply-TapGestureHandler$setMaxDy$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .line 62
    return-object v0
.end method

.method public final setMinNumberOfPointers(I)Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .locals 2
    .param p1, "minNumberOfPointers"    # I

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .local v0, "$this$setMinNumberOfPointers_u24lambda_u247":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$a$-apply-TapGestureHandler$setMinNumberOfPointers$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->minNumberOfPointers:I

    .line 70
    nop

    .line 68
    .end local v0    # "$this$setMinNumberOfPointers_u24lambda_u247":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .end local v1    # "$i$a$-apply-TapGestureHandler$setMinNumberOfPointers$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .line 70
    return-object v0
.end method

.method public final setNumberOfTaps(I)Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .locals 2
    .param p1, "numberOfTaps"    # I

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .local v0, "$this$setNumberOfTaps_u24lambda_u241":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$a$-apply-TapGestureHandler$setNumberOfTaps$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;->numberOfTaps:I

    .line 46
    nop

    .line 44
    .end local v0    # "$this$setNumberOfTaps_u24lambda_u241":Lcom/swmansion/gesturehandler/core/TapGestureHandler;
    .end local v1    # "$i$a$-apply-TapGestureHandler$setNumberOfTaps$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/TapGestureHandler;

    .line 46
    return-object v0
.end method
