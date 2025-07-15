.class public Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "KeyboardAnimationCallback.java"


# static fields
.field private static final CONTENT_TYPE_MASK:I


# instance fields
.field private final mIsNavigationBarTranslucent:Z

.field private final mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

.field private final mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    sput v0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->CONTENT_TYPE_MASK:I

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/reanimated/keyboard/Keyboard;Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;Z)V
    .locals 1
    .param p1, "keyboard"    # Lcom/swmansion/reanimated/keyboard/Keyboard;
    .param p2, "notifyAboutKeyboardChange"    # Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;
    .param p3, "isNavigationBarTranslucent"    # Z

    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 19
    iput-object p2, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;

    .line 20
    iput-boolean p3, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mIsNavigationBarTranslucent:Z

    .line 21
    iput-object p1, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    .line 22
    return-void
.end method

.method private static isKeyboardAnimation(Landroidx/core/view/WindowInsetsAnimationCompat;)Z
    .locals 2
    .param p0, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 65
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result v0

    sget v1, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->CONTENT_TYPE_MASK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 58
    invoke-static {p1}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->isKeyboardAnimation(Landroidx/core/view/WindowInsetsAnimationCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/keyboard/Keyboard;->onAnimationEnd()V

    .line 60
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;

    invoke-interface {v0}, Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;->call()V

    .line 62
    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 42
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/WindowInsetsAnimationCompat;>;"
    const/4 v0, 0x0

    .line 43
    .local v0, "isAnyKeyboardAnimationRunning":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 44
    .local v2, "animation":Landroidx/core/view/WindowInsetsAnimationCompat;
    invoke-static {v2}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->isKeyboardAnimation(Landroidx/core/view/WindowInsetsAnimationCompat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 48
    .end local v2    # "animation":Landroidx/core/view/WindowInsetsAnimationCompat;
    :cond_0
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 50
    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    iget-boolean v2, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mIsNavigationBarTranslucent:Z

    invoke-virtual {v1, p1, v2}, Lcom/swmansion/reanimated/keyboard/Keyboard;->updateHeight(Landroidx/core/view/WindowInsetsCompat;Z)V

    .line 51
    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;

    invoke-interface {v1}, Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;->call()V

    .line 53
    :cond_2
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;
    .param p2, "bounds"    # Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 29
    invoke-static {p1}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->isKeyboardAnimation(Landroidx/core/view/WindowInsetsAnimationCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    return-object p2

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/keyboard/Keyboard;->onAnimationStart()V

    .line 33
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;->mNotifyAboutKeyboardChange:Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;

    invoke-interface {v0}, Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;->call()V

    .line 34
    invoke-super {p0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object v0

    return-object v0
.end method
