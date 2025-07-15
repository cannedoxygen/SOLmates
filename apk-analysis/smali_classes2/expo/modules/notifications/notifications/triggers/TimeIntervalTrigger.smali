.class public final Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;
.super Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;
.source "NotificationTriggers.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\n\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;",
        "Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;",
        "Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;",
        "channelId",
        "",
        "timeInterval",
        "",
        "isRepeating",
        "",
        "triggerDate",
        "Ljava/util/Date;",
        "(Ljava/lang/String;JZLjava/util/Date;)V",
        "getChannelId",
        "()Ljava/lang/String;",
        "()Z",
        "getTimeInterval",
        "()J",
        "nextTriggerDate",
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
            "Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final isRepeating:Z

.field private final timeInterval:J

.field private triggerDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger$Creator;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/util/Date;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "timeInterval"    # J
    .param p4, "isRepeating"    # Z
    .param p5, "triggerDate"    # Ljava/util/Date;

    const-string v0, "triggerDate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;-><init>(Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->channelId:Ljava/lang/String;

    .line 115
    iput-wide p2, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->timeInterval:J

    .line 116
    iput-boolean p4, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->isRepeating:Z

    .line 117
    iput-object p5, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->triggerDate:Ljava/util/Date;

    .line 113
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JZLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 113
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 117
    new-instance p5, Ljava/util/Date;

    new-instance p6, Ljava/util/Date;

    invoke-direct {p6}, Ljava/util/Date;-><init>()V

    invoke-virtual {p6}, Ljava/util/Date;->getTime()J

    move-result-wide p6

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long/2addr v0, p2

    add-long/2addr p6, v0

    invoke-direct {p5, p6, p7}, Ljava/util/Date;-><init>(J)V

    move-object v5, p5

    goto :goto_0

    .line 113
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;-><init>(Ljava/lang/String;JZLjava/util/Date;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeInterval()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->timeInterval:J

    return-wide v0
.end method

.method public final isRepeating()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->isRepeating:Z

    return v0
.end method

.method public nextTriggerDate()Ljava/util/Date;
    .locals 8

    .line 126
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 128
    .local v0, "now":Ljava/util/Date;
    iget-boolean v1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->isRepeating:Z

    if-eqz v1, :cond_0

    .line 129
    :goto_0
    iget-object v1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->triggerDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->triggerDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->timeInterval:J

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->triggerDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x0

    return-object v1

    .line 138
    :cond_1
    iget-object v1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->triggerDate:Ljava/util/Date;

    return-object v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 119
    nop

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "timeInterval"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 121
    iget-boolean v1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->isRepeating:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "repeats"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 120
    nop

    .line 122
    iget-wide v1, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->timeInterval:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "seconds"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 120
    nop

    .line 119
    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->bundleWithChannelId([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->timeInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->isRepeating:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;->triggerDate:Ljava/util/Date;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
