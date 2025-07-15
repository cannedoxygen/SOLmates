.class public Lexpo/modules/notifications/notifications/model/NotificationBehavior;
.super Ljava/lang/Object;
.source "NotificationBehavior.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPriorityOverride:Ljava/lang/String;

.field private final mShouldPlaySound:Z

.field private final mShouldSetBadge:Z

.field private final mShouldShowAlert:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lexpo/modules/notifications/notifications/model/NotificationBehavior$1;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/model/NotificationBehavior$1;-><init>()V

    sput-object v0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldShowAlert:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldPlaySound:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldSetBadge:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mPriorityOverride:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lexpo/modules/notifications/notifications/model/NotificationBehavior-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "shouldShowAlert"    # Z
    .param p2, "shouldPlaySound"    # Z
    .param p3, "shouldSetBadge"    # Z
    .param p4, "priorityOverride"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldShowAlert:Z

    .line 28
    iput-boolean p2, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldPlaySound:Z

    .line 29
    iput-boolean p3, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldSetBadge:Z

    .line 30
    iput-object p4, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mPriorityOverride:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getPriorityOverride()Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .locals 1

    .line 67
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mPriorityOverride:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mPriorityOverride:Ljava/lang/String;

    invoke-static {v0}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->fromEnumValue(Ljava/lang/String;)Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v0

    return-object v0
.end method

.method public shouldPlaySound()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldPlaySound:Z

    return v0
.end method

.method public shouldSetBadge()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldSetBadge:Z

    return v0
.end method

.method public shouldShowAlert()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldShowAlert:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldShowAlert:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldPlaySound:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mShouldSetBadge:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    iget-object v0, p0, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->mPriorityOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return-void
.end method
