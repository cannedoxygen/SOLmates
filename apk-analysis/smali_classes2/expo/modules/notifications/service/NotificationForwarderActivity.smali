.class public final Lexpo/modules/notifications/service/NotificationForwarderActivity;
.super Landroid/app/Activity;
.source "NotificationForwarderActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/notifications/service/NotificationForwarderActivity;",
        "Landroid/app/Activity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "expo-notifications_debug"
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

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationResponseBroadcastIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 17
    nop

    .line 19
    .local v0, "broadcastIntent":Landroid/content/Intent;
    sget-object v1, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {v1, v0}, Lexpo/modules/notifications/service/NotificationsService$Companion;->getNotificationResponseFromBroadcastIntent(Landroid/content/Intent;)Lexpo/modules/notifications/notifications/model/NotificationResponse;

    move-result-object v1

    .line 20
    .local v1, "notificationResponse":Lexpo/modules/notifications/notifications/model/NotificationResponse;
    sget-object v2, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->openAppToForeground(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationResponse;)V

    .line 21
    invoke-virtual {p0, v0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationForwarderActivity;->finish()V

    .line 23
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 29
    sget-boolean v0, Lexpo/modules/notifications/BuildConfig;->DEBUG:Z

    if-nez v0, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
