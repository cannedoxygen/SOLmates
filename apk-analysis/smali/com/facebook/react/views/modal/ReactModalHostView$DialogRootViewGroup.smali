.class public final Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "ReactModalHostView.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/RootView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/modal/ReactModalHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogRootViewGroup"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactModalHostView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactModalHostView.kt\ncom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,499:1\n1#2:500\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020%H\u0016J\u0010\u0010*\u001a\u00020(2\u0006\u0010)\u001a\u00020%H\u0016J\u0010\u0010+\u001a\u00020(2\u0006\u0010)\u001a\u00020%H\u0016J(\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u001bH\u0014J\u0010\u00101\u001a\u00020(2\u0006\u0010)\u001a\u00020%H\u0017J\u0010\u00102\u001a\u00020\u001e2\u0006\u00103\u001a\u00020(H\u0016J\u0018\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u00020\u001b2\u0006\u00106\u001a\u00020\u001bH\u0007R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "Lcom/facebook/react/uimanager/RootView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "eventDispatcher",
        "Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "getEventDispatcher$ReactAndroid_debug",
        "()Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "setEventDispatcher$ReactAndroid_debug",
        "(Lcom/facebook/react/uimanager/events/EventDispatcher;)V",
        "jSPointerDispatcher",
        "Lcom/facebook/react/uimanager/JSPointerDispatcher;",
        "jSTouchDispatcher",
        "Lcom/facebook/react/uimanager/JSTouchDispatcher;",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getReactContext",
        "()Lcom/facebook/react/uimanager/ThemedReactContext;",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "getStateWrapper$ReactAndroid_debug",
        "()Lcom/facebook/react/uimanager/StateWrapper;",
        "setStateWrapper$ReactAndroid_debug",
        "(Lcom/facebook/react/uimanager/StateWrapper;)V",
        "viewHeight",
        "",
        "viewWidth",
        "handleException",
        "",
        "t",
        "",
        "onChildEndedNativeGesture",
        "childView",
        "Landroid/view/View;",
        "ev",
        "Landroid/view/MotionEvent;",
        "onChildStartedNativeGesture",
        "onHoverEvent",
        "",
        "event",
        "onInterceptHoverEvent",
        "onInterceptTouchEvent",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onTouchEvent",
        "requestDisallowInterceptTouchEvent",
        "disallowIntercept",
        "updateState",
        "width",
        "height",
        "ReactAndroid_debug"
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
.field private eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

.field private final jSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

.field private stateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 396
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 402
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 408
    nop

    .line 409
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    .line 412
    :cond_0
    nop

    .line 395
    return-void
.end method

