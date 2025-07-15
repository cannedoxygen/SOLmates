.class Lexpo/modules/notifications/notifications/model/TextInputNotificationAction$1;
.super Ljava/lang/Object;
.source "TextInputNotificationAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    new-instance v0, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;-><init>(Landroid/os/Parcel;Lexpo/modules/notifications/notifications/model/TextInputNotificationAction-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction$1;->createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;
    .locals 1
    .param p1, "size"    # I

    .line 35
    new-array v0, p1, [Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction$1;->newArray(I)[Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    move-result-object p1

    return-object p1
.end method
