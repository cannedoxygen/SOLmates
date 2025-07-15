.class public final Lcom/facebook/react/common/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001$B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0008H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000cH\u0002J\u0018\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u000cH\u0002J\u0008\u0010 \u001a\u00020\u0015H\u0002J\u000e\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0010J\u0006\u0010#\u001a\u00020\u0015R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/facebook/react/common/ShakeDetector;",
        "Landroid/hardware/SensorEventListener;",
        "shakeListener",
        "Lcom/facebook/react/common/ShakeDetector$ShakeListener;",
        "minNumShakes",
        "",
        "(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V",
        "accelerationX",
        "",
        "accelerationY",
        "accelerationZ",
        "lastShakeTimestamp",
        "",
        "lastTimestamp",
        "numShakes",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "atLeastRequiredForce",
        "",
        "a",
        "maybeDispatchShake",
        "",
        "currentTimestamp",
        "onAccuracyChanged",
        "sensor",
        "Landroid/hardware/Sensor;",
        "i",
        "onSensorChanged",
        "sensorEvent",
        "Landroid/hardware/SensorEvent;",
        "recordShake",
        "timestamp",
        "reset",
        "start",
        "manager",
        "stop",
        "ShakeListener",
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


# instance fields
.field private accelerationX:F

.field private accelerationY:F

.field private accelerationZ:F

.field private lastShakeTimestamp:J

.field private lastTimestamp:J

.field private final minNumShakes:I

.field private numShakes:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final shakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;


# direct methods
.method public constructor <init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;)V
    .locals 3

    const-string/jumbo v0, "shakeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V
    .locals 1
    .param p1, "shakeListener"    # Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    .param p2, "minNumShakes"    # I

    const-string/jumbo v0, "shakeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/react/common/ShakeDetector;->shakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    iput p2, p0, Lcom/facebook/react/common/ShakeDetector;->minNumShakes:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V

    .line 114
    return-void
.end method

.method private final atLeastRequiredForce(F)Z
    .locals 2
    .param p1, "a"    # F

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x4150af7e

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final maybeDispatchShake(J)V
    .locals 2
    .param p1, "currentTimestamp"    # J

    .line 106
    iget v0, p0, Lcom/facebook/react/common/ShakeDetector;->numShakes:I

    iget v1, p0, Lcom/facebook/react/common/ShakeDetector;->minNumShakes:I

    mul-int/lit8 v1, v1, 0x8

    if-lt v0, v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/facebook/react/common/ShakeDetector;->reset()V

    .line 108
    iget-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->shakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    invoke-interface {v0}, Lcom/facebook/react/common/ShakeDetector$ShakeListener;->onShake()V

    .line 110
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/common/ShakeDetector;->lastShakeTimestamp:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    invoke-static {}, Lcom/facebook/react/common/ShakeDetectorKt;->access$getSHAKING_WINDOW_NS$p()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/facebook/react/common/ShakeDetector;->reset()V

    .line 113
    :cond_1
    return-void
.end method

.method private final recordShake(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 74
    iput-wide p1, p0, Lcom/facebook/react/common/ShakeDetector;->lastShakeTimestamp:J

    .line 75
    iget v0, p0, Lcom/facebook/react/common/ShakeDetector;->numShakes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->numShakes:I

    .line 76
    return-void
.end method

.method private final reset()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->numShakes:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationX:F

    .line 55
    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationY:F

    .line 56
    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationZ:F

    .line 57
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    const-string/jumbo v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    const-string/jumbo v0, "sensorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/facebook/react/common/ShakeDetector;->lastTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/facebook/react/common/ShakeDetectorKt;->access$getMIN_TIME_BETWEEN_SAMPLES_NS$p()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 83
    .local v0, "ax":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 84
    .local v1, "ay":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    const v3, 0x411ce80a

    sub-float/2addr v2, v3

    .line 85
    .local v2, "az":F
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/facebook/react/common/ShakeDetector;->lastTimestamp:J

    .line 86
    nop

    .line 87
    invoke-direct {p0, v0}, Lcom/facebook/react/common/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationX:F

    mul-float/2addr v3, v0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 88
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->recordShake(J)V

    .line 89
    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationX:F

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/react/common/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationY:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 92
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->recordShake(J)V

    .line 93
    iput v1, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationY:F

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/react/common/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationZ:F

    mul-float/2addr v3, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 96
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->recordShake(J)V

    .line 97
    iput v2, p0, Lcom/facebook/react/common/ShakeDetector;->accelerationZ:F

    .line 100
    :cond_3
    :goto_0
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->maybeDispatchShake(J)V

    .line 101
    return-void
.end method

.method public final start(Landroid/hardware/SensorManager;)V
    .locals 3
    .param p1, "manager"    # Landroid/hardware/SensorManager;

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 38
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/common/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 39
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/facebook/react/common/ShakeDetector;->lastTimestamp:J

    .line 40
    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/react/common/ShakeDetector;->lastShakeTimestamp:J

    .line 42
    invoke-direct {p0}, Lcom/facebook/react/common/ShakeDetector;->reset()V

    .line 43
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 49
    return-void
.end method
