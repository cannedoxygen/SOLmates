.class public Lcom/swmansion/rnscreens/ScreenFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScreenFragment.kt"

# interfaces
.implements Lcom/swmansion/rnscreens/ScreenFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenFragment$Companion;,
        Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;,
        Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;,
        Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenFragment.kt\ncom/swmansion/rnscreens/ScreenFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,356:1\n1#2:357\n766#3:358\n857#3,2:359\n1855#3,2:361\n*S KotlinDebug\n*F\n+ 1 ScreenFragment.kt\ncom/swmansion/rnscreens/ScreenFragment\n*L\n231#1:358\n231#1:359,2\n231#1:361,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 A2\u00020\u00012\u00020\u0002:\u0003ABCB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u001cH\u0016J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020\u0002H\u0016J\u0010\u0010$\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010%\u001a\u00020\u001cH\u0002J\u0008\u0010&\u001a\u00020\u001cH\u0002J\u0008\u0010\'\u001a\u00020\u001cH\u0002J\u0008\u0010(\u001a\u00020\u001cH\u0002J\u0018\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u001a2\u0006\u0010+\u001a\u00020\u0008H\u0016J\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u0008H\u0002J\u0008\u0010.\u001a\u00020\u001cH\u0016J&\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u0002022\u0008\u0010\u001d\u001a\u0004\u0018\u0001032\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0008\u00106\u001a\u00020\u001cH\u0016J\u0008\u00107\u001a\u00020\u001cH\u0016J\u0008\u00108\u001a\u00020\u001cH\u0016J\u0008\u00109\u001a\u00020\u001cH\u0016J\u0010\u0010:\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000cH\u0016J\n\u0010;\u001a\u0004\u0018\u00010<H\u0016J\n\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u0010\u0010?\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010@\u001a\u00020\u001cH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0013\u001a\u00020\u0005X\u0096.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0003\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0006R\u000e\u0010\u0018\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "()V",
        "screenView",
        "Lcom/swmansion/rnscreens/Screen;",
        "(Lcom/swmansion/rnscreens/Screen;)V",
        "canDispatchAppear",
        "",
        "canDispatchWillAppear",
        "childScreenContainers",
        "",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "getChildScreenContainers",
        "()Ljava/util/List;",
        "fragment",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "isTransitioning",
        "screen",
        "getScreen$annotations",
        "getScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "setScreen",
        "shouldUpdateOnResume",
        "transitionProgress",
        "",
        "addChildScreenContainer",
        "",
        "container",
        "canDispatchLifecycleEvent",
        "event",
        "Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;",
        "dispatchHeaderBackButtonClickedEvent",
        "dispatchLifecycleEvent",
        "fragmentWrapper",
        "dispatchLifecycleEventInChildContainers",
        "dispatchOnAppear",
        "dispatchOnDisappear",
        "dispatchOnWillAppear",
        "dispatchOnWillDisappear",
        "dispatchTransitionProgressEvent",
        "alpha",
        "closing",
        "dispatchViewAnimationEvent",
        "animationEnd",
        "onContainerUpdate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "onViewAnimationEnd",
        "onViewAnimationStart",
        "removeChildScreenContainer",
        "tryGetActivity",
        "Landroid/app/Activity;",
        "tryGetContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "updateLastEventDispatched",
        "updateWindowTraits",
        "Companion",
        "ScreenLifecycleEvent",
        "ScreensFrameLayout",
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "ScreenFragment"


# instance fields
.field private canDispatchAppear:Z

.field private canDispatchWillAppear:Z

.field private final childScreenContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenContainer;",
            ">;"
        }
    .end annotation
.end field

.field private isTransitioning:Z

.field public screen:Lcom/swmansion/rnscreens/Screen;

.field private shouldUpdateOnResume:Z

.field private transitionProgress:F


