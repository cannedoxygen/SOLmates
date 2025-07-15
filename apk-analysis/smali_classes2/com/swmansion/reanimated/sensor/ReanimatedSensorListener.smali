.class public Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;
.super Ljava/lang/Object;
.source "ReanimatedSensorListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final display:Landroid/view/Display;

.field private final interval:D

.field private lastRead:D

.field private orientation:[F

.field private quaternion:[F

.field private rotation:[F

.field private setter:Lcom/swmansion/reanimated/nativeProxy/SensorSetter;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/nativeProxy/SensorSetter;DLandroid/view/Display;)V
    .locals 2
    .param p1, "setter"    # Lcom/swmansion/reanimated/nativeProxy/SensorSetter;
    .param p2, "interval"    # D
    .param p4, "display"    # Landroid/view/Display;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->lastRead:D

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->rotation:[F

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    .line 24
    iput-object p1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->setter:Lcom/swmansion/reanimated/nativeProxy/SensorSetter;

    .line 25
    iput-wide p2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->interval:D

    .line 26
    iput-object p4, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->display:Landroid/view/Display;

    .line 27
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 95
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    .line 32
    .local v2, "current":D
    iget-wide v4, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->lastRead:D

    sub-double v4, v2, v4

    iget-wide v6, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->interval:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    iget-object v4, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 36
    .local v4, "sensorType":I
    iput-wide v2, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->lastRead:D

    .line 39
    iget-object v5, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 50
    const/4 v5, 0x0

    .local v5, "orientationDegrees":I
    goto :goto_0

    .line 47
    .end local v5    # "orientationDegrees":I
    :pswitch_0
    const/16 v5, 0x10e

    .line 48
    .restart local v5    # "orientationDegrees":I
    goto :goto_0

    .line 44
    .end local v5    # "orientationDegrees":I
    :pswitch_1
    const/16 v5, 0xb4

    .line 45
    .restart local v5    # "orientationDegrees":I
    goto :goto_0

    .line 41
    .end local v5    # "orientationDegrees":I
    :pswitch_2
    const/16 v5, 0x5a

    .line 42
    .restart local v5    # "orientationDegrees":I
    nop

    .line 54
    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 90
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "[Reanimated] Unknown sensor type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :sswitch_0
    iget-object v10, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v10, v11}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 58
    iget-object v10, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->rotation:[F

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v10, v11}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 59
    iget-object v10, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->rotation:[F

    iget-object v11, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    invoke-static {v10, v11}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 60
    iget-object v10, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    aget v10, v10, v8

    iget-object v11, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    aget v11, v11, v6

    iget-object v12, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    aget v12, v12, v7

    neg-float v12, v12

    iget-object v13, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    aget v13, v13, v9

    iget-object v14, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    aget v14, v14, v9

    neg-float v14, v14

    iget-object v15, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    aget v15, v15, v8

    neg-float v15, v15

    iget-object v6, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    aget v6, v6, v7

    const/4 v7, 0x7

    new-array v7, v7, [F

    aput v10, v7, v9

    aput v11, v7, v8

    const/4 v8, 0x2

    aput v12, v7, v8

    const/4 v8, 0x3

    aput v13, v7, v8

    const/4 v8, 0x4

    aput v14, v7, v8

    const/4 v8, 0x5

    aput v15, v7, v8

    const/4 v8, 0x6

    aput v6, v7, v8

    move-object v6, v7

    .line 72
    .local v6, "data":[F
    iget-object v7, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->setter:Lcom/swmansion/reanimated/nativeProxy/SensorSetter;

    invoke-virtual {v7, v6, v5}, Lcom/swmansion/reanimated/nativeProxy/SensorSetter;->sensorSetter([FI)V

    .line 73
    goto :goto_1

    .line 85
    .end local v6    # "data":[F
    :sswitch_1
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    neg-float v6, v6

    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v8

    neg-float v7, v7

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    neg-float v10, v10

    const/4 v12, 0x3

    new-array v12, v12, [F

    aput v6, v12, v9

    aput v7, v12, v8

    aput v10, v12, v11

    move-object v6, v12

    .line 86
    .restart local v6    # "data":[F
    iget-object v7, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->setter:Lcom/swmansion/reanimated/nativeProxy/SensorSetter;

    invoke-virtual {v7, v6, v5}, Lcom/swmansion/reanimated/nativeProxy/SensorSetter;->sensorSetter([FI)V

    .line 87
    goto :goto_1

    .line 78
    .end local v6    # "data":[F
    :sswitch_2
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v8

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const/4 v12, 0x3

    new-array v12, v12, [F

    aput v6, v12, v9

    aput v7, v12, v8

    aput v10, v12, v11

    move-object v6, v12

    .line 79
    .restart local v6    # "data":[F
    iget-object v7, v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->setter:Lcom/swmansion/reanimated/nativeProxy/SensorSetter;

    invoke-virtual {v7, v6, v5}, Lcom/swmansion/reanimated/nativeProxy/SensorSetter;->sensorSetter([FI)V

    .line 80
    nop

    .line 92
    .end local v6    # "data":[F
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
