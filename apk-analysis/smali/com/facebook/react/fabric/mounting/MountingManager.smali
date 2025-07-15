.class public Lcom/facebook/react/fabric/mounting/MountingManager;
.super Ljava/lang/Object;
.source "MountingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;
    }
.end annotation


# static fields
.field private static final MAX_STOPPED_SURFACE_IDS_LENGTH:I = 0xf

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

.field private mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

.field private final mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;)V
    .locals 1
    .param p1, "viewManagerRegistry"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p2, "mountItemExecutor"    # Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 63
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 74
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 75
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    .line 76
    return-void
.end method

.method private getSurfaceMountingManager(II)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 1
    .param p1, "surfaceId"    # I
    .param p2, "reactTag"    # I

    .line 447
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 448
    invoke-virtual {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0
.end method


# virtual methods
.method public attachRootView(ILandroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 4
    .param p1, "surfaceId"    # I
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "themedReactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 119
    nop

    .line 120
    const-string v0, "attachView"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 122
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trying to attach a view to a stopped surface"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-void

    .line 128
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->attachRootView(Landroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 129
    return-void
.end method

.method public clearJSResponder()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V

    .line 328
    return-void
.end method

.method public enqueuePendingEvent(IILjava/lang/String;ZLcom/facebook/react/bridge/WritableMap;I)V
    .locals 7
    .param p1, "surfaceId"    # I
    .param p2, "reactTag"    # I
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "canCoalesceEvent"    # Z
    .param p5, "params"    # Lcom/facebook/react/bridge/WritableMap;
    .param p6, "eventCategory"    # I

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceMountingManager(II)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v6

    .line 435
    .local v6, "smm":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    if-nez v6, :cond_0

    .line 436
    sget-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    .line 439
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 436
    const-string v3, "Cannot queue event without valid surface mounting manager for tag: %d, surfaceId: %d"

    invoke-static {v0, v3, v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    return-void

    .line 443
    :cond_0
    move-object v0, v6

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->enqueuePendingEvent(ILjava/lang/String;ZLcom/facebook/react/bridge/WritableMap;I)V

    .line 444
    return-void
.end method

.method public getEventEmitter(II)Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .locals 2
    .param p1, "surfaceId"    # I
    .param p2, "reactTag"    # I

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceMountingManager(II)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 334
    .local v0, "smm":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 337
    :cond_0
    invoke-virtual {v0, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getEventEmitter(I)Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    move-result-object v1

    return-object v1
.end method

.method public getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 2
    .param p1, "surfaceId"    # I

    .line 162
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 163
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getSurfaceId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 168
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getSurfaceId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 173
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 174
    return-object v0
.end method

.method public getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 4
    .param p1, "surfaceId"    # I
    .param p2, "context"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 181
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    if-eqz v0, :cond_0

    .line 189
    return-object v0

    .line 182
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find SurfaceMountingManager for surfaceId: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. Context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 4
    .param p1, "reactTag"    # I

    .line 235
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 236
    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 241
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 242
    .local v2, "smm":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewExists(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-nez v0, :cond_1

    .line 244
    iput-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 246
    :cond_1
    return-object v2

    .line 248
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;>;"
    .end local v2    # "smm":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    :cond_2
    goto :goto_0

    .line 249
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 4
    .param p1, "reactTag"    # I

    .line 255
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 257
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    if-eqz v0, :cond_0

    .line 262
    return-object v0

    .line 258
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find SurfaceMountingManager for tag: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewExists(I)Z
    .locals 1
    .param p1, "reactTag"    # I

    .line 266
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaitingForViewAttach(I)Z
    .locals 3
    .param p1, "surfaceId"    # I

    .line 206
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 207
    .local v0, "mountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    return v1

    .line 215
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isRootViewAttached()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public measure(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 13
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "localData"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p5, "state"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p6, "width"    # F
    .param p7, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p8, "height"    # F
    .param p9, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p10, "attachmentsPositions"    # [F

    .line 370
    move-object v0, p0

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 371
    move-object v2, p2

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v3

    .line 372
    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lcom/facebook/react/uimanager/ViewManager;->measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J

    move-result-wide v3

    .line 370
    return-wide v3
.end method

.method public measureMapBuffer(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 13
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "localData"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p4, "props"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p5, "state"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p6, "width"    # F
    .param p7, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p8, "height"    # F
    .param p9, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p10, "attachmentsPositions"    # [F

    .line 413
    move-object v0, p0

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 414
    move-object v2, p2

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v3

    .line 415
    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lcom/facebook/react/uimanager/ViewManager;->measure(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J

    move-result-wide v3

    .line 413
    return-wide v3
.end method

.method public receiveCommand(IIILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "surfaceId"    # I
    .param p2, "reactTag"    # I
    .param p3, "commandId"    # I
    .param p4, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 273
    const-string/jumbo v0, "receiveCommand:int"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->receiveCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    .line 275
    return-void
.end method

.method public receiveCommand(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "surfaceId"    # I
    .param p2, "reactTag"    # I
    .param p3, "commandId"    # Ljava/lang/String;
    .param p4, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 279
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 280
    const-string/jumbo v0, "receiveCommand:string"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->receiveCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 282
    return-void
.end method

.method public sendAccessibilityEvent(III)V
    .locals 1
    .param p1, "surfaceId"    # I
    .param p2, "reactTag"    # I
    .param p3, "eventType"    # I

    .line 299
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 300
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 301
    invoke-virtual {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->sendAccessibilityEvent(II)V

    goto :goto_0

    .line 303
    :cond_0
    const-string/jumbo v0, "sendAccessibilityEvent"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->sendAccessibilityEvent(II)V

    .line 306
    :goto_0
    return-void
.end method

.method public startSurface(ILcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 8
    .param p1, "surfaceId"    # I
    .param p2, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p3, "rootView"    # Landroid/view/View;

    .line 85
    new-instance v7, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    move-object v0, v7

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;-><init>(ILcom/facebook/react/touch/JSResponderHandler;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 99
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 101
    sget-object v1, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called startSurface more than once for the SurfaceId ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    iput-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 109
    if-eqz p3, :cond_1

    .line 110
    invoke-virtual {v0, p3, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->attachRootView(Landroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 113
    :cond_1
    return-object v0
.end method

.method public stopSurface(I)V
    .locals 5
    .param p1, "surfaceId"    # I

    .line 133
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 134
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    if-eqz v0, :cond_2

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 138
    .local v1, "staleStoppedId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    sget-object v2, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Removing stale SurfaceMountingManager: [%d]"

    invoke-static {v2, v4, v3}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    .end local v1    # "staleStoppedId":Ljava/lang/Integer;
    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->stopSurface()V

    .line 146
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 147
    iput-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-ne v1, v0, :cond_3

    .line 150
    iput-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    goto :goto_1

    .line 153
    :cond_2
    sget-object v1, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call stopSurface on non-existent surface: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :cond_3
    :goto_1
    return-void
.end method

.method public surfaceIsStopped(I)Z
    .locals 3
    .param p1, "surfaceId"    # I

    .line 193
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 194
    return v1

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 198
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    return v1

    .line 202
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public updateProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "props"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 310
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 311
    if-nez p2, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->updateProps(ILcom/facebook/react/bridge/ReadableMap;)V

    .line 316
    return-void
.end method
