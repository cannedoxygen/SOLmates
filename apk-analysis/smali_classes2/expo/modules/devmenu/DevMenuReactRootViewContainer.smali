.class public final Lexpo/modules/devmenu/DevMenuReactRootViewContainer;
.super Landroid/widget/FrameLayout;
.source "DevMenuReactRootViewContainer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J0\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0012H\u0014R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuReactRootViewContainer;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "fab",
        "Lexpo/modules/devmenu/fab/MovableFloatingActionButton;",
        "getFab",
        "()Lexpo/modules/devmenu/fab/MovableFloatingActionButton;",
        "fab$delegate",
        "Lkotlin/Lazy;",
        "updateSystemGestureExclusionRects",
        "Lkotlin/Function0;",
        "",
        "addView",
        "child",
        "Landroid/view/View;",
        "index",
        "",
        "params",
        "Landroid/view/ViewGroup$LayoutParams;",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "expo-dev-menu_debug"
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
.field private final fab$delegate:Lkotlin/Lazy;

.field private final updateSystemGestureExclusionRects:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;

    invoke-direct {v0, p0}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;-><init>(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->updateSystemGestureExclusionRects:Lkotlin/jvm/functions/Function0;

    .line 36
    new-instance v0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;

    invoke-direct {v0, p1, p0}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;-><init>(Landroid/content/Context;Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->fab$delegate:Lkotlin/Lazy;

    .line 19
    return-void
.end method

.method public static final synthetic access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    .line 19
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->getFab()Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getUpdateSystemGestureExclusionRects$p(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    .line 19
    iget-object v0, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->updateSystemGestureExclusionRects:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private final getFab()Lexpo/modules/devmenu/fab/MovableFloatingActionButton;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->fab$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 57
    nop

    .line 60
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 51
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p1}, Lexpo/modules/devmenu/DevMenuManager;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 47
    iget-object v0, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->updateSystemGestureExclusionRects:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 48
    return-void
.end method
