.class final Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupSerializer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidXNotificationsChannelsProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;


# direct methods
.method constructor <init>(Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupSerializer$2;->this$0:Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;
    .locals 2

    .line 24
    new-instance v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    iget-object v1, p0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupSerializer$2;->this$0:Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;->getChannelSerializer()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;-><init>(Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$groupSerializer$2;->invoke()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelGroupSerializer;

    move-result-object v0

    return-object v0
.end method
