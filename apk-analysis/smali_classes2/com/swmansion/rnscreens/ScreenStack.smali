.class public final Lcom/swmansion/rnscreens/ScreenStack;
.super Lcom/swmansion/rnscreens/ScreenContainer;
.source "ScreenStack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStack$Companion;,
        Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;,
        Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStack.kt\ncom/swmansion/rnscreens/ScreenStack\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,440:1\n288#2,2:441\n1549#2:444\n1620#2,3:445\n1855#2,2:448\n1#3:443\n*S KotlinDebug\n*F\n+ 1 ScreenStack.kt\ncom/swmansion/rnscreens/ScreenStack\n*L\n48#1:441,2\n308#1:444\n308#1:445,3\n341#1:448,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 E2\u00020\u0001:\u0002EFB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u001dH\u0014J\u000e\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0007J\u0010\u0010)\u001a\u00020\'2\u0006\u0010*\u001a\u00020+H\u0014J\u0008\u0010,\u001a\u00020\'H\u0002J\u0008\u0010-\u001a\u00020\'H\u0002J \u0010.\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0014J\u0010\u00103\u001a\u00020\'2\u0006\u00104\u001a\u000200H\u0016J\u0012\u00105\u001a\u00020\u00122\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0008\u00108\u001a\u00020\'H\u0014J\u000c\u00109\u001a\u00060\nR\u00020\u0000H\u0002J\u0008\u0010:\u001a\u00020\'H\u0016J\u0006\u0010;\u001a\u00020\'J\u0014\u0010<\u001a\u00020\'2\n\u0010=\u001a\u00060\nR\u00020\u0000H\u0002J\u0008\u0010>\u001a\u00020\'H\u0016J\u0010\u0010?\u001a\u00020\'2\u0006\u0010@\u001a\u00020\u0019H\u0016J\u0010\u0010A\u001a\u00020\'2\u0006\u00104\u001a\u000200H\u0016J\u0010\u0010B\u001a\u00020\'2\u0006\u00104\u001a\u000200H\u0016J\u0012\u0010C\u001a\u00020\'2\u0008\u0010D\u001a\u0004\u0018\u000107H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u00060\nR\u00020\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u00060\nR\u00020\u00000\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u00070\rj\u0008\u0012\u0004\u0012\u00020\u0007`\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u001e\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00070\rj\u0008\u0012\u0004\u0012\u00020\u0007`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001fR\u0010\u0010#\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "dismissedWrappers",
        "",
        "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
        "drawingOpPool",
        "",
        "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
        "drawingOps",
        "fragments",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getFragments",
        "()Ljava/util/ArrayList;",
        "goingForward",
        "",
        "getGoingForward",
        "()Z",
        "setGoingForward",
        "(Z)V",
        "isDetachingCurrentScreen",
        "previousChildrenCount",
        "",
        "removalTransitionStarted",
        "reverseLastTwoChildren",
        "rootScreen",
        "Lcom/swmansion/rnscreens/Screen;",
        "getRootScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "stack",
        "topScreen",
        "getTopScreen",
        "topScreenWrapper",
        "adapt",
        "screen",
        "dismiss",
        "",
        "screenFragment",
        "dispatchDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dispatchOnFinishTransitioning",
        "drawAndRelease",
        "drawChild",
        "child",
        "Landroid/view/View;",
        "drawingTime",
        "",
        "endViewTransition",
        "view",
        "hasScreen",
        "screenFragmentWrapper",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "notifyContainerUpdate",
        "obtainDrawingOp",
        "onUpdate",
        "onViewAppearTransitionEnd",
        "performDraw",
        "op",
        "removeAllScreens",
        "removeScreenAt",
        "index",
        "removeView",
        "startViewTransition",
        "turnOffA11yUnderTransparentScreen",
        "visibleBottom",
        "Companion",
        "DrawingOp",
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

.field public static final TAG:Ljava/lang/String; = "ScreenStack"


# instance fields
.field private final dismissedWrappers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final drawingOpPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private drawingOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private goingForward:Z

.field private isDetachingCurrentScreen:Z

