.class public abstract Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;
.super Ljava/lang/Object;
.source "BaseNotificationBuilder.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseNotificationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseNotificationBuilder.kt\nexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 +2\u00020\u0001:\u0001+B\u0017\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010&\u001a\u00020\'J\u0008\u0010(\u001a\u00020\u0010H\u0005J\u0012\u0010)\u001a\u00020\u00012\u0008\u0010*\u001a\u0004\u0018\u00010\u0016H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006,"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;",
        "context",
        "Landroid/content/Context;",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;)V",
        "channelId",
        "",
        "getChannelId",
        "()Ljava/lang/String;",
        "getContext",
        "()Landroid/content/Context;",
        "fallbackChannelName",
        "getFallbackChannelName",
        "fallbackNotificationChannel",
        "Landroid/app/NotificationChannel;",
        "getFallbackNotificationChannel",
        "()Landroid/app/NotificationChannel;",
        "getNotification",
        "()Lexpo/modules/notifications/notifications/model/Notification;",
        "<set-?>",
        "Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
        "notificationBehavior",
        "getNotificationBehavior",
        "()Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
        "notificationContent",
        "Lexpo/modules/notifications/notifications/interfaces/INotificationContent;",
        "getNotificationContent",
        "()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "getNotificationManager",
        "()Landroid/app/NotificationManager;",
        "notificationsChannelManager",
        "Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;",
        "getNotificationsChannelManager",
        "()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;",
        "createBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "createFallbackChannel",
        "setAllowedBehavior",
        "behavior",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder$Companion;

.field private static final FALLBACK_CHANNEL_ID:Ljava/lang/String; = "expo_notifications_fallback_notification_channel"

.field private static final FALLBACK_CHANNEL_IMPORTANCE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final notification:Lexpo/modules/notifications/notifications/model/Notification;

.field private notificationBehavior:Lexpo/modules/notifications/notifications/model/NotificationBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->Companion:Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder$Companion;

    .line 143
    const/4 v0, 0x4

    sput v0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->FALLBACK_CHANNEL_IMPORTANCE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->notification:Lexpo/modules/notifications/notifications/model/Notification;

    return-void
.end method

.method private final getFallbackChannelName()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    sget v1, Lexpo/modules/notifications/R$string;->expo_notifications_fallback_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getFallbackNotificationChannel()Landroid/app/NotificationChannel;
    .locals 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "expo_notifications_fallback_notification_channel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 102
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->createFallbackChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private final getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 134
    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public final createBuilder()Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .line 35
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 35
    .local v1, "$i$a$-let-BaseNotificationBuilder$createBuilder$builder$1":I
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-BaseNotificationBuilder$createBuilder$builder$1":I
    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v2

    .line 36
    .local v0, "builder":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method protected final createFallbackChannel()Landroid/app/NotificationChannel;
    .locals 4

    .line 114
    new-instance v0, Landroid/app/NotificationChannel;

    .line 115
    nop

    .line 116
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getFallbackChannelName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 117
    sget v2, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->FALLBACK_CHANNEL_IMPORTANCE:I

    .line 114
    const-string v3, "expo_notifications_fallback_notification_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 119
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 121
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 122
    return-object v0
.end method

.method protected final getChannelId()Ljava/lang/String;
    .locals 7

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 46
    return-object v2

    .line 49
    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->notification:Lexpo/modules/notifications/notifications/model/Notification;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v2

    :cond_1
    move-object v0, v2

    .line 50
    .local v0, "trigger":Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;
    const-string v1, "format(...)"

    const-string v2, "expo_notifications_fallback_notification_channel"

    const-string v3, "notifications"

    if-nez v0, :cond_2

    .line 52
    nop

    .line 53
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 54
    nop

    .line 55
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 53
    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Couldn\'t get channel for the notifications - trigger is \'null\'. Fallback to \'%s\' channel"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getFallbackNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    :cond_2
    invoke-interface {v0}, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;->getNotificationChannel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 62
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getFallbackNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    .local v4, "requestedChannelId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getNotificationsChannelManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 64
    nop

    .line 66
    .local v5, "channelForRequestedId":Landroid/app/NotificationChannel;
    if-nez v5, :cond_4

    .line 68
    nop

    .line 69
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 70
    nop

    .line 71
    nop

    .line 72
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 71
    nop

    .line 69
    const/4 v6, 0x2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Channel \'%s\' doesn\'t exists. Fallback to \'%s\' channel"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->getFallbackNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 78
    :cond_4
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getNotification()Lexpo/modules/notifications/notifications/model/Notification;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->notification:Lexpo/modules/notifications/notifications/model/Notification;

    return-object v0
.end method

.method protected final getNotificationBehavior()Lexpo/modules/notifications/notifications/model/NotificationBehavior;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->notificationBehavior:Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    return-object v0
.end method

.method protected final getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;
    .locals 2

    .line 147
    iget-object v0, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->notification:Lexpo/modules/notifications/notifications/model/Notification;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v0

    const-string v1, "getContent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNotificationsChannelManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 4

    .line 82
    new-instance v0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;

    .line 83
    iget-object v1, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    .line 84
    new-instance v2, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    iget-object v3, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    .line 82
    invoke-direct {v0, v1, v2}, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;-><init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;)V

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    .line 85
    return-object v0
.end method

.method public setAllowedBehavior(Lexpo/modules/notifications/notifications/model/NotificationBehavior;)Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;
    .locals 1
    .param p1, "behavior"    # Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    .line 30
    iput-object p1, p0, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;->notificationBehavior:Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    .line 31
    move-object v0, p0

    check-cast v0, Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;

    return-object v0
.end method
