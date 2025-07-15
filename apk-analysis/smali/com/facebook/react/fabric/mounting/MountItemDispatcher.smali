.class public Lcom/facebook/react/fabric/mounting/MountItemDispatcher;
.super Ljava/lang/Object;
.source "MountItemDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;
    }
.end annotation


# static fields
.field private static final FRAME_TIME_NS:J = 0xfe502aL

.field private static final TAG:Ljava/lang/String; = "MountItemDispatcher"


# instance fields
.field private mBatchedExecutionTime:J

.field private mInDispatch:Z

.field private final mItemDispatchListener:Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;

.field private final mMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

.field private final mPreMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReDispatchCounter:I

.field private mRunStartTime:J

.field private final mViewCommandMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/fabric/mounting/MountingManager;Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;)V
    .locals 2
    .param p1, "mountingManager"    # Lcom/facebook/react/fabric/mounting/MountingManager;
    .param p2, "listener"    # Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mViewCommandMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mPreMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 53
    iput v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mBatchedExecutionTime:J

    .line 55
    iput-wide v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mRunStartTime:J

    .line 58
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 59
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mItemDispatchListener:Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;

    .line 60
    return-void
.end method

.method private dispatchMountItems()Z
    .locals 14

    .line 198
    const-string v0, "Caught exception executing ViewCommand: "

    iget v1, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 199
    iput-wide v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mBatchedExecutionTime:J

    .line 202
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mRunStartTime:J

    .line 204
    nop

    .line 205
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->getAndResetViewCommandMountItems()Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, "viewCommandMountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;>;"
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->getAndResetMountItems()Ljava/util/List;

    move-result-object v4

    .line 208
    .local v4, "mountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    if-nez v4, :cond_1

    if-nez v1, :cond_1

    .line 209
    const/4 v0, 0x0

    return v0

    .line 212
    :cond_1
    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mItemDispatchListener:Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;

    invoke-interface {v5, v4}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;->willMountItems(Ljava/util/List;)V

    .line 224
    const-string v5, "MountItemDispatcher"

    if-eqz v1, :cond_5

    .line 225
    const-string v6, "MountItemDispatcher::mountViews viewCommandMountItems"

    invoke-static {v2, v3, v6}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    .line 229
    .local v7, "command":Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableFabricLogs()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    const-string v8, "dispatchMountItems: Executing viewCommandMountItem"

    invoke-static {v7, v8}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 233
    :cond_2
    :try_start_0
    invoke-direct {p0, v7}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->executeOrEnqueue(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V
    :try_end_0
    .catch Lcom/facebook/react/bridge/RetryableMountingLayerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_1
    goto :goto_2

    .line 252
    :catchall_0
    move-exception v8

    .line 254
    .local v8, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 257
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    invoke-static {v5, v9}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 234
    .end local v8    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v8

    .line 237
    .local v8, "e":Lcom/facebook/react/bridge/RetryableMountingLayerException;
    invoke-virtual {v7}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;->getRetries()I

    move-result v9

    if-nez v9, :cond_3

    .line 238
    invoke-virtual {v7}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;->incrementRetries()V

    .line 239
    invoke-virtual {p0, v7}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->addViewCommandMountItem(Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;)V

    goto :goto_1

    .line 247
    :cond_3
    new-instance v9, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 250
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    invoke-static {v5, v9}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 259
    .end local v7    # "command":Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;
    .end local v8    # "e":Lcom/facebook/react/bridge/RetryableMountingLayerException;
    :goto_2
    goto :goto_0

    .line 261
    :cond_4
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 266
    :cond_5
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->getAndResetPreMountItems()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "preMountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    if-eqz v0, :cond_8

    .line 268
    const-string v6, "MountItemDispatcher::mountViews preMountItems"

    invoke-static {v2, v3, v6}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 271
    .local v7, "preMountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableFabricLogs()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 272
    const-string v8, "dispatchMountItems: Executing preMountItem"

    invoke-static {v7, v8}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 274
    :cond_6
    invoke-direct {p0, v7}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->executeOrEnqueue(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V

    .line 275
    .end local v7    # "preMountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    goto :goto_3

    .line 277
    :cond_7
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 280
    :cond_8
    if-eqz v4, :cond_f

    .line 281
    const-string v6, "MountItemDispatcher::mountViews mountItems to execute"

    invoke-static {v2, v3, v6}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 287
    .local v6, "batchedExecutionStartTime":J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 288
    .local v9, "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableFabricLogs()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 289
    const-string v10, "dispatchMountItems: Executing mountItem"

    invoke-static {v9, v10}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 293
    :cond_9
    :try_start_1
    invoke-direct {p0, v9}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->executeOrEnqueue(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    goto :goto_6

    .line 294
    :catchall_1
    move-exception v10

    .line 296
    .local v10, "e":Ljava/lang/Throwable;
    const-string v11, "dispatchMountItems: caught exception, displaying mount state"

    invoke-static {v5, v11, v10}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 298
    .local v12, "m":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    if-ne v12, v9, :cond_a

    .line 300
    const-string v13, "dispatchMountItems: mountItem: next mountItem triggered exception!"

    invoke-static {v5, v13}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_a
    const-string v13, "dispatchMountItems: mountItem"

    invoke-static {v12, v13}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 303
    .end local v12    # "m":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    goto :goto_5

    .line 304
    :cond_b
    invoke-interface {v9}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->getSurfaceId()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 305
    iget-object v11, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 306
    invoke-interface {v9}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->getSurfaceId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v11

    .line 307
    .local v11, "surfaceManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    if-eqz v11, :cond_c

    .line 308
    invoke-virtual {v11}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->printSurfaceState()V

    .line 312
    .end local v11    # "surfaceManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    :cond_c
    invoke-static {v10}, Lcom/facebook/react/bridge/ReactIgnorableMountingException;->isIgnorable(Ljava/lang/Throwable;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 313
    invoke-static {v5, v10}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v9    # "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .end local v10    # "e":Ljava/lang/Throwable;
    :goto_6
    goto :goto_4

    .line 315
    .restart local v9    # "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .restart local v10    # "e":Ljava/lang/Throwable;
    :cond_d
    throw v10

    .line 319
    .end local v9    # "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_e
    iget-wide v8, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mBatchedExecutionTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mBatchedExecutionTime:J

    .line 321
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 324
    .end local v6    # "batchedExecutionStartTime":J
    :cond_f
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mItemDispatchListener:Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;

    invoke-interface {v2, v4}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;->didMountItems(Ljava/util/List;)V

    .line 326
    const/4 v2, 0x1

    return v2
.end method

.method private static drainConcurrentItemQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 392
    .local p0, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 393
    return-object v1

    .line 395
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 398
    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_2

    .line 399
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 403
    return-object v1

    .line 405
    :cond_3
    return-object v0
.end method

.method private executeOrEnqueue(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V
    .locals 3
    .param p1, "item"    # Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 376
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->getSurfaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->isWaitingForViewAttach(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableFabricLogs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    nop

    .line 381
    invoke-interface {p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->getSurfaceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 378
    const-string v1, "MountItemDispatcher"

    const-string v2, "executeOrEnqueue: Item execution delayed, surface %s is not ready yet"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 384
    invoke-interface {p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->getSurfaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    .line 385
    .local v0, "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->scheduleMountItemOnViewAttach(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V

    .line 386
    .end local v0    # "surfaceMountingManager":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {p1, v0}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    .line 389
    :goto_0
    return-void
.end method

.method private getAndResetMountItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->drainConcurrentItemQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAndResetPreMountItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mPreMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->drainConcurrentItemQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAndResetViewCommandMountItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mViewCommandMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->drainConcurrentItemQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V
    .locals 6
    .param p0, "mountItem"    # Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "mountItemLines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 439
    .local v3, "m":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MountItemDispatcher"

    invoke-static {v5, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v3    # "m":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method


# virtual methods
.method public addMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V
    .locals 1
    .param p1, "mountItem"    # Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 67
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public addPreAllocateMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V
    .locals 3
    .param p1, "mountItem"    # Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 75
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->getSurfaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->surfaceIsStopped(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mPreMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    sget-boolean v0, Lcom/facebook/react/fabric/FabricUIManager;->IS_DEVELOPMENT_ENVIRONMENT:Z

    if-eqz v0, :cond_1

    .line 78
    nop

    .line 81
    invoke-interface {p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->getSurfaceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 78
    const-string v1, "MountItemDispatcher"

    const-string v2, "Not queueing PreAllocateMountItem: surfaceId stopped: [%d] - %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_1
    :goto_0
    return-void
.end method

.method public addViewCommandMountItem(Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;)V
    .locals 1
    .param p1, "mountItem"    # Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    .line 63
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mViewCommandMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public dispatchMountItems(Ljava/util/Queue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "mountItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 166
    .local v0, "item":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v0, v1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    :try_end_0
    .catch Lcom/facebook/react/bridge/RetryableMountingLayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Lcom/facebook/react/bridge/RetryableMountingLayerException;
    instance-of v2, v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    if-eqz v2, :cond_1

    .line 170
    move-object v2, v0

    check-cast v2, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    .line 172
    .local v2, "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;
    invoke-virtual {v2}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;->getRetries()I

    move-result v3

    if-nez v3, :cond_0

    .line 173
    invoke-virtual {v2}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;->incrementRetries()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->addViewCommandMountItem(Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;)V

    .line 178
    .end local v2    # "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;
    :cond_0
    goto :goto_1

    .line 179
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchExternalMountItems: mounting failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-virtual {v1}, Lcom/facebook/react/bridge/RetryableMountingLayerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v0, v2}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 183
    .end local v0    # "item":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .end local v1    # "e":Lcom/facebook/react/bridge/RetryableMountingLayerException;
    :goto_1
    goto :goto_0

    .line 184
    :cond_2
    return-void
.end method

.method public dispatchPreMountItems(J)V
    .locals 7
    .param p1, "frameTimeNanos"    # J

    .line 338
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mPreMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    return-void

    .line 343
    :cond_0
    const-string v0, "MountItemDispatcher::premountViews"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 350
    const-wide/32 v3, 0x7f2815

    add-long/2addr v3, p1

    .line 353
    .local v3, "frameTimeDeadline":J
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_1

    .line 354
    goto :goto_1

    .line 357
    :cond_1
    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mPreMountItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .local v5, "preMountItemToDispatch":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    if-nez v5, :cond_2

    .line 360
    nop

    .line 369
    .end local v5    # "preMountItemToDispatch":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    :goto_1
    iput-boolean v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 370
    nop

    .line 372
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 373
    return-void

    .line 363
    .restart local v5    # "preMountItemToDispatch":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableFabricLogs()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    const-string v6, "dispatchPreMountItems"

    invoke-static {v5, v6}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->printMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;Ljava/lang/String;)V

    .line 366
    :cond_3
    invoke-direct {p0, v5}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->executeOrEnqueue(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    .end local v5    # "preMountItemToDispatch":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    goto :goto_0

    .line 369
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 370
    throw v1
.end method

.method public getBatchedExecutionTime()J
    .locals 2

    .line 427
    iget-wide v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mBatchedExecutionTime:J

    return-wide v0
.end method

.method public getRunStartTime()J
    .locals 2

    .line 431
    iget-wide v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mRunStartTime:J

    return-wide v0
.end method

.method public tryDispatchMountItems()V
    .locals 6

    .line 100
    iget-boolean v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->forceBatchingMountItemsOnAndroid()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 105
    iput-boolean v1, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 108
    const/4 v0, 0x1

    .line 112
    .local v0, "didDispatchItems":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->dispatchMountItems()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    .line 116
    .end local v0    # "didDispatchItems":Z
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 117
    throw v0

    .line 116
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 117
    nop

    .line 122
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mItemDispatchListener:Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;

    invoke-interface {v0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;->didDispatchMountItems()V

    goto :goto_1

    .line 126
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->dispatchMountItems()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .restart local v0    # "didDispatchItems":Z
    iput-boolean v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 133
    nop

    .line 138
    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mItemDispatchListener:Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;

    invoke-interface {v3}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher$ItemDispatchListener;->didDispatchMountItems()V

    .line 141
    iget v3, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    if-eqz v0, :cond_4

    .line 143
    iget v3, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    .line 144
    new-instance v3, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-dispatched "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times. This indicates setState (?) is likely being called too many times during mounting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v4, "MountItemDispatcher"

    invoke-static {v4, v3}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    :cond_3
    iget v3, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    .line 154
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->tryDispatchMountItems()V

    .line 156
    :cond_4
    iput v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    .line 158
    .end local v0    # "didDispatchItems":Z
    :goto_1
    return-void

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    iput v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mReDispatchCounter:I

    .line 129
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 132
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    iput-boolean v2, p0, Lcom/facebook/react/fabric/mounting/MountItemDispatcher;->mInDispatch:Z

    .line 133
    throw v0
.end method
