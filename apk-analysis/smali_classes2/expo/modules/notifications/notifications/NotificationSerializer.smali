.class public Lexpo/modules/notifications/notifications/NotificationSerializer;
.super Ljava/lang/Object;
.source "NotificationSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBundle(Lexpo/modules/notifications/notifications/interfaces/INotificationContent;)Landroid/os/Bundle;
    .locals 4
    .param p0, "content"    # Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "serializedContent":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "subtitle"

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getSubText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "body"

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getColor()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getColor()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getBadgeCount()Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "badge"

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getBadgeCount()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getShouldPlayDefaultSound()Z

    move-result v1

    const-string v3, "sound"

    if-eqz v1, :cond_2

    .line 120
    const-string v1, "default"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getSoundName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 122
    const-string v1, "custom"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_1
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getPriority()Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 127
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getPriority()Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->getEnumValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_4
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getVibrationPattern()[J

    move-result-object v1

    if-eqz v1, :cond_5

    .line 130
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/notifications/notifications/RemoteMessageSerializer;->intArrayFromLongArray([J)[I

    move-result-object v1

    const-string v2, "vibrationPattern"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 132
    :cond_5
    const-string v1, "autoDismiss"

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->isAutoDismiss()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 134
    const-string v1, "categoryIdentifier"

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_6
    const-string v1, "sticky"

    invoke-interface {p0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->isSticky()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-object v0
.end method

.method public static toBundle(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/os/Bundle;
    .locals 4
    .param p0, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "serializedNotification":Landroid/os/Bundle;
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationRequest;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/Notification;->getOriginDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "date"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 56
    return-object v0
.end method

.method public static toBundle(Lexpo/modules/notifications/notifications/model/NotificationRequest;)Landroid/os/Bundle;
    .locals 13
    .param p0, "request"    # Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "serializedRequest":Landroid/os/Bundle;
    const-string v1, "identifier"

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v1

    .line 63
    .local v1, "requestTrigger":Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    const-string v4, "trigger"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v3

    invoke-static {v3}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/interfaces/INotificationContent;)Landroid/os/Bundle;

    move-result-object v3

    .line 65
    .local v3, "content":Landroid/os/Bundle;
    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 66
    .local v5, "existingContentData":Landroid/os/Bundle;
    if-nez v5, :cond_5

    .line 67
    instance-of v6, v1, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;

    const-string v7, "dataString"

    if-eqz v6, :cond_3

    move-object v6, v1

    check-cast v6, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;

    .line 68
    .local v6, "trigger":Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;
    invoke-virtual {v6}, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->getRemoteMessage()Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object v8

    .line 69
    .local v8, "message":Lcom/google/firebase/messaging/RemoteMessage;
    invoke-virtual {v8}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v9

    .line 70
    .local v9, "notification":Lcom/google/firebase/messaging/RemoteMessage$Notification;
    invoke-virtual {v8}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v10

    .line 71
    .local v10, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "body"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 72
    .local v11, "dataBody":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "notificationBody":Ljava/lang/String;
    :cond_1
    invoke-static {v11}, Lexpo/modules/notifications/UtilsKt;->isValidJSONString(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v2, :cond_2

    const-string v12, "message"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 75
    invoke-virtual {v3, v7, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {v10}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    .end local v2    # "notificationBody":Ljava/lang/String;
    .end local v8    # "message":Lcom/google/firebase/messaging/RemoteMessage;
    .end local v9    # "notification":Lcom/google/firebase/messaging/RemoteMessage$Notification;
    .end local v10    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "dataBody":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .end local v6    # "trigger":Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;
    :cond_3
    instance-of v2, v1, Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;

    if-nez v2, :cond_4

    instance-of v2, v1, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;

    if-nez v2, :cond_4

    if-nez v1, :cond_5

    .line 86
    :cond_4
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v2

    invoke-interface {v2}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getBody()Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    .local v2, "body":Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 89
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v2    # "body":Lorg/json/JSONObject;
    :cond_5
    :goto_2
    const-string v2, "content"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    return-object v0
.end method

.method public static toBundle(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Landroid/os/Bundle;
    .locals 3
    .param p0, "response"    # Lexpo/modules/notifications/notifications/model/NotificationResponse;

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "serializedResponse":Landroid/os/Bundle;
    const-string v1, "actionIdentifier"

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/NotificationResponse;->getActionIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/NotificationResponse;->getNotification()Lexpo/modules/notifications/notifications/model/Notification;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    instance-of v1, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;

    if-eqz v1, :cond_0

    .line 47
    move-object v1, p0

    check-cast v1, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;->getUserText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-object v0
.end method

.method public static toBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 98
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "result":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 102
    :cond_0
    return-object v0
.end method

.method public static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .param p0, "notification"    # Lorg/json/JSONObject;

    .line 141
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 142
    return-object v0

    .line 144
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 145
    .local v1, "notificationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    .local v2, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 149
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 150
    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_1
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    .line 152
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v5}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_2
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 156
    :cond_3
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 160
    :cond_4
    :try_start_0
    new-instance v0, Lexpo/modules/core/arguments/MapArguments;

    invoke-direct {v0, v1}, Lexpo/modules/core/arguments/MapArguments;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lexpo/modules/core/arguments/MapArguments;->toBundle()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 168
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 169
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 170
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v5    # "key":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 173
    :cond_6
    new-instance v4, Lexpo/modules/core/arguments/MapArguments;

    invoke-direct {v4, v1}, Lexpo/modules/core/arguments/MapArguments;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lexpo/modules/core/arguments/MapArguments;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    return-object v4
.end method

.method private static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 180
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 185
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toResponseBundleFromExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "serializedContent":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "body"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "body":Ljava/lang/String;
    invoke-static {v2}, Lexpo/modules/notifications/UtilsKt;->isValidJSONString(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const-string v3, "dataString"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "message"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    const-string v1, "data"

    invoke-static {p0}, Lexpo/modules/notifications/UtilsKt;->filteredBundleForJSTypeConverter(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v1, "serializedTrigger":Landroid/os/Bundle;
    const-string v3, "type"

    const-string v4, "push"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "channelId"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v3, "serializedRequest":Landroid/os/Bundle;
    const-string v4, "google.message_id"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "identifier"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v4, "trigger"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    const-string v4, "content"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v4, "serializedNotification":Landroid/os/Bundle;
    const-string v5, "google.sent_time"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "date"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 222
    const-string v5, "request"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v5, "serializedResponse":Landroid/os/Bundle;
    const-string v6, "actionIdentifier"

    const-string v7, "expo.modules.notifications.actions.DEFAULT"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v6, "notification"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 228
    return-object v5
.end method
