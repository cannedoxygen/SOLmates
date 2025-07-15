.class public Lcom/swmansion/reanimated/NativeProxy;
.super Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;
.source "NativeProxy.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "valueUnpackerCode"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 27
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSCallInvokerHolder()Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    .line 28
    .local v0, "holder":Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;
    new-instance v1, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    invoke-direct {v1, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    move-object v9, v1

    .line 29
    .local v9, "LayoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    new-instance v7, Lcom/swmansion/reanimated/ReanimatedMessageQueueThread;

    invoke-direct {v7}, Lcom/swmansion/reanimated/ReanimatedMessageQueueThread;-><init>()V

    .line 30
    .local v7, "messageQueueThread":Lcom/swmansion/reanimated/ReanimatedMessageQueueThread;
    nop

    .line 32
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/JavaScriptContextHolder;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v2

    iget-object v5, p0, Lcom/swmansion/reanimated/NativeProxy;->mAndroidUIScheduler:Lcom/swmansion/reanimated/AndroidUIScheduler;

    .line 31
    move-object v1, p0

    move-object v4, v0

    move-object v6, v9

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/swmansion/reanimated/NativeProxy;->initHybrid(JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/swmansion/reanimated/AndroidUIScheduler;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;Lcom/facebook/react/bridge/queue/MessageQueueThread;Ljava/lang/String;)Lcom/facebook/jni/HybridData;

    move-result-object v1

    iput-object v1, p0, Lcom/swmansion/reanimated/NativeProxy;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 38
    invoke-virtual {p0, v9}, Lcom/swmansion/reanimated/NativeProxy;->prepareLayoutAnimations(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V

    .line 39
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NativeProxy;->installJSIBindings()V

    .line 40
    sget-boolean v1, Lcom/swmansion/reanimated/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NativeProxy;->checkCppVersion()V

    .line 43
    :cond_0
    return-void
.end method

.method public static createNativeMethodsHolder(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;
    .locals 2
    .param p0, "layoutAnimations"    # Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    .local v0, "weakLayoutAnimations":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;>;"
    new-instance v1, Lcom/swmansion/reanimated/NativeProxy$1;

    invoke-direct {v1, v0}, Lcom/swmansion/reanimated/NativeProxy$1;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v1
.end method

.method private native initHybrid(JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/swmansion/reanimated/AndroidUIScheduler;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;Lcom/facebook/react/bridge/queue/MessageQueueThread;Ljava/lang/String;)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method protected getHybridData()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method public native isAnyHandlerWaitingForEvent(Ljava/lang/String;I)Z
.end method

.method public native performOperations()V
.end method
