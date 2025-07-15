.class public final Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;
.super Ljava/lang/Object;
.source "RemoteNotificationContent.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;",
        "Landroid/os/Parcelable$Creator;",
        "Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;",
        "()V",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;

    invoke-direct {v0, p1}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # Landroid/os/Parcel;

    .line 80
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;
    .locals 1
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # I

    .line 80
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent$CREATOR;->newArray(I)[Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;

    move-result-object v0

    return-object v0
.end method
