.class public Lcom/facebook/react/runtime/ReactSurfaceImpl;
.super Ljava/lang/Object;
.source "ReactSurfaceImpl.java"

# interfaces
.implements Lcom/facebook/react/interfaces/fabric/ReactSurface;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReactHost:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/react/runtime/ReactHostImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

.field private final mSurfaceView:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/react/runtime/ReactSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$f-zm4eK8WR2OqfbqFNQrU-RTwro(Lcom/facebook/react/runtime/ReactSurfaceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->lambda$clear$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "initialProps"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    new-instance v0, Lcom/facebook/react/fabric/SurfaceHandlerBinding;

    invoke-direct {v0, p2}, Lcom/facebook/react/fabric/SurfaceHandlerBinding;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;-><init>(Lcom/facebook/react/interfaces/fabric/SurfaceHandler;Landroid/content/Context;)V

    .line 69
    if-nez p3, :cond_0

    .line 70
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p3}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    :goto_0
    nop

    .line 72
    .local v0, "nativeProps":Lcom/facebook/react/bridge/NativeMap;
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    invoke-interface {v1, v0}, Lcom/facebook/react/interfaces/fabric/SurfaceHandler;->setProps(Lcom/facebook/react/bridge/NativeMap;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 75
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 80
    invoke-static {p1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->doRTLSwap(Landroid/content/Context;)Z

    move-result v7

    .line 81
    invoke-static {p1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->isRTL(Landroid/content/Context;)Z

    move-result v8

    .line 82
    invoke-static {p1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getPixelDensity(Landroid/content/Context;)F

    move-result v9

    .line 75
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/facebook/react/interfaces/fabric/SurfaceHandler;->setLayoutConstraints(IIIIZZF)V

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/interfaces/fabric/SurfaceHandler;Landroid/content/Context;)V
    .locals 2
    .param p1, "surfaceHandler"    # Lcom/facebook/react/interfaces/fabric/SurfaceHandler;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    iput-object p1, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    .line 88
    iput-object p2, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public static createWithView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/react/runtime/ReactSurfaceImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "initialProps"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    new-instance v0, Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/runtime/ReactSurfaceImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    .local v0, "surface":Lcom/facebook/react/runtime/ReactSurfaceImpl;
    new-instance v1, Lcom/facebook/react/runtime/ReactSurfaceView;

    invoke-direct {v1, p0, v0}, Lcom/facebook/react/runtime/ReactSurfaceView;-><init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactSurfaceImpl;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->attachView(Lcom/facebook/react/runtime/ReactSurfaceView;)V

    .line 57
    return-object v0
.end method

.method private static doRTLSwap(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 249
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static getPixelDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static isRTL(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 245
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$clear$0()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/runtime/ReactSurfaceView;

    .line 196
    .local v0, "view":Lcom/facebook/react/runtime/ReactSurfaceView;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceView;->removeAllViews()V

    .line 198
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/ReactSurfaceView;->setId(I)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/facebook/react/runtime/ReactHostImpl;)V
    .locals 2
    .param p1, "host"    # Lcom/facebook/react/runtime/ReactHostImpl;

    .line 97
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This surface is already attached to a host!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachView(Lcom/facebook/react/runtime/ReactSurfaceView;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/runtime/ReactSurfaceView;

    .line 107
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/facebook/react/runtime/ReactSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mContext:Landroid/content/Context;

    .line 114
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call ReactSurface.attachView(), but the view is already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 193
    new-instance v0, Lcom/facebook/react/runtime/ReactSurfaceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/react/runtime/ReactSurfaceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/runtime/ReactSurfaceImpl;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public detach()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 219
    .local v0, "host":Lcom/facebook/react/runtime/ReactHostImpl;
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    return-object v1

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    return-object v1
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    invoke-interface {v0}, Lcom/facebook/react/interfaces/fabric/SurfaceHandler;->getModuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getReactHost()Lcom/facebook/react/runtime/ReactHostImpl;
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    return-object v0
.end method

.method getSurfaceHandler()Lcom/facebook/react/interfaces/fabric/SurfaceHandler;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    return-object v0
.end method

.method public getSurfaceID()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    invoke-interface {v0}, Lcom/facebook/react/interfaces/fabric/SurfaceHandler;->getSurfaceId()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method isAttached()Z
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    invoke-interface {v0}, Lcom/facebook/react/interfaces/fabric/SurfaceHandler;->isRunning()Z

    move-result v0

    return v0
.end method

.method public prerender()Lcom/facebook/react/interfaces/TaskInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/interfaces/TaskInterface<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 145
    .local v0, "host":Lcom/facebook/react/runtime/ReactHostImpl;
    if-nez v0, :cond_0

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to call ReactSurface.prerender(), but no ReactHost is attached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/react/runtime/internal/bolts/Task;->forError(Ljava/lang/Exception;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1

    .line 150
    :cond_0
    invoke-virtual {v0, p0}, Lcom/facebook/react/runtime/ReactHostImpl;->prerenderSurface(Lcom/facebook/react/runtime/ReactSurfaceImpl;)Lcom/facebook/react/interfaces/TaskInterface;

    move-result-object v1

    return-object v1
.end method

.method public start()Lcom/facebook/react/interfaces/TaskInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/interfaces/TaskInterface<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call ReactSurface.start(), but view is not created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/runtime/internal/bolts/Task;->forError(Ljava/lang/Exception;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 162
    .local v0, "host":Lcom/facebook/react/runtime/ReactHostImpl;
    if-nez v0, :cond_1

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to call ReactSurface.start(), but no ReactHost is attached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/react/runtime/internal/bolts/Task;->forError(Ljava/lang/Exception;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1

    .line 167
    :cond_1
    invoke-virtual {v0, p0}, Lcom/facebook/react/runtime/ReactHostImpl;->startSurface(Lcom/facebook/react/runtime/ReactSurfaceImpl;)Lcom/facebook/react/interfaces/TaskInterface;

    move-result-object v1

    return-object v1
.end method

.method public stop()Lcom/facebook/react/interfaces/TaskInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/interfaces/TaskInterface<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mReactHost:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 173
    .local v0, "host":Lcom/facebook/react/runtime/ReactHostImpl;
    if-nez v0, :cond_0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to call ReactSurface.stop(), but no ReactHost is attached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/react/runtime/internal/bolts/Task;->forError(Ljava/lang/Exception;)Lcom/facebook/react/runtime/internal/bolts/Task;

    move-result-object v1

    return-object v1

    .line 178
    :cond_0
    invoke-virtual {v0, p0}, Lcom/facebook/react/runtime/ReactHostImpl;->stopSurface(Lcom/facebook/react/runtime/ReactSurfaceImpl;)Lcom/facebook/react/interfaces/TaskInterface;

    move-result-object v1

    return-object v1
.end method

.method public updateInitProps(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "newProps"    # Landroid/os/Bundle;

    .line 117
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/NativeMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/interfaces/fabric/SurfaceHandler;->setProps(Lcom/facebook/react/bridge/NativeMap;)V

    .line 118
    return-void
.end method

.method declared-synchronized updateLayoutSpecs(IIII)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mSurfaceHandler:Lcom/facebook/react/interfaces/fabric/SurfaceHandler;

    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mContext:Landroid/content/Context;

    .line 211
    invoke-static {v1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->doRTLSwap(Landroid/content/Context;)Z

    move-result v5

    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {v1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->isRTL(Landroid/content/Context;)Z

    move-result v6

    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceImpl;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {v1}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getPixelDensity(Landroid/content/Context;)F

    move-result v7

    .line 206
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/facebook/react/interfaces/fabric/SurfaceHandler;->setLayoutConstraints(IIIIZZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 205
    .end local p0    # "this":Lcom/facebook/react/runtime/ReactSurfaceImpl;
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    .end local p3    # "offsetX":I
    .end local p4    # "offsetY":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