.method public static final synthetic access$getReactContext(Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    .line 395
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getViewHeight$p(Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;)I
    .locals 1
    .param p0, "$this"    # Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    .line 395
    iget v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->viewHeight:I

    return v0
.end method

.method public static final synthetic access$getViewWidth$p(Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;)I
    .locals 1
    .param p0, "$this"    # Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    .line 395
    iget v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->viewWidth:I

    return v0
.end method

.method private final getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method


# virtual methods
.method public final getEventDispatcher$ReactAndroid_debug()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object v0
.end method

.method public final getStateWrapper$ReactAndroid_debug()Lcom/facebook/react/uimanager/StateWrapper;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->stateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->handleException(Ljava/lang/Exception;)V

    .line 449
    return-void
.end method

.method public onChildEndedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    .line 500
    .local v0, "it":Lcom/facebook/react/uimanager/events/EventDispatcher;
    const/4 v1, 0x0

    .line 489
    .local v1, "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onChildEndedNativeGesture$1":I
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v2, p2, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildEndedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 490
    .end local v0    # "it":Lcom/facebook/react/uimanager/events/EventDispatcher;
    .end local v1    # "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onChildEndedNativeGesture$1":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onChildEndedNativeGesture()V

    .line 491
    :cond_1
    return-void
.end method

.method public onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    const/4 v1, 0x0

    .line 483
    .local v1, "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onChildStartedNativeGesture$1":I
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v2, p2, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildStartedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 484
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2, v0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 482
    .end local v0    # "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    .end local v1    # "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onChildStartedNativeGesture$1":I
    :cond_0
    nop

    .line 486
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    .line 500
    .local v0, "it":Lcom/facebook/react/uimanager/events/EventDispatcher;
    const/4 v1, 0x0

    .line 477
    .local v1, "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onHoverEvent$1":I
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V

    .line 478
    .end local v0    # "it":Lcom/facebook/react/uimanager/events/EventDispatcher;
    .end local v1    # "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onHoverEvent$1":I
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    .line 500
    .local v0, "it":Lcom/facebook/react/uimanager/events/EventDispatcher;
    const/4 v1, 0x0

    .line 472
    .local v1, "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onInterceptHoverEvent$1":I
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V

    .line 473
    .end local v0    # "it":Lcom/facebook/react/uimanager/events/EventDispatcher;
    .end local v1    # "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onInterceptHoverEvent$1":I
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onInterceptTouchEvent$1":I
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v2, p1, v0, v3}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/bridge/ReactContext;)V

    .line 454
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V

    .line 452
    .end local v0    # "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    .end local v1    # "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onInterceptTouchEvent$1":I
    :cond_0
    nop

    .line 456
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/view/ReactViewGroup;->onSizeChanged(IIII)V

    .line 416
    iput p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->viewWidth:I

    .line 417
    iput p2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->viewHeight:I

    .line 419
    iget v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->viewWidth:I

    iget v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->viewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->updateState(II)V

    .line 420
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    const/4 v1, 0x0

    .line 462
    .local v1, "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onTouchEvent$1":I
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v2, p1, v0, v3}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/bridge/ReactContext;)V

    .line 463
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->jSPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V

    .line 461
    .end local v0    # "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    .end local v1    # "$i$a$-let-ReactModalHostView$DialogRootViewGroup$onTouchEvent$1":I
    :cond_0
    nop

    .line 465
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 496
    return-void
.end method

.method public final setEventDispatcher$ReactAndroid_debug(Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 398
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-void
.end method

.method public final setStateWrapper$ReactAndroid_debug(Lcom/facebook/react/uimanager/StateWrapper;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 397
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->stateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    return-void
.end method

.method public final updateState(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 424
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result v0

    .line 425
    .local v0, "realWidth":F
    sget-object v1, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result v1

    .line 427
    .local v1, "realHeight":F
    iget-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->stateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    if-eqz v2, :cond_0

    .local v2, "sw":Lcom/facebook/react/uimanager/StateWrapper;
    const/4 v3, 0x0

    .line 429
    .local v3, "$i$a$-let-ReactModalHostView$DialogRootViewGroup$updateState$1":I
    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v4, Lcom/facebook/react/bridge/WritableMap;

    .line 430
    .local v4, "newStateData":Lcom/facebook/react/bridge/WritableMap;
    const-string/jumbo v5, "screenWidth"

    float-to-double v6, v0

    invoke-interface {v4, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 431
    const-string/jumbo v5, "screenHeight"

    float-to-double v6, v1

    invoke-interface {v4, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 432
    invoke-interface {v2, v4}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;)V

    .line 433
    nop

    .line 427
    .end local v2    # "sw":Lcom/facebook/react/uimanager/StateWrapper;
    .end local v3    # "$i$a$-let-ReactModalHostView$DialogRootViewGroup$updateState$1":I
    .end local v4    # "newStateData":Lcom/facebook/react/bridge/WritableMap;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 433
    move-object v2, p0

    check-cast v2, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    .local v2, "$this$updateState_u24lambda_u241":Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;
    const/4 v3, 0x0

    .line 436
    .local v3, "$i$a$-run-ReactModalHostView$DialogRootViewGroup$updateState$2":I
    invoke-direct {v2}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    .line 437
    invoke-direct {v2}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v5

    new-instance v6, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$updateState$2$1;

    invoke-direct {v6, v2, v5}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$updateState$2$1;-><init>(Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    check-cast v6, Ljava/lang/Runnable;

    .line 436
    invoke-virtual {v4, v6}, Lcom/facebook/react/uimanager/ThemedReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 444
    nop

    .line 433
    .end local v2    # "$this$updateState_u24lambda_u241":Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;
    .end local v3    # "$i$a$-run-ReactModalHostView$DialogRootViewGroup$updateState$2":I
    nop

    .line 445
    :cond_1
    return-void
.end method
