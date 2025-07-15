.class public Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;
.super Lexpo/modules/notifications/notifications/model/NotificationAction;
.source "TextInputNotificationAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPlaceholder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction$1;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction$1;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/model/NotificationAction;-><init>(Landroid/os/Parcel;)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->mPlaceholder:Ljava/lang/String;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lexpo/modules/notifications/notifications/model/TextInputNotificationAction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "opensAppToForeground"    # Z
    .param p4, "placeholder"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/notifications/notifications/model/NotificationAction;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iput-object p4, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->mPlaceholder:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getPlaceholder()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->mPlaceholder:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 23
    invoke-super {p0, p1, p2}, Lexpo/modules/notifications/notifications/model/NotificationAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->mPlaceholder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return-void
.end method
