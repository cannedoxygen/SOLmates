.class public Lcom/facebook/react/uimanager/UIViewOperationQueue;
.super Ljava/lang/Object;
.source "UIViewOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$RemoveRootViewOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchStringCommandOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateViewExtraData;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateInstanceHandleOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdatePropertiesOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateLayoutOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$SetChildrenOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$SetLayoutAnimationEnabledOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ConfigureLayoutAnimationOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureInWindowOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$SendAccessibilityEvent;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$LayoutUpdateFinishedOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$AnimationOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;,
        Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_TIME_LEFT_IN_FRAME_FOR_NONBATCHED_OPERATION_MS:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCreateViewCount:J

.field private final mDispatchRunnablesLock:Ljava/lang/Object;

.field private final mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

.field private mDispatchUIRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDispatchUIFrameCallbackEnqueued:Z

.field private mIsInIllegalUIState:Z

.field private mIsProfilingNextBatch:Z

.field private final mMeasureBuffer:[I

.field private final mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

.field private mNonBatchedExecutionTotalTime:J

.field private mNonBatchedOperations:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mNonBatchedOperationsLock:Ljava/lang/Object;

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiledBatchBatchedExecutionTime:J

.field private mProfiledBatchCommitEndTime:J

.field private mProfiledBatchCommitStartTime:J

.field private mProfiledBatchDispatchViewUpdatesTime:J

.field private mProfiledBatchLayoutTime:J

.field private mProfiledBatchNonBatchedExecutionTime:J

.field private mProfiledBatchRunEndTime:J

.field private mProfiledBatchRunStartTime:J

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private mThreadCpuTime:J

.field private mUpdatePropertiesOperationCount:J

.field private mViewCommandOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsInIllegalUIState(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsProfilingNextBatch(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMeasureBuffer(Lcom/facebook/react/uimanager/UIViewOperationQueue;)[I
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mMeasureBuffer:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeViewHierarchyManager(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNonBatchedExecutionTotalTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNonBatchedOperations(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNonBatchedOperationsLock(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfiledBatchCommitEndTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitEndTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProfiledBatchCommitStartTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProfiledBatchDispatchViewUpdatesTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchDispatchViewUpdatesTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProfiledBatchRunStartTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmViewCommandOperations(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsInIllegalUIState(Lcom/facebook/react/uimanager/UIViewOperationQueue;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNonBatchedExecutionTotalTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfiledBatchCommitEndTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitEndTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfiledBatchCommitStartTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfiledBatchDispatchViewUpdatesTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchDispatchViewUpdatesTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfiledBatchLayoutTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchLayoutTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfiledBatchRunEndTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunEndTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfiledBatchRunStartTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunStartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThreadCpuTime(Lcom/facebook/react/uimanager/UIViewOperationQueue;J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mThreadCpuTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mflushPendingBatches(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->flushPendingBatches()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;I)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "nativeViewHierarchyManager"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .param p3, "minTimeLeftInFrameForNonBatchedOperationMs"    # I

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mMeasureBuffer:[I

    .line 561
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchRunnablesLock:Ljava/lang/Object;

    .line 562
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    .line 574
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    .line 579
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    .line 580
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    .line 598
    iput-object p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 599
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    .line 602
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 603
    const/16 v1, 0x8

    goto :goto_0

    .line 604
    :cond_0
    move v1, p3

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/bridge/ReactContext;ILcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback-IA;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    .line 605
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 606
    return-void
.end method

.method private flushPendingBatches()V
    .locals 12

    .line 973
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsInIllegalUIState:Z

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "ReactNative"

    const-string v1, "Not flushing pending UI operations because of previously thrown Exception"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchRunnablesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 983
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    .line 984
    .local v1, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    .line 988
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 991
    .local v2, "batchedExecutionStartTime":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 992
    .local v4, "runnable":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 993
    .end local v4    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 995
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchBatchedExecutionTime:J

    .line 997
    iget-wide v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    iput-wide v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchNonBatchedExecutionTime:J

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    .line 1000
    const-string v8, "batchedExecutionTime"

    const-wide/32 v6, 0xf4240

    mul-long v10, v2, v6

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;IJ)V

    .line 1005
    const-string v6, "batchedExecutionTime"

    invoke-static {v4, v5, v6, v0}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 1007
    :cond_2
    iput-wide v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedExecutionTotalTime:J

    .line 1008
    return-void

    .line 986
    .end local v1    # "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    .end local v2    # "batchedExecutionStartTime":J
    :cond_3
    :try_start_1
    monitor-exit v0

    return-void

    .line 988
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addRootView(ILandroid/view/View;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "rootView"    # Landroid/view/View;

    .line 645
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->addRootView(ILandroid/view/View;)V

    .line 646
    return-void
.end method

.method public dispatchViewUpdates(IJJ)V
    .locals 19
    .param p1, "batchId"    # I
    .param p2, "commitStartTime"    # J
    .param p4, "layoutTime"    # J

    .line 788
    move-object/from16 v15, p0

    move/from16 v9, p1

    const-string v0, "UIViewOperationQueue.dispatchViewUpdates"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v1, "batchId"

    .line 790
    invoke-virtual {v0, v1, v9}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 793
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 794
    .local v11, "dispatchViewUpdatesTime":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v13

    .line 799
    .local v13, "nativeModulesThreadCpuTime":J
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    .line 801
    .local v0, "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    goto :goto_0

    .line 803
    .end local v0    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    :cond_0
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 807
    .local v16, "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    :goto_0
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    .line 809
    .local v0, "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    goto :goto_1

    .line 811
    .end local v0    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :cond_1
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 815
    .local v17, "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :goto_1
    iget-object v1, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 816
    :try_start_1
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 817
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    .line 818
    .local v0, "nonBatchedOperations":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    move-object/from16 v18, v0

    goto :goto_2

    .line 820
    .end local v0    # "nonBatchedOperations":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :cond_2
    const/4 v0, 0x0

    move-object/from16 v18, v0

    .line 822
    .local v18, "nonBatchedOperations":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 824
    :try_start_2
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    if-eqz v0, :cond_3

    .line 825
    iget-object v0, v15, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;->onViewHierarchyUpdateEnqueued()V

    .line 828
    :cond_3
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-wide/from16 v7, p2

    move v15, v9

    move-wide/from16 v9, p4

    :try_start_3
    invoke-direct/range {v1 .. v14}, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILjava/util/ArrayList;Ljava/util/ArrayDeque;Ljava/util/ArrayList;JJJJ)V

    move-object v1, v0

    .line 929
    .local v1, "runOperations":Ljava/lang/Runnable;
    const-string v0, "acquiring mDispatchRunnablesLock"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v2, 0x0

    :try_start_4
    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v4, "batchId"

    .line 931
    invoke-virtual {v0, v4, v15}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 933
    move-object/from16 v4, p0

    :try_start_5
    iget-object v5, v4, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchRunnablesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 934
    :try_start_6
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 935
    iget-object v0, v4, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 943
    :try_start_7
    iget-boolean v0, v4, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    if-nez v0, :cond_4

    .line 944
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue$2;

    iget-object v5, v4, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v4, v5}, Lcom/facebook/react/uimanager/UIViewOperationQueue$2;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 953
    .end local v1    # "runOperations":Ljava/lang/Runnable;
    .end local v11    # "dispatchViewUpdatesTime":J
    .end local v13    # "nativeModulesThreadCpuTime":J
    .end local v16    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    .end local v17    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    .end local v18    # "nonBatchedOperations":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :cond_4
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 954
    nop

    .line 955
    return-void

    .line 936
    .restart local v1    # "runOperations":Ljava/lang/Runnable;
    .restart local v11    # "dispatchViewUpdatesTime":J
    .restart local v13    # "nativeModulesThreadCpuTime":J
    .restart local v16    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    .restart local v17    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    .restart local v18    # "nonBatchedOperations":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local p1    # "batchId":I
    .end local p2    # "commitStartTime":J
    .end local p4    # "layoutTime":J
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 953
    .end local v1    # "runOperations":Ljava/lang/Runnable;
    .end local v11    # "dispatchViewUpdatesTime":J
    .end local v13    # "nativeModulesThreadCpuTime":J
    .end local v16    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    .end local v17    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    .end local v18    # "nonBatchedOperations":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    .restart local p1    # "batchId":I
    .restart local p2    # "commitStartTime":J
    .restart local p4    # "layoutTime":J
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    const-wide/16 v2, 0x0

    :goto_3
    move-object/from16 v4, p0

    goto :goto_5

    .line 822
    .restart local v11    # "dispatchViewUpdatesTime":J
    .restart local v13    # "nativeModulesThreadCpuTime":J
    .restart local v16    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    .restart local v17    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :catchall_3
    move-exception v0

    move-wide v2, v7

    move-object v4, v15

    :goto_4
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .end local p1    # "batchId":I
    .end local p2    # "commitStartTime":J
    .end local p4    # "layoutTime":J
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 953
    .end local v11    # "dispatchViewUpdatesTime":J
    .end local v13    # "nativeModulesThreadCpuTime":J
    .end local v16    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    .end local v17    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    .restart local p1    # "batchId":I
    .restart local p2    # "commitStartTime":J
    .restart local p4    # "layoutTime":J
    :catchall_4
    move-exception v0

    goto :goto_5

    .line 822
    .restart local v11    # "dispatchViewUpdatesTime":J
    .restart local v13    # "nativeModulesThreadCpuTime":J
    .restart local v16    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    .restart local v17    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :catchall_5
    move-exception v0

    goto :goto_4

    .line 953
    .end local v11    # "dispatchViewUpdatesTime":J
    .end local v13    # "nativeModulesThreadCpuTime":J
    .end local v16    # "viewCommandOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandViewOperation;>;"
    .end local v17    # "batchedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;>;"
    :catchall_6
    move-exception v0

    move-wide v2, v7

    move-object v4, v15

    :goto_5
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 954
    throw v0
.end method

.method public enqueueClearJSResponder()V
    .locals 8

    .line 669
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v7, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IIZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    return-void
.end method

.method public enqueueConfigureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "onAnimationComplete"    # Lcom/facebook/react/bridge/Callback;

    .line 753
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$ConfigureLayoutAnimationOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ConfigureLayoutAnimationOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$ConfigureLayoutAnimationOperation-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    return-void
.end method

.method public enqueueCreateView(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 9
    .param p1, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "viewReactTag"    # I
    .param p3, "viewClassName"    # Ljava/lang/String;
    .param p4, "initialProps"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 696
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mCreateViewCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mCreateViewCount:J

    .line 698
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNonBatchedOperations:Ljava/util/ArrayDeque;

    new-instance v8, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue$CreateViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 700
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enqueueDispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IILcom/facebook/react/bridge/ReadableArray;)V

    .line 677
    .local v0, "command":Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchCommandOperation;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    return-void
.end method

.method public enqueueDispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 682
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchStringCommandOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchStringCommandOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 684
    .local v0, "command":Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchStringCommandOperation;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method public enqueueFindTargetForTouch(IFFLcom/facebook/react/bridge/Callback;)V
    .locals 9
    .param p1, "reactTag"    # I
    .param p2, "targetX"    # F
    .param p3, "targetY"    # F
    .param p4, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 766
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v8, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IFFLcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$FindTargetForTouchOperation-IA;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public enqueueLayoutUpdateFinished(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V
    .locals 3
    .param p1, "node"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "listener"    # Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    .line 775
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$LayoutUpdateFinishedOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$LayoutUpdateFinishedOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;Lcom/facebook/react/uimanager/UIViewOperationQueue$LayoutUpdateFinishedOperation-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    return-void
.end method

.method public enqueueManageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    .locals 8
    .param p1, "reactTag"    # I
    .param p2, "indicesToRemove"    # [I
    .param p3, "viewsToAdd"    # [Lcom/facebook/react/uimanager/ViewAtIndex;
    .param p4, "tagsToDelete"    # [I

    .line 739
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v7, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    return-void
.end method

.method public enqueueMeasure(ILcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 757
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureOperation-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method public enqueueMeasureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 761
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureInWindowOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureInWindowOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/UIViewOperationQueue$MeasureInWindowOperation-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    return-void
.end method

.method public enqueueRemoveRootView(I)V
    .locals 2
    .param p1, "rootViewTag"    # I

    .line 658
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$RemoveRootViewOperation;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$RemoveRootViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method public enqueueSendAccessibilityEvent(II)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "eventType"    # I

    .line 770
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$SendAccessibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$SendAccessibilityEvent;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IILcom/facebook/react/uimanager/UIViewOperationQueue$SendAccessibilityEvent-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public enqueueSetChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 744
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$SetChildrenOperation;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$SetChildrenOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/bridge/ReadableArray;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    return-void
.end method

.method public enqueueSetJSResponder(IIZ)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "initialTag"    # I
    .param p3, "blockNativeResponder"    # Z

    .line 662
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v7, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ChangeJSResponderOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IIZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    return-void
.end method

.method public enqueueSetLayoutAnimationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 748
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$SetLayoutAnimationEnabledOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$SetLayoutAnimationEnabledOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ZLcom/facebook/react/uimanager/UIViewOperationQueue$SetLayoutAnimationEnabledOperation-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    return-void
.end method

.method public enqueueUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 2
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 779
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/UIBlock;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    return-void
.end method

.method protected enqueueUIOperation(Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;)V
    .locals 1
    .param p1, "operation"    # Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;

    .line 653
    invoke-static {p1}, Lcom/facebook/react/bridge/SoftAssertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method public enqueueUpdateExtraData(ILjava/lang/Object;)V
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 688
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateViewExtraData;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateViewExtraData;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    return-void
.end method

.method public enqueueUpdateInstanceHandle(IJ)V
    .locals 8
    .param p1, "reactTag"    # I
    .param p2, "instanceHandle"    # J

    .line 704
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v7, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateInstanceHandleOperation;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateInstanceHandleOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IJLcom/facebook/react/uimanager/UIViewOperationQueue$UpdateInstanceHandleOperation-IA;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    return-void
.end method

.method public enqueueUpdateLayout(IIIIII)V
    .locals 8
    .param p1, "parentTag"    # I
    .param p2, "reactTag"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    sget-object v7, Lcom/facebook/yoga/YogaDirection;->INHERIT:Lcom/facebook/yoga/YogaDirection;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUpdateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V

    .line 720
    return-void
.end method

.method public enqueueUpdateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V
    .locals 12
    .param p1, "parentTag"    # I
    .param p2, "reactTag"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "layoutDirection"    # Lcom/facebook/yoga/YogaDirection;

    .line 730
    move-object v9, p0

    iget-object v10, v9, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v11, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateLayoutOperation;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdateLayoutOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IIIIIILcom/facebook/yoga/YogaDirection;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    return-void
.end method

.method public enqueueUpdateProperties(ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 708
    iget-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mUpdatePropertiesOperationCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mUpdatePropertiesOperationCount:J

    .line 709
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdatePropertiesOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p3, v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdatePropertiesOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/UIViewOperationQueue$UpdatePropertiesOperation-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    return-void
.end method

.method getNativeViewHierarchyManager()Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mNativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    return-object v0
.end method

.method public getProfiledBatchPerfCounters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 626
    .local v0, "perfMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CommitStartTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CommitEndTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchLayoutTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LayoutTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchDispatchViewUpdatesTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "DispatchViewUpdatesTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RunStartTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchRunEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RunEndTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "BatchedExecutionTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchNonBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NonBatchedExecutionTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mThreadCpuTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NativeModulesThreadCpuTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mCreateViewCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CreateViewCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-wide v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mUpdatePropertiesOperationCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "UpdatePropsCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewCommandOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method pauseFrameCallback()V
    .locals 3

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    .line 967
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    .line 968
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Landroid/view/Choreographer$FrameCallback;)V

    .line 969
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->flushPendingBatches()V

    .line 970
    return-void
.end method

.method public prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 3
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 783
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIBlockOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/UIBlock;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 784
    return-void
.end method

.method public profileNextBatch()V
    .locals 2

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsProfilingNextBatch:Z

    .line 619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mProfiledBatchCommitStartTime:J

    .line 620
    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mCreateViewCount:J

    .line 621
    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mUpdatePropertiesOperationCount:J

    .line 622
    return-void
.end method

.method resumeFrameCallback()V
    .locals 3

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mIsDispatchUIFrameCallbackEnqueued:Z

    .line 959
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableFabricRendererExclusively()Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mDispatchUIFrameCallback:Lcom/facebook/react/uimanager/UIViewOperationQueue$DispatchUIFrameCallback;

    .line 961
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Landroid/view/Choreographer$FrameCallback;)V

    .line 963
    :cond_0
    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    .line 614
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue;->mViewHierarchyUpdateDebugListener:Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    .line 615
    return-void
.end method
