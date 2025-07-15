.class public Lcom/swmansion/reanimated/sensor/ReanimatedSensor;
.super Ljava/lang/Object;
.source "ReanimatedSensor.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x8


# instance fields
.field interval:I

.field listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

.field sensor:Landroid/hardware/Sensor;

.field sensorManager:Landroid/hardware/SensorManager;

.field sensorType:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/nativeProxy/SensorSetter;)V
    .locals 5
    .param p2, "sensorType"    # Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;
    .param p3, "interval"    # I
    .param p4, "setter"    # Lcom/swmansion/reanimated/nativeProxy/SensorSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;",
            "Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;",
            "I",
            "Lcom/swmansion/reanimated/nativeProxy/SensorSetter;",
            ")V"
        }
    .end annotation

    .line 26
    .local p1, "reactContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/react/bridge/ReactApplicationContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 28
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 29
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    int-to-double v3, p3

    invoke-direct {v2, p4, v3, v4, v1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;-><init>(Lcom/swmansion/reanimated/nativeProxy/SensorSetter;DLandroid/view/Display;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    .line 30
    nop

    .line 31
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 32
    iput-object p2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorType:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    .line 33
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 34
    const/16 v2, 0x8

    iput v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->interval:I

    goto :goto_0

    .line 36
    :cond_0
    iput p3, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->interval:I

    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    iget-object v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 51
    return-void
.end method

.method initialize()Z
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorType:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    invoke-virtual {v1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensor:Landroid/hardware/Sensor;

    .line 42
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    iget-object v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->interval:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
