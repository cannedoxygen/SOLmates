.class public abstract Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;
.super Ljava/lang/Object;
.source "NativeProxyCommon.java"


# instance fields
.field private final ANIMATIONS_DRAG_FACTOR:I

.field protected cppVersion:Ljava/lang/String;

.field private firstUptime:Ljava/lang/Long;

.field private final gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

.field private final keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

.field protected final mAndroidUIScheduler:Lcom/swmansion/reanimated/AndroidUIScheduler;

.field protected final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mNodesManager:Lcom/swmansion/reanimated/NodesManager;

.field private final reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

.field private slowAnimationsEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$hfOQ5sLHrsNvRCz3aHbdTOxw3RU(Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->toggleSlowAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "reanimated"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->ANIMATIONS_DRAG_FACTOR:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/swmansion/reanimated/AndroidUIScheduler;

    invoke-direct {v0, p1}, Lcom/swmansion/reanimated/AndroidUIScheduler;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mAndroidUIScheduler:Lcom/swmansion/reanimated/AndroidUIScheduler;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    iget-object v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    .line 56
    new-instance v0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    .line 57
    invoke-direct {p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->addDevMenuOption()V

    .line 61
    :try_start_0
    const-string v0, "com.swmansion.gesturehandler.react.RNGestureHandlerModule"

    .line 63
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "gestureHandlerModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/facebook/react/bridge/NativeModule;>;"
    nop

    .line 65
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/swmansion/common/GestureHandlerStateManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 68
    .local v0, "tempHandlerStateManager":Lcom/swmansion/common/GestureHandlerStateManager;
    goto :goto_1

    .line 66
    .end local v0    # "tempHandlerStateManager":Lcom/swmansion/common/GestureHandlerStateManager;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 69
    .local v0, "tempHandlerStateManager":Lcom/swmansion/common/GestureHandlerStateManager;
    :goto_1
    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

    .line 70
    return-void
.end method

.method private addDevMenuOption()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;)V

    invoke-static {v0, v1}, Lcom/swmansion/reanimated/DevMenuUtils;->addDevMenuOption(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    .line 89
    return-void
.end method

.method private convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;
    .locals 4
    .param p1, "props"    # Lcom/facebook/react/bridge/ReadableNativeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableNativeArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v0, "propsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReadableNativeArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 184
    .local v1, "propsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 185
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private toggleSlowAnimations()V
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    .line 80
    iget-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-boolean v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->enableSlowAnimations(ZI)V

    .line 84
    return-void
.end method


# virtual methods
.method protected checkCppVersion()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->getReanimatedJavaVersion()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "javaVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Reanimated] Mismatch between Java code version and C++ code version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " respectively). See https://docs.swmansion.com/react-native-reanimated/docs/guides/troubleshooting#mismatch-between-java-code-version-and-c-code-version for more information."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0    # "javaVersion":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[Reanimated] Java side failed to resolve C++ code version. See https://docs.swmansion.com/react-native-reanimated/docs/guides/troubleshooting#java-side-failed-to-resolve-c-code-version for more information."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configureProps(Lcom/facebook/react/bridge/ReadableNativeArray;Lcom/facebook/react/bridge/ReadableNativeArray;)V
    .locals 3
    .param p1, "uiProps"    # Lcom/facebook/react/bridge/ReadableNativeArray;
    .param p2, "nativeProps"    # Lcom/facebook/react/bridge/ReadableNativeArray;

    .line 176
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, "uiPropsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;

    move-result-object v1

    .line 178
    .local v1, "nativePropsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v2, v0, v1}, Lcom/swmansion/reanimated/NodesManager;->configureProps(Ljava/util/Set;Ljava/util/Set;)V

    .line 179
    return-void
.end method

.method public dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 149
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/reanimated/NodesManager;->dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 150
    return-void
.end method

.method public getAndroidUIScheduler()Lcom/swmansion/reanimated/AndroidUIScheduler;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mAndroidUIScheduler:Lcom/swmansion/reanimated/AndroidUIScheduler;

    return-object v0
.end method

.method public getAnimationTimestamp()J
    .locals 6

    .line 161
    iget-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 162
    return-wide v0

    .line 165
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getHybridData()Lcom/facebook/jni/HybridData;
.end method

.method public getIsReducedMotion()Z
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    nop

    .line 248
    const-string v1, "transition_animation_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "rawValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 250
    .local v2, "parsedValue":F
    :goto_0
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public getReanimatedJavaVersion()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "3.16.7"

    return-object v0
.end method

.method protected native installJSIBindings()V
.end method

.method public invalidate()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mAndroidUIScheduler:Lcom/swmansion/reanimated/AndroidUIScheduler;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/AndroidUIScheduler;->deactivate()V

    .line 225
    return-void
.end method

.method maybeFlushUIUpdatesQueue()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->performOperations()V

    .line 258
    :cond_0
    return-void
.end method

.method public measure(I)[F
    .locals 1
    .param p1, "viewTag"    # I

    .line 171
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->measure(I)[F

    move-result-object v0

    return-object v0
.end method

.method public obtainProp(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "propName"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->obtainProp(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepareLayoutAnimations(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V
    .locals 2
    .param p1, "layoutAnimations"    # Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 228
    sget-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "[REANIMATED]"

    const-string v1, "You can not use LayoutAnimation with enabled Chrome Debugger"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    .line 233
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 234
    invoke-virtual {v0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    .line 236
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    .line 237
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 238
    invoke-virtual {v0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object v0

    .line 241
    .local v0, "animationsManager":Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;
    invoke-static {p1}, Lcom/swmansion/reanimated/NativeProxy;->createNativeMethodsHolder(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V

    .line 242
    return-void
.end method

.method public registerEventHandler(Lcom/swmansion/reanimated/nativeProxy/EventHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/reanimated/nativeProxy/EventHandler;

    .line 192
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->getEventNameResolver()Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/swmansion/reanimated/nativeProxy/EventHandler;->mCustomEventNamesResolver:Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    .line 193
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->registerEventHandler(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 194
    return-void
.end method

.method public registerSensor(IILcom/swmansion/reanimated/nativeProxy/SensorSetter;)I
    .locals 2
    .param p1, "sensorType"    # I
    .param p2, "interval"    # I
    .param p3, "setter"    # Lcom/swmansion/reanimated/nativeProxy/SensorSetter;

    .line 198
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    .line 199
    invoke-static {p1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->getInstanceById(I)Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1, p2, p3}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->registerSensor(Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/nativeProxy/SensorSetter;)I

    move-result v0

    return v0
.end method

.method public requestRender(Lcom/swmansion/reanimated/nativeProxy/AnimationFrameCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/swmansion/reanimated/nativeProxy/AnimationFrameCallback;

    .line 93
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->postOnAnimation(Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;)V

    .line 94
    return-void
.end method

.method public scrollTo(IDDZ)V
    .locals 7
    .param p1, "viewTag"    # I
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "animated"    # Z

    .line 144
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/reanimated/NodesManager;->scrollTo(IDDZ)V

    .line 145
    return-void
.end method

.method protected setCppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setGestureState(II)V
    .locals 1
    .param p1, "handlerTag"    # I
    .param p2, "newState"    # I

    .line 154
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

    invoke-interface {v0, p1, p2}, Lcom/swmansion/common/GestureHandlerStateManager;->setGestureHandlerState(II)V

    .line 157
    :cond_0
    return-void
.end method

.method public subscribeForKeyboardEvents(Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;ZZ)I
    .locals 1
    .param p1, "keyboardWorkletWrapper"    # Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;
    .param p2, "isStatusBarTranslucent"    # Z
    .param p3, "isNavigationBarTranslucent"    # Z

    .line 212
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->subscribeForKeyboardUpdates(Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;ZZ)I

    move-result v0

    return v0
.end method

.method public synchronouslyUpdateUIProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "uiProps"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 134
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->synchronouslyUpdateUIProps(ILcom/facebook/react/bridge/ReadableMap;)V

    .line 135
    return-void
.end method

.method public unregisterSensor(I)V
    .locals 1
    .param p1, "sensorId"    # I

    .line 204
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->unregisterSensor(I)V

    .line 205
    return-void
.end method

.method public unsubscribeFromKeyboardEvents(I)V
    .locals 1
    .param p1, "listenerId"    # I

    .line 218
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->unsubscribeFromKeyboardUpdates(I)V

    .line 219
    return-void
.end method

.method public updateProps(ILjava/util/Map;)V
    .locals 1
    .param p1, "viewTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->updateProps(ILjava/util/Map;)V

    .line 130
    return-void
.end method
