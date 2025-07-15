.class public Lcom/swmansion/rnscreens/ScreenViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ScreenViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSScreen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/swmansion/rnscreens/Screen;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface<",
        "Lcom/swmansion/rnscreens/Screen;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenViewManager.kt\ncom/swmansion/rnscreens/ScreenViewManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n1#2:393\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000 S2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0001SB\u0005\u00a2\u0006\u0002\u0010\u0004J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0014J\u0014\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0016J\u0008\u0010\u0016\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0002H\u0014J\u0018\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\rH\u0007J\u001a\u0010\u001e\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020 H\u0016J\u001a\u0010!\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020 H\u0016J\u001a\u0010\"\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010#\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010$\u001a\u00020 H\u0017J\u001c\u0010%\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010&H\u0016J\u001a\u0010\'\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020 H\u0016J\u001a\u0010(\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010)\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010*\u001a\u00020 H\u0017J\u001f\u0010+\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010,\u001a\u0004\u0018\u00010\rH\u0017\u00a2\u0006\u0002\u0010-J\u0018\u0010.\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010/\u001a\u00020 H\u0017J\u0018\u00100\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u00101\u001a\u00020 H\u0017J\u001a\u00102\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020 H\u0016J\u001a\u00103\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u00104\u001a\u0004\u0018\u00010\u0014H\u0017J\u001a\u00105\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u00106\u001a\u0004\u0018\u00010\u0014H\u0017J\u001a\u00107\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u000108H\u0017J\u0018\u00109\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001dH\u0017J\u001a\u0010:\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020\rH\u0017J\u0018\u0010;\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020 H\u0017J\u0018\u0010<\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020 H\u0017J\u0018\u0010=\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\rH\u0017J\u0018\u0010>\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\rH\u0017J\u001a\u0010?\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u00104\u001a\u0004\u0018\u00010\u0014H\u0017J\u001a\u0010@\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010A\u001a\u0004\u0018\u00010\u0014H\u0017J\u001a\u0010B\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010C\u001a\u0004\u0018\u00010\u0014H\u0017J\u001f\u0010D\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010E\u001a\u0004\u0018\u00010\rH\u0017\u00a2\u0006\u0002\u0010-J\u0018\u0010F\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010G\u001a\u00020 H\u0017J\u001a\u0010H\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010I\u001a\u0004\u0018\u00010\u0014H\u0017J\u0018\u0010J\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010K\u001a\u00020 H\u0017J\u001c\u0010L\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010M\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020\rH\u0016J&\u0010N\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010O\u001a\u0004\u0018\u00010P2\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenViewManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/swmansion/rnscreens/Screen;",
        "Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;",
        "()V",
        "delegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "addView",
        "",
        "parent",
        "child",
        "Landroid/view/View;",
        "index",
        "",
        "createViewInstance",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getDelegate",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "",
        "getName",
        "onAfterUpdateTransaction",
        "view",
        "removeView",
        "removeViewAt",
        "setActivityState",
        "activityState",
        "",
        "setCustomAnimationOnSwipe",
        "value",
        "",
        "setFullScreenSwipeEnabled",
        "setFullScreenSwipeShadowEnabled",
        "setGestureEnabled",
        "gestureEnabled",
        "setGestureResponseDistance",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "setHideKeyboardOnSwipe",
        "setHomeIndicatorHidden",
        "setNativeBackButtonDismissalEnabled",
        "nativeBackButtonDismissalEnabled",
        "setNavigationBarColor",
        "navigationBarColor",
        "(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V",
        "setNavigationBarHidden",
        "navigationBarHidden",
        "setNavigationBarTranslucent",
        "navigationBarTranslucent",
        "setPreventNativeDismiss",
        "setReplaceAnimation",
        "animation",
        "setScreenOrientation",
        "screenOrientation",
        "setSheetAllowedDetents",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setSheetCornerRadius",
        "setSheetElevation",
        "setSheetExpandsWhenScrolledToEdge",
        "setSheetGrabberVisible",
        "setSheetInitialDetent",
        "setSheetLargestUndimmedDetent",
        "setStackAnimation",
        "setStackPresentation",
        "presentation",
        "setStatusBarAnimation",
        "statusBarAnimation",
        "setStatusBarColor",
        "statusBarColor",
        "setStatusBarHidden",
        "statusBarHidden",
        "setStatusBarStyle",
        "statusBarStyle",
        "setStatusBarTranslucent",
        "statusBarTranslucent",
        "setSwipeDirection",
        "setTransitionDuration",
        "updateState",
        "props",
        "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenViewManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RNSScreen"


