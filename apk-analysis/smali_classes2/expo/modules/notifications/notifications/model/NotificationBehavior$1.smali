.class Lexpo/modules/notifications/notifications/model/NotificationBehavior$1;
.super Ljava/lang/Object;
.source "NotificationBehavior.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/notifications/model/NotificationBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/model/NotificationBehavior;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    new-instance v0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;-><init>(Landroid/os/Parcel;Lexpo/modules/notifications/notifications/model/NotificationBehavior-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/model/NotificationBehavior$1;->createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lexpo/modules/notifications/notifications/model/NotificationBehavior;
    .locals 1
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/model/NotificationBehavior$1;->newArray(I)[Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    move-result-object p1

    return-object p1
.end method
