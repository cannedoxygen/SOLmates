.class final Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;
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
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;->INSTANCE:Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;
    .locals 1

    .line 20
    new-instance v0, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider$channelSerializer$2;->invoke()Lexpo/modules/notifications/notifications/channels/serializers/ExpoNotificationsChannelSerializer;

    move-result-object v0

    return-object v0
.end method
