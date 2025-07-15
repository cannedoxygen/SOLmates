.class public final Lcom/swmansion/rnscreens/ScreensModule;
.super Lcom/swmansion/rnscreens/NativeScreensModuleSpec;
.source "ScreensModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreensModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0003\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0011\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0082 J\u0017\u0010\u0017\u001a\u00020\u00182\u0008\u0010\r\u001a\u0004\u0018\u00010\nH\u0003\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001cH\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreensModule;",
        "Lcom/swmansion/rnscreens/NativeScreensModuleSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "isActiveTransition",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "proxy",
        "Lcom/swmansion/rnscreens/NativeProxy;",
        "topScreenId",
        "",
        "finishTransition",
        "",
        "reactTag",
        "canceled",
        "",
        "(Ljava/lang/Integer;Z)V",
        "getName",
        "",
        "initialize",
        "nativeInstall",
        "jsiPtr",
        "",
        "startTransition",
        "",
        "(Ljava/lang/Integer;)[I",
        "updateTransition",
        "progress",
        "",
        "Companion",
        "react-native-screens_debug"
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreensModule$Companion;

.field public static final NAME:Ljava/lang/String; = "RNSModule"


# instance fields
.field private final isActiveTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private proxy:Lcom/swmansion/rnscreens/NativeProxy;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private topScreenId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreensModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreensModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreensModule;->Companion:Lcom/swmansion/rnscreens/ScreensModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "[RNScreens]"

    const-string v1, "reactContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/NativeScreensModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 16
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreensModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 18
    const/4 v1, -0x1

    iput v1, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreensModule;->isActiveTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    nop

    .line 23
    nop

    .line 24
    :try_start_0
    const-string v1, "rnscreens"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreensModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v1

    .line 26
    .local v1, "jsContext":Lcom/facebook/react/bridge/JavaScriptContextHolder;
    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/swmansion/rnscreens/ScreensModule;->nativeInstall(J)V

    goto :goto_0

    .line 29
    :cond_0
    const-string v2, "Could not install JSI bindings."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    .end local v1    # "jsContext":Lcom/facebook/react/bridge/JavaScriptContextHolder;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "exception":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "Could not load RNScreens module."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v1    # "exception":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 15
    return-void
.end method

.method private final finishTransition(Ljava/lang/Integer;Z)V
    .locals 4
    .param p1, "reactTag"    # Ljava/lang/Integer;
    .param p2, "canceled"    # Z

    .line 103
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 104
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreensModule;->isActiveTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreensModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 112
    .local v0, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 113
    .local v1, "stack":Landroid/view/View;
    :goto_0
    instance-of v2, v1, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v2, :cond_3

    .line 114
    if-eqz p2, :cond_2

    .line 115
    move-object v2, v1

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/ScreenStack;->detachBelowTop()V

    goto :goto_1

    .line 117
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/ScreenStack;->notifyTopDetached()V

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreensModule;->isActiveTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    .line 122
    return-void

    .line 106
    .end local v0    # "uiManager":Lcom/facebook/react/bridge/UIManager;
    .end local v1    # "stack":Landroid/view/View;
    :cond_4
    :goto_2
    nop

    .line 107
    nop

    .line 105
    const-string v0, "[RNScreens]"

    const-string v1, "Unable to call `finishTransition` method before transition start."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private final native nativeInstall(J)V
.end method

.method private final startTransition(Ljava/lang/Integer;)[I
    .locals 8
    .param p1, "reactTag"    # Ljava/lang/Integer;

    .line 54
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 55
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreensModule;->isActiveTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    iput v1, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    .line 59
    filled-new-array {v1, v1}, [I

    move-result-object v0

    .line 60
    .local v0, "result":[I
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreensModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v1

    .line 61
    .local v1, "uiManager":Lcom/facebook/react/bridge/UIManager;
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 62
    .local v2, "stack":Landroid/view/View;
    :goto_0
    instance-of v3, v2, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v3, :cond_2

    .line 63
    move-object v3, v2

    check-cast v3, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStack;->getFragments()Ljava/util/ArrayList;

    move-result-object v3

    .line 64
    .local v3, "fragments":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 65
    .local v4, "screensCount":I
    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 66
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreensModule;->isActiveTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    move-object v6, v2

    check-cast v6, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/ScreenStack;->attachBelowTop()V

    .line 68
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    invoke-interface {v6}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v6

    iput v6, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    .line 69
    const/4 v6, 0x0

    iget v7, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    aput v7, v0, v6

    .line 70
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    invoke-interface {v6}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v6

    aput v6, v0, v5

    .line 73
    .end local v3    # "fragments":Ljava/util/ArrayList;
    .end local v4    # "screensCount":I
    :cond_2
    return-object v0

    .line 56
    .end local v0    # "result":[I
    .end local v1    # "uiManager":Lcom/facebook/react/bridge/UIManager;
    .end local v2    # "stack":Landroid/view/View;
    :cond_3
    :goto_1
    filled-new-array {v1, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private final updateTransition(D)V
    .locals 11
    .param p1, "progress"    # D

    .line 78
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 79
    iget v0, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    double-to-float v0, p1

    .line 83
    .local v0, "progressFloat":F
    sget-object v1, Lcom/swmansion/rnscreens/ScreenFragment;->Companion:Lcom/swmansion/rnscreens/ScreenFragment$Companion;

    invoke-virtual {v1, v0}, Lcom/swmansion/rnscreens/ScreenFragment$Companion;->getCoalescingKey(F)S

    move-result v1

    .line 86
    .local v1, "coalescingKey":S
    nop

    .line 85
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreensModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    iget v3, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v9

    .line 86
    if-eqz v9, :cond_1

    .line 85
    nop

    .line 87
    new-instance v10, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;

    .line 88
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreensModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v3

    .line 89
    iget v4, p0, Lcom/swmansion/rnscreens/ScreensModule;->topScreenId:I

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 87
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v10

    move v5, v0

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;-><init>(IIFZZS)V

    check-cast v10, Lcom/facebook/react/uimanager/events/Event;

    .line 86
    invoke-interface {v9, v10}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "RNSModule"

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/swmansion/rnscreens/NativeScreensModuleSpec;->initialize()V

    .line 40
    nop

    .line 48
    return-void
.end method
