.class public final Lcom/facebook/react/runtime/ReactSurfaceView;
.super Lcom/facebook/react/ReactRootView;
.source "ReactSurfaceView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/runtime/ReactSurfaceView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactSurfaceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactSurfaceView.kt\ncom/facebook/react/runtime/ReactSurfaceView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 52\u00020\u0001:\u00015B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0012H\u0014J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0008H\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0012H\u0016J\u0008\u0010#\u001a\u00020\u0012H\u0016J\u0008\u0010$\u001a\u00020\u0012H\u0016J\u0018\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0017H\u0016J\u001a\u0010)\u001a\u00020\u00152\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020\u0017H\u0016J0\u0010*\u001a\u00020\u00152\u0006\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00082\u0006\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u0008H\u0014J\u0018\u00100\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u0010\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0012H\u0016J\u0010\u00103\u001a\u00020\u00152\u0006\u00104\u001a\u00020\u0012H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/facebook/react/runtime/ReactSurfaceView;",
        "Lcom/facebook/react/ReactRootView;",
        "context",
        "Landroid/content/Context;",
        "surface",
        "Lcom/facebook/react/runtime/ReactSurfaceImpl;",
        "(Landroid/content/Context;Lcom/facebook/react/runtime/ReactSurfaceImpl;)V",
        "heightMeasureSpec",
        "",
        "jsPointerDispatcher",
        "Lcom/facebook/react/uimanager/JSPointerDispatcher;",
        "jsTouchDispatcher",
        "Lcom/facebook/react/uimanager/JSTouchDispatcher;",
        "viewportOffset",
        "Landroid/graphics/Point;",
        "getViewportOffset",
        "()Landroid/graphics/Point;",
        "wasMeasured",
        "",
        "widthMeasureSpec",
        "dispatchJSPointerEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "isCapture",
        "dispatchJSTouchEvent",
        "getCurrentReactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getJSModuleName",
        "",
        "getUIManagerType",
        "handleException",
        "t",
        "",
        "hasActiveReactContext",
        "hasActiveReactInstance",
        "isViewAttachedToReactInstance",
        "onChildEndedNativeGesture",
        "childView",
        "Landroid/view/View;",
        "ev",
        "onChildStartedNativeGesture",
        "onLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onMeasure",
        "requestDisallowInterceptTouchEvent",
        "disallowIntercept",
        "setIsFabric",
        "isFabric",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/facebook/react/runtime/ReactSurfaceView$Companion;

.field private static final TAG:Ljava/lang/String; = "ReactSurfaceView"


# instance fields
.field private heightMeasureSpec:I

.field private jsPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

.field private final jsTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

.field private final surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

.field private wasMeasured:Z

.field private widthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/runtime/ReactSurfaceView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/runtime/ReactSurfaceView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/runtime/ReactSurfaceView;->Companion:Lcom/facebook/react/runtime/ReactSurfaceView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactSurfaceImpl;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surface"    # Lcom/facebook/react/runtime/ReactSurfaceImpl;

    const-string/jumbo v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactRootView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    .line 31
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 37
    nop

    .line 38
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/facebook/react/uimanager/JSPointerDispatcher;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    .line 41
    :cond_0
    nop

    .line 29
    return-void
.end method

.method private final getViewportOffset()Landroid/graphics/Point;
    .locals 6

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 89
    .local v0, "locationOnScreen":[I
    invoke-virtual {p0, v0}, Lcom/facebook/react/runtime/ReactSurfaceView;->getLocationOnScreen([I)V

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v1, "visibleWindowFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/facebook/react/runtime/ReactSurfaceView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 95
    const/4 v2, 0x0

    aget v3, v0, v2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    aput v3, v0, v2

    .line 96
    const/4 v3, 0x1

    aget v4, v0, v3

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 97
    new-instance v4, Landroid/graphics/Point;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method


# virtual methods
.method protected dispatchJSPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isCapture"    # Z

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    const-string v1, "ReactSurfaceView"

    if-nez v0, :cond_1

    .line 152
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    const-string v0, "Unable to dispatch pointer events to JS before the dispatcher is available"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 159
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v0, :cond_2

    .line 160
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->handleMotionEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Z)V

    goto :goto_0

    .line 163
    :cond_2
    nop

    .line 164
    nop

    .line 162
    const-string v2, "Unable to dispatch pointer events to JS as the React instance has not been attached"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_3
    :goto_0
    return-void
.end method

.method protected dispatchJSTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 141
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 143
    iget-object v2, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v2}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getReactHost()Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/runtime/ReactHostImpl;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    .line 142
    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/bridge/ReactContext;)V

    goto :goto_0

    .line 146
    :cond_0
    nop

    .line 145
    const-string v1, "ReactSurfaceView"

    const-string v2, "Unable to dispatch touch events to JS as the React instance has not been attached"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void
