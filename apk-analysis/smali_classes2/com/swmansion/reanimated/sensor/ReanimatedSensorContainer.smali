.class public Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;
.super Ljava/lang/Object;
.source "ReanimatedSensorContainer.java"


# instance fields
.field private nextSensorId:I

.field private final reactContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final sensors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/swmansion/reanimated/sensor/ReanimatedSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p1, "reactContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/react/bridge/ReactApplicationContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->nextSensorId:I

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    .line 16
    iput-object p1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->reactContext:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
.end method


# virtual methods
.method public registerSensor(Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/nativeProxy/SensorSetter;)I
    .locals 4
    .param p1, "sensorType"    # Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;
    .param p2, "interval"    # I
    .param p3, "setter"    # Lcom/swmansion/reanimated/nativeProxy/SensorSetter;

    .line 20
    new-instance v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;

    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->reactContext:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;-><init>(Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/nativeProxy/SensorSetter;)V

    .line 21
    .local v0, "sensor":Lcom/swmansion/reanimated/sensor/ReanimatedSensor;
    const/4 v1, -0x1

    .line 22
    .local v1, "sensorId":I
    invoke-virtual {v0}, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->initialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    iget v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->nextSensorId:I

    .line 24
    iget v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->nextSensorId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->nextSensorId:I

    .line 25
    iget-object v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    return v1
.end method

.method public unregisterSensor(I)V
    .locals 3
    .param p1, "sensorId"    # I

    .line 31
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;

    .line 32
    .local v0, "sensor":Lcom/swmansion/reanimated/sensor/ReanimatedSensor;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->cancel()V

    .line 34
    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "Reanimated"

    const-string v2, "Tried to unregister nonexistent sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void
.end method
