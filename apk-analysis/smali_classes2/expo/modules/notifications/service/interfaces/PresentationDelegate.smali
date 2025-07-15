.class public interface abstract Lexpo/modules/notifications/service/interfaces/PresentationDelegate;
.super Ljava/lang/Object;
.source "PresentationDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0016\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H&J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H&J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/notifications/service/interfaces/PresentationDelegate;",
        "",
        "dismissAllNotifications",
        "",
        "dismissNotifications",
        "identifiers",
        "",
        "",
        "getAllPresentedNotifications",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "presentNotification",
        "notification",
        "behavior",
        "Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
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
.method public abstract dismissAllNotifications()V
.end method

.method public abstract dismissNotifications(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllPresentedNotifications()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/Notification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract presentNotification(Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;)V
.end method
