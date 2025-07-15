.class final Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ScreenStackFragment.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreensCoordinatorLayout"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStackFragment.kt\ncom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,670:1\n1#2:671\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
        "Lcom/facebook/react/uimanager/ReactPointerEventsView;",
        "context",
        "Landroid/content/Context;",
        "fragment",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;)V",
        "animationListener",
        "Landroid/view/animation/Animation$AnimationListener;",
        "clearFocus",
        "",
        "getPointerEvents",
        "Lcom/facebook/react/uimanager/PointerEvents;",
        "onApplyWindowInsets",
        "Landroid/view/WindowInsets;",
        "insets",
        "startAnimation",
        "animation",
        "Landroid/view/animation/Animation;",
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


# instance fields
.field private final animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/swmansion/rnscreens/ScreenStackFragment;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 570
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 577
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout$animationListener$1;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout$animationListener$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;)V

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 568
    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    .line 568
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object v0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .line 629
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 630
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->clearFocus()V

    .line 632
    :cond_0
    return-void
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    .line 654
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 574
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    const-string v1, "onApplyWindowInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;-><init>(Lcom/swmansion/rnscreens/ScreenFragment;)V

    move-object v1, v0

    .line 671
    .local v1, "$this$startAnimation_u24lambda_u240":Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;
    const/4 v2, 0x0

    .line 599
    .local v2, "$i$a$-apply-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$fakeAnimation$1":I
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;->setDuration(J)V

    .line 601
    .end local v1    # "$this$startAnimation_u24lambda_u240":Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;
    .end local v2    # "$i$a$-apply-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$fakeAnimation$1":I
    .local v0, "fakeAnimation":Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;
    instance-of v1, p1, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    nop

    .line 603
    move-object v1, p1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .local v1, "$this$startAnimation_u24lambda_u241":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x0

    .line 604
    .local v2, "$i$a$-apply-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$1":I
    move-object v3, v0

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 605
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 606
    nop

    .line 603
    .end local v1    # "$this$startAnimation_u24lambda_u241":Landroid/view/animation/AnimationSet;
    .end local v2    # "$i$a$-apply-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$1":I
    nop

    .line 606
    move-object v1, p1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .local v1, "it":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x0

    .line 607
    .local v2, "$i$a$-also-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$2":I
    move-object v3, v1

    check-cast v3, Landroid/view/animation/Animation;

    invoke-super {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 608
    nop

    .line 606
    .end local v1    # "it":Landroid/view/animation/AnimationSet;
    .end local v2    # "$i$a$-also-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$2":I
    goto :goto_0

    .line 610
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 611
    move-object v2, v1

    .local v2, "$this$startAnimation_u24lambda_u243":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    .line 612
    .local v3, "$i$a$-apply-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$3":I
    invoke-virtual {v2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 613
    move-object v4, v0

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 614
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 615
    nop

    .line 611
    .end local v2    # "$this$startAnimation_u24lambda_u243":Landroid/view/animation/AnimationSet;
    .end local v3    # "$i$a$-apply-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$3":I
    nop

    .line 615
    nop

    .restart local v1    # "it":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x0

    .line 616
    .local v2, "$i$a$-also-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$4":I
    move-object v3, v1

    check-cast v3, Landroid/view/animation/Animation;

    invoke-super {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    nop

    .line 615
    .end local v1    # "it":Landroid/view/animation/AnimationSet;
    .end local v2    # "$i$a$-also-ScreenStackFragment$ScreensCoordinatorLayout$startAnimation$4":I
    nop

    .line 619
    :goto_0
    return-void
.end method
