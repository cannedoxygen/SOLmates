.class public Lcom/facebook/react/fabric/events/EventEmitterWrapper;
.super Ljava/lang/Object;
.source "EventEmitterWrapper.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/facebook/react/fabric/FabricSoLoader;->staticInit()V

    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0
    .param p1, "hybridData"    # Lcom/facebook/jni/HybridData;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 38
    return-void
.end method

.method private native dispatchEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;I)V
.end method

.method private native dispatchEventSynchronously(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V
.end method

.method private native dispatchUniqueEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V
.end method

.method private isValid()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local p0    # "this":Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized dispatch(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "eventCategory"    # I

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 56
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->dispatchEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 54
    .end local p0    # "this":Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .end local p1    # "eventName":Ljava/lang/String;
    .end local p2    # "params":Lcom/facebook/react/bridge/WritableMap;
    .end local p3    # "eventCategory":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized dispatchEventSynchronously(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/WritableMap;

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->dispatchEventSynchronously(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 62
    .end local p0    # "this":Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .end local p1    # "eventName":Ljava/lang/String;
    .end local p2    # "params":Lcom/facebook/react/bridge/WritableMap;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized dispatchUnique(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/WritableMap;

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 78
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->dispatchUniqueEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .end local p1    # "eventName":Ljava/lang/String;
    .end local p2    # "params":Lcom/facebook/react/bridge/WritableMap;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
