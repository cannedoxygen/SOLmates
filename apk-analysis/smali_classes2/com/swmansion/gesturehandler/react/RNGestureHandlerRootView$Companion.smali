.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView$Companion;
.super Ljava/lang/Object;
.source "RNGestureHandlerRootView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView$Companion;",
        "",
        "()V",
        "hasGestureHandlerEnabledRootView",
        "",
        "viewGroup",
        "Landroid/view/ViewGroup;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$hasGestureHandlerEnabledRootView(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView$Companion;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView$Companion;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 56
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView$Companion;->hasGestureHandlerEnabledRootView(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method private final hasGestureHandlerEnabledRootView(Landroid/view/ViewGroup;)Z
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 58
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 61
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 64
    instance-of v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEnabledRootView;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    instance-of v2, v0, Lcom/facebook/react/uimanager/RootView;

    if-eqz v2, :cond_1

    .line 71
    return v1

    .line 73
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 75
    :cond_3
    return v1
.end method
