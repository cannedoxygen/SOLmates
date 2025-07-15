.class public final Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger$Creator;
.super Ljava/lang/Object;
.source "NotificationTriggers.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;
    .locals 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/Date;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;-><init>(Ljava/lang/String;JZLjava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger$Creator;->createFromParcel(Landroid/os/Parcel;)Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;
    .locals 1

    new-array v0, p1, [Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger$Creator;->newArray(I)[Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;

    move-result-object v0

    return-object v0
.end method
