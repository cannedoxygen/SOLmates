.class public Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;
.super Lexpo/modules/notifications/notifications/model/NotificationResponse;
.source "TextInputNotificationResponse.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUserText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse$1;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse$1;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/model/NotificationResponse;-><init>(Landroid/os/Parcel;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;->mUserText:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lexpo/modules/notifications/notifications/model/NotificationAction;Lexpo/modules/notifications/notifications/model/Notification;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Lexpo/modules/notifications/notifications/model/NotificationAction;
    .param p2, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;
    .param p3, "userText"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1, p2}, Lexpo/modules/notifications/notifications/model/NotificationResponse;-><init>(Lexpo/modules/notifications/notifications/model/NotificationAction;Lexpo/modules/notifications/notifications/model/Notification;)V

    .line 13
    iput-object p3, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;->mUserText:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getUserText()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;->mUserText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    invoke-super {p0, p1, p2}, Lexpo/modules/notifications/notifications/model/NotificationResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationResponse;->mUserText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
