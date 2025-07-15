.class public final Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;
.super Lexpo/modules/notifications/notifications/channels/AbstractNotificationsChannelsProvider;
.source "AndroidXNotificationsChannelsProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001b\u0010\u0005\u001a\u00020\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u00118VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\n\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;",
        "Lexpo/modules/notifications/notifications/channels/AbstractNotificationsChannelsProvider;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "channelManager",
        "Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;",
        "getChannelManager",
        "()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;",
        "channelManager$delegate",
        "Lkotlin/Lazy;",
        "channelSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;",
        "getChannelSerializer",
        "()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;",
        "channelSerializer$delegate",
        "groupManager",
        "Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;",
        "getGroupManager",
        "()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;",
        "groupManager$delegate",
        "groupSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;",
        "getGroupSerializer",
        "()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;",
        "groupSerializer$delegate",
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
.field private final channelManager$delegate:Lkotlin/Lazy;

.field private final channelSerializer$delegate:Lkotlin/Lazy;

.field private final groupManager$delegate:Lkotlin/Lazy;

.field private final groupSerializer$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/channels/AbstractNotificationsChannelsProvider;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupManager$2;

    invoke-direct {v0, p1}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupManager$2;-><init>(Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupManager$delegate:Lkotlin/Lazy;

    .line 15
    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelManager$2;

    invoke-direct {v0, p1, p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelManager$2;-><init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelManager$delegate:Lkotlin/Lazy;

    .line 19
    sget-object v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;->INSTANCE:Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelSerializer$delegate:Lkotlin/Lazy;

    .line 23
    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupSerializer$2;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupSerializer$2;-><init>(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupSerializer$delegate:Lkotlin/Lazy;

    .line 9
    return-void
.end method


# virtual methods
.method public getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;

    return-object v0
.end method

.method public bridge synthetic getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getChannelManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelManager;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    return-object v0
.end method

.method public getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->channelSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    return-object v0
.end method

.method public bridge synthetic getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    return-object v0
.end method

.method public getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    return-object v0
.end method

.method public bridge synthetic getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getGroupManager()Lexpo/modules/notifications/notifications/channels/managers/AndroidXNotificationsChannelGroupManager;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    return-object v0
.end method

.method public getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->groupSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    return-object v0
.end method

.method public bridge synthetic getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getGroupSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    return-object v0
.end method
