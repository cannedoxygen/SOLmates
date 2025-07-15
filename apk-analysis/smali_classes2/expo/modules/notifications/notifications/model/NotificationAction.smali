.class public Lexpo/modules/notifications/notifications/model/NotificationAction;
.super Ljava/lang/Object;
.source "NotificationAction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/model/NotificationAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIdentifier:Ljava/lang/String;

.field private final mOpensAppToForeground:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lexpo/modules/notifications/notifications/model/NotificationAction$1;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/model/NotificationAction$1;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/model/NotificationAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mIdentifier:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mTitle:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mOpensAppToForeground:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "opensAppToForeground"    # Z

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mIdentifier:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mTitle:Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mOpensAppToForeground:Z

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public opensAppToForeground()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mOpensAppToForeground:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 33
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationAction;->mOpensAppToForeground:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    return-void
.end method
