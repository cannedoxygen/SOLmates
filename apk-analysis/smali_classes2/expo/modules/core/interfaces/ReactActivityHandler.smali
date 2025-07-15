.class public interface abstract Lexpo/modules/core/interfaces/ReactActivityHandler;
.super Ljava/lang/Object;
.source "ReactActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    }
.end annotation


# virtual methods
.method public createReactRootViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelayLoadAppHandler(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactNativeHost;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 1
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;
    .param p2, "reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDidCreateReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactActivityDelegate;)Lcom/facebook/react/ReactActivityDelegate;
    .locals 1
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;
    .param p2, "delegate"    # Lcom/facebook/react/ReactActivityDelegate;

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 38
    const/4 v0, 0x0

    return v0
.end method
