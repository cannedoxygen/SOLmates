.class public Lcom/facebook/react/uimanager/events/FabricEventDispatcher;
.super Ljava/lang/Object;
.source "FabricEventDispatcher.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/EventDispatcher;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;
    }
.end annotation


# static fields
.field private static final uiThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;

.field private final mDispatchEventsRunnable:Ljava/lang/Runnable;

.field private mIsDispatchScheduled:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/react/uimanager/events/EventDispatcherListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentFrameCallback(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;)Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPostEventDispatchListeners(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReactContext(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDispatchScheduled(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mIsDispatchScheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelDispatchOfBatchedEvents(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->cancelDispatchOfBatchedEvents()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->uiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;-><init>(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback-IA;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mIsDispatchScheduled:Z

    .line 44
    new-instance v0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$1;-><init>(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mDispatchEventsRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 64
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 65
    new-instance v0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    .line 66
    return-void
.end method

.method private cancelDispatchOfBatchedEvents()V
    .locals 2

    .line 169
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 170
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useOptimizedEventBatchingOnAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mIsDispatchScheduled:Z

    .line 172
    sget-object v0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mDispatchEventsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;->stop()V

    .line 176
    :goto_0
    return-void
.end method

.method private dispatchSynchronous(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 12
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FabricEventDispatcher.dispatchSynchronous(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 89
    .local v0, "fabricUIManager":Lcom/facebook/react/bridge/UIManager;
    instance-of v3, v0, Lcom/facebook/react/uimanager/events/SynchronousEventReceiver;

    if-eqz v3, :cond_0

    .line 90
    move-object v4, v0

    check-cast v4, Lcom/facebook/react/uimanager/events/SynchronousEventReceiver;

    .line 92
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getSurfaceId()I

    move-result v5

    .line 93
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v6

    .line 94
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->canCoalesce()Z

    move-result v8

    .line 96
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    .line 97
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventCategory()I

    move-result v10

    .line 91
    const/4 v11, 0x1

    invoke-interface/range {v4 .. v11}, Lcom/facebook/react/uimanager/events/SynchronousEventReceiver;->receiveEvent(IILjava/lang/String;ZLcom/facebook/react/bridge/WritableMap;IZ)V

    goto :goto_0

    .line 100
    :cond_0
    const-string v3, "FabricEventDispatcher"

    new-instance v4, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v5, "Fabric UIManager expected to implement SynchronousEventReceiver."

    invoke-direct {v4, v5}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v0    # "fabricUIManager":Lcom/facebook/react/bridge/UIManager;
    :goto_0
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 107
    throw v0
.end method

.method private scheduleDispatchOfBatchedEvents()V
    .locals 2

    .line 115
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useOptimizedEventBatchingOnAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mIsDispatchScheduled:Z

    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mIsDispatchScheduled:Z

    .line 118
    sget-object v0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mDispatchEventsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$ScheduleDispatchFrameCallback;->maybeScheduleDispatchOfBatchedEvents()V

    .line 123
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;

    .line 136
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/events/EventDispatcherListener;

    .line 127
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public dispatchAllEvents()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->scheduleDispatchOfBatchedEvents()V

    .line 112
    return-void
.end method

.method public dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .line 70
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/EventDispatcherListener;

    .line 71
    .local v1, "listener":Lcom/facebook/react/uimanager/events/EventDispatcherListener;
    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/events/EventDispatcherListener;->onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V

    .line 72
    .end local v1    # "listener":Lcom/facebook/react/uimanager/events/EventDispatcherListener;
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->experimental_isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->dispatchSynchronous(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/events/Event;->dispatchModern(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V

    .line 79
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->dispose()V

    .line 80
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->scheduleDispatchOfBatchedEvents()V

    .line 81
    return-void
.end method

.method public onCatalystInstanceDestroyed()V
    .locals 1

    .line 159
    new-instance v0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher$2;-><init>(Lcom/facebook/react/uimanager/events/FabricEventDispatcher;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->cancelDispatchOfBatchedEvents()V

    .line 156
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->cancelDispatchOfBatchedEvents()V

    .line 151
    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->scheduleDispatchOfBatchedEvents()V

    .line 146
    return-void
.end method

.method public registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 1
    .param p1, "uiManagerType"    # I
    .param p2, "eventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 179
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->register(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 180
    return-void
.end method

.method public registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V
    .locals 1
    .param p1, "uiManagerType"    # I
    .param p2, "eventEmitter"    # Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 184
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->register(ILcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V

    .line 185
    return-void
.end method

.method public removeBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;

    .line 140
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mPostEventDispatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public removeListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/events/EventDispatcherListener;

    .line 132
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public unregisterEventEmitter(I)V
    .locals 1
    .param p1, "uiManagerType"    # I

    .line 188
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/FabricEventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->unregister(I)V

    .line 189
    return-void
.end method
