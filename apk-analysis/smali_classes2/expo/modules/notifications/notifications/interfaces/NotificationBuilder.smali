.class public interface abstract Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;
.super Ljava/lang/Object;
.source "NotificationBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;",
        "",
        "build",
        "Landroid/app/Notification;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAllowedBehavior",
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
.method public abstract build(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract setAllowedBehavior(Lexpo/modules/notifications/notifications/model/NotificationBehavior;)Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;
.end method
