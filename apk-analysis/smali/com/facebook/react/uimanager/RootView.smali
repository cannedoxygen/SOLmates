.class public interface abstract Lcom/facebook/react/uimanager/RootView;
.super Ljava/lang/Object;
.source "RootView.java"


# virtual methods
.method public abstract handleException(Ljava/lang/Throwable;)V
.end method

.method public abstract onChildEndedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public onChildStartedNativeGesture(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/uimanager/RootView;->onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 28
    return-void
.end method

.method public abstract onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method
