.class public Lcom/facebook/common/activitylistener/ActivityListenerManager;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListenableActivity(Landroid/content/Context;)Lcom/facebook/common/activitylistener/ListenableActivity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 40
    instance-of v0, p0, Lcom/facebook/common/activitylistener/ListenableActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 43
    :cond_0
    instance-of v0, p0, Lcom/facebook/common/activitylistener/ListenableActivity;

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/facebook/common/activitylistener/ListenableActivity;

    return-object v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static register(Lcom/facebook/common/activitylistener/ActivityListener;Landroid/content/Context;)V
    .locals 2
    .param p0, "activityListener"    # Lcom/facebook/common/activitylistener/ActivityListener;
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/facebook/common/activitylistener/ActivityListenerManager;->getListenableActivity(Landroid/content/Context;)Lcom/facebook/common/activitylistener/ListenableActivity;

    move-result-object v0

    .line 33
    .local v0, "activity":Lcom/facebook/common/activitylistener/ListenableActivity;
    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;

    invoke-direct {v1, p0}, Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;-><init>(Lcom/facebook/common/activitylistener/ActivityListener;)V

    .line 35
    .local v1, "listener":Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;
    invoke-interface {v0, v1}, Lcom/facebook/common/activitylistener/ListenableActivity;->addActivityListener(Lcom/facebook/common/activitylistener/ActivityListener;)V

    .line 37
    .end local v1    # "listener":Lcom/facebook/common/activitylistener/ActivityListenerManager$Listener;
    :cond_0
    return-void
.end method
