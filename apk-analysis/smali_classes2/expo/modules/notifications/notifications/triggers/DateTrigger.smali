.class public final Lexpo/modules/notifications/notifications/triggers/DateTrigger;
.super Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;
.source "NotificationTriggers.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/triggers/DateTrigger;",
        "Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;",
        "Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;",
        "channelId",
        "",
        "timestamp",
        "",
        "(Ljava/lang/String;J)V",
        "getChannelId",
        "()Ljava/lang/String;",
        "getTimestamp",
        "()J",
        "nextTriggerDate",
        "Ljava/util/Date;",
        "toBundle",
        "Landroid/os/Bundle;",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lexpo/modules/notifications/notifications/triggers/DateTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/notifications/notifications/triggers/DateTrigger$Creator;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/triggers/DateTrigger$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 56
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->channelId:Ljava/lang/String;

    iput-wide p2, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->timestamp:J

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->timestamp:J

    return-wide v0
.end method

.method public nextTriggerDate()Ljava/util/Date;
    .locals 4

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 66
    .local v0, "now":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 68
    .local v1, "triggerDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x0

    return-object v2

    .line 72
    :cond_0
    return-object v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 58
    nop

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "date"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 60
    const-string v1, "repeats"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 59
    nop

    .line 61
    iget-wide v1, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "value"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 59
    nop

    .line 58
    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->bundleWithChannelId([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lexpo/modules/notifications/notifications/triggers/DateTrigger;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
