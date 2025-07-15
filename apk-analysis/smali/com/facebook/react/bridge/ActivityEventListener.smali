.class public interface abstract Lcom/facebook/react/bridge/ActivityEventListener;
.super Ljava/lang/Object;
.source "ActivityEventListener.java"


# virtual methods
.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public onUserLeaveHint(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 27
    return-void
.end method
