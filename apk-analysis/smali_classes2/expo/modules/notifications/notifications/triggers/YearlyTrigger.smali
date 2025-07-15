.class public final Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;
.super Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;
.source "NotificationTriggers.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B/\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nJ\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;",
        "Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;",
        "Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;",
        "channelId",
        "",
        "day",
        "",
        "month",
        "hour",
        "minute",
        "(Ljava/lang/String;IIII)V",
        "getChannelId",
        "()Ljava/lang/String;",
        "getDay",
        "()I",
        "getHour",
        "getMinute",
        "getMonth",
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
            "Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger$Creator;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "day"    # I
    .param p3, "month"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .line 173
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->channelId:Ljava/lang/String;

    iput p2, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->day:I

    iput p3, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->month:I

    iput p4, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->hour:I

    iput p5, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->minute:I

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDay()I
    .locals 1

    .line 173
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->day:I

    return v0
.end method

.method public final getHour()I
    .locals 1

    .line 173
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->hour:I

    return v0
.end method

.method public final getMinute()I
    .locals 1

    .line 173
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->minute:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .line 173
    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->month:I

    return v0
.end method

.method public nextTriggerDate()Ljava/util/Date;
    .locals 3

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 184
    .local v0, "nextTriggerDate":Ljava/util/Calendar;
    const/4 v1, 0x5

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 185
    const/4 v1, 0x2

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 186
    const/16 v1, 0xb

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 187
    const/16 v1, 0xc

    iget v2, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 188
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 189
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 191
    .local v1, "rightNow":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 174
    nop

    .line 175
    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "yearly"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 176
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "day"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 175
    nop

    .line 177
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "month"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 175
    nop

    .line 178
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hour"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 175
    nop

    .line 179
    iget v1, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minute"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 175
    nop

    .line 174
    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->bundleWithChannelId([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
