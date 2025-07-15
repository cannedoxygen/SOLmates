.class public final Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "NativeViewGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;,
        Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$EditTextHook;,
        Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;,
        Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$ScrollViewHook;,
        Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0005\u0019\u001a\u001b\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0014J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0008\u0010\u0011\u001a\u00020\u000cH\u0014J\u0008\u0010\u0012\u001a\u00020\u000cH\u0014J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004J\u0014\u0010\u0016\u001a\u00020\u00042\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016J\u0014\u0010\u0018\u001a\u00020\u00042\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "()V",
        "<set-?>",
        "",
        "disallowInterruption",
        "getDisallowInterruption",
        "()Z",
        "hook",
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "shouldActivateOnStart",
        "onCancel",
        "",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "sourceEvent",
        "onPrepare",
        "onReset",
        "resetConfig",
        "setDisallowInterruption",
        "setShouldActivateOnStart",
        "shouldBeCancelledBy",
        "handler",
        "shouldRecognizeSimultaneously",
        "Companion",
        "EditTextHook",
        "NativeViewGestureHandlerHook",
        "ScrollViewHook",
        "SwipeRefreshLayoutHook",
        "react-native-gesture-handler_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;

.field private static final defaultHook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion$defaultHook$1;


# instance fields
.field private disallowInterruption:Z

.field private hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

.field private shouldActivateOnStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;

    .line 160
    new-instance v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion$defaultHook$1;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion$defaultHook$1;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->defaultHook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion$defaultHook$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 20
    sget-object v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->defaultHook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion$defaultHook$1;

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    .line 22
    nop

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 24
    nop

    .line 15
    return-void
.end method


# virtual methods
.method public final getDisallowInterruption()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->disallowInterruption:Z

    return v0
.end method

.method protected onCancel()V
    .locals 10

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 145
    .local v8, "time":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-wide v0, v8

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$onCancel_u24lambda_u242":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 146
    .local v2, "$i$a$-apply-NativeViewGestureHandler$onCancel$event$1":I
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 147
    nop

    .line 145
    .end local v1    # "$this$onCancel_u24lambda_u242":Landroid/view/MotionEvent;
    .end local v2    # "$i$a$-apply-NativeViewGestureHandler$onCancel$event$1":I
    nop

    .line 148
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 149
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 150
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/swmansion/gesturehandler/react/ExtensionsKt;->isScreenReaderOn(Landroid/content/Context;)Z

    move-result v1

    .line 90
    .local v1, "isTouchExplorationEnabled":Z
    instance-of v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v3, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v2, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;->canBegin(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->cancel()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->activate()V

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    if-nez v2, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->cancel()V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->end()V

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v2, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;->afterGestureEnd(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    if-ne v2, v4, :cond_6

    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 139
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 116
    :cond_7
    :goto_1
    nop

    .line 117
    iget-boolean v2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->shouldActivateOnStart:Z

    if-eqz v2, :cond_8

    .line 118
    sget-object v2, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;

    invoke-static {v2, v0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;->access$tryIntercept(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 119
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->activate()V

    goto :goto_2

    .line 123
    :cond_8
    sget-object v2, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;

    invoke-static {v2, v0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;->access$tryIntercept(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 124
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->activate()V

    goto :goto_2

    .line 128
    :cond_9
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v2}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;->wantsToHandleEventBeforeActivation()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 129
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v2, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;->handleEventBeforeActivation(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 132
    :cond_a
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v2

    if-eq v2, v4, :cond_b

    .line 133
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v2, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;->canBegin(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 134
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->begin()V

    .line 141
    :cond_b
    :goto_2
    return-void
.end method

.method protected onPrepare()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    goto :goto_0

    .line 79
    :cond_0
    instance-of v1, v0, Lcom/facebook/react/views/textinput/ReactEditText;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$EditTextHook;

    move-object v2, v0

    check-cast v2, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {v1, p0, v2}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$EditTextHook;-><init>(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;Lcom/facebook/react/views/textinput/ReactEditText;)V

    check-cast v1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    goto :goto_0

    .line 80
    :cond_1
    instance-of v1, v0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;

    move-object v2, v0

    check-cast v2, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-direct {v1, p0, v2}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;-><init>(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V

    check-cast v1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    goto :goto_0

    .line 81
    :cond_2
    instance-of v1, v0, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$ScrollViewHook;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$ScrollViewHook;-><init>()V

    check-cast v1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    .line 83
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 153
    sget-object v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->defaultHook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$Companion$defaultHook$1;

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    .line 154
    return-void
.end method

.method public resetConfig()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetConfig()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->shouldActivateOnStart:Z

    .line 29
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->disallowInterruption:Z

    .line 30
    return-void
.end method

.method public final setDisallowInterruption(Z)Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
    .locals 2
    .param p1, "disallowInterruption"    # Z

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    .local v0, "$this$setDisallowInterruption_u24lambda_u241":Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$a$-apply-NativeViewGestureHandler$setDisallowInterruption$1":I
    iput-boolean p1, v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->disallowInterruption:Z

    .line 43
    nop

    .line 41
    .end local v0    # "$this$setDisallowInterruption_u24lambda_u241":Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
    .end local v1    # "$i$a$-apply-NativeViewGestureHandler$setDisallowInterruption$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    .line 43
    return-object v0
.end method

.method public final setShouldActivateOnStart(Z)Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
    .locals 2
    .param p1, "shouldActivateOnStart"    # Z

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    .local v0, "$this$setShouldActivateOnStart_u24lambda_u240":Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
    const/4 v1, 0x0

    .line 33
    .local v1, "$i$a$-apply-NativeViewGestureHandler$setShouldActivateOnStart$1":I
    iput-boolean p1, v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->shouldActivateOnStart:Z

    .line 34
    nop

    .line 32
    .end local v0    # "$this$setShouldActivateOnStart_u24lambda_u240":Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
    .end local v1    # "$i$a$-apply-NativeViewGestureHandler$setShouldActivateOnStart$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    .line 34
    return-object v0
.end method

.method public shouldBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->disallowInterruption:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 6
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->disallowInterruption:Z

    if-eqz v0, :cond_1

    .line 58
    return v2

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->disallowInterruption:Z

    xor-int/2addr v0, v1

    .line 62
    .local v0, "canBeInterrupted":Z
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v4

    .line 63
    .local v4, "otherState":I
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v5

    if-ne v5, v3, :cond_2

    if-ne v4, v3, :cond_2

    if-eqz v0, :cond_2

    .line 67
    move v1, v2

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getState()I

    move-result v5

    if-ne v5, v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->hook:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;

    invoke-interface {v3}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;->shouldCancelRootViewGestureHandlerIfNecessary()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v3

    if-lez v3, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v1, v2

    .line 63
    :goto_0
    return v1

    .line 48
    .end local v0    # "canBeInterrupted":Z
    .end local v4    # "otherState":I
    :cond_5
    :goto_1
    return v1
.end method
