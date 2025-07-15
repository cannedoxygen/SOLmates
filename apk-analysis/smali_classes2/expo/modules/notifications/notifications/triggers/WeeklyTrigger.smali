.class public final Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;
.super Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;
.source "NotificationTriggers.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\tJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;",
        "Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;",
        "Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;",
        "channelId",
        "",
        "weekday",
        "",
        "hour",
        "minute",
        "(Ljava/lang/String;III)V",
        "getChannelId",
        "()Ljava/lang/String;",
        "getHour",
        "()I",
        "getMinute",
        "getWeekday",
        "nextTriggerDate",
        "Ljava/util/Date;",
        "toBundle",
        "Landroid/os/Bundle;",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
            "Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final hour:I

.field private final minute:I

.field private final weekday:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger$Creator;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "weekday"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .line 146
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->channelId:Ljava/lang/String;

    iput p2, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->weekday:I

    iput p3, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->hour:I

    iput p4, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->minute:I

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getHour()I
    .locals 1

    .line 146
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->hour:I

    return v0
.end method

.method public final getMinute()I
    .locals 1

    .line 146
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->minute:I

    return v0
.end method

.method public final getWeekday()I
    .locals 1

    .line 146
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->weekday:I

    return v0
.end method

.method public nextTriggerDate()Ljava/util/Date;
    .locals 4

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "nextTriggerDate":Ljava/util/Calendar;
    const/4 v1, 0x7

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->weekday:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/16 v1, 0xb

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 158
    const/16 v1, 0xc

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 159
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 162
    .local v1, "rightNow":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 147
    nop

    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "weekly"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 149
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->weekday:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "weekday"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 148
    nop

    .line 150
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hour"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 148
    nop

    .line 151
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minute"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 148
    nop

    .line 147
    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->bundleWithChannelId([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->weekday:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
