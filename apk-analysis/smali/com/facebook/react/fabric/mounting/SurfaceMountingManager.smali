.class public Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
.super Ljava/lang/Object;
.source "SurfaceMountingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;,
        Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;
    }
.end annotation


# static fields
.field private static final SHOW_CHANGED_VIEW_HIERARCHIES:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mErroneouslyReaddedReactTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsStopped:Z

.field private mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

.field private mOnViewAttachMountItems:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRootViewAttached:Z

.field private mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mSurfaceId:I

.field private mTagSetForStoppedSurface:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

.field private final mViewsToDeleteAfterTouchFinishes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsWithActiveTouches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PLPI0kX_cXj3vbfkGy4qh_tXRXA(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->lambda$stopSurface$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_cDe20jizMw0rT_wryIHruH3Q0A(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->lambda$addRootView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogViewHierarchy(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->logViewHierarchy(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->SHOW_CHANGED_VIEW_HIERARCHIES:Z

    return-void
.end method

.method public constructor <init>(ILcom/facebook/react/touch/JSResponderHandler;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 1
    .param p1, "surfaceId"    # I
    .param p2, "jsResponderHandler"    # Lcom/facebook/react/touch/JSResponderHandler;
    .param p3, "viewManagerRegistry"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p4, "rootViewManager"    # Lcom/facebook/react/uimanager/RootViewManager;
    .param p5, "mountItemExecutor"    # Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;
    .param p6, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mIsStopped:Z

    .line 64
    iput-boolean v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewAttached:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mOnViewAttachMountItems:Ljava/util/Queue;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mErroneouslyReaddedReactTags:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsWithActiveTouches:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsToDeleteAfterTouchFinishes:Ljava/util/Set;

    .line 103
    iput p1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    .line 104
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 105
    iput-object p3, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 106
    iput-object p4, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 107
    iput-object p5, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    .line 108
    iput-object p6, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 109
    return-void
.end method

.method private addRootView(Landroid/view/View;)V
    .locals 9
    .param p1, "rootView"    # Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    iget v3, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;ZLcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState-IA;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Landroid/view/View;)V

    .line 250
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 255
    :goto_0
    return-void
.end method

.method private executeMountItemsOnViewAttach()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mOnViewAttachMountItems:Ljava/util/Queue;

    invoke-interface {v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;->executeItems(Ljava/util/Queue;)V

    .line 261
    return-void
.end method

.method private getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    .locals 2
    .param p1, "tag"    # I

    .line 1117
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1118
    .local v0, "viewStates":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;>;"
    if-nez v0, :cond_0

    .line 1119
    const/4 v1, 0x0

    return-object v1

    .line 1121
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    return-object v1
.end method

.method private static getViewGroupManager(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)Lcom/facebook/react/uimanager/IViewGroupManager;
    .locals 3
    .param p0, "viewState"    # Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;",
            ")",
            "Lcom/facebook/react/uimanager/IViewGroupManager<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    check-cast v0, Lcom/facebook/react/uimanager/IViewGroupManager;

    return-object v0

    .line 1128
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find ViewManager for view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    .locals 4
    .param p1, "tag"    # I

    .line 1108
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    .line 1109
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-eqz v0, :cond_0

    .line 1113
    return-object v0

    .line 1110
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Surface stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1111
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic lambda$addRootView$0(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    if-ne v0, v1, :cond_1

    .line 199
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Race condition in addRootView detected. Trying to set an id of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on the RootView, but that id has already been set. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 206
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 206
    const-string v2, "Trying to add RootTag to RootView that already has a tag: existing tag: [%d] new tag: [%d]"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v2, "Trying to add a root view with an explicit id already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    :cond_2
    :goto_0
    iget v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 231
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactRoot;

    if-eqz v0, :cond_3

    .line 232
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/uimanager/ReactRoot;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactRoot;->setRootViewTag(I)V

    .line 235
    :cond_3
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->forceBatchingMountItemsOnAndroid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 236
    iput-boolean v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewAttached:Z

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->executeMountItemsOnViewAttach()V

    .line 241
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->forceBatchingMountItemsOnAndroid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    iput-boolean v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewAttached:Z

    .line 248
    :cond_5
    return-void
.end method

.method private synthetic lambda$stopSurface$1()V
    .locals 4

    .line 308
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableViewRecycling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->onSurfaceStopped(I)V

    .line 311
    :cond_0
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagSetForStoppedSurface:Landroidx/collection/SparseArrayCompat;

    .line 312
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 315
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;>;"
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagSetForStoppedSurface:Landroidx/collection/SparseArrayCompat;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    invoke-direct {p0, v2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->onViewStateDeleted(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)V

    .line 319
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;>;"
    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 324
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 325
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 326
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    .line 327
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 328
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mOnViewAttachMountItems:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 330
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] was stopped on SurfaceMountingManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private static logViewHierarchy(Landroid/view/ViewGroup;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "recurse"    # Z

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    .line 135
    .local v0, "parentTag":I
    sget-object v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  <ViewGroup tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 137
    sget-object v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     <View idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 144
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-static {v2, v5}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  </ViewGroup tag="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz p1, :cond_3

    .line 150
    sget-object v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    const-string v2, "Displaying Ancestors:"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 152
    .local v1, "ancestor":Landroid/view/ViewParent;
    :goto_1
    if-eqz v1, :cond_3

    .line 153
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 154
    .local v2, "ancestorViewGroup":Landroid/view/ViewGroup;
    :goto_2
    if-nez v2, :cond_2

    const/4 v5, -0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 155
    .local v5, "ancestorId":I
    :goto_3
    sget-object v6, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<ViewParent tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-static {v6, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 159
    .end local v2    # "ancestorViewGroup":Landroid/view/ViewGroup;
    .end local v5    # "ancestorId":I
    goto :goto_1

    .line 161
    .end local v1    # "ancestor":Landroid/view/ViewParent;
    :cond_3
    return-void
.end method

.method private onViewStateDeleted(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)V
    .locals 2
    .param p1, "viewState"    # Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    .line 1013
    iget-object v0, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/StateWrapper;->destroyState()V

    .line 1015
    iput-object v1, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 1021
    :cond_0
    iget-object v0, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->destroy()V

    .line 1023
    iput-object v1, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    .line 1027
    :cond_1
    iget-object v0, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    .line 1028
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    iget-boolean v1, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1029
    iget-object v1, p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 1031
    :cond_2
    return-void
.end method


# virtual methods
.method public addViewAt(III)V
    .locals 12
    .param p1, "parentTag"    # I
    .param p2, "tag"    # I
    .param p3, "index"    # I

    .line 342
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 343
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    return-void

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 348
    .local v0, "parentViewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 359
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 360
    .local v1, "parentView":Landroid/view/ViewGroup;
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v8

    .line 361
    .local v8, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-object v9, v8, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 362
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_6

    .line 368
    sget-boolean v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->SHOW_CHANGED_VIEW_HIERARCHIES:Z

    if-eqz v2, :cond_1

    .line 369
    sget-object v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addViewAt: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] idx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " BEFORE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->logViewHierarchy(Landroid/view/ViewGroup;Z)V

    .line 373
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 374
    .local v10, "viewParent":Landroid/view/ViewParent;
    const-string v2, "] into parent ["

    if-eqz v10, :cond_4

    .line 376
    instance-of v3, v10, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v3, v10

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    .line 377
    .local v3, "actualParentId":I
    :goto_0
    sget-object v4, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addViewAt: cannot insert view ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: View already has a parent: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  Parent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 388
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " View: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 390
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-static {v4, v5}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    instance-of v4, v10, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 407
    move-object v4, v10

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 409
    :cond_3
    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mErroneouslyReaddedReactTags:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v3    # "actualParentId":I
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)Lcom/facebook/react/uimanager/IViewGroupManager;

    move-result-object v3

    invoke-interface {v3, v1, v9, p3}, Lcom/facebook/react/uimanager/IViewGroupManager;->addView(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    nop

    .line 427
    sget-boolean v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->SHOW_CHANGED_VIEW_HIERARCHIES:Z

    if-eqz v2, :cond_5

    .line 434
    new-instance v11, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;

    move-object v2, v11

    move-object v3, p0

    move v4, p2

    move v5, p1

    move v6, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;-><init>(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;IIILandroid/view/ViewGroup;)V

    invoke-static {v11}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 444
    :cond_5
    return-void

    .line 414
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addViewAt: failed to insert view ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] at index "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 363
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v10    # "viewParent":Landroid/view/ViewParent;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find view for viewState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    .end local v1    # "parentView":Landroid/view/ViewGroup;
    .end local v8    # "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    .end local v9    # "view":Landroid/view/View;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add a view into a view that is not a ViewGroup. ParentTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public attachRootView(Landroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "themedReactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 116
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->addRootView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public createView(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/fabric/events/EventEmitterWrapper;Z)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reactTag"    # I
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;
    .param p5, "eventEmitterWrapper"    # Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .param p6, "isLayoutable"    # Z

    .line 625
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    return-void

    .line 635
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 636
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 637
    return-void

    .line 640
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->createViewUnsafe(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/fabric/events/EventEmitterWrapper;Z)V

    .line 642
    return-void
.end method

.method public createViewUnsafe(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/fabric/events/EventEmitterWrapper;Z)V
    .locals 17
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reactTag"    # I
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;
    .param p5, "eventEmitterWrapper"    # Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .param p6, "isLayoutable"    # Z

    .line 663
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceMountingManager::createViewUnsafe("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 667
    :try_start_0
    new-instance v0, Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v5, p3

    :try_start_1
    invoke-direct {v0, v5}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 669
    .local v0, "propMap":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    new-instance v6, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v7, 0x0

    move/from16 v12, p2

    :try_start_2
    invoke-direct {v6, v12, v7}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;-><init>(ILcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState-IA;)V

    move-object v13, v6

    .line 670
    .local v13, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iput-object v0, v13, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 671
    move-object/from16 v14, p4

    :try_start_3
    iput-object v14, v13, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 672
    move-object/from16 v15, p5

    :try_start_4
    iput-object v15, v13, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    .line 673
    iget-object v6, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    if-eqz p6, :cond_0

    .line 676
    iget-object v6, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v6, v2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v6

    move-object v11, v6

    .line 678
    .local v11, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    iget-object v8, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v10, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 679
    move-object v6, v11

    move/from16 v7, p2

    move-object v9, v0

    move-object/from16 v16, v10

    move-object/from16 v10, p4

    move-object v3, v11

    .end local v11    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .local v3, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    move-object/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/react/uimanager/ViewManager;->createView(ILcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v13, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 681
    iput-object v3, v13, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 684
    .end local v0    # "propMap":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .end local v3    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v13    # "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    :cond_0
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 685
    nop

    .line 686
    return-void

    .line 684
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v12, p2

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p2

    move-object/from16 v5, p3

    :goto_0
    move-object/from16 v14, p4

    :goto_1
    move-object/from16 v15, p5

    :goto_2
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 685
    throw v0
.end method

.method public deleteView(I)V
    .locals 5
    .param p1, "reactTag"    # I

    .line 1035
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 1036
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    return-void

    .line 1040
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 1042
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-nez v0, :cond_1

    .line 1043
    sget-object v1, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find viewState for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for deleteView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1047
    return-void

    .line 1050
    :cond_1
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableEventEmitterRetentionDuringGesturesOnAndroid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsWithActiveTouches:Ljava/util/Set;

    .line 1051
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1057
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsToDeleteAfterTouchFinishes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->onViewStateDeleted(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)V

    .line 1066
    :goto_0
    return-void
.end method

.method public enqueuePendingEvent(ILjava/lang/String;ZLcom/facebook/react/bridge/WritableMap;I)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "canCoalesceEvent"    # Z
    .param p4, "params"    # Lcom/facebook/react/bridge/WritableMap;
    .param p5, "eventCategory"    # I

    .line 1161
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 1162
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    .line 1166
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-nez v0, :cond_1

    .line 1168
    return-void

    .line 1171
    :cond_1
    new-instance v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;

    invoke-direct {v1, p2, p4, p5, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;IZ)V

    .line 1173
    .local v1, "viewEvent":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;
    new-instance v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$3;-><init>(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;)V

    invoke-static {v2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 1187
    return-void
.end method

.method public getContext()Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method

.method public getEventEmitter(I)Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .locals 2
    .param p1, "reactTag"    # I

    .line 1092
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 1093
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    :goto_0
    return-object v1
.end method

.method public getSurfaceId()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 5
    .param p1, "reactTag"    # I

    .line 1098
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 1099
    .local v0, "state":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 1100
    .local v1, "view":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 1104
    return-object v1

    .line 1101
    :cond_1
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to resolve view with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getViewExists(I)Z
    .locals 2
    .param p1, "tag"    # I

    .line 167
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagSetForStoppedSurface:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagSetForStoppedSurface:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRootViewAttached()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewAttached:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mIsStopped:Z

    return v0
.end method

.method public markActiveTouchForTag(I)V
    .locals 2
    .param p1, "reactTag"    # I

    .line 1190
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableEventEmitterRetentionDuringGesturesOnAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsWithActiveTouches:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1194
    return-void
.end method

.method public preallocateView(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V
    .locals 8
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reactTag"    # I
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;
    .param p5, "isLayoutable"    # Z

    .line 1075
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 1077
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    return-void

    .line 1082
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1083
    return-void

    .line 1086
    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->createViewUnsafe(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/fabric/events/EventEmitterWrapper;Z)V

    .line 1087
    return-void
.end method

.method public printSurfaceState()V
    .locals 9

    .line 1134
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getSurfaceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Views created for surface {%d}:"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    .line 1137
    .local v1, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v3

    .line 1138
    .local v2, "viewManagerName":Ljava/lang/String;
    :goto_1
    iget-object v4, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 1139
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_2

    :cond_1
    move-object v5, v3

    .line 1140
    .local v5, "parent":Landroid/view/View;
    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1142
    .local v3, "parentTag":Ljava/lang/Integer;
    :cond_2
    sget-object v6, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    iget v7, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mReactTag:I

    .line 1146
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    .line 1148
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v2, v7, v3, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 1142
    const-string v8, "<%s id=%d parentTag=%s isRoot=%b />"

    invoke-static {v6, v8, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    .end local v1    # "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    .end local v2    # "viewManagerName":Ljava/lang/String;
    .end local v3    # "parentTag":Ljava/lang/Integer;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "parent":Landroid/view/View;
    goto :goto_0

    .line 1150
    :cond_3
    return-void
.end method

.method public receiveCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 707
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    return-void

    .line 711
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 717
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-eqz v0, :cond_3

    .line 722
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_2

    .line 726
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 731
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V

    .line 732
    return-void

    .line 727
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState view for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_2
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewManager for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    :cond_3
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState for tag: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for commandId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public receiveCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 736
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    return-void

    .line 740
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 746
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-eqz v0, :cond_3

    .line 751
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 762
    return-void

    .line 757
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState view for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 752
    :cond_2
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState manager for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 747
    :cond_3
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState for tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for commandId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeViewAt(III)V
    .locals 17
    .param p1, "tag"    # I
    .param p2, "parentTag"    # I
    .param p3, "index"    # I

    .line 448
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    return-void

    .line 453
    :cond_0
    iget-object v1, v7, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mErroneouslyReaddedReactTags:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1

    .line 454
    sget-object v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeViewAt tried to remove a React View that was actually reused. This indicates a bug in the Differ (specifically instruction ordering). ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    return-void

    .line 464
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 465
    invoke-direct {v7, v9}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v10

    .line 468
    .local v10, "parentViewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    if-nez v10, :cond_2

    .line 469
    sget-object v1, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find viewState for tag: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for removeViewAt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    return-void

    .line 476
    :cond_2
    iget-object v1, v10, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    .line 488
    iget-object v1, v10, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup;

    .line 490
    .local v11, "parentView":Landroid/view/ViewGroup;
    if-eqz v11, :cond_a

    .line 494
    sget-boolean v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->SHOW_CHANGED_VIEW_HIERARCHIES:Z

    const-string v2, "] -> ["

    const-string/jumbo v3, "removeViewAt: ["

    if-eqz v1, :cond_3

    .line 496
    sget-object v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] idx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BEFORE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x0

    invoke-static {v11, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->logViewHierarchy(Landroid/view/ViewGroup;Z)V

    .line 500
    :cond_3
    invoke-static {v10}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;)Lcom/facebook/react/uimanager/IViewGroupManager;

    move-result-object v12

    .line 503
    .local v12, "viewGroupManager":Lcom/facebook/react/uimanager/IViewGroupManager;, "Lcom/facebook/react/uimanager/IViewGroupManager<Landroid/view/ViewGroup;>;"
    invoke-interface {v12, v11, v0}, Lcom/facebook/react/uimanager/IViewGroupManager;->getChildAt(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 504
    .local v13, "view":Landroid/view/View;
    const/4 v1, -0x1

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    move v14, v4

    .line 505
    .local v14, "actualTag":I
    if-eq v14, v8, :cond_8

    .line 506
    const/4 v5, -0x1

    .line 507
    .local v5, "tagActualIndex":I
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 508
    .local v6, "parentChildrenCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v6, :cond_6

    .line 509
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 510
    move v5, v15

    .line 511
    goto :goto_2

    .line 508
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 522
    .end local v15    # "i":I
    :cond_6
    :goto_2
    if-ne v5, v1, :cond_7

    .line 523
    sget-object v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": view already removed from parent! Children in parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void

    .line 545
    :cond_7
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->logViewHierarchy(Landroid/view/ViewGroup;Z)V

    .line 546
    sget-object v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to remove view ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] of parent ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but got view tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - actual index of view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    move v0, v5

    move v15, v0

    .end local p3    # "index":I
    .local v0, "index":I
    goto :goto_3

    .line 505
    .end local v0    # "index":I
    .end local v5    # "tagActualIndex":I
    .end local v6    # "parentChildrenCount":I
    .restart local p3    # "index":I
    :cond_8
    move v15, v0

    .line 563
    .end local p3    # "index":I
    .local v15, "index":I
    :goto_3
    :try_start_0
    invoke-interface {v12, v11, v15}, Lcom/facebook/react/uimanager/IViewGroupManager;->removeViewAt(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    nop

    .line 596
    sget-boolean v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->SHOW_CHANGED_VIEW_HIERARCHIES:Z

    if-eqz v0, :cond_9

    .line 597
    move v5, v15

    .line 598
    .local v5, "finalIndex":I
    new-instance v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$2;-><init>(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;IIILandroid/view/ViewGroup;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 615
    .end local v5    # "finalIndex":I
    :cond_9
    return-void

    .line 564
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 580
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-interface {v12, v11}, Lcom/facebook/react/uimanager/IViewGroupManager;->getChildCount(Landroid/view/View;)I

    move-result v1

    .line 582
    .local v1, "childCount":I
    const/4 v2, 0x1

    invoke-static {v11, v2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->logViewHierarchy(Landroid/view/ViewGroup;Z)V

    .line 584
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove child at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from parent ViewGroup ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 588
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " children in parent. Warning: childCount may be incorrect!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 491
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "childCount":I
    .end local v12    # "viewGroupManager":Lcom/facebook/react/uimanager/IViewGroupManager;, "Lcom/facebook/react/uimanager/IViewGroupManager<Landroid/view/ViewGroup;>;"
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "actualTag":I
    .end local v15    # "index":I
    .restart local p3    # "index":I
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find view for tag ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    .end local v11    # "parentView":Landroid/view/ViewGroup;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove a view from a view that is not a ViewGroup. ParentTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public scheduleMountItemOnViewAttach(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;)V
    .locals 1
    .param p1, "item"    # Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 179
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mOnViewAttachMountItems:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public sendAccessibilityEvent(II)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "eventType"    # I

    .line 765
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    return-void

    .line 769
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 771
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_2

    .line 776
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 782
    return-void

    .line 777
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState view for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :cond_2
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState manager for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized setJSResponder(IIZ)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "initialReactTag"    # I
    .param p3, "blockNativeResponder"    # Z

    monitor-enter p0

    .line 981
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 982
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 983
    monitor-exit p0

    return-void

    .line 986
    :cond_0
    if-nez p3, :cond_1

    .line 987
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    monitor-exit p0

    return-void

    .line 991
    .end local p0    # "this":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 992
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 993
    .local v1, "view":Landroid/view/View;
    if-eq p2, p1, :cond_2

    instance-of v2, v1, Landroid/view/ViewParent;

    if-eqz v2, :cond_2

    .line 996
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    move-object v3, v1

    check-cast v3, Landroid/view/ViewParent;

    invoke-virtual {v2, p2, v3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 997
    monitor-exit p0

    return-void

    .line 998
    :cond_2
    if-nez v1, :cond_3

    .line 999
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find view for tag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1000
    monitor-exit p0

    return-void

    .line 1003
    :cond_3
    :try_start_4
    iget-boolean v2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    if-eqz v2, :cond_4

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot block native responder on ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] that is a root view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 1007
    :cond_4
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1008
    monitor-exit p0

    return-void

    .line 980
    .end local v0    # "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    .end local v1    # "view":Landroid/view/View;
    .end local p1    # "reactTag":I
    .end local p2    # "initialReactTag":I
    .end local p3    # "blockNativeResponder":Z
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public stopSurface()V
    .locals 4

    .line 283
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping surface ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mIsStopped:Z

    .line 295
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    .line 296
    .local v1, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    invoke-interface {v2}, Lcom/facebook/react/uimanager/StateWrapper;->destroyState()V

    .line 298
    iput-object v3, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 300
    :cond_1
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    invoke-virtual {v2}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->destroy()V

    .line 302
    iput-object v3, v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    .line 304
    .end local v1    # "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    :cond_2
    goto :goto_0

    .line 306
    :cond_3
    new-instance v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)V

    .line 333
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 336
    :cond_4
    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 338
    :goto_1
    return-void
.end method

.method public sweepActiveTouchForTag(I)V
    .locals 2
    .param p1, "reactTag"    # I

    .line 1197
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableEventEmitterRetentionDuringGesturesOnAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsWithActiveTouches:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1201
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsToDeleteAfterTouchFinishes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mViewsToDeleteAfterTouchFinishes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1203
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->deleteView(I)V

    .line 1205
    :cond_1
    return-void
.end method

.method public updateEventEmitter(ILcom/facebook/react/fabric/events/EventEmitterWrapper;)V
    .locals 6
    .param p1, "reactTag"    # I
    .param p2, "eventEmitter"    # Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    .line 948
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 949
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    .line 954
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 957
    new-instance v2, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    invoke-direct {v2, p1, v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;-><init>(ILcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState-IA;)V

    move-object v0, v2

    .line 958
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_1
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    .line 961
    .local v2, "previousEventEmitterWrapper":Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    iput-object p2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    .line 964
    if-eq v2, p2, :cond_2

    if-eqz v2, :cond_2

    .line 965
    invoke-virtual {v2}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->destroy()V

    .line 968
    :cond_2
    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mPendingEventQueue:Ljava/util/Queue;

    .line 969
    .local v3, "pendingEventQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;>;"
    if-eqz v3, :cond_4

    .line 971
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;

    .line 972
    .local v5, "viewEvent":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;
    invoke-virtual {v5, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;->dispatch(Lcom/facebook/react/fabric/events/EventEmitterWrapper;)V

    .line 973
    .end local v5    # "viewEvent":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$PendingViewEvent;
    goto :goto_0

    .line 974
    :cond_3
    iput-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mPendingEventQueue:Ljava/util/Queue;

    .line 976
    :cond_4
    return-void
.end method

.method public updateLayout(IIIIIIII)V
    .locals 15
    .param p1, "reactTag"    # I
    .param p2, "parentTag"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "displayType"    # I
    .param p8, "layoutDirection"    # I

    .line 794
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p8

    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 795
    return-void

    .line 798
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v5

    .line 800
    .local v5, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-boolean v6, v5, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    if-eqz v6, :cond_1

    .line 801
    return-void

    .line 804
    :cond_1
    iget-object v6, v5, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 805
    .local v6, "viewToUpdate":Landroid/view/View;
    if-eqz v6, :cond_b

    .line 809
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->setAndroidLayoutDirection()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    .line 810
    nop

    .line 811
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 812
    move v7, v8

    goto :goto_0

    .line 813
    :cond_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    goto :goto_0

    :cond_3
    move v7, v9

    .line 810
    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutDirection(I)V

    .line 827
    :cond_4
    nop

    .line 828
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 829
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 827
    invoke-virtual {v6, v9, v7}, Landroid/view/View;->measure(II)V

    .line 838
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 839
    .local v7, "parent":Landroid/view/ViewParent;
    instance-of v9, v7, Lcom/facebook/react/uimanager/RootView;

    if-eqz v9, :cond_5

    .line 840
    invoke-interface {v7}, Landroid/view/ViewParent;->requestLayout()V

    .line 843
    :cond_5
    move-object v9, p0

    move/from16 v10, p2

    invoke-direct {p0, v10}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v11

    .line 844
    .local v11, "parentViewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    const/4 v12, 0x0

    .line 845
    .local v12, "parentViewManager":Lcom/facebook/react/uimanager/IViewGroupManager;, "Lcom/facebook/react/uimanager/IViewGroupManager<*>;"
    iget-object v13, v11, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v13, :cond_6

    .line 846
    iget-object v13, v11, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    move-object v12, v13

    check-cast v12, Lcom/facebook/react/uimanager/IViewGroupManager;

    .line 848
    :cond_6
    if-eqz v12, :cond_7

    invoke-interface {v12}, Lcom/facebook/react/uimanager/IViewGroupManager;->needsCustomLayoutForChildren()Z

    move-result v13

    if-nez v13, :cond_8

    .line 849
    :cond_7
    add-int v13, v0, v2

    add-int v14, v1, v3

    invoke-virtual {v6, v0, v1, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 853
    :cond_8
    if-nez p7, :cond_9

    const/4 v8, 0x4

    .line 854
    .local v8, "visibility":I
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v8, :cond_a

    .line 855
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 857
    :cond_a
    return-void

    .line 806
    .end local v7    # "parent":Landroid/view/ViewParent;
    .end local v8    # "visibility":I
    .end local v11    # "parentViewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    .end local v12    # "parentViewManager":Lcom/facebook/react/uimanager/IViewGroupManager;, "Lcom/facebook/react/uimanager/IViewGroupManager<*>;"
    :cond_b
    move-object v9, p0

    move/from16 v10, p2

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to find View for tag: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v11, p1

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public updateOverflowInset(IIIII)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "overflowInsetLeft"    # I
    .param p3, "overflowInsetTop"    # I
    .param p4, "overflowInsetRight"    # I
    .param p5, "overflowInsetBottom"    # I

    .line 893
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    return-void

    .line 897
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 899
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-boolean v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    if-eqz v1, :cond_1

    .line 900
    return-void

    .line 903
    :cond_1
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 904
    .local v1, "viewToUpdate":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 908
    instance-of v2, v1, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;

    if-eqz v2, :cond_2

    .line 909
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;

    .line 910
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/facebook/react/uimanager/ReactOverflowViewWithInset;->setOverflowInset(IIII)V

    .line 913
    :cond_2
    return-void

    .line 905
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find View for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updatePadding(IIIII)V
    .locals 9
    .param p1, "reactTag"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 861
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 862
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    return-void

    .line 866
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 868
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-boolean v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    if-eqz v1, :cond_1

    .line 869
    return-void

    .line 872
    :cond_1
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 873
    .local v1, "viewToUpdate":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 877
    iget-object v8, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    .line 878
    .local v8, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v8, :cond_2

    .line 883
    move-object v2, v8

    move-object v3, v1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/react/uimanager/ViewManager;->setPadding(Landroid/view/View;IIII)V

    .line 884
    return-void

    .line 879
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find ViewManager for view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    .end local v8    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find View for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "props"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 689
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    return-void

    .line 693
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 694
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    new-instance v1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 695
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 697
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 701
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/ViewManager;

    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 702
    invoke-virtual {v2, v1, v3}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 703
    return-void

    .line 698
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find view for tag ["

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

    throw v2
.end method

.method public updateState(ILcom/facebook/react/uimanager/StateWrapper;)V
    .locals 6
    .param p1, "reactTag"    # I
    .param p2, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 917
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 918
    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    return-void

    .line 922
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;

    move-result-object v0

    .line 924
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 925
    .local v1, "prevStateWrapper":Lcom/facebook/react/uimanager/StateWrapper;
    iput-object p2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 927
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    .line 929
    .local v2, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v2, :cond_3

    .line 932
    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    iget-object v4, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 933
    invoke-virtual {v2, v3, v4, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object v3

    .line 934
    .local v3, "extraData":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 935
    iget-object v4, v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v2, v4, v3}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V

    .line 940
    :cond_1
    if-eqz v1, :cond_2

    .line 941
    invoke-interface {v1}, Lcom/facebook/react/uimanager/StateWrapper;->destroyState()V

    .line 943
    :cond_2
    return-void

    .line 930
    .end local v3    # "extraData":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find ViewManager for tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
