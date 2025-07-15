.class public final Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;
.super Lcom/facebook/react/bridge/GuardedRunnable;
.source "ScreenWindowTraits.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenWindowTraits;->setColor$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/swmansion/rnscreens/ScreenWindowTraits$setColor$1",
        "Lcom/facebook/react/bridge/GuardedRunnable;",
        "runGuarded",
        "",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $animated:Z

.field final synthetic $color:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$DNUNuOOKuGmZRcFN0uWkuERb6dc(Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;->runGuarded$lambda$0(Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/Integer;ZLcom/facebook/react/bridge/JSExceptionHandler;)V
    .locals 0
    .param p1, "$activity"    # Landroid/app/Activity;
    .param p2, "$color"    # Ljava/lang/Integer;
    .param p3, "$animated"    # Z
    .param p4, "$super_call_param$1"    # Lcom/facebook/react/bridge/JSExceptionHandler;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;->$color:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;->$animated:Z

    .line 106
    invoke-direct {p0, p4}, Lcom/facebook/react/bridge/GuardedRunnable;-><init>(Lcom/facebook/react/bridge/JSExceptionHandler;)V

    return-void
.end method

.method private static final runGuarded$lambda$0(Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "$window"    # Landroid/view/Window;
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public runGuarded()V
    .locals 8

    .line 108
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;->$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    .line 110
    .local v1, "curColor":I
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    check-cast v2, Landroid/animation/TypeEvaluator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;->$color:Ljava/lang/Integer;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 111
    .local v2, "colorAnimation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/Window;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    iget-boolean v3, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$setColor$1;->$animated:Z

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 119
    :goto_0
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 120
    return-void
.end method
