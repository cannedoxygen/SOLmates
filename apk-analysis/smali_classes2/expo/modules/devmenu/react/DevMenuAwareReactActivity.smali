.class public abstract Lexpo/modules/devmenu/react/DevMenuAwareReactActivity;
.super Lcom/facebook/react/ReactActivity;
.source "DevMenuAwareReactActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/devmenu/react/DevMenuAwareReactActivity;",
        "Lcom/facebook/react/ReactActivity;",
        "()V",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onKeyUp",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onPostCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 31
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p1}, Lexpo/modules/devmenu/DevMenuManager;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 32
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/devmenu/DevMenuManager;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/facebook/react/ReactActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 18
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    .line 20
    new-instance v1, Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 21
    invoke-virtual {p0}, Lexpo/modules/devmenu/react/DevMenuAwareReactActivity;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v2

    const-string v3, "getReactNativeHost(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v3, Lexpo/modules/devmenu/react/DevMenuAwareReactActivity$onPostCreate$1;

    invoke-direct {v3, p0}, Lexpo/modules/devmenu/react/DevMenuAwareReactActivity$onPostCreate$1;-><init>(Lexpo/modules/devmenu/react/DevMenuAwareReactActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 20
    invoke-direct {v1, v2, v3}, Lexpo/interfaces/devmenu/ReactHostWrapper;-><init>(Lcom/facebook/react/ReactNativeHost;Lkotlin/jvm/functions/Function0;)V

    .line 19
    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/DevMenuManager;->initializeWithReactHost(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->synchronizeDelegate()V

    .line 28
    :goto_0
    return-void
.end method
