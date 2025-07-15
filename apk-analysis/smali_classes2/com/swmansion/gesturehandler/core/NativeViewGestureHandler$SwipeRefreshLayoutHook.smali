.class final Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;
.super Ljava/lang/Object;
.source "NativeViewGestureHandler.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwipeRefreshLayoutHook"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeViewGestureHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeViewGestureHandler.kt\ncom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,282:1\n223#2,2:283\n*S KotlinDebug\n*F\n+ 1 NativeViewGestureHandler.kt\ncom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook\n*L\n261#1:283,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;",
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "handler",
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;",
        "swipeRefreshLayout",
        "Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;",
        "(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V",
        "handleEventBeforeActivation",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "wantsToHandleEventBeforeActivation",
        "",
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


# instance fields
.field private final handler:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

.field private final swipeRefreshLayout:Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
    .param p2, "swipeRefreshLayout"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipeRefreshLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;->handler:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    .line 244
    iput-object p2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;->swipeRefreshLayout:Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    .line 242
    return-void
.end method


# virtual methods
.method public afterGestureEnd(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 242
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->afterGestureEnd(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public canBegin(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 242
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->canBegin(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleEventBeforeActivation(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;->swipeRefreshLayout:Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 260
    .local v0, "scroll":Landroid/widget/ScrollView;
    :cond_1
    nop

    .line 259
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;->handler:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getOrchestrator()Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_4

    .line 259
    nop

    .line 260
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_4

    .line 260
    check-cast v1, Ljava/lang/Iterable;

    .line 261
    nop

    .local v1, "$this$first$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 283
    .local v2, "$i$f$first":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .local v5, "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 262
    .local v6, "$i$a$-first-NativeViewGestureHandler$SwipeRefreshLayoutHook$handleEventBeforeActivation$scrollHandler$1":I
    instance-of v5, v5, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    .line 283
    .end local v5    # "it":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-first-NativeViewGestureHandler$SwipeRefreshLayoutHook$handleEventBeforeActivation$scrollHandler$1":I
    if-eqz v5, :cond_2

    .line 284
    .end local v1    # "$this$first$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$first":I
    .end local v4    # "element$iv":Ljava/lang/Object;
    move-object v2, v4

    check-cast v2, Lcom/swmansion/gesturehandler/core/GestureHandler;

    goto :goto_1

    .restart local v1    # "$this$first$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$first":I
    :cond_3
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Collection contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    .end local v1    # "$this$first$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$first":I
    :cond_4
    nop

    .line 259
    :goto_1
    move-object v1, v2

    .line 266
    .local v1, "scrollHandler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_5

    .line 267
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$SwipeRefreshLayoutHook;->handler:Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->fail()V

    .line 275
    :cond_5
    return-void
.end method

.method public shouldCancelRootViewGestureHandlerIfNecessary()Z
    .locals 1

    .line 242
    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldCancelRootViewGestureHandlerIfNecessary(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 242
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    return v0
.end method

.method public wantsToHandleEventBeforeActivation()Z
    .locals 1

    .line 246
    const/4 v0, 0x1

    return v0
.end method
