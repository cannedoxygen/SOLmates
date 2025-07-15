.class public Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;
.super Ljava/lang/Object;
.source "AndroidXNotificationsChannelGroupManager.java"

# interfaces
.implements Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;


# instance fields
.field private final mNotificationManager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 23
    return-void
.end method


# virtual methods
.method protected configureGroupWithOptions(Ljava/lang/Object;Lexpo/modules/core/arguments/ReadableArguments;)V
    .locals 3
    .param p1, "maybeGroup"    # Ljava/lang/Object;
    .param p2, "groupOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 57
    instance-of v0, p1, Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/NotificationChannelGroup;

    .line 60
    .local v0, "group":Landroid/app/NotificationChannelGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 61
    const-string v1, "description"

    invoke-interface {p2, v1}, Lexpo/modules/core/arguments/ReadableArguments;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {p2, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void

    .line 58
    .end local v0    # "group":Landroid/app/NotificationChannelGroup;
    :cond_1
    return-void
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;Ljava/lang/CharSequence;Lexpo/modules/core/arguments/ReadableArguments;)Landroid/app/NotificationChannelGroup;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "groupOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 42
    new-instance v0, Landroid/app/NotificationChannelGroup;

    invoke-direct {v0, p1, p2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 43
    .local v0, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0, v0, p3}, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;->configureGroupWithOptions(Ljava/lang/Object;Lexpo/modules/core/arguments/ReadableArguments;)V

    .line 44
    iget-object v1, p0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 45
    return-object v0
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 1
    .param p1, "channelGroupId"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
