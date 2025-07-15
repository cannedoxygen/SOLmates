.class public final Lcom/swmansion/gesturehandler/core/PanGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "PanGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/PanGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u0000 T2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001TB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u000fH\u0016J\u0008\u00107\u001a\u000205H\u0014J\u0018\u00108\u001a\u0002052\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:H\u0014J\u0008\u0010<\u001a\u000205H\u0014J\u0008\u0010=\u001a\u000205H\u0016J\u0008\u0010>\u001a\u000205H\u0016J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0006J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010B\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010C\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\nJ\u000e\u0010D\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010E\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010F\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010G\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010H\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\nJ\u000e\u0010I\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001aJ\u000e\u0010N\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\nJ\u000e\u0010P\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\nJ\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\nJ\u0008\u0010R\u001a\u00020\u000fH\u0002J\u0008\u0010S\u001a\u00020\u000fH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010)\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0011\u0010,\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010+R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00100\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010+R\u001e\u00102\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010+\u00a8\u0006U"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/PanGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "activateAfterLongPress",
        "",
        "activateDelayed",
        "Ljava/lang/Runnable;",
        "activeOffsetXEnd",
        "",
        "activeOffsetXStart",
        "activeOffsetYEnd",
        "activeOffsetYStart",
        "averageTouches",
        "",
        "defaultMinDistSq",
        "failOffsetXEnd",
        "failOffsetXStart",
        "failOffsetYEnd",
        "failOffsetYStart",
        "handler",
        "Landroid/os/Handler;",
        "lastX",
        "lastY",
        "maxPointers",
        "",
        "minDistSq",
        "minPointers",
        "minVelocitySq",
        "minVelocityX",
        "minVelocityY",
        "offsetX",
        "offsetY",
        "startX",
        "startY",
        "<set-?>",
        "Lcom/swmansion/gesturehandler/core/StylusData;",
        "stylusData",
        "getStylusData",
        "()Lcom/swmansion/gesturehandler/core/StylusData;",
        "translationX",
        "getTranslationX",
        "()F",
        "translationY",
        "getTranslationY",
        "velocityTracker",
        "Landroid/view/VelocityTracker;",
        "velocityX",
        "getVelocityX",
        "velocityY",
        "getVelocityY",
        "activate",
        "",
        "force",
        "onCancel",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "sourceEvent",
        "onReset",
        "resetConfig",
        "resetProgress",
        "setActivateAfterLongPress",
        "time",
        "setActiveOffsetXEnd",
        "setActiveOffsetXStart",
        "setActiveOffsetYEnd",
        "setActiveOffsetYStart",
        "setAverageTouches",
        "setFailOffsetXEnd",
        "setFailOffsetXStart",
        "setFailOffsetYEnd",
        "setFailOffsetYStart",
        "setMaxPointers",
        "setMinDist",
        "minDist",
        "setMinPointers",
        "setMinVelocity",
        "minVelocity",
        "setMinVelocityX",
        "setMinVelocityY",
        "shouldActivate",
        "shouldFail",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

.field private static final DEFAULT_ACTIVATE_AFTER_LONG_PRESS:J = 0x0L

.field private static final DEFAULT_MAX_POINTERS:I = 0xa

.field private static final DEFAULT_MIN_POINTERS:I = 0x1

.field private static final MAX_VALUE_IGNORE:F = 1.4E-45f

.field private static final MIN_VALUE_IGNORE:F = 3.4028235E38f


# instance fields
.field private activateAfterLongPress:J

.field private final activateDelayed:Ljava/lang/Runnable;

.field private activeOffsetXEnd:F

.field private activeOffsetXStart:F

.field private activeOffsetYEnd:F

.field private activeOffsetYStart:F

.field private averageTouches:Z

.field private final defaultMinDistSq:F

.field private failOffsetXEnd:F

.field private failOffsetXStart:F

.field private failOffsetYEnd:F

.field private failOffsetYStart:F

.field private handler:Landroid/os/Handler;

.field private lastX:F

.field private lastY:F

.field private maxPointers:I

.field private minDistSq:F

