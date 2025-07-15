.class public interface abstract Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;
.super Ljava/lang/Object;
.source "NotificationTrigger.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;",
        "Landroid/os/Parcelable;",
        "getNotificationChannel",
        "",
        "toBundle",
        "Landroid/os/Bundle;",
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


# virtual methods
.method public abstract getNotificationChannel()Ljava/lang/String;
.end method

.method public abstract toBundle()Landroid/os/Bundle;
.end method
