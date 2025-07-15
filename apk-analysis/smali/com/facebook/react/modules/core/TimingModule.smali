.class public final Lcom/facebook/react/modules/core/TimingModule;
.super Lcom/facebook/fbreact/specs/NativeTimingSpec;
.source "TimingModule.kt"

# interfaces
.implements Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "Timing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/core/TimingModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J(\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\rH\u0016J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0008\u0010\u001f\u001a\u00020\u000bH\u0016J\u0010\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0016H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/facebook/react/modules/core/TimingModule;",
        "Lcom/facebook/fbreact/specs/NativeTimingSpec;",
        "Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "devSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V",
        "javaTimerManager",
        "Lcom/facebook/react/modules/core/JavaTimerManager;",
        "callIdleCallbacks",
        "",
        "frameTime",
        "",
        "callTimers",
        "timerIDs",
        "Lcom/facebook/react/bridge/WritableArray;",
        "createTimer",
        "callbackIDDouble",
        "durationDouble",
        "jsSchedulingTime",
        "repeat",
        "",
        "deleteTimer",
        "timerIdDouble",
        "emitTimeDriftWarning",
        "warningMessage",
        "",
        "hasActiveTimersInRange",
        "rangeMs",
        "",
        "invalidate",
        "setSendIdleEvents",
        "sendIdleEvents",
        "Companion",
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
.field public static final Companion:Lcom/facebook/react/modules/core/TimingModule$Companion;

.field public static final NAME:Ljava/lang/String; = "Timing"


# instance fields
.field private final javaTimerManager:Lcom/facebook/react/modules/core/JavaTimerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/core/TimingModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/core/TimingModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/core/TimingModule;->Companion:Lcom/facebook/react/modules/core/TimingModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devSupportManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeTimingSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 24
    new-instance v0, Lcom/facebook/react/modules/core/JavaTimerManager;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;

    sget-object v2, Lcom/facebook/react/modules/core/ReactChoreographer;->Companion:Lcom/facebook/react/modules/core/ReactChoreographer$Companion;

    invoke-virtual {v2}, Lcom/facebook/react/modules/core/ReactChoreographer$Companion;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/facebook/react/modules/core/JavaTimerManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;Lcom/facebook/react/modules/core/ReactChoreographer;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    iput-object v0, p0, Lcom/facebook/react/modules/core/TimingModule;->javaTimerManager:Lcom/facebook/react/modules/core/JavaTimerManager;

    .line 19
    return-void
.end method


# virtual methods
.method public callIdleCallbacks(D)V
    .locals 2
    .param p1, "frameTime"    # D

    .line 54
    nop

    .line 53
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/TimingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 53
    const-class v1, Lcom/facebook/react/modules/core/JSTimers;

    .line 54
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/JSTimers;

    .line 55
    if-eqz v0, :cond_0

    .line 54
    nop

    .line 55
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/JSTimers;->callIdleCallbacks(D)V

    goto :goto_0

    .line 54
    :cond_0
    nop

    .line 56
    :goto_0
    return-void
.end method

.method public callTimers(Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2
    .param p1, "timerIDs"    # Lcom/facebook/react/bridge/WritableArray;

    const-string/jumbo v0, "timerIDs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    nop

    .line 47
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/TimingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 47
    const-class v1, Lcom/facebook/react/modules/core/JSTimers;

    .line 48
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/JSTimers;

    .line 49
    if-eqz v0, :cond_0

    .line 48
    nop

    .line 49
    invoke-interface {v0, p1}, Lcom/facebook/react/modules/core/JSTimers;->callTimers(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 48
    :cond_0
    nop

    .line 50
    :goto_0
    return-void
.end method

.method public createTimer(DDDZ)V
    .locals 8
    .param p1, "callbackIDDouble"    # D
    .param p3, "durationDouble"    # D
    .param p5, "jsSchedulingTime"    # D
    .param p7, "repeat"    # Z

    .line 32
    double-to-int v6, p1

    .line 33
    .local v6, "callbackID":I
    double-to-int v7, p3

    .line 34
    .local v7, "duration":I
    iget-object v0, p0, Lcom/facebook/react/modules/core/TimingModule;->javaTimerManager:Lcom/facebook/react/modules/core/JavaTimerManager;

    move v1, v6

    move v2, v7

    move-wide v3, p5

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/modules/core/JavaTimerManager;->createAndMaybeCallTimer(IIDZ)V

    .line 35
    return-void
.end method

.method public deleteTimer(D)V
    .locals 2
    .param p1, "timerIdDouble"    # D

    .line 38
    double-to-int v0, p1

    .line 39
    .local v0, "timerId":I
    iget-object v1, p0, Lcom/facebook/react/modules/core/TimingModule;->javaTimerManager:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-virtual {v1, v0}, Lcom/facebook/react/modules/core/JavaTimerManager;->deleteTimer(I)V

    .line 40
    return-void
.end method

.method public emitTimeDriftWarning(Ljava/lang/String;)V
    .locals 2
    .param p1, "warningMessage"    # Ljava/lang/String;

    const-string/jumbo v0, "warningMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 59
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/TimingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 59
    const-class v1, Lcom/facebook/react/modules/core/JSTimers;

    .line 60
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/JSTimers;

    .line 61
    if-eqz v0, :cond_0

    .line 60
    nop

    .line 61
    invoke-interface {v0, p1}, Lcom/facebook/react/modules/core/JSTimers;->emitTimeDriftWarning(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    nop

    .line 62
    :goto_0
    return-void
.end method

.method public final hasActiveTimersInRange(J)Z
    .locals 1
    .param p1, "rangeMs"    # J
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/facebook/react/modules/core/TimingModule;->javaTimerManager:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/modules/core/JavaTimerManager;->hasActiveTimersInRange$ReactAndroid_debug(J)Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/react/modules/core/TimingModule;->javaTimerManager:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-virtual {v0}, Lcom/facebook/react/modules/core/JavaTimerManager;->onInstanceDestroy()V

    .line 66
    return-void
.end method

.method public setSendIdleEvents(Z)V
    .locals 1
    .param p1, "sendIdleEvents"    # Z

    .line 43
    iget-object v0, p0, Lcom/facebook/react/modules/core/TimingModule;->javaTimerManager:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/core/JavaTimerManager;->setSendIdleEvents(Z)V

    .line 44
    return-void
.end method
