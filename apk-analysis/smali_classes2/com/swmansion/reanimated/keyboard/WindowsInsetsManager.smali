.class public Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;
.super Ljava/lang/Object;
.source "WindowsInsetsManager.java"


# instance fields
.field private final MissingContextErrorMsg:Ljava/lang/String;

.field private mIsNavigationBarTranslucent:Z

.field private mIsStatusBarTranslucent:Z

.field private final mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

.field private final mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;

.field private final mReactContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OT8YOppuQSDzlm6TzpuocrvIpq4(Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->onApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$chlIaTZdtQv0Qv0rWrsFy4tk7Q0(Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->lambda$updateInsets$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3QH4yUmJJa-f3BD9KycgjPAQbQ(Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->lambda$updateWindowDecor$0(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/keyboard/Keyboard;Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;)V
    .locals 1
    .param p2, "keyboard"    # Lcom/swmansion/reanimated/keyboard/Keyboard;
    .param p3, "notifyAboutKeyboardChange"    # Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;",
            "Lcom/swmansion/reanimated/keyboard/Keyboard;",
            "Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;",
            ")V"
        }
    .end annotation

    .line 28
    .local p1, "reactContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/react/bridge/ReactApplicationContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsStatusBarTranslucent:Z

    .line 18
    iput-boolean v0, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsNavigationBarTranslucent:Z

    .line 23
    const-string v0, "Unable to get reference to react activity"

    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->MissingContextErrorMsg:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mReactContext:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object p2, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    .line 31
    iput-object p3, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;

    .line 32
    return-void
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mReactContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutParams(II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 124
    const/4 v0, -0x1

    .line 125
    .local v0, "matchParentFlag":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 130
    iget-boolean v2, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsStatusBarTranslucent:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p1

    .line 132
    :goto_0
    iget-boolean v4, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsNavigationBarTranslucent:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, p2

    .line 128
    :goto_1
    invoke-virtual {v1, v3, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 133
    return-object v1
.end method

.method private synthetic lambda$updateInsets$1(II)V
    .locals 5
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->getLayoutParams(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 109
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Landroidx/appcompat/R$id;->action_bar_root:I

    .line 111
    .local v1, "actionBarId":I
    invoke-direct {p0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 112
    .local v2, "currentActivity":Landroid/app/Activity;
    if-nez v2, :cond_0

    .line 113
    const-string v3, "Reanimated"

    const-string v4, "Unable to get reference to react activity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 117
    :cond_0
    nop

    .line 118
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, "actionBarRootView":Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

.method private synthetic lambda$updateWindowDecor$0(Z)V
    .locals 3
    .param p1, "decorFitsSystemWindow"    # Z

    .line 76
    invoke-direct {p0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 78
    const-string v1, "Reanimated"

    const-string v2, "Unable to get reference to react activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 82
    :cond_0
    nop

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 82
    invoke-static {v1, p1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 84
    return-void
.end method

.method private onApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 88
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 89
    .local v0, "defaultInsets":Landroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/swmansion/reanimated/keyboard/Keyboard;->getState()Lcom/swmansion/reanimated/keyboard/KeyboardState;

    move-result-object v1

    sget-object v2, Lcom/swmansion/reanimated/keyboard/KeyboardState;->OPEN:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    iget-boolean v2, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsNavigationBarTranslucent:Z

    invoke-virtual {v1, p2, v2}, Lcom/swmansion/reanimated/keyboard/Keyboard;->updateHeight(Landroidx/core/view/WindowInsetsCompat;Z)V

    .line 91
    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;

    invoke-interface {v1}, Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;->call()V

    .line 93
    :cond_0
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 94
    return-object v0
.end method

.method private setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 3
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 98
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    .line 99
    .local v0, "systemBarsTypeMask":I
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    .line 100
    .local v1, "paddingTop":I
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    .line 101
    .local v2, "paddingBottom":I
    invoke-direct {p0, v1, v2}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->updateInsets(II)V

    .line 102
    return-void
.end method

.method private updateInsets(II)V
    .locals 2
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager$$ExternalSyntheticLambda2;-><init>(Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;II)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method private updateWindowDecor(Z)V
    .locals 2
    .param p1, "decorFitsSystemWindow"    # Z

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager$$ExternalSyntheticLambda1;-><init>(Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;Z)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method


# virtual methods
.method public startObservingChanges(Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;ZZ)V
    .locals 3
    .param p1, "keyboardAnimationCallback"    # Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;
    .param p2, "isStatusBarTranslucent"    # Z
    .param p3, "isNavigationBarTranslucent"    # Z

    .line 42
    iput-boolean p2, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsStatusBarTranslucent:Z

    .line 43
    iput-boolean p3, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsNavigationBarTranslucent:Z

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->updateWindowDecor(Z)V

    .line 46
    invoke-direct {p0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 47
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 48
    const-string v1, "Reanimated"

    const-string v2, "Unable to get reference to react activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "rootView":Landroid/view/View;
    new-instance v2, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 54
    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 55
    return-void
.end method

.method public stopObservingChanges()V
    .locals 3

    .line 58
    iget-boolean v0, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsStatusBarTranslucent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->mIsNavigationBarTranslucent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->updateWindowDecor(Z)V

    .line 59
    invoke-direct {p0, v1, v1}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->updateInsets(II)V

    .line 61
    invoke-direct {p0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 62
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 63
    const-string v1, "Reanimated"

    const-string v2, "Unable to get reference to react activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "rootView":Landroid/view/View;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 69
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 70
    return-void
.end method
