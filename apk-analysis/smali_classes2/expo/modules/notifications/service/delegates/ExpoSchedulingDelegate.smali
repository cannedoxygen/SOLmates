.class public final Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;
.super Ljava/lang/Object;
.source "ExpoSchedulingDelegate.kt"

# interfaces
.implements Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoSchedulingDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoSchedulingDelegate.kt\nexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n1855#2,2:124\n1855#2,2:126\n1855#2,2:128\n*S KotlinDebug\n*F\n+ 1 ExpoSchedulingDelegate.kt\nexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate\n*L\n23#1:124,2\n93#1:126,2\n100#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0016\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0010H\u0016J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0011H\u0016J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;",
        "Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "alarmManager",
        "Landroid/app/AlarmManager;",
        "getAlarmManager",
        "()Landroid/app/AlarmManager;",
        "getContext",
        "()Landroid/content/Context;",
        "store",
        "Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;",
        "getStore",
        "()Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;",
        "getAllScheduledNotifications",
        "",
        "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
        "getScheduledNotification",
        "identifier",
        "",
        "removeAllScheduledNotifications",
        "",
        "removeScheduledNotifications",
        "identifiers",
        "scheduleNotification",
        "request",
        "setupAlarm",
        "triggerAtMillis",
        "",
        "operation",
        "Landroid/app/PendingIntent;",
        "setupScheduledNotifications",
        "triggerNotification",
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


# instance fields
.field private final alarmManager:Landroid/app/AlarmManager;

.field private final context:Landroid/content/Context;

.field private final store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    .line 19
    new-instance v0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    .line 20
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->alarmManager:Landroid/app/AlarmManager;

    .line 18
    return-void
.end method