.field private minPointers:I

.field private minVelocitySq:F

.field private minVelocityX:F

.field private minVelocityY:F

.field private offsetX:F

.field private offsetY:F

.field private startX:F

.field private startY:F

.field private stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public static synthetic $r8$lambda$wD3zE0XW5oKrqufU-fnxEsh9z18(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    .line 24
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    .line 25
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    .line 26
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    .line 27
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    .line 28
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    .line 29
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    .line 30
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    .line 31
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    .line 32
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    .line 33
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    .line 34
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    .line 46
    new-instance v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateDelayed:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/swmansion/gesturehandler/core/StylusData;

    const/16 v12, 0x1f

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/swmansion/gesturehandler/core/StylusData;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    .line 63
    nop

    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 65
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 66
    .local v1, "touchSlop":I
    mul-int v2, v1, v1

    int-to-float v2, v2

    iput v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->defaultMinDistSq:F

    .line 67
    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->defaultMinDistSq:F

    iput v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    .line 68
    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    .end local v1    # "touchSlop":I
    nop

    .line 12
    return-void
.end method

.method private static final activateDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V
    .locals 1
    .param p0, "this$0"    # Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activate()V

    return-void
.end method

.method private final shouldActivate()Z
    .locals 10

    .line 158
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 159
    .local v0, "dx":F
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

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

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 160
    return v4

    .line 162
    :cond_1
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    const/4 v5, 0x1

    cmpg-float v1, v1, v5

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 163
    return v4

    .line 165
    :cond_3
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v1, v6

    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    add-float/2addr v1, v6

    .line 166
    .local v1, "dy":F
    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    cmpg-float v6, v6, v2

    if-nez v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-nez v6, :cond_5

    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_5

    .line 167
    return v4

    .line 169
    :cond_5
    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    cmpg-float v5, v6, v5

    if-nez v5, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    if-nez v5, :cond_7

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    .line 170
    return v4

    .line 172
    :cond_7
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    .line 173
    .local v5, "distSq":F
    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    cmpg-float v6, v6, v2

    if-nez v6, :cond_8

    move v6, v4

    goto :goto_4

    :cond_8
    move v6, v3

    :goto_4
    if-nez v6, :cond_9

    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_9

    .line 174
    return v4

    .line 176
    :cond_9
    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    .line 177
    .local v6, "vx":F
    iget v7, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    cmpg-float v7, v7, v2

    if-nez v7, :cond_a

    move v7, v4

    goto :goto_5

    :cond_a
    move v7, v3

    :goto_5
    const/4 v8, 0x0

    if-nez v7, :cond_e

    .line 178
    iget v7, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    iget v7, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    cmpg-float v7, v6, v7

    if-lez v7, :cond_d

    :cond_b
    iget v7, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    cmpg-float v9, v8, v7

    if-gtz v9, :cond_c

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_c

    move v7, v4

    goto :goto_6

    :cond_c
    move v7, v3

    :goto_6
    if-eqz v7, :cond_e

    .line 180
    :cond_d
    return v4

    .line 182
    :cond_e
    iget v7, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    .line 183
    .local v7, "vy":F
    iget v9, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    cmpg-float v9, v9, v2

    if-nez v9, :cond_f

    move v9, v4

    goto :goto_7

    :cond_f
    move v9, v3

    :goto_7
    if-nez v9, :cond_13

    .line 184
    iget v9, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    cmpg-float v9, v9, v8

    if-gez v9, :cond_10

    iget v9, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    cmpg-float v9, v6, v9

    if-lez v9, :cond_12

    :cond_10
    iget v9, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_11

    cmpg-float v8, v9, v6

    if-gtz v8, :cond_11

    move v8, v4

    goto :goto_8

    :cond_11
    move v8, v3

    :goto_8
    if-eqz v8, :cond_13

    .line 186
    :cond_12
    return v4

    .line 188
    :cond_13
    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    .line 189
    .local v8, "velocitySq":F
    iget v9, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    cmpg-float v2, v9, v2

    if-nez v2, :cond_14

    move v2, v4

    goto :goto_9

    :cond_14
    move v2, v3

    :goto_9
    if-nez v2, :cond_15

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_15

    move v3, v4

    :cond_15
    return v3
.end method

.method private final shouldFail()Z
    .locals 7

    .line 193
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 194
    .local v0, "dx":F
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    add-float/2addr v1, v2

    .line 196
    .local v1, "dy":F
    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_1

    mul-float v2, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v2, v4

    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->defaultMinDistSq:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    :cond_0
    return v3

    .line 200
    :cond_1
    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    const/4 v4, 0x1

    cmpg-float v2, v2, v4

    const/4 v5, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    if-nez v2, :cond_3

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 201
    return v3

    .line 203
    :cond_3
    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v2, v2, v6

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    if-nez v2, :cond_5

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    .line 204
    return v3

    .line 206
    :cond_5
    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    cmpg-float v2, v2, v4

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v5

    :goto_2
    if-nez v2, :cond_7

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_7

    .line 207
    return v3

    .line 209
    :cond_7
    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    cmpg-float v2, v2, v6

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_3

    :cond_8
    move v2, v5

    :goto_3
    if-nez v2, :cond_9

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_9

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_4
    return v3
.end method


# virtual methods
.method public activate(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 288
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->resetProgress()V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    .line 292
    return-void
.end method

.method public final getStylusData()Lcom/swmansion/gesturehandler/core/StylusData;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    return-object v0
.end method

.method public final getTranslationX()F
    .locals 2

    .line 18
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getTranslationY()F
    .locals 2

    .line 20
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getVelocityX()F
    .locals 1

    .line 13
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    return v0
.end method

.method public final getVelocityY()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    return v0
.end method

.method protected onCancel()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 296
    :cond_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, p2}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->shouldActivateWithMouse(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 218
    sget-object v0, Lcom/swmansion/gesturehandler/core/StylusData;->Companion:Lcom/swmansion/gesturehandler/core/StylusData$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/core/StylusData$Companion;->fromEvent(Landroid/view/MotionEvent;)Lcom/swmansion/gesturehandler/core/StylusData;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->getState()I

    move-result v0

    .line 222
    .local v0, "state":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 223
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 234
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v3, p2, v4}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    .line 235
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v3, p2, v4}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    goto :goto_0

    .line 225
    :pswitch_0
    iget v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    .line 226
    iget v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    .line 229
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v3, p2, v4}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    .line 230
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v3, p2, v4}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    .line 231
    iget v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    .line 232
    iget v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    .line 237
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    if-lt v3, v4, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->resetProgress()V

    .line 239
    const/4 v3, 0x0

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    .line 240
    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    .line 241
    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    .line 242
    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    .line 243
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 244
    sget-object v3, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3, v4, p2}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;->access$addVelocityMovement(Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 245
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->begin()V

    .line 247
    iget-wide v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 248
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    if-nez v3, :cond_2

    .line 249
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    .line 251
    :cond_2
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateDelayed:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 254
    sget-object v3, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3, v4, p2}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;->access$addVelocityMovement(Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 255
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 256
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    .line 257
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    .line 259
    :cond_4
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    goto :goto_2

    .line 265
    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    if-le v3, v5, :cond_7

    .line 267
    if-ne v0, v4, :cond_6

    .line 268
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->cancel()V

    goto :goto_3

    .line 270
    :cond_6
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    goto :goto_3

    .line 272
    :cond_7
    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    if-ne v0, v4, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    if-ge v3, v4, :cond_8

    .line 276
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    goto :goto_3

    .line 277
    :cond_8
    if-ne v0, v1, :cond_c

    .line 278
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->shouldFail()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 279
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    goto :goto_3

    .line 280
    :cond_9
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->shouldActivate()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 281
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activate()V

    goto :goto_3

    .line 260
    :cond_a
    :goto_2
    if-ne v0, v4, :cond_b

    .line 261
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->end()V

    goto :goto_3

    .line 263
    :cond_b
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    .line 284
    :cond_c
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onReset()V
    .locals 17

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-object v1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .local v1, "it":Landroid/view/VelocityTracker;
    const/4 v3, 0x0

    .line 301
    .local v3, "$i$a$-let-PanGestureHandler$onReset$1":I
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 302
    iput-object v2, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 303
    nop

    .line 300
    .end local v1    # "it":Landroid/view/VelocityTracker;
    .end local v3    # "$i$a$-let-PanGestureHandler$onReset$1":I
    nop

    .line 305
    :cond_1
    new-instance v1, Lcom/swmansion/gesturehandler/core/StylusData;

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/swmansion/gesturehandler/core/StylusData;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    .line 306
    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetConfig()V

    .line 72
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    .line 73
    const/4 v1, 0x1

    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    .line 74
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    .line 75
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    .line 76
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    .line 77
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    .line 78
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    .line 79
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    .line 80
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    .line 81
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    .line 82
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    .line 83
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->defaultMinDistSq:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    .line 88
    return-void
.end method

.method public resetProgress()V
    .locals 1

    .line 309
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    .line 310
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    .line 311
    return-void
.end method

.method public final setActivateAfterLongPress(J)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "time"    # J

    .line 138
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setActivateAfterLongPress_u24lambda_u2413":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 139
    .local v1, "$i$a$-apply-PanGestureHandler$setActivateAfterLongPress$1":I
    iput-wide p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    .line 140
    nop

    .line 138
    .end local v0    # "$this$setActivateAfterLongPress_u24lambda_u2413":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setActivateAfterLongPress$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 140
    return-object v0
.end method

.method public final setActiveOffsetXEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "activeOffsetXEnd"    # F

    .line 94
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setActiveOffsetXEnd_u24lambda_u242":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 95
    .local v1, "$i$a$-apply-PanGestureHandler$setActiveOffsetXEnd$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    .line 96
    nop

    .line 94
    .end local v0    # "$this$setActiveOffsetXEnd_u24lambda_u242":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setActiveOffsetXEnd$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 96
    return-object v0
.end method

.method public final setActiveOffsetXStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "activeOffsetXStart"    # F

    .line 90
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setActiveOffsetXStart_u24lambda_u241":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 91
    .local v1, "$i$a$-apply-PanGestureHandler$setActiveOffsetXStart$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    .line 92
    nop

    .line 90
    .end local v0    # "$this$setActiveOffsetXStart_u24lambda_u241":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setActiveOffsetXStart$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 92
    return-object v0
.end method

.method public final setActiveOffsetYEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "activeOffsetYEnd"    # F

    .line 110
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setActiveOffsetYEnd_u24lambda_u246":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 111
    .local v1, "$i$a$-apply-PanGestureHandler$setActiveOffsetYEnd$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    .line 112
    nop

    .line 110
    .end local v0    # "$this$setActiveOffsetYEnd_u24lambda_u246":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setActiveOffsetYEnd$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 112
    return-object v0
.end method

.method public final setActiveOffsetYStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "activeOffsetYStart"    # F

    .line 106
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setActiveOffsetYStart_u24lambda_u245":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 107
    .local v1, "$i$a$-apply-PanGestureHandler$setActiveOffsetYStart$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    .line 108
    nop

    .line 106
    .end local v0    # "$this$setActiveOffsetYStart_u24lambda_u245":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setActiveOffsetYStart$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 108
    return-object v0
.end method

.method public final setAverageTouches(Z)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "averageTouches"    # Z

    .line 134
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setAverageTouches_u24lambda_u2412":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 135
    .local v1, "$i$a$-apply-PanGestureHandler$setAverageTouches$1":I
    iput-boolean p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    .line 136
    nop

    .line 134
    .end local v0    # "$this$setAverageTouches_u24lambda_u2412":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setAverageTouches$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 136
    return-object v0
.end method

.method public final setFailOffsetXEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "failOffsetXEnd"    # F

    .line 102
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setFailOffsetXEnd_u24lambda_u244":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 103
    .local v1, "$i$a$-apply-PanGestureHandler$setFailOffsetXEnd$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    .line 104
    nop

    .line 102
    .end local v0    # "$this$setFailOffsetXEnd_u24lambda_u244":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setFailOffsetXEnd$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 104
    return-object v0
.end method

.method public final setFailOffsetXStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "failOffsetXStart"    # F

    .line 98
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setFailOffsetXStart_u24lambda_u243":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 99
    .local v1, "$i$a$-apply-PanGestureHandler$setFailOffsetXStart$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    .line 100
    nop

    .line 98
    .end local v0    # "$this$setFailOffsetXStart_u24lambda_u243":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setFailOffsetXStart$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 100
    return-object v0
.end method

.method public final setFailOffsetYEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "failOffsetYEnd"    # F

    .line 118
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setFailOffsetYEnd_u24lambda_u248":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$a$-apply-PanGestureHandler$setFailOffsetYEnd$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    .line 120
    nop

    .line 118
    .end local v0    # "$this$setFailOffsetYEnd_u24lambda_u248":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setFailOffsetYEnd$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 120
    return-object v0
.end method

.method public final setFailOffsetYStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "failOffsetYStart"    # F

    .line 114
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setFailOffsetYStart_u24lambda_u247":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 115
    .local v1, "$i$a$-apply-PanGestureHandler$setFailOffsetYStart$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    .line 116
    nop

    .line 114
    .end local v0    # "$this$setFailOffsetYStart_u24lambda_u247":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setFailOffsetYStart$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 116
    return-object v0
.end method

.method public final setMaxPointers(I)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "maxPointers"    # I

    .line 130
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setMaxPointers_u24lambda_u2411":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$a$-apply-PanGestureHandler$setMaxPointers$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    .line 132
    nop

    .line 130
    .end local v0    # "$this$setMaxPointers_u24lambda_u2411":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setMaxPointers$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 132
    return-object v0
.end method

.method public final setMinDist(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 3
    .param p1, "minDist"    # F

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setMinDist_u24lambda_u249":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 123
    .local v1, "$i$a$-apply-PanGestureHandler$setMinDist$1":I
    mul-float v2, p1, p1

    iput v2, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    .line 124
    nop

    .line 122
    .end local v0    # "$this$setMinDist_u24lambda_u249":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setMinDist$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 124
    return-object v0
.end method

.method public final setMinPointers(I)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "minPointers"    # I

    .line 126
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setMinPointers_u24lambda_u2410":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 127
    .local v1, "$i$a$-apply-PanGestureHandler$setMinPointers$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    .line 128
    nop

    .line 126
    .end local v0    # "$this$setMinPointers_u24lambda_u2410":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setMinPointers$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 128
    return-object v0
.end method

.method public final setMinVelocity(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 3
    .param p1, "minVelocity"    # F

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setMinVelocity_u24lambda_u2414":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 146
    .local v1, "$i$a$-apply-PanGestureHandler$setMinVelocity$1":I
    mul-float v2, p1, p1

    iput v2, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    .line 147
    nop

    .line 145
    .end local v0    # "$this$setMinVelocity_u24lambda_u2414":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setMinVelocity$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 147
    return-object v0
.end method

.method public final setMinVelocityX(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "minVelocityX"    # F

    .line 149
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setMinVelocityX_u24lambda_u2415":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 150
    .local v1, "$i$a$-apply-PanGestureHandler$setMinVelocityX$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    .line 151
    nop

    .line 149
    .end local v0    # "$this$setMinVelocityX_u24lambda_u2415":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setMinVelocityX$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 151
    return-object v0
.end method

.method public final setMinVelocityY(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 2
    .param p1, "minVelocityY"    # F

    .line 153
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .local v0, "$this$setMinVelocityY_u24lambda_u2416":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    const/4 v1, 0x0

    .line 154
    .local v1, "$i$a$-apply-PanGestureHandler$setMinVelocityY$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    .line 155
    nop

    .line 153
    .end local v0    # "$this$setMinVelocityY_u24lambda_u2416":Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .end local v1    # "$i$a$-apply-PanGestureHandler$setMinVelocityY$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 155
    return-object v0
.end method