# direct methods
.method public static synthetic $r8$lambda$ZCPasBFJK7jGswWrGlvMQFyUQyo(ZLcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchViewAnimationEvent$lambda$8(ZLcom/swmansion/rnscreens/ScreenFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment;->Companion:Lcom/swmansion/rnscreens/ScreenFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->childScreenContainers:Ljava/util/List;

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->transitionProgress:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    .line 60
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    nop

    .line 67
    const-string v1, "Screen fragments should never be restored. Follow instructions from https://github.com/software-mansion/react-native-screens/issues/17#issuecomment-424704067 to properly configure your main activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1
    .param p1, "screenView"    # Lcom/swmansion/rnscreens/Screen;

    const-string v0, "screenView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->childScreenContainers:Ljava/util/List;

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->transitionProgress:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    .line 60
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    .line 74
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->setScreen(Lcom/swmansion/rnscreens/Screen;)V

    .line 75
    return-void
.end method

.method private final dispatchOnAppear()V
    .locals 2

    .line 191
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->DID_APPEAR:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgressEvent(FZ)V

    .line 193
    return-void
.end method

.method private final dispatchOnDisappear()V
    .locals 2

    .line 201
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->DID_DISAPPEAR:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgressEvent(FZ)V

    .line 203
    return-void
.end method

.method private final dispatchOnWillAppear()V
    .locals 2

    .line 186
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WILL_APPEAR:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgressEvent(FZ)V

    .line 188
    return-void
.end method

.method private final dispatchOnWillDisappear()V
    .locals 2

    .line 196
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WILL_DISAPPEAR:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    .line 197
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchTransitionProgressEvent(FZ)V

    .line 198
    return-void
.end method

.method private final dispatchViewAnimationEvent(Z)V
    .locals 2
    .param p1, "animationEnd"    # Z

    .line 288
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->isTransitioning:Z

    .line 294
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 294
    :goto_0
    nop

    .line 293
    nop

    .line 299
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragment;

    iget-boolean v1, v1, Lcom/swmansion/rnscreens/ScreenFragment;->isTransitioning:Z

    if-nez v1, :cond_5

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    new-instance v1, Lcom/swmansion/rnscreens/ScreenFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/swmansion/rnscreens/ScreenFragment$$ExternalSyntheticLambda0;-><init>(ZLcom/swmansion/rnscreens/ScreenFragment;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 314
    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnDisappear()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnWillDisappear()V

    .line 317
    :cond_5
    :goto_1
    return-void
.end method

.method private static final dispatchViewAnimationEvent$lambda$8(ZLcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 1
    .param p0, "$animationEnd"    # Z
    .param p1, "this$0"    # Lcom/swmansion/rnscreens/ScreenFragment;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    if-eqz p0, :cond_0

    invoke-direct {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnAppear()V

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnWillAppear()V

    .line 312
    :goto_0
    return-void
.end method

.method public static synthetic getScreen$annotations()V
    .locals 0

    return-void
.end method

.method private final updateWindowTraits()V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 125
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->shouldUpdateOnResume:Z

    .line 127
    return-void

    .line 129
    :cond_0
    sget-object v1, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->trySetWindowTraits$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 130
    return-void
.end method


# virtual methods
.method public addChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/swmansion/rnscreens/ScreenContainer;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getChildScreenContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public canDispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 173
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 172
    :pswitch_1
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 171
    :pswitch_2
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    goto :goto_0

    .line 170
    :pswitch_3
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    .line 174
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchHeaderBackButtonClickedEvent()V
    .locals 5

    .line 237
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 238
    .local v0, "screenContext":Lcom/facebook/react/bridge/ReactContext;
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    .line 241
    .local v1, "surfaceId":I
    nop

    .line 240
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    .line 241
    if-eqz v2, :cond_0

    .line 240
    nop

    .line 241
    new-instance v3, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/swmansion/rnscreens/events/HeaderBackButtonClickedEvent;-><init>(II)V

    check-cast v3, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 242
    :cond_0
    return-void
.end method

.method public dispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 7
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
    .param p2, "fragmentWrapper"    # Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-interface {p2}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 210
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v1, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->canDispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    .local v1, "it":Lcom/swmansion/rnscreens/Screen;
    const/4 v2, 0x0

    .line 212
    .local v2, "$i$a$-let-ScreenFragment$dispatchLifecycleEvent$1":I
    invoke-interface {p2, p1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->updateLastEventDispatched(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V

    .line 213
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v3

    .line 215
    .local v3, "surfaceId":I
    sget-object v4, Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 219
    new-instance v4, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v4}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v4

    :pswitch_0
    new-instance v4, Lcom/swmansion/rnscreens/events/ScreenDisappearEvent;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/swmansion/rnscreens/events/ScreenDisappearEvent;-><init>(II)V

    check-cast v4, Lcom/facebook/react/uimanager/events/Event;

    goto :goto_0

    .line 218
    :pswitch_1
    new-instance v4, Lcom/swmansion/rnscreens/events/ScreenWillDisappearEvent;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/swmansion/rnscreens/events/ScreenWillDisappearEvent;-><init>(II)V

    check-cast v4, Lcom/facebook/react/uimanager/events/Event;

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v4, Lcom/swmansion/rnscreens/events/ScreenAppearEvent;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/swmansion/rnscreens/events/ScreenAppearEvent;-><init>(II)V

    check-cast v4, Lcom/facebook/react/uimanager/events/Event;

    goto :goto_0

    .line 216
    :pswitch_3
    new-instance v4, Lcom/swmansion/rnscreens/events/ScreenWillAppearEvent;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/swmansion/rnscreens/events/ScreenWillAppearEvent;-><init>(II)V

    check-cast v4, Lcom/facebook/react/uimanager/events/Event;

    .line 215
    :goto_0
    nop

    .line 214
    nop

    .line 221
    .local v4, "lifecycleEvent":Lcom/facebook/react/uimanager/events/Event;
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/facebook/react/bridge/ReactContext;

    .line 223
    .local v5, "screenContext":Lcom/facebook/react/bridge/ReactContext;
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v6

    .line 222
    nop

    .line 224
    .local v6, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    if-eqz v6, :cond_0

    invoke-interface {v6, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 225
    :cond_0
    invoke-interface {p2, p1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->dispatchLifecycleEventInChildContainers(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V

    .line 226
    nop

    .line 211
    .end local v1    # "it":Lcom/swmansion/rnscreens/Screen;
    .end local v2    # "$i$a$-let-ScreenFragment$dispatchLifecycleEvent$1":I
    .end local v3    # "surfaceId":I
    .end local v4    # "lifecycleEvent":Lcom/facebook/react/uimanager/events/Event;
    .end local v5    # "screenContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v6    # "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    nop

    .line 228
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchLifecycleEventInChildContainers(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getChildScreenContainers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 358
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 359
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/swmansion/rnscreens/ScreenContainer;

    .local v7, "it":Lcom/swmansion/rnscreens/ScreenContainer;
    const/4 v8, 0x0

    .line 231
    .local v8, "$i$a$-filter-ScreenFragment$dispatchLifecycleEventInChildContainers$1":I
    invoke-virtual {v7}, Lcom/swmansion/rnscreens/ScreenContainer;->getScreenCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 359
    .end local v7    # "it":Lcom/swmansion/rnscreens/ScreenContainer;
    .end local v8    # "$i$a$-filter-ScreenFragment$dispatchLifecycleEventInChildContainers$1":I
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 358
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 231
    move-object v0, v2

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 361
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/swmansion/rnscreens/ScreenContainer;

    .local v4, "it":Lcom/swmansion/rnscreens/ScreenContainer;
    const/4 v5, 0x0

    .line 232
    .local v5, "$i$a$-forEach-ScreenFragment$dispatchLifecycleEventInChildContainers$2":I
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenContainer;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getFragmentWrapper()Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 357
    .local v6, "fragment":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v7, 0x0

    .line 232
    .local v7, "$i$a$-let-ScreenFragment$dispatchLifecycleEventInChildContainers$2$1":I
    invoke-virtual {p0, p1, v6}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    .line 233
    .end local v6    # "fragment":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v7    # "$i$a$-let-ScreenFragment$dispatchLifecycleEventInChildContainers$2$1":I
    :cond_3
    nop

    .line 361
    .end local v4    # "it":Lcom/swmansion/rnscreens/ScreenContainer;
    .end local v5    # "$i$a$-forEach-ScreenFragment$dispatchLifecycleEventInChildContainers$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 362
    :cond_4
    nop

    .line 234
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public dispatchTransitionProgressEvent(FZ)V
    .locals 12
    .param p1, "alpha"    # F
    .param p2, "closing"    # Z

    .line 248
    instance-of v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_2

    .line 249
    iget v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->transitionProgress:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 250
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->transitionProgress:F

    .line 251
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment;->Companion:Lcom/swmansion/rnscreens/ScreenFragment$Companion;

    iget v2, p0, Lcom/swmansion/rnscreens/ScreenFragment;->transitionProgress:F

    invoke-virtual {v0, v2}, Lcom/swmansion/rnscreens/ScreenFragment$Companion;->getCoalescingKey(F)S

    move-result v0

    .line 252
    .local v0, "coalescingKey":S
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v2

    .line 253
    .local v2, "container":Lcom/swmansion/rnscreens/ScreenContainer;
    instance-of v3, v2, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStack;->getGoingForward()Z

    move-result v1

    :cond_1
    move v8, v1

    .line 254
    .local v8, "goingForward":Z
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 257
    .local v1, "screenContext":Lcom/facebook/react/bridge/ReactContext;
    nop

    .line 256
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v10

    .line 257
    if-eqz v10, :cond_2

    .line 256
    nop

    .line 258
    new-instance v11, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;

    .line 259
    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v4

    .line 260
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v5

    .line 261
    iget v6, p0, Lcom/swmansion/rnscreens/ScreenFragment;->transitionProgress:F

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 258
    move-object v3, v11

    move v7, p2

    move v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/swmansion/rnscreens/events/ScreenTransitionProgressEvent;-><init>(IIFZZS)V

    check-cast v11, Lcom/facebook/react/uimanager/events/Event;

    .line 257
    invoke-interface {v10, v11}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 269
    .end local v0    # "coalescingKey":S
    .end local v1    # "screenContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v2    # "container":Lcom/swmansion/rnscreens/ScreenContainer;
    .end local v8    # "goingForward":Z
    :cond_2
    return-void
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

    .line 47
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->childScreenContainers:Ljava/util/List;

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 41
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->screen:Lcom/swmansion/rnscreens/Screen;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "screen"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onContainerUpdate()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->updateWindowTraits()V

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    nop

    .line 93
    nop

    .line 91
    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 90
    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/Screen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    .local v0, "it":Landroid/content/Context;
    const/4 v1, 0x0

    .line 96
    .local v1, "$i$a$-let-ScreenFragment$onCreateView$wrapper$1":I
    new-instance v2, Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;

    invoke-direct {v2, v0}, Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;-><init>(Landroid/content/Context;)V

    .end local v0    # "it":Landroid/content/Context;
    .end local v1    # "$i$a$-let-ScreenFragment$onCreateView$wrapper$1":I
    move-object v0, v2

    .local v0, "$this$onCreateView_u24lambda_u241":Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-apply-ScreenFragment$onCreateView$wrapper$2":I
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/swmansion/rnscreens/ext/ViewExtKt;->recycle(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;->addView(Landroid/view/View;)V

    .line 98
    nop

    .line 96
    .end local v0    # "$this$onCreateView_u24lambda_u241":Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;
    .end local v1    # "$i$a$-apply-ScreenFragment$onCreateView$wrapper$2":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 95
    :goto_0
    move-object v0, v2

    .line 99
    .local v0, "wrapper":Lcom/swmansion/rnscreens/ScreenFragment$ScreensFrameLayout;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 6

    .line 320
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 321
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    .line 322
    .local v0, "container":Lcom/swmansion/rnscreens/ScreenContainer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getFragmentWrapper()Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 325
    .local v1, "screenContext":Landroid/content/Context;
    instance-of v2, v1, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v2, :cond_1

    .line 326
    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v2

    .line 329
    .local v2, "surfaceId":I
    nop

    .line 328
    move-object v3, v1

    check-cast v3, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    .line 329
    if-eqz v3, :cond_1

    .line 328
    nop

    .line 329
    new-instance v4, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;-><init>(II)V

    check-cast v4, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v3, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 332
    .end local v1    # "screenContext":Landroid/content/Context;
    .end local v2    # "surfaceId":I
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getChildScreenContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 333
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 79
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->shouldUpdateOnResume:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->shouldUpdateOnResume:Z

    .line 81
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->trySetWindowTraits$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onViewAnimationEnd()V
    .locals 1

    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchViewAnimationEvent(Z)V

    .line 285
    return-void
.end method

.method public onViewAnimationStart()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchViewAnimationEvent(Z)V

    .line 281
    return-void
.end method

.method public removeChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/swmansion/rnscreens/ScreenContainer;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getChildScreenContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public setScreen(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/swmansion/rnscreens/Screen;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->screen:Lcom/swmansion/rnscreens/Screen;

    return-void
.end method

.method public tryGetActivity()Landroid/app/Activity;
    .locals 6

    .line 133
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    .local v0, "it":Landroidx/fragment/app/FragmentActivity;
    const/4 v1, 0x0

    .line 133
    .local v1, "$i$a$-let-ScreenFragment$tryGetActivity$1":I
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    return-object v2

    .line 134
    .end local v0    # "it":Landroidx/fragment/app/FragmentActivity;
    .end local v1    # "$i$a$-let-ScreenFragment$tryGetActivity$1":I
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    return-object v1

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v1

    check-cast v1, Landroid/view/ViewParent;

    .line 139
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_3

    .line 140
    instance-of v2, v1, Lcom/swmansion/rnscreens/Screen;

    if-eqz v2, :cond_2

    .line 141
    move-object v2, v1

    check-cast v2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 142
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 357
    .local v3, "it":Landroidx/fragment/app/FragmentActivity;
    const/4 v4, 0x0

    .line 142
    .local v4, "$i$a$-let-ScreenFragment$tryGetActivity$2":I
    move-object v5, v3

    check-cast v5, Landroid/app/Activity;

    return-object v5

    .line 144
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "it":Landroidx/fragment/app/FragmentActivity;
    .end local v4    # "$i$a$-let-ScreenFragment$tryGetActivity$2":I
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public tryGetContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    check-cast v0, Landroid/view/ViewParent;

    .line 157
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_3

    .line 158
    instance-of v2, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v2, :cond_2

    .line 159
    move-object v2, v0

    check-cast v2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v2, :cond_2

    .line 160
    move-object v2, v0

    check-cast v2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    return-object v2

    .line 163
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public updateLastEventDispatched(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    goto :goto_0

    .line 180
    :pswitch_1
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    goto :goto_0

    .line 179
    :pswitch_2
    iput-boolean v2, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchAppear:Z

    goto :goto_0

    .line 178
    :pswitch_3
    iput-boolean v2, p0, Lcom/swmansion/rnscreens/ScreenFragment;->canDispatchWillAppear:Z

    .line 183
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
