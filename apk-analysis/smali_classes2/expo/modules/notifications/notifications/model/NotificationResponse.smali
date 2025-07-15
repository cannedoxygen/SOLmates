.class public Lexpo/modules/notifications/notifications/model/NotificationResponse;
.super Ljava/lang/Object;
.source "NotificationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ACTION_IDENTIFIER:Ljava/lang/String; = "expo.modules.notifications.actions.DEFAULT"


# instance fields
.field private mAction:Lexpo/modules/notifications/notifications/model/NotificationAction;

.field private mNotification:Lexpo/modules/notifications/notifications/model/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lexpo/modules/notifications/notifications/model/NotificationResponse$1;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/model/NotificationResponse$1;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/model/NotificationAction;

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mAction:Lexpo/modules/notifications/notifications/model/NotificationAction;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/model/Notification;

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    .line 53
    return-void
.end method

.method public constructor <init>(Lexpo/modules/notifications/notifications/model/NotificationAction;Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 0
    .param p1, "action"    # Lexpo/modules/notifications/notifications/model/NotificationAction;
    .param p2, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mAction:Lexpo/modules/notifications/notifications/model/NotificationAction;

    .line 18
    iput-object p2, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Lexpo/modules/notifications/notifications/model/NotificationAction;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mAction:Lexpo/modules/notifications/notifications/model/NotificationAction;

    return-object v0
.end method

.method public getActionIdentifier()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mAction:Lexpo/modules/notifications/notifications/model/NotificationAction;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationAction;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Lexpo/modules/notifications/notifications/model/Notification;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mAction:Lexpo/modules/notifications/notifications/model/NotificationAction;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationResponse;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    return-void
.end method
