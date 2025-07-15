.class public Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;
.super Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;
.source "ArgumentsNotificationContentBuilder.java"


# static fields
.field private static final AUTO_DISMISS_KEY:Ljava/lang/String; = "autoDismiss"

.field private static final BADGE_KEY:Ljava/lang/String; = "badge"

.field private static final BODY_KEY:Ljava/lang/String; = "data"

.field private static final CATEGORY_IDENTIFIER_KEY:Ljava/lang/String; = "categoryIdentifier"

.field private static final COLOR_KEY:Ljava/lang/String; = "color"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field private static final SOUND_KEY:Ljava/lang/String; = "sound"

.field private static final STICKY_KEY:Ljava/lang/String; = "sticky"

.field private static final SUBTITLE_KEY:Ljava/lang/String; = "subtitle"

.field private static final TEXT_KEY:Ljava/lang/String; = "body"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final VIBRATE_KEY:Ljava/lang/String; = "vibrate"


# instance fields
.field private mSoundResolver:Lexpo/modules/notifications/notifications/SoundResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;-><init>()V

    .line 36
    new-instance v0, Lexpo/modules/notifications/notifications/SoundResolver;

    invoke-direct {v0, p1}, Lexpo/modules/notifications/notifications/SoundResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->mSoundResolver:Lexpo/modules/notifications/notifications/SoundResolver;

    .line 37
    return-void
.end method


# virtual methods
.method protected getAutoDismiss(Lexpo/modules/core/arguments/ReadableArguments;)Z
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 137
    const-string v0, "autoDismiss"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getBadgeCount(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/Number;
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 66
    const-string v0, "badge"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getBody(Lexpo/modules/core/arguments/ReadableArguments;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 95
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "data"

    invoke-interface {p1, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 96
    .local v1, "body":Ljava/util/Map;
    if-eqz v1, :cond_0

    .line 97
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 99
    :cond_0
    return-object v0

    .line 100
    .end local v1    # "body":Ljava/util/Map;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/NullPointerException;
    return-object v0
.end method

.method protected getCategoryId(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 142
    const-string v0, "categoryIdentifier"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getColor(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/Number;
    .locals 4
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 71
    const-string v0, "color"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "expo-notifications"

    const-string v3, "Could not have parsed color passed in notification."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v1
.end method

.method protected getPriority(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 131
    const-string v0, "priority"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "priorityString":Ljava/lang/String;
    invoke-static {v0}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->fromEnumValue(Ljava/lang/String;)Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v1

    return-object v1
.end method

.method protected getSound(Lexpo/modules/core/arguments/ReadableArguments;)Landroid/net/Uri;
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 88
    const-string v0, "sound"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "soundValue":Ljava/lang/String;
    iget-object v1, p0, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->mSoundResolver:Lexpo/modules/notifications/notifications/SoundResolver;

    invoke-virtual {v1, v0}, Lexpo/modules/notifications/notifications/SoundResolver;->resolve(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected getSticky(Lexpo/modules/core/arguments/ReadableArguments;)Z
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 147
    const-string v0, "sticky"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getVibrationPattern(Lexpo/modules/core/arguments/ReadableArguments;)[J
    .locals 5
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 111
    :try_start_0
    const-string v0, "vibrate"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "vibrateJsonArray":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 114
    .local v1, "pattern":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    new-instance v3, Lexpo/modules/notifications/notifications/channels/InvalidVibrationPatternException;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lexpo/modules/notifications/notifications/channels/InvalidVibrationPatternException;-><init>(ILjava/lang/Object;)V

    .end local p1    # "payload":Lexpo/modules/core/arguments/ReadableArguments;
    throw v3
    :try_end_0
    .catch Lexpo/modules/notifications/notifications/channels/InvalidVibrationPatternException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "i":I
    .restart local p1    # "payload":Lexpo/modules/core/arguments/ReadableArguments;
    :cond_1
    return-object v1

    .line 125
    .end local v0    # "vibrateJsonArray":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v1    # "pattern":[J
    :cond_2
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lexpo/modules/notifications/notifications/channels/InvalidVibrationPatternException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set custom vibration pattern from the notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/channels/InvalidVibrationPatternException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expo-notifications"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Lexpo/modules/notifications/notifications/channels/InvalidVibrationPatternException;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPayload(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 40
    const-string v0, "title"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->setTitle(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 41
    const-string v1, "subtitle"

    invoke-interface {p1, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setSubtitle(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 42
    const-string v1, "body"

    invoke-interface {p1, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setText(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getBody(Lexpo/modules/core/arguments/ReadableArguments;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setBody(Lorg/json/JSONObject;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getPriority(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setPriority(Lexpo/modules/notifications/notifications/enums/NotificationPriority;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getBadgeCount(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setBadgeCount(Ljava/lang/Number;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getColor(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setColor(Ljava/lang/Number;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getAutoDismiss(Lexpo/modules/core/arguments/ReadableArguments;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setAutoDismiss(Z)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getCategoryId(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setCategoryId(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getSticky(Lexpo/modules/core/arguments/ReadableArguments;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setSticky(Z)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    .line 51
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->shouldPlayDefaultSound(Lexpo/modules/core/arguments/ReadableArguments;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->useDefaultSound()Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getSound(Lexpo/modules/core/arguments/ReadableArguments;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->setSound(Landroid/net/Uri;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->shouldUseDefaultVibrationPattern(Lexpo/modules/core/arguments/ReadableArguments;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->useDefaultVibrationPattern()Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getVibrationPattern(Lexpo/modules/core/arguments/ReadableArguments;)[J

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->setVibrationPattern([J)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    .line 62
    :goto_1
    return-object p0
.end method

.method protected shouldPlayDefaultSound(Lexpo/modules/core/arguments/ReadableArguments;)Z
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 79
    const-string v0, "sound"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 80
    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->getSound(Lexpo/modules/core/arguments/ReadableArguments;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected shouldUseDefaultVibrationPattern(Lexpo/modules/core/arguments/ReadableArguments;)Z
    .locals 2
    .param p1, "payload"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 106
    const-string v0, "vibrate"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lexpo/modules/core/arguments/ReadableArguments;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
