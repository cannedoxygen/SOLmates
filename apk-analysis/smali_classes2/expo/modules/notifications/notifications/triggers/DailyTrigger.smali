.class public final Lexpo/modules/notifications/notifications/triggers/DailyTrigger;
.super Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;
.source "NotificationTriggers.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/triggers/DailyTrigger;",
        "Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;",
        "Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;",
        "channelId",
        "",
        "hour",
        "",
        "minute",
        "(Ljava/lang/String;II)V",
        "getChannelId",
        "()Ljava/lang/String;",
        "getHour",
        "()I",
        "getMinute",
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
            "Lexpo/modules/notifications/notifications/triggers/DailyTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final hour:I

.field private final minute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger$Creator;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/triggers/DailyTrigger$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .line 31
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->channelId:Ljava/lang/String;

    iput p2, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->hour:I

    iput p3, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->minute:I

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getHour()I
    .locals 1

    .line 31
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->hour:I

    return v0
.end method

.method public final getMinute()I
    .locals 1

    .line 31
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->minute:I

    return v0
.end method

.method public nextTriggerDate()Ljava/util/Date;
    .locals 4

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    .local v0, "nextTriggerDate":Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 41
    const/16 v1, 0xc

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 42
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 43
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 45
    .local v1, "rightNow":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 32
    nop

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "daily"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hour"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 33
    nop

    .line 35
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minute"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 33
    nop

    .line 32
    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->bundleWithChannelId([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
