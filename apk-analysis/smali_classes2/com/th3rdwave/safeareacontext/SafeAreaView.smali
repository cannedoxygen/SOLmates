.class public final Lcom/th3rdwave/safeareacontext/SafeAreaView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SafeAreaView.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0010\u001a\u00020\rH\u0002J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0015H\u0014J\u0008\u0010\u0017\u001a\u00020\u0013H\u0016J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0007J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u000bJ\u0010\u0010\u001c\u001a\u00020\u00152\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000fJ\u0008\u0010\u001e\u001a\u00020\u0015H\u0002J\u0008\u0010\u001f\u001a\u00020\u0015H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaView;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mEdges",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;",
        "mInsets",
        "Lcom/th3rdwave/safeareacontext/EdgeInsets;",
        "mMode",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;",
        "mProviderView",
        "Landroid/view/View;",
        "mStateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "findProvider",
        "getStateWrapper",
        "maybeUpdateInsets",
        "",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onPreDraw",
        "setEdges",
        "edges",
        "setMode",
        "mode",
        "setStateWrapper",
        "stateWrapper",
        "updateInsets",
        "waitForReactLayout",
        "react-native-safe-area-context_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mEdges:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

.field private mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

.field private mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

.field private mProviderView:Landroid/view/View;

.field private mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;


# direct methods
.method public static synthetic $r8$lambda$F7blRiUuR2Y_f4t1YqSYxPY-_zA(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->waitForReactLayout$lambda$2(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vs0_UwqTHj6fmR0GDGJx5juCTg4(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 0

    invoke-static {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets$lambda$0(Lcom/facebook/react/uimanager/UIManagerModule;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 18
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    .line 16
    return-void
.end method

.method private final findProvider()Landroid/view/View;
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 126
    .local v0, "current":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 127
    instance-of v1, v0, Lcom/th3rdwave/safeareacontext/SafeAreaProvider;

    if-eqz v1, :cond_0

    .line 128
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 130
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method private final maybeUpdateInsets()Z
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    .local v0, "providerView":Landroid/view/View;
    :cond_0
    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;->getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 116
    .local v2, "edgeInsets":Lcom/th3rdwave/safeareacontext/EdgeInsets;
    :cond_1
    iget-object v3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    iput-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 118
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    .line 119
    const/4 v1, 0x1

    return v1

    .line 121
    :cond_2
    return v1
.end method

.method private final updateInsets()V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    .line 34
    .local v0, "insets":Lcom/th3rdwave/safeareacontext/EdgeInsets;
    if-eqz v0, :cond_2

    .line 36
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mEdges:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    .line 38
    sget-object v2, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->ADDITIVE:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 39
    sget-object v3, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->ADDITIVE:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 40
    sget-object v4, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->ADDITIVE:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 41
    sget-object v5, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->ADDITIVE:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 37
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;-><init>(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;)V

    .line 36
    :cond_0
    nop

    .line 35
    nop

    .line 42
    .local v1, "edges":Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object v2

    .line 43
    .local v2, "stateWrapper":Lcom/facebook/react/uimanager/StateWrapper;
    if-eqz v2, :cond_1

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 45
    .local v3, "map":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SerializationUtilsKt;->edgeInsetsToJsMap(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "insets"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 46
    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;)V

    .end local v3    # "map":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_0

    .line 48
    :cond_1
    new-instance v3, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    iget-object v4, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    invoke-direct {v3, v0, v4, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;-><init>(Lcom/th3rdwave/safeareacontext/EdgeInsets;Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;)V

    .line 49
    .local v3, "localData":Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;
    move-object v4, p0

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/th3rdwave/safeareacontext/UIManagerHelperCompatKt;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    .line 50
    .local v4, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v5, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 51
    .local v5, "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    if-eqz v5, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewLocalData(ILjava/lang/Object;)V

    .line 58
    new-instance v6, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;)V

    invoke-virtual {v4, v6}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 61
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->waitForReactLayout()V

    .line 65
    .end local v1    # "edges":Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;
    .end local v2    # "stateWrapper":Lcom/facebook/react/uimanager/StateWrapper;
    .end local v3    # "localData":Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;
    .end local v4    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v5    # "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    :cond_2
    :goto_0
    return-void
.end method

.method private static final updateInsets$lambda$0(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 2
    .param p0, "$uiManager"    # Lcom/facebook/react/uimanager/UIManagerModule;

    .line 59
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getUIImplementation()Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V

    .line 60
    return-void
.end method

.method private final waitForReactLayout()V
    .locals 12

    .line 73
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 74
    .local v0, "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 75
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    .line 76
    .local v2, "condition":Ljava/util/concurrent/locks/Condition;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 77
    .local v3, "startTime":J
    const-wide/16 v5, 0x0

    .line 78
    .local v5, "waitTime":J
    move-object v7, p0

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lcom/th3rdwave/safeareacontext/UIManagerHelperCompatKt;->getReactContext(Landroid/view/View;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v7

    new-instance v8, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1, v0, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v7, v8}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 86
    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v8, 0x0

    .line 87
    .local v8, "$i$a$-withLock-SafeAreaView$waitForReactLayout$2":I
    :goto_0
    :try_start_0
    iget-boolean v9, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v10, 0x1dcd6500

    if-nez v9, :cond_0

    cmp-long v9, v5, v10

    if-gez v9, :cond_0

    .line 88
    nop

    .line 89
    :try_start_1
    invoke-interface {v2, v10, v11}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v9

    .line 92
    .local v9, "ex":Ljava/lang/InterruptedException;
    const/4 v10, 0x1

    :try_start_2
    iput-boolean v10, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 94
    .end local v9    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v3

    add-long/2addr v5, v9

    goto :goto_0

    .line 96
    :cond_0
    nop

    .end local v8    # "$i$a$-withLock-SafeAreaView$waitForReactLayout$2":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    cmp-long v7, v5, v10

    if-ltz v7, :cond_1

    .line 99
    const-string v7, "SafeAreaView"

    const-string v8, "Timed out waiting for layout."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8
.end method

.method private static final waitForReactLayout$lambda$2(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V
    .locals 3
    .param p0, "$lock"    # Ljava/util/concurrent/locks/ReentrantLock;
    .param p1, "$done"    # Lkotlin/jvm/internal/Ref$BooleanRef;
    .param p2, "$condition"    # Ljava/util/concurrent/locks/Condition;

    const-string v0, "$lock"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$done"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$-withLock-SafeAreaView$waitForReactLayout$1$1":I
    :try_start_0
    iget-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_0

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 82
    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 84
    :cond_0
    nop

    .end local v1    # "$i$a$-withLock-SafeAreaView$waitForReactLayout$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    return-void

    .line 79
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method public final getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 137
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->findProvider()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()Z

    .line 140
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mProviderView:Landroid/view/View;

    .line 146
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()Z

    move-result v0

    .line 150
    .local v0, "didUpdate":Z
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->requestLayout()V

    .line 153
    :cond_0
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public final setEdges(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;)V
    .locals 1
    .param p1, "edges"    # Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    const-string v0, "edges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mEdges:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    .line 110
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    .line 111
    return-void
.end method

.method public final setMode(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mMode:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    .line 105
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->updateInsets()V

    .line 106
    return-void
.end method

.method public final setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V
    .locals 0
    .param p1, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 29
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 30
    return-void
.end method
