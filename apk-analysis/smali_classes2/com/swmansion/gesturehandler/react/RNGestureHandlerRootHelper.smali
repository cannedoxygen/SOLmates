.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
.super Ljava/lang/Object;
.source "RNGestureHandlerRootHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerRootHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerRootHelper.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0012J\u0008\u0010\u001e\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
        "",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "wrappedView",
        "Landroid/view/ViewGroup;",
        "(Lcom/facebook/react/bridge/ReactContext;Landroid/view/ViewGroup;)V",
        "jsGestureHandler",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "orchestrator",
        "Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;",
        "passingTouch",
        "",
        "rootView",
        "getRootView",
        "()Landroid/view/ViewGroup;",
        "shouldIntercept",
        "activateNativeHandlers",
        "",
        "view",
        "Landroid/view/View;",
        "dispatchTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "handleSetJSResponder",
        "viewTag",
        "",
        "blockNativeResponder",
        "requestDisallowInterceptTouchEvent",
        "tearDown",
        "tryCancelAllHandlers",
        "Companion",
        "RootViewGestureHandler",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

.field private static final MIN_ALPHA_FOR_TOUCH:F = 0.1f


# instance fields
.field private final context:Lcom/facebook/react/bridge/ReactContext;

.field private final jsGestureHandler:Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private final orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

.field private passingTouch:Z

.field private final rootView:Landroid/view/ViewGroup;

.field private shouldIntercept:Z


# direct methods
.method public static synthetic $r8$lambda$1dpKjqn5yzg89He9dym6GZ-4UrQ(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->handleSetJSResponder$lambda$6(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "wrappedView"    # Landroid/view/ViewGroup;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrappedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->context:Lcom/facebook/react/bridge/ReactContext;

    .line 24
    nop

    .line 25
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 26
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    .line 27
    .local v0, "wrappedViewTag":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->context:Lcom/facebook/react/bridge/ReactContext;

    const-string v2, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-class v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 29
    .local v1, "module":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v2

    .line 30
    .local v2, "registry":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;
    sget-object v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;

    invoke-static {v3, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;->access$findRootViewTag(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$Companion;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->rootView:Landroid/view/ViewGroup;

    .line 32
    nop

    .line 33
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->rootView:Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GESTURE HANDLER] Initialize gesture handler for root view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    const-string v4, "ReactNative"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v3, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    .line 36
    move-object v4, v2

    check-cast v4, Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;

    new-instance v5, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;

    invoke-direct {v5}, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;-><init>()V

    check-cast v5, Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;

    .line 35
    invoke-direct {v3, p2, v4, v5}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;-><init>(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/core/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/core/ViewConfigurationHelper;)V

    .line 37
    move-object v4, v3

    .local v4, "$this$_init__u24lambda_u241":Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;
    const/4 v5, 0x0

    .line 38
    .local v5, "$i$a$-apply-RNGestureHandlerRootHelper$2":I
    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->setMinimumAlphaForTraversal(F)V

    .line 39
    nop

    .line 37
    .end local v4    # "$this$_init__u24lambda_u241":Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;
    .end local v5    # "$i$a$-apply-RNGestureHandlerRootHelper$2":I
    nop

    .line 35
    iput-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    .line 40
    new-instance v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;

    invoke-direct {v3, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    .line 147
    move-object v4, v3

    .local v4, "$this$_init__u24lambda_u242":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
    const/4 v5, 0x0

    .line 40
    .local v5, "$i$a$-apply-RNGestureHandlerRootHelper$3":I
    neg-int v6, v0

    invoke-virtual {v4, v6}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->setTag(I)V

    .end local v4    # "$this$_init__u24lambda_u242":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
    .end local v5    # "$i$a$-apply-RNGestureHandlerRootHelper$3":I
    check-cast v3, Lcom/swmansion/gesturehandler/core/GestureHandler;

    iput-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 41
    move-object v3, v2

    .local v3, "$this$_init__u24lambda_u243":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;
    const/4 v4, 0x0

    .line 42
    .local v4, "$i$a$-with-RNGestureHandlerRootHelper$4":I
    iget-object v5, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/core/GestureHandler;

    invoke-virtual {v3, v5}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->registerHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    .line 43
    iget-object v5, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/core/GestureHandler;

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v0, v6}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->attachHandlerToView(III)Z

    .line 41
    .end local v3    # "$this$_init__u24lambda_u243":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;
    .end local v4    # "$i$a$-with-RNGestureHandlerRootHelper$4":I
    nop

    .line 45
    invoke-virtual {v1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registerRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    .line 46
    .end local v0    # "wrappedViewTag":I
    .end local v1    # "module":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    .end local v2    # "registry":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;
    nop

    .line 17
    return-void

    .line 147
    .restart local v0    # "wrappedViewTag":I
    :cond_1
    const/4 v1, 0x0

    .line 27
    .local v1, "$i$a$-check-RNGestureHandlerRootHelper$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expect view tag to be set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check-RNGestureHandlerRootHelper$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final synthetic access$getShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)Z
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    .line 17
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->shouldIntercept:Z

    return v0
.end method

.method public static final synthetic access$setShouldIntercept$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    .param p1, "<set-?>"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->shouldIntercept:Z

    return-void
.end method

.method private static final handleSetJSResponder$lambda$6(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 1
    .param p0, "this$0"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    return-void
.end method

.method private final tryCancelAllHandlers()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/core/GestureHandler;

    if-eqz v0, :cond_1

    .local v0, "$this$tryCancelAllHandlers_u24lambda_u245":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 110
    .local v1, "$i$a$-apply-RNGestureHandlerRootHelper$tryCancelAllHandlers$1":I
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate()V

    .line 113
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->end()V

    .line 115
    :cond_0
    nop

    .line 109
    .end local v0    # "$this$tryCancelAllHandlers_u24lambda_u245":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$a$-apply-RNGestureHandlerRootHelper$tryCancelAllHandlers$1":I
    nop

    .line 116
    :cond_1
    return-void
.end method


# virtual methods
.method public final activateNativeHandlers(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->activateNativeHandlersForView(Landroid/view/View;)V

    .line 129
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->passingTouch:Z

    .line 102
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->passingTouch:Z

    .line 104
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->shouldIntercept:Z

    return v0
.end method

.method public final getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final handleSetJSResponder(IZ)V
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "blockNativeResponder"    # Z

    .line 122
    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    return-void
.end method

.method public final requestDisallowInterceptTouchEvent()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->passingTouch:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    .line 95
    :cond_0
    return-void
.end method

.method public final tearDown()V
    .locals 5

    .line 50
    nop

    .line 51
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->rootView:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GESTURE HANDLER] Tearing down gesture handler registered for root view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->context:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 54
    .local v0, "module":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    move-object v1, v0

    .local v1, "$this$tearDown_u24lambda_u244":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$a$-with-RNGestureHandlerRootHelper$tearDown$1":I
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v3

    iget-object v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->jsGestureHandler:Lcom/swmansion/gesturehandler/core/GestureHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropHandler(I)V

    .line 56
    invoke-virtual {v1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->unregisterRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    .line 57
    nop

    .line 54
    .end local v1    # "$this$tearDown_u24lambda_u244":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    .end local v2    # "$i$a$-with-RNGestureHandlerRootHelper$tearDown$1":I
    nop

    .line 58
    return-void
.end method