.end method

.method public getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getReactHost()Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getJSModuleName()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<get-moduleName>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUIManagerType()I
    .locals 1

    .line 135
    const/4 v0, 0x2

    return v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getReactHost()Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v0

    const-string v1, "getReactHost(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .local v0, "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-direct {v2, v1, v3, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Exception;

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lcom/facebook/react/runtime/ReactHostImpl;->handleHostException(Ljava/lang/Exception;)V

    .line 127
    return-void
.end method

.method public hasActiveReactContext()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getReactHost()Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasActiveReactInstance()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getReactHost()Lcom/facebook/react/runtime/ReactHostImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->isInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewAttachedToReactInstance()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->isAttached()Z

    move-result v0

    return v0
.end method

.method public onChildEndedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 118
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v1, p2, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildEndedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 119
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onChildEndedNativeGesture()V

    .line 120
    :cond_1
    return-void
.end method

.method public onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v1, p2, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildStartedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 113
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 186
    .local v1, "it":Landroid/view/View;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-let-ReactSurfaceView$onChildStartedNativeGesture$1":I
    iget-object v3, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->jsPointerDispatcher:Lcom/facebook/react/uimanager/JSPointerDispatcher;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, p2, v0}, Lcom/facebook/react/uimanager/JSPointerDispatcher;->onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 114
    .end local v1    # "it":Landroid/view/View;
    .end local v2    # "$i$a$-let-ReactSurfaceView$onChildStartedNativeGesture$1":I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 79
    iget-boolean v0, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->wasMeasured:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/facebook/react/runtime/ReactSurfaceView;->getViewportOffset()Landroid/graphics/Point;

    move-result-object v0

    .line 81
    .local v0, "viewportOffset":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    .line 82
    iget v2, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->widthMeasureSpec:I

    iget v3, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->heightMeasureSpec:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 81
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->updateLayoutSpecs(IIII)V

    .line 84
    .end local v0    # "viewportOffset":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 44
    const-string v0, "ReactSurfaceView.onMeasure"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "width":I
    const/4 v3, 0x0

    .line 47
    .local v3, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 48
    .local v4, "widthMode":I
    sparse-switch v4, :sswitch_data_0

    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 49
    :sswitch_0
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Lcom/facebook/react/runtime/ReactSurfaceView;->getChildCount()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 50
    invoke-virtual {p0, v5}, Lcom/facebook/react/runtime/ReactSurfaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 51
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 52
    .local v8, "childSize":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 49
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childSize":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57
    .end local v5    # "i":I
    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 58
    .local v5, "heightMode":I
    sparse-switch v5, :sswitch_data_1

    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_3

    .line 59
    :sswitch_1
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {p0}, Lcom/facebook/react/runtime/ReactSurfaceView;->getChildCount()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_1

    .line 60
    invoke-virtual {p0, v6}, Lcom/facebook/react/runtime/ReactSurfaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 61
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    .line 62
    .local v9, "childSize":I
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 59
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 67
    .end local v6    # "i":I
    :cond_1
    :goto_3
    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/runtime/ReactSurfaceView;->setMeasuredDimension(II)V

    .line 68
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->wasMeasured:Z

    .line 69
    iput p1, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->widthMeasureSpec:I

    .line 70
    iput p2, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->heightMeasureSpec:I

    .line 71
    invoke-direct {p0}, Lcom/facebook/react/runtime/ReactSurfaceView;->getViewportOffset()Landroid/graphics/Point;

    move-result-object v6

    .line 72
    .local v6, "viewportOffset":Landroid/graphics/Point;
    iget-object v7, p0, Lcom/facebook/react/runtime/ReactSurfaceView;->surface:Lcom/facebook/react/runtime/ReactSurfaceImpl;

    .line 73
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    .line 72
    invoke-virtual {v7, p1, p2, v8, v9}, Lcom/facebook/react/runtime/ReactSurfaceImpl;->updateLayoutSpecs(IIII)V

    .line 74
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 75
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 103
    invoke-virtual {p0}, Lcom/facebook/react/runtime/ReactSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public setIsFabric(Z)V
    .locals 1
    .param p1, "isFabric"    # Z

    .line 131
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/facebook/react/ReactRootView;->setIsFabric(Z)V

    .line 132
    return-void
.end method
