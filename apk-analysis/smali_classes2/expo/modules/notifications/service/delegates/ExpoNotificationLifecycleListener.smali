.class public Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;
.super Ljava/lang/Object;
.source "ExpoNotificationLifecycleListener.java"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;


# instance fields
.field private mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/NotificationManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Lexpo/modules/notifications/notifications/NotificationManager;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;->mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 36
    const-string v2, "notificationResponse"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-string v2, "ReactNativeJS"

    const-string v3, "[native] ExpoNotificationLifecycleListener contains an unmarshaled notification response. Skipping."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 40
    :cond_0
    const-string v2, "ExpoNotificationLifeCycleListener.onCreate:"

    invoke-static {v2, v1}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    iget-object v2, p0, Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;->mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;

    invoke-virtual {v2, v1}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationResponseFromExtras(Landroid/os/Bundle;)V

    .line 44
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 59
    const-string v1, "notificationResponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "ReactNativeJS"

    const-string v3, "[native] ExpoNotificationLifecycleListener contains an unmarshaled notification response. Skipping."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onNewIntent(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 64
    :cond_0
    const-string v1, "ExpoNotificationLifeCycleListener.onNewIntent:"

    invoke-static {v1, v0}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;->mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;

    invoke-virtual {v1, v0}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationResponseFromExtras(Landroid/os/Bundle;)V

    .line 67
    :cond_1
    invoke-super {p0, p1}, Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;->onNewIntent(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method
