.class public final Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;
.super Landroidx/fragment/app/Fragment;
.source "DimmingFragment.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lcom/swmansion/rnscreens/NativeDismissalObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;,
        Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$Companion;,
        Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDimmingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DimmingFragment.kt\ncom/swmansion/rnscreens/bottomsheet/DimmingFragment\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,494:1\n32#2,8:495\n1#3:503\n*S KotlinDebug\n*F\n+ 1 DimmingFragment.kt\ncom/swmansion/rnscreens/bottomsheet/DimmingFragment\n*L\n243#1:495,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 u2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0002tuB\r\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010-\u001a\u00020.2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u00020\u001fH\u0016J\u0008\u00103\u001a\u00020.H\u0002J\u0008\u00104\u001a\u00020.H\u0016J\u0012\u00105\u001a\u00020.2\u0008\u0008\u0002\u00106\u001a\u00020\u001fH\u0002J\u0008\u00107\u001a\u00020.H\u0016J\u0018\u00108\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u00109\u001a\u00020\u0008H\u0016J\u0010\u0010:\u001a\u00020.2\u0006\u00100\u001a\u000201H\u0016J\u0018\u0010;\u001a\u00020.2\u0006\u0010<\u001a\u00020#2\u0006\u0010=\u001a\u00020\u001fH\u0016J\u0008\u0010>\u001a\u00020.H\u0002J\u0008\u0010?\u001a\u00020.H\u0002J\u0008\u0010@\u001a\u00020.H\u0002J\u0012\u0010A\u001a\u00020.2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0012\u0010D\u001a\u00020.2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0012\u0010E\u001a\u00020.2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0018\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020GH\u0016J\u0008\u0010K\u001a\u00020.H\u0016J\"\u0010L\u001a\u0004\u0018\u00010C2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020\u001f2\u0006\u0010P\u001a\u00020NH\u0016J$\u0010Q\u001a\u00020I2\u0006\u0010R\u001a\u00020S2\u0008\u0010\u000f\u001a\u0004\u0018\u00010T2\u0008\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u0010\u0010W\u001a\u00020.2\u0006\u0010X\u001a\u00020\u0003H\u0016J\u0008\u0010Y\u001a\u00020.H\u0016J\u0008\u0010Z\u001a\u00020.H\u0016J\u0008\u0010[\u001a\u00020.H\u0016J\u0018\u0010\\\u001a\u00020.2\u0006\u0010]\u001a\u00020^2\u0006\u00100\u001a\u00020_H\u0016J\u0008\u0010`\u001a\u00020.H\u0016J\u0008\u0010a\u001a\u00020.H\u0016J\u001a\u0010b\u001a\u00020.2\u0006\u0010c\u001a\u00020I2\u0008\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u0008\u0010d\u001a\u00020.H\u0002J\u0010\u0010e\u001a\u00020.2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0008\u0010f\u001a\u00020.H\u0016J\u0008\u0010g\u001a\u00020IH\u0002J\u0010\u0010h\u001a\u00020.2\u0006\u0010i\u001a\u00020jH\u0016J\u0010\u0010k\u001a\u00020.2\u0006\u0010l\u001a\u00020\u001fH\u0016J\u0010\u0010m\u001a\u00020.2\u0006\u0010n\u001a\u00020\u001fH\u0016J\n\u0010o\u001a\u0004\u0018\u00010pH\u0016J\n\u0010q\u001a\u0004\u0018\u00010rH\u0016J\u0010\u0010s\u001a\u00020.2\u0006\u00100\u001a\u000201H\u0016R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R$\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020\'8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u0006v"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "Lcom/swmansion/rnscreens/NativeDismissalObserver;",
        "nestedFragment",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V",
        "childScreenContainers",
        "",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "getChildScreenContainers",
        "()Ljava/util/List;",
        "container",
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "getContainer",
        "()Lcom/swmansion/rnscreens/ScreenStack;",
        "containerView",
        "Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;",
        "dimmingView",
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingView;",
        "dimmingViewCallback",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "fragment",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "insetsProxy",
        "Lcom/swmansion/rnscreens/InsetsObserverProxy;",
        "isKeyboardVisible",
        "",
        "keyboardState",
        "Lcom/swmansion/rnscreens/KeyboardState;",
        "maxAlpha",
        "",
        "getNestedFragment",
        "()Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "value",
        "Lcom/swmansion/rnscreens/Screen;",
        "screen",
        "getScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "setScreen",
        "(Lcom/swmansion/rnscreens/Screen;)V",
        "addChildScreenContainer",
        "",
        "canDispatchLifecycleEvent",
        "event",
        "Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;",
        "canNavigateBack",
        "cleanRegisteredCallbacks",
        "dismissFromContainer",
        "dismissSelf",
        "emitDismissedEvent",
        "dispatchHeaderBackButtonClickedEvent",
        "dispatchLifecycleEvent",
        "fragmentWrapper",
        "dispatchLifecycleEventInChildContainers",
        "dispatchTransitionProgressEvent",
        "alpha",
        "closing",
        "initContainerView",
        "initDimmingView",
        "initViewHierarchy",
        "onAnimationEnd",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationStart",
        "onApplyWindowInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "v",
        "Landroid/view/View;",
        "insets",
        "onContainerUpdate",
        "onCreateAnimation",
        "transit",
        "",
        "enter",
        "nextAnim",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNativeDismiss",
        "dismissed",
        "onPause",
        "onResume",
        "onStart",
        "onStateChanged",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onViewAnimationEnd",
        "onViewAnimationStart",
        "onViewCreated",
        "view",
        "presentNestedFragment",
        "removeChildScreenContainer",
        "removeToolbar",
        "requireDecorView",
        "setToolbar",
        "toolbar",
        "Landroidx/appcompat/widget/Toolbar;",
        "setToolbarShadowHidden",
        "hidden",
        "setToolbarTranslucent",
        "translucent",
        "tryGetActivity",
        "Landroid/app/Activity;",
        "tryGetContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "updateLastEventDispatched",
        "AnimateDimmingViewCallback",
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
.field public static final Companion:Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "DimmingFragment"


