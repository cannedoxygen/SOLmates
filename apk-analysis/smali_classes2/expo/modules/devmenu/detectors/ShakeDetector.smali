.class public final Lexpo/modules/devmenu/detectors/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0007H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rH\u0016J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0004H\u0002J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0014J\u0006\u0010\"\u001a\u00020\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/devmenu/detectors/ShakeDetector;",
        "Landroid/hardware/SensorEventListener;",
        "shakeListener",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "accelerationX",
        "",
        "accelerationY",
        "accelerationZ",
        "lastDispatchedShakeTimestamp",
        "",
        "minRecordedShakes",
        "",
        "getMinRecordedShakes",
        "()I",
        "setMinRecordedShakes",
        "(I)V",
        "numShakes",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "atLeastRequiredForce",
        "",
        "a",
        "onAccuracyChanged",
        "sensor",
        "Landroid/hardware/Sensor;",
        "i",
        "onSensorChanged",
        "sensorEvent",
        "Landroid/hardware/SensorEvent;",
        "reset",
        "start",
        "manager",
        "stop",
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
.field private accelerationX:F

.field private accelerationY:F

.field private accelerationZ:F

.field private lastDispatchedShakeTimestamp:J

.field private minRecordedShakes:I

.field private numShakes:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final shakeListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "shakeListener"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shakeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->shakeListener:Lkotlin/jvm/functions/Function0;

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->minRecordedShakes:I

    .line 24
    return-void
.end method

.method private final atLeastRequiredForce(F)Z
    .locals 2
    .param p1, "a"    # F

    .line 114
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

.method private final reset()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationX:F

    .line 103
    iput v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationY:F

    .line 104
    iput v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationZ:F

    .line 105
    return-void
.end method


# virtual methods
.method public final getMinRecordedShakes()I
    .locals 1

    .line 34
    iget v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->minRecordedShakes:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    const-string v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    const-string v0, "sensorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->lastDispatchedShakeTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {}, Lexpo/modules/devmenu/detectors/ShakeDetectorKt;->access$getMIN_TIME_AFTER_SHAKE_NS$p()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 69
    .local v0, "ax":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 70
    .local v1, "ay":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x411ce80a

    sub-float/2addr v3, v4

    .line 72
    .local v3, "az":F
    nop

    .line 73
    invoke-direct {p0, v0}, Lexpo/modules/devmenu/detectors/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationX:F

    mul-float/2addr v4, v0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 74
    iget v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    add-int/2addr v4, v2

    iput v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    .line 75
    iput v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationX:F

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, v1}, Lexpo/modules/devmenu/detectors/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationY:F

    mul-float/2addr v4, v1

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 78
    iget v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    add-int/2addr v4, v2

    iput v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    .line 79
    iput v1, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationY:F

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0, v3}, Lexpo/modules/devmenu/detectors/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationZ:F

    mul-float/2addr v4, v3

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 82
    iget v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    add-int/2addr v4, v2

    iput v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    .line 83
    iput v3, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->accelerationZ:F

    .line 87
    :cond_3
    :goto_0
    iget v2, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->numShakes:I

    iget v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->minRecordedShakes:I

    if-lt v2, v4, :cond_4

    .line 88
    invoke-direct {p0}, Lexpo/modules/devmenu/detectors/ShakeDetector;->reset()V

    .line 89
    iget-object v2, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->shakeListener:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 90
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->lastDispatchedShakeTimestamp:J

    .line 92
    :cond_4
    return-void
.end method

.method public final setMinRecordedShakes(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 34
    iput p1, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->minRecordedShakes:I

    return-void
.end method

.method public final start(Landroid/hardware/SensorManager;)V
    .locals 4
    .param p1, "manager"    # Landroid/hardware/SensorManager;

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    nop

    .line 42
    nop

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 43
    nop

    .line 44
    nop

    .local v0, "it":Landroid/hardware/Sensor;
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$a$-let-ShakeDetector$start$1":I
    iput-object p1, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 46
    move-object v2, p0

    check-cast v2, Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->lastDispatchedShakeTimestamp:J

    .line 48
    invoke-direct {p0}, Lexpo/modules/devmenu/detectors/ShakeDetector;->reset()V

    .line 49
    nop

    .line 44
    .end local v0    # "it":Landroid/hardware/Sensor;
    .end local v1    # "$i$a$-let-ShakeDetector$start$1":I
    :cond_0
    nop

    .line 50
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 56
    iget-object v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lexpo/modules/devmenu/detectors/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 58
    return-void
.end method