.field private previousChildrenCount:I

.field private removalTransitionStarted:Z

.field private reverseLastTwoChildren:Z

.field private final stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;


# direct methods
.method public static synthetic $r8$lambda$Wz4v0w61XbGgh_blZ63erf0SHDQ(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/rnscreens/ScreenStack;->onUpdate$lambda$4$lambda$2(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static final synthetic access$performDraw(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/rnscreens/ScreenStack;
    .param p1, "op"    # Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    .line 16
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V

    return-void
.end method

.method private final dispatchOnFinishTransitioning()V
    .locals 4

    .line 77
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v0

    .line 80
    .local v0, "surfaceId":I
    nop

    .line 79
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 79
    nop

    .line 80
    new-instance v2, Lcom/swmansion/rnscreens/events/StackFinishTransitioningEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/swmansion/rnscreens/events/StackFinishTransitioningEvent;-><init>(II)V

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 81
    :cond_0
    return-void
.end method

.method private final drawAndRelease()V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 367
    .local v0, "drawingOpsCopy":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    .line 369
    .local v2, "op":Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->draw()V

    .line 370
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    .end local v2    # "op":Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    :cond_0
    return-void
.end method

.method private final obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    :goto_0
    return-object v0
.end method

.method private static final onUpdate$lambda$4$lambda$2(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 1
    .param p0, "$top"    # Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 300
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->bringToFront()V

    .line 301
    :cond_0
    return-void
.end method

.method private final performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 4
    .param p1, "op"    # Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    .line 406
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getDrawingTime()J

    move-result-wide v2

    invoke-super {p0, v0, v1, v2, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 407
    return-void
.end method

.method private final turnOffA11yUnderTransparentScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 8
    .param p1, "visibleBottom"    # Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 318
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    if-eqz p1, :cond_2

    .line 319
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v0, :cond_2

    .local v0, "it":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    const/4 v3, 0x0

    .line 320
    .local v3, "$i$a$-let-ScreenStack$turnOffA11yUnderTransparentScreen$1":I
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->isTransparent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 323
    .local v2, "screenFragmentsBeneathTop":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 324
    .local v5, "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    .line 325
    nop

    .line 324
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/swmansion/rnscreens/Screen;->changeAccessibilityMode(I)V

    .line 329
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 330
    nop

    .line 334
    .end local v2    # "screenFragmentsBeneathTop":Ljava/util/List;
    .end local v5    # "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    :cond_1
    nop

    .line 319
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    .end local v3    # "$i$a$-let-ScreenStack$turnOffA11yUnderTransparentScreen$1":I
    nop

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/Screen;->changeAccessibilityMode(I)V

    .line 338
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .locals 1
    .param p1, "screen"    # Lcom/swmansion/rnscreens/Screen;

    .line 16
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    return-object v0
.end method

.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    .locals 2
    .param p1, "screen"    # Lcom/swmansion/rnscreens/Screen;

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen$StackPresentation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 53
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;

    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v1, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;-><init>(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 55
    :goto_0
    return-object v0
.end method

.method public final dismiss(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;)V
    .locals 1
    .param p1, "screenFragment"    # Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    const-string v0, "screenFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->performUpdatesNow()V

    .line 38
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 378
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->previousChildrenCount:I

    if-ge v0, v1, :cond_0

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->previousChildrenCount:I

    .line 382
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->drawAndRelease()V

    .line 386
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 394
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$drawChild_u24lambda_u247":Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    const/4 v3, 0x0

    .line 395
    .local v3, "$i$a$-apply-ScreenStack$drawChild$1":I
    invoke-virtual {v2, p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->setCanvas(Landroid/graphics/Canvas;)V

    .line 396
    invoke-virtual {v2, p2}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->setChild(Landroid/view/View;)V

    .line 397
    invoke-virtual {v2, p3, p4}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->setDrawingTime(J)V

    .line 398
    nop

    .line 394
    .end local v2    # "$this$drawChild_u24lambda_u247":Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    .end local v3    # "$i$a$-apply-ScreenStack$drawChild$1":I
    nop

    .line 393
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->endViewTransition(Landroid/view/View;)V

    .line 64
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    .line 66
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    .line 68
    :cond_0
    return-void
.end method

.method public final getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getGoingForward()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    return v0
.end method

.method public final getRootScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 441
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .local v4, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v5, 0x0

    .line 48
    .local v5, "$i$a$-firstOrNull-ScreenStack$rootScreen$1":I
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    .line 441
    .end local v4    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v5    # "$i$a$-firstOrNull-ScreenStack$rootScreen$1":I
    if-nez v6, :cond_0

    goto :goto_0

    .line 442
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 48
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Stack has no root screen set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Z
    .locals 1
    .param p1, "screenFragmentWrapper"    # Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 94
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyContainerUpdate()V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 448
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .local v4, "it":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    const/4 v5, 0x0

    .line 341
    .local v5, "$i$a$-forEach-ScreenStack$notifyContainerUpdate$1":I
    invoke-interface {v4}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->onContainerUpdate()V

    .line 448
    .end local v4    # "it":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    .end local v5    # "$i$a$-forEach-ScreenStack$notifyContainerUpdate$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 449
    :cond_0
    nop

    .line 342
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public onUpdate()V
    .locals 18

    .line 100
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 101
    .local v1, "newTop":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 103
    .local v2, "visibleBottom":Ljava/lang/Object;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 105
    iget-object v4, v0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    :cond_0
    move v5, v4

    .local v5, "i":I
    add-int/lit8 v4, v4, -0x1

    .line 106
    invoke-virtual {v0, v5}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenFragmentWrapperAt(I)Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    move-result-object v6

    .line 107
    .local v6, "screenWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    iget-object v7, v0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen;->getActivityState()Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object v7

    sget-object v8, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-eq v7, v8, :cond_2

    .line 108
    if-nez v1, :cond_1

    .line 109
    move-object v1, v6

    goto :goto_0

    .line 111
    :cond_1
    move-object v2, v6

    .line 113
    :goto_0
    invoke-interface {v6}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen;->isTransparent()Z

    move-result v7

    if-nez v7, :cond_2

    .line 114
    goto :goto_1

    .line 105
    .end local v6    # "screenWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    :cond_2
    if-gez v4, :cond_0

    .line 119
    .end local v5    # "i":I
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .local v4, "shouldUseOpenAnimation":Z
    const/4 v4, 0x1

    .line 120
    const/4 v5, 0x0

    .line 121
    .local v5, "stackAnimation":Ljava/lang/Object;
    iget-object v6, v0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_b

    .line 124
    iget-object v6, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v6, :cond_a

    if-eqz v1, :cond_a

    .line 129
    iget-object v6, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v6, :cond_4

    .line 443
    .local v6, "it":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    const/4 v9, 0x0

    .line 129
    .local v9, "$i$a$-let-ScreenStack$onUpdate$containsTopScreen$1":I
    iget-object v10, v0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .end local v6    # "it":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    .end local v9    # "$i$a$-let-ScreenStack$onUpdate$containsTopScreen$1":I
    if-ne v6, v8, :cond_4

    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v3

    .line 130
    .local v6, "containsTopScreen":Z
    :goto_2
    invoke-interface {v1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v9

    invoke-virtual {v9}, Lcom/swmansion/rnscreens/Screen;->getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    move-result-object v9

    sget-object v10, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->PUSH:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    if-ne v9, v10, :cond_5

    move v9, v8

    goto :goto_3

    :cond_5
    move v9, v3

    .line 131
    .local v9, "isPushReplace":Z
    :goto_3
    if-nez v6, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    move v10, v3

    goto :goto_5

    :cond_7
    :goto_4
    move v10, v8

    :goto_5
    move v4, v10

    .line 133
    if-eqz v4, :cond_8

    invoke-interface {v1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v10

    :goto_6
    invoke-virtual {v10}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v10

    goto :goto_7

    :cond_8
    iget-object v10, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v10, :cond_9

    invoke-interface {v10}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    move-object v10, v7

    :goto_7
    move-object v5, v10

    .end local v6    # "containsTopScreen":Z
    .end local v9    # "isPushReplace":Z
    goto :goto_9

    .line 134
    :cond_a
    iget-object v6, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-nez v6, :cond_d

    if-eqz v1, :cond_d

    .line 137
    sget-object v5, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 138
    iput-boolean v8, v0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    goto :goto_9

    .line 140
    :cond_b
    iget-object v6, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 142
    const/4 v4, 0x0

    .line 143
    iget-object v6, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v6, :cond_c

    invoke-interface {v6}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v6

    goto :goto_8

    :cond_c
    move-object v6, v7

    :goto_8
    move-object v5, v6

    .line 146
    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/swmansion/rnscreens/ScreenStack;->createTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    .local v6, "it":Landroidx/fragment/app/FragmentTransaction;
    const/4 v9, 0x0

    .line 148
    .local v9, "$i$a$-let-ScreenStack$onUpdate$1":I
    if-eqz v5, :cond_f

    .line 149
    if-eqz v4, :cond_e

    .line 150
    sget-object v10, Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_a

    .line 191
    :pswitch_0
    nop

    .line 192
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_left_foreground_open:I

    .line 193
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_left_background_open:I

    .line 191
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_a

    .line 186
    :pswitch_1
    nop

    .line 187
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_right_foreground_open:I

    .line 188
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_right_background_open:I

    .line 186
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_b

    .line 184
    :pswitch_2
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_fade_from_bottom:I

    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_350:I

    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_b

    .line 180
    :pswitch_3
    nop

    .line 181
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_bottom:I

    .line 182
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_medium:I

    .line 180
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_b

    .line 175
    :pswitch_4
    nop

    .line 176
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    .line 177
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    .line 175
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_b

    .line 170
    :pswitch_5
    nop

    .line 171
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    .line 172
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    .line 170
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_b

    .line 164
    :pswitch_6
    nop

    .line 165
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_fade_in:I

    .line 166
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_fade_out:I

    .line 164
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_b

    .line 158
    :pswitch_7
    nop

    .line 159
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    .line 160
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    .line 158
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 152
    :pswitch_8
    nop

    .line 153
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_default_enter_in:I

    .line 154
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_default_enter_out:I

    .line 152
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 191
    :goto_a
    goto :goto_b

    .line 197
    :cond_e
    sget-object v10, Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    goto :goto_b

    .line 238
    :pswitch_9
    nop

    .line 239
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_left_background_close:I

    .line 240
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_left_foreground_close:I

    .line 238
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 233
    :pswitch_a
    nop

    .line 234
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_right_background_close:I

    .line 235
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_ios_from_right_foreground_close:I

    .line 233
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 231
    :pswitch_b
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_250:I

    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_fade_to_bottom:I

    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 227
    :pswitch_c
    nop

    .line 228
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_medium:I

    .line 229
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_bottom:I

    .line 227
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 222
    :pswitch_d
    nop

    .line 223
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    .line 224
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    .line 222
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 217
    :pswitch_e
    nop

    .line 218
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    .line 219
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    .line 217
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 211
    :pswitch_f
    nop

    .line 212
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_fade_in:I

    .line 213
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_fade_out:I

    .line 211
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 205
    :pswitch_10
    nop

    .line 206
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    .line 207
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_20:I

    .line 205
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 199
    :pswitch_11
    nop

    .line 200
    sget v10, Lcom/swmansion/rnscreens/R$anim;->rns_default_exit_in:I

    .line 201
    sget v11, Lcom/swmansion/rnscreens/R$anim;->rns_default_exit_out:I

    .line 199
    invoke-virtual {v6, v10, v11}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 247
    :cond_f
    :goto_b
    iput-boolean v4, v0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    .line 249
    if-eqz v4, :cond_10

    .line 250
    if-eqz v1, :cond_10

    .line 251
    sget-object v10, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    invoke-static {v10, v1}, Lcom/swmansion/rnscreens/ScreenStack$Companion;->access$needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStack$Companion;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 252
    if-nez v2, :cond_10

    .line 261
    iput-boolean v8, v0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 265
    :cond_10
    iget-object v8, v0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 266
    .local v10, "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    iget-object v11, v0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 267
    :cond_12
    invoke-interface {v10}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_c

    .line 270
    .end local v10    # "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    :cond_13
    iget-object v8, v0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 273
    .local v10, "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    if-ne v10, v2, :cond_15

    .line 274
    goto :goto_e

    .line 277
    :cond_15
    if-eq v10, v1, :cond_16

    iget-object v11, v0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v11, v10}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 278
    :cond_16
    invoke-interface {v10}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v11

    invoke-virtual {v11}, Lcom/swmansion/rnscreens/Screen;->getActivityState()Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object v11

    sget-object v12, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-ne v11, v12, :cond_14

    .line 280
    :cond_17
    invoke-interface {v10}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_d

    .line 285
    .end local v10    # "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    :cond_18
    :goto_e
    if-eqz v2, :cond_1b

    invoke-interface {v2}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 286
    move-object v8, v1

    .line 287
    .local v8, "top":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v10, 0x1

    .line 288
    .local v10, "beneathVisibleBottom":Z
    iget-object v11, v0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 290
    .local v12, "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    if-eqz v10, :cond_1a

    .line 292
    if-ne v12, v2, :cond_19

    .line 293
    nop

    .line 291
    move v10, v3

    goto :goto_10

    .line 295
    :cond_19
    goto :goto_f

    .line 299
    :cond_1a
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v13

    invoke-interface {v12}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v13

    new-instance v14, Lcom/swmansion/rnscreens/ScreenStack$$ExternalSyntheticLambda0;

    invoke-direct {v14, v8}, Lcom/swmansion/rnscreens/ScreenStack$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    invoke-virtual {v13, v14}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_f

    .line 303
    .end local v8    # "top":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v10    # "beneathVisibleBottom":Z
    .end local v12    # "fragmentWrapper":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    :cond_1b
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v3

    invoke-interface {v1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 306
    :cond_1c
    instance-of v3, v1, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v3, :cond_1d

    move-object v7, v1

    check-cast v7, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    :cond_1d
    iput-object v7, v0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 307
    iget-object v3, v0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 308
    iget-object v3, v0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 444
    .local v8, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v7

    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 445
    .local v12, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 446
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .local v15, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/16 v16, 0x0

    .line 308
    .local v16, "$i$a$-map-ScreenStack$onUpdate$1$2":I
    move-object/from16 v17, v1

    .end local v1    # "newTop":Ljava/lang/Object;
    .local v17, "newTop":Ljava/lang/Object;
    const-string v1, "null cannot be cast to non-null type com.swmansion.rnscreens.ScreenStackFragmentWrapper"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v15

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 446
    .end local v15    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v16    # "$i$a$-map-ScreenStack$onUpdate$1$2":I
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    goto :goto_11

    .line 447
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    .end local v17    # "newTop":Ljava/lang/Object;
    .restart local v1    # "newTop":Ljava/lang/Object;
    :cond_1e
    move-object/from16 v17, v1

    .end local v1    # "newTop":Ljava/lang/Object;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo":I
    .restart local v17    # "newTop":Ljava/lang/Object;
    move-object v1, v10

    check-cast v1, Ljava/util/List;

    .line 444
    nop

    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    check-cast v1, Ljava/util/Collection;

    .line 308
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 310
    invoke-direct {v0, v2}, Lcom/swmansion/rnscreens/ScreenStack;->turnOffA11yUnderTransparentScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    .line 312
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 313
    nop

    .line 146
    .end local v6    # "it":Landroidx/fragment/app/FragmentTransaction;
    .end local v9    # "$i$a$-let-ScreenStack$onUpdate$1":I
    nop

    .line 314
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final onViewAppearTransitionEnd()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    .line 74
    :cond_0
    return-void
.end method

.method public removeAllScreens()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 90
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeAllScreens()V

    .line 91
    return-void
.end method

.method public removeScreenAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 84
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenFragmentWrapperAt(I)Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 85
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeScreenAt(I)V

    .line 86
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    .line 358
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeView(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public final setGoingForward(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->startViewTransition(Landroid/view/View;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    .line 60
    return-void
.end method
