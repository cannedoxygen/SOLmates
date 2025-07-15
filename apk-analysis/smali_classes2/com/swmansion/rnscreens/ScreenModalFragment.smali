.class public final Lcom/swmansion/rnscreens/ScreenModalFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "ScreenModalFragment.kt"

# interfaces
.implements Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenModalFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenModalFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenModalFragment.kt\ncom/swmansion/rnscreens/ScreenModalFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,282:1\n1#2:283\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 R2\u00020\u00012\u00020\u0002:\u0001RB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020#H\u0016J\u0008\u0010\'\u001a\u00020!H\u0002J\u0008\u0010(\u001a\u00020\u001fH\u0002J\u0008\u0010)\u001a\u00020!H\u0016J\u0008\u0010*\u001a\u00020!H\u0016J\u0018\u0010+\u001a\u00020!2\u0006\u0010$\u001a\u00020%2\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020!2\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010/\u001a\u00020!2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020#H\u0016J\u0008\u00103\u001a\u00020!H\u0016J\u0012\u00104\u001a\u00020!2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0012\u00107\u001a\u0002082\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J&\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<2\u0008\u0010\u0013\u001a\u0004\u0018\u00010=2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0008\u0010>\u001a\u00020!H\u0016J\u0008\u0010?\u001a\u00020!H\u0016J\u0008\u0010@\u001a\u00020!H\u0016J\u0010\u0010A\u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0008\u0010B\u001a\u00020!H\u0016J\u0010\u0010C\u001a\u00020!2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010F\u001a\u00020!2\u0006\u0010G\u001a\u00020#H\u0016J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020#H\u0016J\n\u0010J\u001a\u0004\u0018\u00010KH\u0016J\n\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u000f\u0010N\u001a\u0004\u0018\u00010OH\u0002\u00a2\u0006\u0002\u0010PJ\u0010\u0010Q\u001a\u00020!2\u0006\u0010$\u001a\u00020%H\u0016R\"\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\t0\t0\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u0006R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006S"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenModalFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
        "()V",
        "screen",
        "Lcom/swmansion/rnscreens/Screen;",
        "(Lcom/swmansion/rnscreens/Screen;)V",
        "behavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroid/widget/FrameLayout;",
        "kotlin.jvm.PlatformType",
        "getBehavior",
        "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "childScreenContainers",
        "Ljava/util/ArrayList;",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "Lkotlin/collections/ArrayList;",
        "getChildScreenContainers",
        "()Ljava/util/ArrayList;",
        "container",
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "getContainer",
        "()Lcom/swmansion/rnscreens/ScreenStack;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "getScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "setScreen",
        "sheetDialog",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "addChildScreenContainer",
        "",
        "canDispatchLifecycleEvent",
        "",
        "event",
        "Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;",
        "canNavigateBack",
        "configureBehaviour",
        "configureDialogAndBehaviour",
        "dismissFromContainer",
        "dispatchHeaderBackButtonClickedEvent",
        "dispatchLifecycleEvent",
        "fragmentWrapper",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "dispatchLifecycleEventInChildContainers",
        "dispatchTransitionProgressEvent",
        "alpha",
        "",
        "closing",
        "onContainerUpdate",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onViewAnimationEnd",
        "onViewAnimationStart",
        "removeChildScreenContainer",
        "removeToolbar",
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
        "tryResolveContainerHeight",
        "",
        "()Ljava/lang/Integer;",
        "updateLastEventDispatched",
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenModalFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "ScreenModalFragment"


# instance fields
.field private final childScreenContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenContainer;",
            ">;"
        }
    .end annotation
.end field

.field public screen:Lcom/swmansion/rnscreens/Screen;

.field private sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenModalFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenModalFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenModalFragment;->Companion:Lcom/swmansion/rnscreens/ScreenModalFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->childScreenContainers:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    nop

    .line 55
    const-string v1, "Screen fragments should never be restored. Follow instructions from https://github.com/software-mansion/react-native-screens/issues/17#issuecomment-424704067 to properly configure your main activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1
    .param p1, "screen"    # Lcom/swmansion/rnscreens/Screen;

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->childScreenContainers:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenModalFragment;->setScreen(Lcom/swmansion/rnscreens/Screen;)V

    .line 62
    return-void
.end method

