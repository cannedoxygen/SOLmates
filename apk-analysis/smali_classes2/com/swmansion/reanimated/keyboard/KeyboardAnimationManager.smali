.class public Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;
.super Ljava/lang/Object;
.source "KeyboardAnimationManager.java"


# instance fields
.field private final mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

.field private final mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mNextListenerId:I

.field private final mWindowsInsetsManager:Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "reactContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/react/bridge/ReactApplicationContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mNextListenerId:I

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    new-instance v0, Lcom/swmansion/reanimated/keyboard/Keyboard;

    invoke-direct {v0}, Lcom/swmansion/reanimated/keyboard/Keyboard;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    .line 20
    new-instance v0, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    new-instance v2, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;-><init>(Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/keyboard/Keyboard;Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mWindowsInsetsManager:Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;

    .line 22
    return-void
.end method


# virtual methods
.method public notifyAboutKeyboardChange()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;

    .line 49
    .local v1, "listener":Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;
    iget-object v2, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    invoke-virtual {v2}, Lcom/swmansion/reanimated/keyboard/Keyboard;->getState()Lcom/swmansion/reanimated/keyboard/KeyboardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/reanimated/keyboard/KeyboardState;->asInt()I

    move-result v2

    iget-object v3, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    invoke-virtual {v3}, Lcom/swmansion/reanimated/keyboard/Keyboard;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;->invoke(II)V

    .line 50
    .end local v1    # "listener":Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public subscribeForKeyboardUpdates(Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;ZZ)I
    .locals 4
    .param p1, "callback"    # Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;
    .param p2, "isStatusBarTranslucent"    # Z
    .param p3, "isNavigationBarTranslucent"    # Z

    .line 28
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mNextListenerId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mNextListenerId:I

    .line 29
    .local v0, "listenerId":I
    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    new-instance v1, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;

    iget-object v2, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mKeyboard:Lcom/swmansion/reanimated/keyboard/Keyboard;

    new-instance v3, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;)V

    invoke-direct {v1, v2, v3, p3}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;-><init>(Lcom/swmansion/reanimated/keyboard/Keyboard;Lcom/swmansion/reanimated/keyboard/NotifyAboutKeyboardChangeFunction;Z)V

    .line 33
    .local v1, "keyboardAnimationCallback":Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;
    iget-object v2, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mWindowsInsetsManager:Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;

    invoke-virtual {v2, v1, p2, p3}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->startObservingChanges(Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;ZZ)V

    .line 36
    .end local v1    # "keyboardAnimationCallback":Lcom/swmansion/reanimated/keyboard/KeyboardAnimationCallback;
    :cond_0
    iget-object v1, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return v0
.end method

.method public unsubscribeFromKeyboardUpdates(I)V
    .locals 2
    .param p1, "listenerId"    # I

    .line 41
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->mWindowsInsetsManager:Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/keyboard/WindowsInsetsManager;->stopObservingChanges()V

    .line 45
    :cond_0
    return-void
.end method