# instance fields
.field private final delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenViewManager;->Companion:Lcom/swmansion/rnscreens/ScreenViewManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 33
    nop

    .line 34
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/RNSScreenManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    .line 35
    nop

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2, p3}, Lcom/swmansion/rnscreens/ScreenViewManager;->addView(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2, p3}, Lcom/swmansion/rnscreens/ScreenViewManager;->addView(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of v0, p2, Lcom/swmansion/rnscreens/ScreenContentWrapper;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p2

    check-cast v0, Lcom/swmansion/rnscreens/ScreenContentWrapper;

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->registerLayoutCallbackForWrapper(Lcom/swmansion/rnscreens/ScreenContentWrapper;)V

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p2, Lcom/swmansion/rnscreens/ScreenFooter;

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p2

    check-cast v0, Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setFooter(Lcom/swmansion/rnscreens/ScreenFooter;)V

    .line 58
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 59
    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1
    .param p1, "p0"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 27
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/Screen;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/swmansion/rnscreens/Screen;

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/Screen;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 375
    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "onDismissed"

    const-string v2, "registrationName"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topDismissed"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 376
    const-string v1, "onWillAppear"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topWillAppear"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 375
    nop

    .line 377
    const-string v1, "onAppear"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topAppear"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 375
    nop

    .line 378
    const-string v1, "onWillDisappear"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topWillDisappear"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 375
    nop

    .line 379
    const-string v1, "onDisappear"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topDisappear"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 375
    nop

    .line 380
    const-string v1, "onHeaderHeightChange"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topHeaderHeightChange"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 375
    nop

    .line 381
    const-string v1, "onHeaderBackButtonClicked"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topHeaderBackButtonClicked"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 375
    nop

    .line 382
    const-string v1, "onTransitionProgress"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topTransitionProgress"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 375
    nop

    .line 383
    const-string v1, "onSheetDetentChanged"

    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topSheetDetentChanged"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 375
    nop

    .line 374
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 384
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "RNSScreen"

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/ScreenViewManager;->onAfterUpdateTransaction(Lcom/swmansion/rnscreens/Screen;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 98
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->onFinalizePropsUpdate$react_native_screens_debug()V

    .line 99
    return-void
.end method

.method public bridge synthetic removeView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # Landroid/view/View;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->removeView(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;)V

    return-void
.end method

.method public removeView(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "view"    # Landroid/view/View;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0, v0, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 79
    instance-of v0, p2, Lcom/swmansion/rnscreens/ScreenFooter;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setFooter(Lcom/swmansion/rnscreens/ScreenFooter;)V

    .line 82
    :cond_0
    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->removeViewAt(Lcom/swmansion/rnscreens/Screen;I)V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->removeViewAt(Lcom/swmansion/rnscreens/Screen;I)V

    return-void
.end method

.method public removeViewAt(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 1
    .param p1, "parent"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "index"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/swmansion/rnscreens/ScreenFooter;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setFooter(Lcom/swmansion/rnscreens/ScreenFooter;)V

    .line 71
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0, v0, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 72
    return-void
.end method

.method public bridge synthetic setActivityState(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setActivityState(Lcom/swmansion/rnscreens/Screen;F)V

    return-void
.end method

.method public setActivityState(Lcom/swmansion/rnscreens/Screen;F)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "activityState"    # F

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    float-to-int v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/swmansion/rnscreens/ScreenViewManager;->setActivityState(Lcom/swmansion/rnscreens/Screen;I)V

    .line 46
    return-void
.end method

.method public final setActivityState(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "activityState"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "activityState"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    sget-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V

    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->TRANSITIONING_OR_BELOW_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V

    goto :goto_0

    .line 114
    :pswitch_2
    sget-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V

    .line 118
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setCustomAnimationOnSwipe(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setCustomAnimationOnSwipe(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setCustomAnimationOnSwipe(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z

    .line 291
    return-void
.end method

.method public bridge synthetic setFullScreenSwipeEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setFullScreenSwipeEnabled(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setFullScreenSwipeEnabled(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z

    .line 271
    return-void
.end method

.method public bridge synthetic setFullScreenSwipeShadowEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setFullScreenSwipeShadowEnabled(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setFullScreenSwipeShadowEnabled(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z

    .line 276
    return-void
.end method

.method public bridge synthetic setGestureEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setGestureEnabled(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setGestureEnabled(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "gestureEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "gestureEnabled"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setGestureEnabled(Z)V

    .line 163
    return-void
.end method

.method public bridge synthetic setGestureResponseDistance(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setGestureResponseDistance(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setGestureResponseDistance(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 296
    return-void
.end method

.method public bridge synthetic setHideKeyboardOnSwipe(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setHideKeyboardOnSwipe(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setHideKeyboardOnSwipe(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z

    .line 286
    return-void
.end method

.method public bridge synthetic setHomeIndicatorHidden(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setHomeIndicatorHidden(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setHomeIndicatorHidden(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z

    .line 301
    return-void
.end method

.method public bridge synthetic setNativeBackButtonDismissalEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setNativeBackButtonDismissalEnabled(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setNativeBackButtonDismissalEnabled(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "nativeBackButtonDismissalEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeBackButtonDismissalEnabled"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setNativeBackButtonDismissalEnabled(Z)V

    .line 257
    return-void
.end method

.method public bridge synthetic setNavigationBarColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setNavigationBarColor(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V

    return-void
.end method

.method public setNavigationBarColor(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "navigationBarColor"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "navigationBarColor"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setNavigationBarColor(Ljava/lang/Integer;)V

    .line 233
    return-void
.end method

.method public bridge synthetic setNavigationBarHidden(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setNavigationBarHidden(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setNavigationBarHidden(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "navigationBarHidden"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "navigationBarHidden"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setNavigationBarHidden(Ljava/lang/Boolean;)V

    .line 249
    return-void
.end method

.method public bridge synthetic setNavigationBarTranslucent(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setNavigationBarTranslucent(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setNavigationBarTranslucent(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "navigationBarTranslucent"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "navigationBarTranslucent"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setNavigationBarTranslucent(Ljava/lang/Boolean;)V

    .line 241
    return-void
.end method

.method public bridge synthetic setPreventNativeDismiss(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setPreventNativeDismiss(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setPreventNativeDismiss(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z

    .line 306
    return-void
.end method

.method public bridge synthetic setReplaceAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setReplaceAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V

    return-void
.end method

.method public setReplaceAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "animation"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "replaceAnimation"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    nop

    .line 171
    nop

    .line 172
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "pop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->POP:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    goto :goto_1

    .line 173
    :cond_1
    const-string v0, "push"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->PUSH:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    .line 170
    :goto_1
    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setReplaceAnimation(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V

    .line 176
    return-void

    .line 174
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown replace animation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setScreenOrientation(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setScreenOrientation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenOrientation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "screenOrientation"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "screenOrientation"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setScreenOrientation(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public bridge synthetic setSheetAllowedDetents(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetAllowedDetents(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setSheetAllowedDetents(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sheetAllowedDetents"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    .line 326
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 327
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/swmansion/rnscreens/ScreenViewManager$setSheetAllowedDetents$1;

    invoke-direct {v1, p2}, Lcom/swmansion/rnscreens/ScreenViewManager$setSheetAllowedDetents$1;-><init>(Lcom/facebook/react/bridge/ReadableArray;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->toCollection(Lkotlin/sequences/Sequence;Ljava/util/Collection;)Ljava/util/Collection;

    .line 330
    return-void

    .line 321
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public bridge synthetic setSheetCornerRadius(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetCornerRadius(Lcom/swmansion/rnscreens/Screen;F)V

    return-void
.end method

.method public setSheetCornerRadius(Lcom/swmansion/rnscreens/Screen;F)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sheetCornerRadius"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setSheetCornerRadius(F)V

    .line 355
    return-void
.end method

.method public bridge synthetic setSheetElevation(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetElevation(Lcom/swmansion/rnscreens/Screen;I)V

    return-void
.end method

.method public setSheetElevation(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sheetElevation"
    .end annotation

    .line 264
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setSheetElevation(F)V

    .line 265
    :goto_0
    return-void
.end method

.method public bridge synthetic setSheetExpandsWhenScrolledToEdge(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetExpandsWhenScrolledToEdge(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setSheetExpandsWhenScrolledToEdge(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sheetExpandsWhenScrolledToEdge"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setSheetExpandsWhenScrolledToEdge(Z)V

    .line 363
    return-void
.end method

.method public bridge synthetic setSheetGrabberVisible(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetGrabberVisible(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setSheetGrabberVisible(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sheetGrabberVisible"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setSheetGrabberVisible(Z)V

    .line 347
    return-void
.end method

.method public bridge synthetic setSheetInitialDetent(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetInitialDetent(Lcom/swmansion/rnscreens/Screen;I)V

    return-void
.end method

.method public setSheetInitialDetent(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sheetInitialDetent"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setSheetInitialDetentIndex(I)V

    .line 371
    return-void
.end method

.method public bridge synthetic setSheetLargestUndimmedDetent(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSheetLargestUndimmedDetent(Lcom/swmansion/rnscreens/Screen;I)V

    return-void
.end method

.method public setSheetLargestUndimmedDetent(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 2
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sheetLargestUndimmedDetent"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setSheetLargestUndimmedDetentIndex(I)V

    .line 339
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    .line 337
    .local v0, "$i$a$-check-ScreenViewManager$setSheetLargestUndimmedDetent$1":I
    nop

    .end local v0    # "$i$a$-check-ScreenViewManager$setSheetLargestUndimmedDetent$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] sheetLargestUndimmedDetent on Android supports values between -1 and 2"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setStackAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setStackAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V

    return-void
.end method

.method public setStackAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "animation"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stackAnimation"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    nop

    .line 143
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "slide_from_bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto/16 :goto_2

    .line 143
    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "ios_from_right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->IOS_FROM_RIGHT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto/16 :goto_2

    .line 143
    :sswitch_3
    const-string v0, "fade_from_bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto :goto_2

    .line 143
    :sswitch_4
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto :goto_2

    .line 143
    :sswitch_5
    const-string v0, "flip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_6
    const-string v0, "fade"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto :goto_2

    .line 143
    :sswitch_7
    const-string v0, "slide_from_right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_RIGHT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto :goto_2

    .line 143
    :sswitch_8
    const-string v0, "slide_from_left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_LEFT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto :goto_2

    .line 143
    :sswitch_9
    const-string v0, "ios_from_left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->IOS_FROM_LEFT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    goto :goto_2

    .line 143
    :sswitch_a
    const-string v0, "simple_push"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 153
    :goto_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown animation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    :goto_1
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 142
    :goto_2
    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    .line 155
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54938a79 -> :sswitch_a
        -0x4772de36 -> :sswitch_9
        -0x1974f592 -> :sswitch_8
        -0x14d35b6b -> :sswitch_7
        0x2fd67c -> :sswitch_6
        0x30006d -> :sswitch_5
        0x33af38 -> :sswitch_4
        0xadfc71d -> :sswitch_3
        0x596d78b9 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x5f7506d2 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic setStackPresentation(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setStackPresentation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V

    return-void
.end method

.method public setStackPresentation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "presentation"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stackPresentation"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    nop

    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "formSheet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->FORM_SHEET:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    goto :goto_2

    .line 126
    :sswitch_1
    const-string v0, "fullScreenModal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "containedTransparentModal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v0, "containedModal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v0, "modal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    goto :goto_2

    .line 126
    :sswitch_5
    const-string v0, "push"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    goto :goto_2

    .line 126
    :sswitch_6
    const-string v0, "transparentModal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_1
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 125
    :goto_2
    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V

    .line 135
    return-void

    .line 133
    :cond_0
    :goto_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown presentation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48bcf85 -> :sswitch_6
        0x34af1a -> :sswitch_5
        0x633faad -> :sswitch_4
        0x1a1c8dfa -> :sswitch_3
        0x38f07b0e -> :sswitch_2
        0x45da5392 -> :sswitch_1
        0x6b2fbafb -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic setStatusBarAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setStatusBarAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V

    return-void
.end method

.method public setStatusBarAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "statusBarAnimation"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarAnimation"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    if-eqz p2, :cond_0

    const-string v0, "none"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 192
    .local v0, "animated":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/swmansion/rnscreens/Screen;->setStatusBarAnimated(Ljava/lang/Boolean;)V

    .line 193
    return-void
.end method

.method public bridge synthetic setStatusBarColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setStatusBarColor(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V

    return-void
.end method

.method public setStatusBarColor(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "statusBarColor"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "statusBarColor"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStatusBarColor(Ljava/lang/Integer;)V

    .line 201
    return-void
.end method

.method public bridge synthetic setStatusBarHidden(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setStatusBarHidden(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setStatusBarHidden(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "statusBarHidden"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarHidden"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setStatusBarHidden(Ljava/lang/Boolean;)V

    .line 225
    return-void
.end method

.method public bridge synthetic setStatusBarStyle(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setStatusBarStyle(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V

    return-void
.end method

.method public setStatusBarStyle(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "statusBarStyle"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarStyle"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStatusBarStyle(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public bridge synthetic setStatusBarTranslucent(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setStatusBarTranslucent(Lcom/swmansion/rnscreens/Screen;Z)V

    return-void
.end method

.method public setStatusBarTranslucent(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "statusBarTranslucent"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarTranslucent"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setStatusBarTranslucent(Ljava/lang/Boolean;)V

    .line 217
    return-void
.end method

.method public bridge synthetic setSwipeDirection(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setSwipeDirection(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V

    return-void
.end method

.method public setSwipeDirection(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # Ljava/lang/String;

    .line 311
    return-void
.end method

.method public bridge synthetic setTransitionDuration(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenViewManager;->setTransitionDuration(Lcom/swmansion/rnscreens/Screen;I)V

    return-void
.end method

.method public setTransitionDuration(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 0
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "value"    # I

    .line 281
    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # Landroid/view/View;
    .param p2, "p1"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "p2"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0, v0, p2, p3}, Lcom/swmansion/rnscreens/ScreenViewManager;->updateState(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateState(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 1
    .param p1, "view"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    nop

    .line 92
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
