.class public Lexpo/modules/notifications/notifications/model/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/model/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOriginDate:Ljava/util/Date;

.field private mRequest:Lexpo/modules/notifications/notifications/model/NotificationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lexpo/modules/notifications/notifications/model/Notification$1;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/model/Notification$1;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/model/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/Notification;->mRequest:Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/Notification;->mOriginDate:Ljava/util/Date;

    .line 27
    return-void
.end method

.method public constructor <init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V
    .locals 1
    .param p1, "request"    # Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .line 16
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;Ljava/util/Date;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;Ljava/util/Date;)V
    .locals 0
    .param p1, "request"    # Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .param p2, "date"    # Ljava/util/Date;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/notifications/notifications/model/Notification;->mRequest:Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .line 21
    iput-object p2, p0, Lexpo/modules/notifications/notifications/model/Notification;->mOriginDate:Ljava/util/Date;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/Notification;->mRequest:Lexpo/modules/notifications/notifications/model/NotificationRequest;

    return-object v0
.end method

.method public getOriginDate()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/Notification;->mOriginDate:Ljava/util/Date;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/Notification;->mRequest:Lexpo/modules/notifications/notifications/model/NotificationRequest;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/Notification;->mOriginDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    return-void
.end method