.method private final setupAlarm(JLandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "triggerAtMillis"    # J
    .param p3, "operation"    # Landroid/app/PendingIntent;

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->alarmManager:Landroid/app/AlarmManager;

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 114
    invoke-static {v0, v2, p1, p2, p3}, Landroidx/core/app/AlarmManagerCompat;->setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->alarmManager:Landroid/app/AlarmManager;

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 107
    invoke-static {v0, v2, p1, p2, p3}, Landroidx/core/app/AlarmManagerCompat;->setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 121
    :goto_1
    return-void
.end method


# virtual methods
.method protected final getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->alarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAllScheduledNotifications()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    invoke-virtual {v0}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;->getAllNotificationRequests()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getScheduledNotification(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 37
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    invoke-virtual {v1, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;->getNotificationRequest(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    nop

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 38
    :catch_2
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 44
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method protected final getStore()Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    return-object v0
.end method

.method public removeAllScheduledNotifications()V
    .locals 9

    .line 100
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    invoke-virtual {v0}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;->removeAllNotificationRequests()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 128
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 101
    .local v5, "$i$a$-forEach-ExpoSchedulingDelegate$removeAllScheduledNotifications$1":I
    iget-object v6, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->alarmManager:Landroid/app/AlarmManager;

    sget-object v7, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v8, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    invoke-virtual {v7, v8, v4}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationTrigger(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 102
    nop

    .line 128
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-forEach-ExpoSchedulingDelegate$removeAllScheduledNotifications$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 129
    :cond_0
    nop

    .line 103
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public removeScheduledNotifications(Ljava/util/Collection;)V
    .locals 9
    .param p1, "identifiers"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "identifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 126
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 94
    .local v5, "$i$a$-forEach-ExpoSchedulingDelegate$removeScheduledNotifications$1":I
    iget-object v6, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->alarmManager:Landroid/app/AlarmManager;

    sget-object v7, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v8, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    invoke-virtual {v7, v8, v4}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationTrigger(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 95
    iget-object v6, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    invoke-virtual {v6, v4}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;->removeNotificationRequest(Ljava/lang/String;)V

    .line 96
    nop

    .line 126
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-forEach-ExpoSchedulingDelegate$removeScheduledNotifications$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 127
    :cond_0
    nop

    .line 97
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public scheduleNotification(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V
    .locals 11
    .param p1, "request"    # Lexpo/modules/notifications/notifications/model/NotificationRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    sget-object v1, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v2, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    new-instance v3, Lexpo/modules/notifications/notifications/model/Notification;

    invoke-direct {v3, p1}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lexpo/modules/notifications/service/NotificationsService$Companion;->receive$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    .line 50
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v0

    instance-of v0, v0, Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;

    const-string v1, "Notification request \""

    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v0

    instance-of v0, v0, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;

    if-eqz v0, :cond_1

    .line 55
    sget-object v2, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v3, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    new-instance v4, Lexpo/modules/notifications/notifications/model/Notification;

    invoke-direct {v4, p1}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lexpo/modules/notifications/service/NotificationsService$Companion;->receive$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    .line 56
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not have a schedulable trigger (it\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Refusing to schedule."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type expo.modules.notifications.notifications.interfaces.SchedulableNotificationTrigger"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;

    invoke-interface {v0}, Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;->nextTriggerDate()Ljava/util/Date;

    move-result-object v0

    .local v0, "nextTriggerDate":Ljava/util/Date;
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$a$-let-ExpoSchedulingDelegate$scheduleNotification$1":I
    const-string v3, "getIdentifier(...)"

    if-nez v0, :cond_3

    .line 63
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" will not trigger in the future, removing."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "expo-notifications"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v5, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v6, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lexpo/modules/notifications/service/NotificationsService$Companion;->removeScheduledNotification$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    invoke-virtual {v1, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;->saveNotificationRequest(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V

    .line 67
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v1, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v6, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationTrigger(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, v4, v5, v1}, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->setupAlarm(JLandroid/app/PendingIntent;)V

    .line 69
    :goto_0
    nop

    .line 61
    .end local v0    # "nextTriggerDate":Ljava/util/Date;
    .end local v2    # "$i$a$-let-ExpoSchedulingDelegate$scheduleNotification$1":I
    nop

    .line 70
    return-void
.end method

.method public setupScheduledNotifications()V
    .locals 11

    .line 23
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    invoke-virtual {v0}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;->getAllNotificationRequests()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .local v4, "it":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    const/4 v5, 0x0

    .line 24
    .local v5, "$i$a$-forEach-ExpoSchedulingDelegate$setupScheduledNotifications$1":I
    nop

    .line 25
    :try_start_0
    invoke-virtual {p0, v4}, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->scheduleNotification(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 26
    :catch_0
    move-exception v6

    .line 27
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notification "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " could not have been scheduled: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "expo-notifications"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 124
    .end local v4    # "it":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .end local v5    # "$i$a$-forEach-ExpoSchedulingDelegate$setupScheduledNotifications$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 125
    :cond_0
    nop

    .line 31
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public triggerNotification(Ljava/lang/String;)V
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;

    const-string v0, ", removing. "

    const-string v1, "An exception occurred while triggering notification "

    const-string v2, "expo-notifications"

    const-string v3, "identifier"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    nop

    .line 74
    :try_start_0
    iget-object v3, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;

    invoke-virtual {v3, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationsStore;->getNotificationRequest(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .local v3, "notificationRequest":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    sget-object v4, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v5, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    new-instance v6, Lexpo/modules/notifications/notifications/model/Notification;

    invoke-direct {v6, v3}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lexpo/modules/notifications/service/NotificationsService$Companion;->receive$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    .line 76
    sget-object v4, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v5, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, v3

    invoke-static/range {v4 .. v9}, Lexpo/modules/notifications/service/NotificationsService$Companion;->schedule$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationRequest;Landroid/os/ResultReceiver;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/InvalidClassException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "notificationRequest":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 88
    sget-object v4, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v5, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lexpo/modules/notifications/service/NotificationsService$Companion;->removeScheduledNotification$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/io/InvalidClassException;
    invoke-virtual {v3}, Ljava/io/InvalidClassException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v3}, Ljava/io/InvalidClassException;->printStackTrace()V

    .line 84
    sget-object v4, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v5, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lexpo/modules/notifications/service/NotificationsService$Companion;->removeScheduledNotification$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    .end local v3    # "e":Ljava/io/InvalidClassException;
    goto :goto_0

    .line 77
    :catch_2
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 80
    sget-object v4, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v5, p0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;->context:Landroid/content/Context;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lexpo/modules/notifications/service/NotificationsService$Companion;->removeScheduledNotification$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    .line 90
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void
.end method
