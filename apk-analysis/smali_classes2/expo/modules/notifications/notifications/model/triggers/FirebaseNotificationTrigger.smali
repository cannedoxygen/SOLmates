.class public final Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;
.super Ljava/lang/Object;
.source "FirebaseNotificationTrigger.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0017J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000bH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "remoteMessage",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "(Lcom/google/firebase/messaging/RemoteMessage;)V",
        "getRemoteMessage",
        "()Lcom/google/firebase/messaging/RemoteMessage;",
        "describeContents",
        "",
        "getNotificationChannel",
        "",
        "toBundle",
        "Landroid/os/Bundle;",
        "writeToParcel",
        "",
        "dest",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger$Companion;


# instance fields
.field private final remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->Companion:Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger$Companion;

    .line 46
    new-instance v0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger$Companion$CREATOR$1;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 18
    nop

    .line 19
    const-class v0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/RemoteMessage;

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0, v0}, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;-><init>(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 21
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteMessage from readParcelable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationChannel()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channelId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    .local v0, "channelId":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger$DefaultImpls;->getNotificationChannel(Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final getRemoteMessage()Lcom/google/firebase/messaging/RemoteMessage;
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "push"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 32
    iget-object v1, p0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/RemoteMessageSerializer;->toBundle(Lcom/google/firebase/messaging/RemoteMessage;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "remoteMessage"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    nop

    .line 30
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    check-cast v0, Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