.method private final configureBehaviour()V
    .locals 10

    .line 229
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->tryResolveContainerHeight()Ljava/lang/Integer;

    move-result-object v0

    .line 230
    .local v0, "containerHeight":Ljava/lang/Integer;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    .local v3, "$this$configureBehaviour_u24lambda_u245":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v4, 0x0

    .line 233
    .local v4, "$i$a$-apply-ScreenModalFragment$configureBehaviour$2":I
    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 234
    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 235
    nop

    .line 232
    .end local v3    # "$this$configureBehaviour_u24lambda_u245":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v4    # "$i$a$-apply-ScreenModalFragment$configureBehaviour$2":I
    nop

    .line 237
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RNScreens] Invalid detent count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Expected at most 3."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :pswitch_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    .local v3, "$this$configureBehaviour_u24lambda_u248":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v4, 0x0

    .line 261
    .local v4, "$i$a$-apply-ScreenModalFragment$configureBehaviour$5":I
    nop

    .line 262
    sget-object v5, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    .line 263
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v6

    .line 264
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    .line 262
    invoke-virtual {v5, v6, v7}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->sheetStateFromDetentIndex(II)I

    move-result v5

    .line 261
    invoke-virtual {v3, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 266
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 267
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v7, v1

    mul-double/2addr v5, v7

    double-to-int v1, v5

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 269
    int-to-double v5, v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v1

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v5, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v5, v8

    double-to-int v1, v5

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    .line 270
    nop

    .line 271
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-float v1, v1

    .line 270
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    .line 272
    nop

    .line 260
    .end local v3    # "$this$configureBehaviour_u24lambda_u248":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v4    # "$i$a$-apply-ScreenModalFragment$configureBehaviour$5":I
    goto/16 :goto_1

    .line 247
    :pswitch_1
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    .local v3, "$this$configureBehaviour_u24lambda_u247":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v4, 0x0

    .line 248
    .local v4, "$i$a$-apply-ScreenModalFragment$configureBehaviour$4":I
    nop

    .line 249
    sget-object v5, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    .line 250
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v6

    .line 251
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    .line 249
    invoke-virtual {v5, v6, v7}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->sheetStateFromDetentIndex(II)I

    move-result v5

    .line 248
    invoke-virtual {v3, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 253
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 254
    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v7, v1

    mul-double/2addr v5, v7

    double-to-int v1, v5

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 256
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    .line 257
    nop

    .line 247
    .end local v3    # "$this$configureBehaviour_u24lambda_u247":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v4    # "$i$a$-apply-ScreenModalFragment$configureBehaviour$4":I
    goto :goto_1

    .line 239
    :pswitch_2
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .local v1, "$this$configureBehaviour_u24lambda_u246":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$a$-apply-ScreenModalFragment$configureBehaviour$3":I
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 241
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 242
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    .line 244
    nop

    .line 239
    .end local v1    # "$this$configureBehaviour_u24lambda_u246":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v3    # "$i$a$-apply-ScreenModalFragment$configureBehaviour$3":I
    nop

    .line 276
    :goto_1
    return-void

    .line 283
    :cond_1
    const/4 v1, 0x0

    .line 230
    .local v1, "$i$a$-check-ScreenModalFragment$configureBehaviour$1":I
    nop

    .end local v1    # "$i$a$-check-ScreenModalFragment$configureBehaviour$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "[RNScreens] Failed to find window height during bottom sheet behaviour configuration"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final configureDialogAndBehaviour()Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 4

    .line 196
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetDialogScreen;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetDialogScreen;-><init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenModalFragment;)V

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 197
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v1, 0x0

    const-string v2, "sheetDialog"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setDismissWithAnimation(Z)V

    .line 198
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getSheetClosesOnTouchOutside()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->configureBehaviour()V

    .line 202
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private final getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v0, :cond_0

    const-string v0, "sheetDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "getBehavior(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getContainer()Lcom/swmansion/rnscreens/ScreenStack;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

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

.method private final tryResolveContainerHeight()Ljava/lang/Integer;
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenContainer;->getHeight()I

    move-result v0

    .line 283
    .local v0, "it":I
    const/4 v1, 0x0

    .line 211
    .local v1, "$i$a$-let-ScreenModalFragment$tryResolveContainerHeight$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 213
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ScreenModalFragment$tryResolveContainerHeight$1":I
    :cond_0
    nop

    .line 212
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_1

    .line 212
    nop

    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1

    .line 213
    nop

    .line 214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 214
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 215
    nop

    .line 216
    nop

    .line 215
    nop

    .line 216
    nop

    .line 283
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 216
    .local v1, "$i$a$-let-ScreenModalFragment$tryResolveContainerHeight$2":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 213
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ScreenModalFragment$tryResolveContainerHeight$2":I
    :cond_1
    nop

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    .line 220
    nop

    .line 219
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Landroid/view/WindowManager;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 220
    :goto_1
    if-eqz v0, :cond_4

    .line 219
    nop

    .line 220
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_4

    .line 220
    nop

    .line 221
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_4

    .line 221
    nop

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 223
    nop

    .line 222
    nop

    .line 223
    nop

    .line 283
    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 223
    .local v1, "$i$a$-let-ScreenModalFragment$tryResolveContainerHeight$3":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 220
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ScreenModalFragment$tryResolveContainerHeight$3":I
    :cond_4
    nop

    .line 225
    :cond_5
    return-object v2
.end method


# virtual methods
.method public addChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/swmansion/rnscreens/ScreenContainer;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getChildScreenContainers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public canDispatchLifecycleEvent(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
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

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public dismissFromContainer()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getContainer()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getContainer()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.swmansion.rnscreens.ScreenStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .local v0, "container":Lcom/swmansion/rnscreens/ScreenStack;
    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->dismiss(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;)V

    .line 96
    return-void

    .line 93
    .end local v0    # "container":Lcom/swmansion/rnscreens/ScreenStack;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchHeaderBackButtonClickedEvent()V
    .locals 3

    .line 159
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

    .line 151
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

    .line 155
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

    .line 166
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

.method public getChildScreenContainers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenContainer;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->childScreenContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getChildScreenContainers()Ljava/util/List;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getChildScreenContainers()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 52
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->screen:Lcom/swmansion/rnscreens/Screen;

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

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->setShowsDialog(Z)V

    .line 69
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->configureDialogAndBehaviour()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 75
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    .local v0, "reactEventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    new-instance v1, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetDialogRootView;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetDialogRootView;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 78
    .local v1, "rootView":Lcom/swmansion/rnscreens/bottomsheet/BottomSheetDialogRootView;
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/swmansion/rnscreens/ext/ViewExtKt;->recycle(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetDialogRootView;->addView(Landroid/view/View;)V

    .line 79
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v3, 0x0

    const-string v4, "sheetDialog"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    move-object v5, v1

    check-cast v5, Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 81
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/swmansion/rnscreens/ext/ViewExtKt;->parentAsView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setClipToOutline(Z)V

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    check-cast v3, Landroid/app/Dialog;

    return-object v3

    .line 283
    .end local v0    # "reactEventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    .end local v1    # "rootView":Lcom/swmansion/rnscreens/bottomsheet/BottomSheetDialogRootView;
    :cond_3
    const/4 v0, 0x0

    .line 75
    .local v0, "$i$a$-checkNotNull-ScreenModalFragment$onCreateDialog$reactEventDispatcher$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-ScreenModalFragment$onCreateDialog$reactEventDispatcher$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] No ReactEventDispatcher attached to screen while creating modal fragment"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 6

    .line 170
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDestroy()V

    .line 171
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getContainer()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v0

    .line 172
    .local v0, "container":Lcom/swmansion/rnscreens/ScreenStack;
    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 174
    .local v1, "screenContext":Landroid/content/Context;
    instance-of v2, v1, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v2, :cond_1

    .line 175
    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v2

    .line 178
    .local v2, "surfaceId":I
    nop

    .line 177
    move-object v3, v1

    check-cast v3, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    .line 178
    if-eqz v3, :cond_1

    .line 177
    nop

    .line 178
    new-instance v4, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;-><init>(II)V

    check-cast v4, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v3, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 181
    .end local v1    # "screenContext":Landroid/content/Context;
    .end local v2    # "surfaceId":I
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getChildScreenContainers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 182
    return-void
.end method

.method public onViewAnimationEnd()V
    .locals 0

    .line 116
    return-void
.end method

.method public onViewAnimationStart()V
    .locals 0

    .line 113
    return-void
.end method

.method public removeChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/swmansion/rnscreens/ScreenContainer;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getChildScreenContainers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public removeToolbar()V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Modal screens on Android do not support header right now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScreen(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/swmansion/rnscreens/Screen;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenModalFragment;->screen:Lcom/swmansion/rnscreens/Screen;

    return-void
.end method

.method public setToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Modal screens on Android do not support header right now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setToolbarShadowHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Modal screens on Android do not support header right now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setToolbarTranslucent(Z)V
    .locals 2
    .param p1, "translucent"    # Z

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Modal screens on Android do not support header right now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryGetActivity()Landroid/app/Activity;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public tryGetContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenModalFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    check-cast v0, Landroid/view/ViewParent;

    .line 129
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_3

    .line 130
    instance-of v2, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v2, :cond_2

    .line 131
    move-object v2, v0

    check-cast v2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    return-object v2

    .line 133
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public updateLastEventDispatched(Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
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
