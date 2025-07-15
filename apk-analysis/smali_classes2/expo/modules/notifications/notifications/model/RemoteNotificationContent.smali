.class public final Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;
.super Ljava/lang/Object;
.source "RemoteNotificationContent.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/INotificationContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteNotificationContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteNotificationContent.kt\nexpo/modules/notifications/notifications/model/RemoteNotificationContent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0016\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 ?2\u00020\u0001:\u0001?B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u00104\u001a\u00020\u001aH\u0016J\u0008\u00105\u001a\u00020\tH\u0016J\u0018\u00106\u001a\u0004\u0018\u0001072\u0006\u00108\u001a\u000209H\u0096@\u00a2\u0006\u0002\u0010:J\u0018\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\tH\u0016R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u001fR\u0014\u0010 \u001a\u00020!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001bR\u0014\u0010&\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001bR\u0016\u0010(\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0014R\u0016\u0010*\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0014R\u0016\u0010,\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0014R\u0016\u0010.\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0014R\u0016\u00100\u001a\u0004\u0018\u000101X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006@"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;",
        "Lexpo/modules/notifications/notifications/interfaces/INotificationContent;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "remoteMessage",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "(Lcom/google/firebase/messaging/RemoteMessage;)V",
        "badgeCount",
        "",
        "getBadgeCount",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "body",
        "Lorg/json/JSONObject;",
        "getBody",
        "()Lorg/json/JSONObject;",
        "categoryId",
        "",
        "getCategoryId",
        "()Ljava/lang/String;",
        "color",
        "",
        "getColor",
        "()Ljava/lang/Number;",
        "isAutoDismiss",
        "",
        "()Z",
        "isSticky",
        "notificationData",
        "Lexpo/modules/notifications/notifications/model/NotificationData;",
        "Ljava/util/Map;",
        "priority",
        "Lexpo/modules/notifications/notifications/enums/NotificationPriority;",
        "getPriority",
        "()Lexpo/modules/notifications/notifications/enums/NotificationPriority;",
        "shouldPlayDefaultSound",
        "getShouldPlayDefaultSound",
        "shouldUseDefaultVibrationPattern",
        "getShouldUseDefaultVibrationPattern",
        "soundName",
        "getSoundName",
        "subText",
        "getSubText",
        "text",
        "getText",
        "title",
        "getTitle",
        "vibrationPattern",
        "",
        "getVibrationPattern",
        "()[J",
        "containsImage",
        "describeContents",
        "getImage",
        "Landroid/graphics/Bitmap;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "CREATOR",
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
.field public static final CREATOR:Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;


# instance fields
.field private final badgeCount:Ljava/lang/Integer;

.field private final body:Lorg/json/JSONObject;

.field private final categoryId:Ljava/lang/String;

.field private final isAutoDismiss:Z

.field private final isSticky:Z

.field private final notificationData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

.field private final shouldPlayDefaultSound:Z

.field private final soundName:Ljava/lang/String;

.field private final subText:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final vibrationPattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->CREATOR:Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-class v0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p0, v0}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;-><init>(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    .line 23
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->constructor-impl(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    .line 34
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getTitle-impl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->title:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getMessage-impl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->text:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getSound()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getShouldPlayDefaultSound-impl(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->shouldPlayDefaultSound:Z

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getSound()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getSound-impl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->soundName:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getVibrateTimings()[J

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getVibrationPattern-impl(Ljava/util/Map;)[J

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->vibrationPattern:[J

    .line 47
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getBody-impl(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->body:Lorg/json/JSONObject;

    .line 64
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getAutoDismiss-impl(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->isAutoDismiss:Z

    .line 66
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getCategoryId-impl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->categoryId:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->isSticky-impl(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->isSticky:Z

    .line 70
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getSubText-impl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->subText:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getBadge-impl(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->badgeCount:Ljava/lang/Integer;

    .line 19
    return-void
.end method


# virtual methods
.method public containsImage()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeCount()Ljava/lang/Integer;
    .locals 1

    .line 72
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->badgeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getBadgeCount()Ljava/lang/Number;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->getBadgeCount()Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 1

    .line 47
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->body:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/Number;
    .locals 3

    .line 57
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getColor()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getColor-impl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "colorSource":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 91
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, "$i$a$-let-RemoteNotificationContent$color$1":I
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-RemoteNotificationContent$color$1":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/Number;

    return-object v1
.end method

.method public getImage(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 27
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 91
    .local v2, "it":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 27
    .local v1, "$i$a$-let-RemoteNotificationContent$getImage$2":I
    const/4 v8, 0x6

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v7, p2

    invoke-static/range {v2 .. v9}, Lexpo/modules/notifications/notifications/presentation/builders/DownloadImageKt;->downloadImage$default(Landroid/net/Uri;JJLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    return-object v3

    :cond_1
    move-object v1, v3

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1    # "$i$a$-let-RemoteNotificationContent$getImage$2":I
    .end local v2    # "it":Landroid/net/Uri;
    :cond_2
    return-object v1
.end method

.method public getPriority()Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 2

    .line 50
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getPriority()I

    move-result v0

    .line 51
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->HIGH:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    .line 53
    :goto_0
    return-object v0
.end method

.method public getShouldPlayDefaultSound()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->shouldPlayDefaultSound:Z

    return v0
.end method

.method public getShouldUseDefaultVibrationPattern()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getDefaultVibrateSettings()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->notificationData:Ljava/util/Map;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/model/NotificationData;->getShouldUseDefaultVibrationPattern-impl(Ljava/util/Map;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getSoundName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->soundName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->subText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrationPattern()[J
    .locals 1

    .line 45
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->vibrationPattern:[J

    return-object v0
.end method

.method public isAutoDismiss()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->isAutoDismiss:Z

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->isSticky:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    return-void
.end method
