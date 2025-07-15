.class public interface abstract Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
.super Ljava/lang/Object;
.source "NotificationListener.java"


# virtual methods
.method public onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 0
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    .line 21
    return-void
.end method

.method public onNotificationResponseIntentReceived(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 39
    return-void
.end method

.method public onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z
    .locals 1
    .param p1, "response"    # Lexpo/modules/notifications/notifications/model/NotificationResponse;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onNotificationsDropped()V
    .locals 0

    .line 46
    return-void
.end method