# instance fields
.field private final childScreenContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenContainer;",
            ">;"
        }
    .end annotation
.end field

.field private containerView:Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;

.field private dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

.field private dimmingViewCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private final insetsProxy:Lcom/swmansion/rnscreens/InsetsObserverProxy;

.field private isKeyboardVisible:Z

.field private keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

.field private final maxAlpha:F

.field private final nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;


# direct methods
.method public static synthetic $r8$lambda$KUPclB8uYbc9B0yH6YYcaIhC4eo(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->initDimmingView$lambda$6$lambda$5(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->Companion:Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 3
    .param p1, "nestedFragment"    # Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    const-string v0, "nestedFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 57
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->maxAlpha:F

    .line 60
    sget-object v0, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    check-cast v0, Lcom/swmansion/rnscreens/KeyboardState;

    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    .line 67
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->INSTANCE:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->insetsProxy:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    .line 69
    nop

    .line 71
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 70
    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.swmansion.rnscreens.ScreenStackFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 77
    .local v0, "fragment":Lcom/swmansion/rnscreens/ScreenStackFragment;
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 78
    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/NativeDismissalObserver;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setNativeDismissalObserver(Lcom/swmansion/rnscreens/NativeDismissalObserver;)V

    .line 79
    .end local v0    # "fragment":Lcom/swmansion/rnscreens/ScreenStackFragment;
    nop

    .line 336
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getChildScreenContainers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->childScreenContainers:Ljava/util/List;

    .line 46
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, "$i$a$-assert-DimmingFragment$1":I
    nop

    .line 70
    .end local v0    # "$i$a$-assert-DimmingFragment$1":I
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "[RNScreens] Dimming fragment is intended for use only with ScreenStackFragment"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private final cleanRegisteredCallbacks()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingViewCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v0, :cond_0

    .local v0, "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    const/4 v1, 0x0

    .line 251
    .local v1, "$i$a$-let-DimmingFragment$cleanRegisteredCallbacks$1":I
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v2}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 250
    .end local v0    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    .end local v1    # "$i$a$-let-DimmingFragment$cleanRegisteredCallbacks$1":I
    :cond_0
    nop

    .line 253
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "dimmingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 255
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->insetsProxy:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    move-object v1, p0

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->removeOnApplyWindowInsetsListener(Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 256
    return-void
.end method

.method private final dismissSelf(Z)V
    .locals 5
    .param p1, "emitDismissedEvent"    # Z

    .line 259
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 262
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    .line 265
    .local v1, "surfaceId":I
    nop

    .line 264
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_0

    .line 264
    nop

    .line 265
    new-instance v3, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;-><init>(II)V

    check-cast v3, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 267
    .end local v0    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v1    # "surfaceId":I
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->cleanRegisteredCallbacks()V

    .line 268
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dismissFromContainer()V

    .line 270
    :cond_1
    return-void
.end method

.method static synthetic dismissSelf$default(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 258
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dismissSelf(Z)V

    return-void
.end method

.method private final getContainer()Lcom/swmansion/rnscreens/ScreenStack;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final initContainerView()V
    .locals 5

    .line 279
    nop

    .line 280
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$initContainerView_u24lambda_u244":Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;
    const/4 v2, 0x0

    .line 282
    .local v2, "$i$a$-apply-DimmingFragment$initContainerView$1":I
    nop

    .line 283
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 284
    nop

    .line 285
    nop

    .line 283
    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 282
    invoke-virtual {v1, v3}, Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;->setBackgroundColor(I)V

    .line 289
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;->setId(I)V

    .line 290
    nop

    .line 280
    .end local v1    # "$this$initContainerView_u24lambda_u244":Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;
    .end local v2    # "$i$a$-apply-DimmingFragment$initContainerView$1":I
    nop

    .line 279
    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->containerView:Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;

    .line 291
    return-void
.end method

.method private final initDimmingView()V
    .locals 5

    .line 294
    nop

    .line 295
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->maxAlpha:F

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;-><init>(Landroid/content/Context;F)V

    move-object v1, v0

    .local v1, "$this$initDimmingView_u24lambda_u246":Lcom/swmansion/rnscreens/bottomsheet/DimmingView;
    const/4 v2, 0x0

    .line 297
    .local v2, "$i$a$-apply-DimmingFragment$initDimmingView$1":I
    nop

    .line 298
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 299
    nop

    .line 300
    nop

    .line 298
    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 297
    invoke-virtual {v1, v3}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v3, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;)V

    invoke-virtual {v1, v3}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    nop

    .line 295
    .end local v1    # "$this$initDimmingView_u24lambda_u246":Lcom/swmansion/rnscreens/bottomsheet/DimmingView;
    .end local v2    # "$i$a$-apply-DimmingFragment$initDimmingView$1":I
    nop

    .line 294
    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    .line 308
    return-void
.end method

.method private static final initDimmingView$lambda$6$lambda$5(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetClosesOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dismissSelf(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method private final initViewHierarchy()V
    .locals 3

    .line 273
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->initContainerView()V

    .line 274
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->initDimmingView()V

    .line 275
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->containerView:Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "containerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    if-nez v2, :cond_1

    const-string v2, "dimmingView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;->addView(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method private final presentNestedFragment()V
    .locals 9

    .line 243
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getChildFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v0, "$this$commit$iv":Landroidx/fragment/app/FragmentManager;
    .local v1, "allowStateLoss$iv":Z
    const/4 v2, 0x0

    .line 495
    .local v2, "$i$f$commit":I
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "beginTransaction()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    .local v3, "transaction$iv":Landroidx/fragment/app/FragmentTransaction;
    move-object v4, v3

    .local v4, "$this$presentNestedFragment_u24lambda_u242":Landroidx/fragment/app/FragmentTransaction;
    const/4 v5, 0x0

    .line 244
    .local v5, "$i$a$-commit-DimmingFragment$presentNestedFragment$1":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 245
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->requireView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v7}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 246
    nop

    .line 496
    .end local v4    # "$this$presentNestedFragment_u24lambda_u242":Landroidx/fragment/app/FragmentTransaction;
    .end local v5    # "$i$a$-commit-DimmingFragment$presentNestedFragment$1":I
    nop

    .line 497
    nop

    .line 498
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 502
    nop

    .line 247
    .end local v0    # "$this$commit$iv":Landroidx/fragment/app/FragmentManager;
    .end local v1    # "allowStateLoss$iv":Z
    .end local v2    # "$i$f$commit":I
    .end local v3    # "transaction$iv":Landroidx/fragment/app/FragmentTransaction;
    return-void
.end method

.method private final requireDecorView()Landroid/view/View;
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 503
    :cond_0
    const/4 v0, 0x0

    .line 311
    .local v0, "$i$a$-checkNotNull-DimmingFragment$requireDecorView$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-DimmingFragment$requireDecorView$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Attempt to access activity on detached context"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/swmansion/rnscreens/ScreenContainer;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0, p1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->addChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    .line 340
    return-void
.end method

.method public canDispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canNavigateBack()Z
    .locals 1

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public dismissFromContainer()V
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getContainer()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->dismiss(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;)V

    .line 328
    :cond_0
    return-void
.end method

.method public dispatchHeaderBackButtonClickedEvent()V
    .locals 3

    .line 385
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
    .param p2, "fragmentWrapper"    # Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchLifecycleEventInChildContainers(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchTransitionProgressEvent(FZ)V
    .locals 3
    .param p1, "alpha"    # F
    .param p2, "closing"    # Z

    .line 392
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildScreenContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenContainer;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->childScreenContainers:Ljava/util/List;

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 363
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getNestedFragment()Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    return-object v0
.end method

.method public getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 398
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dismissFromContainer()V

    .line 399
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 401
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 395
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v0

    .line 413
    .local v0, "isImeVisible":Z
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    const-string v2, "getInsets(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    .local v1, "imeInset":Landroidx/core/graphics/Insets;
    const-string v3, "null cannot be cast to non-null type com.swmansion.rnscreens.ScreenStackFragment"

    const-string v4, "build(...)"

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 416
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->isKeyboardVisible:Z

    .line 417
    new-instance v6, Lcom/swmansion/rnscreens/KeyboardVisible;

    iget v7, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-direct {v6, v7}, Lcom/swmansion/rnscreens/KeyboardVisible;-><init>(I)V

    check-cast v6, Lcom/swmansion/rnscreens/KeyboardState;

    iput-object v6, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    .line 418
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v6

    if-eqz v6, :cond_0

    .local v6, "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v7, 0x0

    .line 419
    .local v7, "$i$a$-let-DimmingFragment$onApplyWindowInsets$1":I
    iget-object v8, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 420
    nop

    .line 421
    new-instance v3, Lcom/swmansion/rnscreens/KeyboardVisible;

    iget v9, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-direct {v3, v9}, Lcom/swmansion/rnscreens/KeyboardVisible;-><init>(I)V

    check-cast v3, Lcom/swmansion/rnscreens/KeyboardState;

    .line 419
    invoke-virtual {v8, v6, v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->configureBottomSheetBehaviour$react_native_screens_debug(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 418
    .end local v6    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v7    # "$i$a$-let-DimmingFragment$onApplyWindowInsets$1":I
    nop

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->isRemoving()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    return-object p2

    .line 429
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 431
    .local v2, "prevInsets":Landroidx/core/graphics/Insets;
    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v3, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 433
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v6

    .line 435
    iget v7, v2, Landroidx/core/graphics/Insets;->left:I

    .line 436
    iget v8, v2, Landroidx/core/graphics/Insets;->top:I

    .line 437
    iget v9, v2, Landroidx/core/graphics/Insets;->right:I

    .line 438
    nop

    .line 434
    invoke-static {v7, v8, v9, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v5

    .line 432
    invoke-virtual {v3, v6, v5}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v3

    .line 440
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    return-object v3

    .line 442
    .end local v2    # "prevInsets":Landroidx/core/graphics/Insets;
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->isRemoving()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 443
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 445
    .restart local v2    # "prevInsets":Landroidx/core/graphics/Insets;
    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v3, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 447
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v6

    .line 449
    iget v7, v2, Landroidx/core/graphics/Insets;->left:I

    .line 450
    iget v8, v2, Landroidx/core/graphics/Insets;->top:I

    .line 451
    iget v9, v2, Landroidx/core/graphics/Insets;->right:I

    .line 452
    nop

    .line 448
    invoke-static {v7, v8, v9, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v5

    .line 446
    invoke-virtual {v3, v6, v5}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v3

    .line 454
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    return-object v3

    .line 457
    .end local v2    # "prevInsets":Landroidx/core/graphics/Insets;
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v6

    if-eqz v6, :cond_6

    .restart local v6    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v7, 0x0

    .line 458
    .local v7, "$i$a$-let-DimmingFragment$onApplyWindowInsets$2":I
    iget-boolean v8, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->isKeyboardVisible:Z

    if-eqz v8, :cond_4

    .line 459
    iget-object v8, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 460
    nop

    .line 461
    sget-object v3, Lcom/swmansion/rnscreens/KeyboardDidHide;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardDidHide;

    check-cast v3, Lcom/swmansion/rnscreens/KeyboardState;

    .line 459
    invoke-virtual {v8, v6, v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->configureBottomSheetBehaviour$react_native_screens_debug(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_0

    .line 463
    :cond_4
    iget-object v8, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    sget-object v9, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 464
    iget-object v8, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 465
    nop

    .line 466
    sget-object v3, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    check-cast v3, Lcom/swmansion/rnscreens/KeyboardState;

    .line 464
    invoke-virtual {v8, v6, v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->configureBottomSheetBehaviour$react_native_screens_debug(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 458
    :cond_5
    :goto_0
    nop

    .line 457
    .end local v6    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v7    # "$i$a$-let-DimmingFragment$onApplyWindowInsets$2":I
    nop

    .line 472
    :cond_6
    sget-object v3, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    check-cast v3, Lcom/swmansion/rnscreens/KeyboardState;

    iput-object v3, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    .line 473
    iput-boolean v5, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->isKeyboardVisible:Z

    .line 475
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 477
    .restart local v2    # "prevInsets":Landroidx/core/graphics/Insets;
    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v3, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 479
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v6

    .line 481
    iget v7, v2, Landroidx/core/graphics/Insets;->left:I

    .line 482
    iget v8, v2, Landroidx/core/graphics/Insets;->top:I

    .line 483
    iget v9, v2, Landroidx/core/graphics/Insets;->right:I

    .line 484
    nop

    .line 480
    invoke-static {v7, v8, v9, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v5

    .line 478
    invoke-virtual {v3, v6, v5}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    return-object v3
.end method

.method public onContainerUpdate()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->onContainerUpdate()V

    .line 348
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 184
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    if-eqz p2, :cond_0

    sget v1, Lcom/swmansion/rnscreens/R$anim;->rns_fade_in:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/swmansion/rnscreens/R$anim;->rns_fade_out:I

    .line 183
    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 186
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->initViewHierarchy()V

    .line 194
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->containerView:Lcom/swmansion/rnscreens/bottomsheet/GestureTransparentViewGroup;

    if-nez v0, :cond_0

    const-string v0, "containerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onNativeDismiss(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;)V
    .locals 1
    .param p1, "dismissed"    # Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    const-string v0, "dismissed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dismissSelf(Z)V

    .line 492
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 221
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->insetsProxy:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    move-object v1, p0

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->removeOnApplyWindowInsetsListener(Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 223
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->insetsProxy:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    move-object v1, p0

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->addOnApplyWindowInsetsListener(Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 217
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 218
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 211
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->insetsProxy:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->requireDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->registerOnView(Landroid/view/View;)Z

    .line 212
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->presentNestedFragment()V

    .line 213
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 230
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v1, 0x0

    .line 232
    .local v1, "$i$a$-let-DimmingFragment$onStateChanged$1":I
    nop

    .line 233
    new-instance v2, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;

    iget-object v3, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v3}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    iget-object v4, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    if-nez v4, :cond_0

    const-string v4, "dimmingView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    check-cast v4, Landroid/view/View;

    iget v5, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->maxAlpha:F

    invoke-direct {v2, v3, v4, v5}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;-><init>(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;F)V

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 232
    iput-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingViewCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 234
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingViewCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 235
    nop

    .line 231
    .end local v0    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v1    # "$i$a$-let-DimmingFragment$onStateChanged$1":I
    nop

    .line 240
    :cond_1
    return-void
.end method

.method public onViewAnimationEnd()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->onViewAnimationEnd()V

    .line 356
    return-void
.end method

.method public onViewAnimationStart()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->onViewAnimationStart()V

    .line 352
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetLargestUndimmedDetentIndex()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "dimmingView"

    if-gt v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setAlpha(F)V

    goto :goto_2

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->maxAlpha:F

    invoke-virtual {v2, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setAlpha(F)V

    .line 206
    :goto_2
    return-void
.end method

.method public removeChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/swmansion/rnscreens/ScreenContainer;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0, p1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->removeChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    .line 344
    return-void
.end method

.method public removeToolbar()V
    .locals 0

    .line 315
    return-void
.end method

.method public setScreen(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1
    .param p1, "value"    # Lcom/swmansion/rnscreens/Screen;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->nestedFragment:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v0, p1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->setScreen(Lcom/swmansion/rnscreens/Screen;)V

    .line 334
    return-void
.end method

.method public setToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public setToolbarShadowHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 319
    return-void
.end method

.method public setToolbarTranslucent(Z)V
    .locals 0
    .param p1, "translucent"    # Z

    .line 321
    return-void
.end method

.method public tryGetActivity()Landroid/app/Activity;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public tryGetContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public updateLastEventDispatched(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
