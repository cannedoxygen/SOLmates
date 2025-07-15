.class public Lcom/swmansion/reanimated/nativeProxy/SensorSetter;
.super Ljava/lang/Object;
.source "SensorSetter.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0
    .param p1, "hybridData"    # Lcom/facebook/jni/HybridData;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/swmansion/reanimated/nativeProxy/SensorSetter;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 14
    return-void
.end method


# virtual methods
.method public native sensorSetter([FI)V
.end method
