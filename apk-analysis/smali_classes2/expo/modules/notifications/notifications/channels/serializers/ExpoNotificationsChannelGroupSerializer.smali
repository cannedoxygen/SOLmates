.class public Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;
.super Ljava/lang/Object;
.source "ExpoNotificationsChannelGroupSerializer.java"

# interfaces
.implements Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;


# instance fields
.field private mChannelSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;)V
    .locals 0
    .param p1, "channelSerializer"    # Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;->mChannelSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    .line 21
    return-void
.end method

.method private toList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 49
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 51
    .local v2, "channel":Landroid/app/NotificationChannel;
    iget-object v3, p0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;->mChannelSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    invoke-interface {v3, v2}, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;->toBundle(Landroid/app/NotificationChannel;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    goto :goto_0

    .line 53
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .locals 1
    .param p1, "channel"    # Landroid/app/NotificationChannelGroup;

    .line 44
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(Landroid/app/NotificationChannelGroup;)Landroid/os/Bundle;
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;

    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;->getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 34
    const-string v1, "description"

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "isBlocked"

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;->toList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "channels"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    return-object v0
.end method
