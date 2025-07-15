.class public interface abstract Lexpo/modules/notifications/notifications/interfaces/INotificationContent;
.super Ljava/lang/Object;
.source "INotificationContent.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0016\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010(\u001a\u00020\u0011H&J\u0018\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020,H\u00a6@\u00a2\u0006\u0002\u0010-R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0005R\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0012R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0012R\u0012\u0010\u001a\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0012R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\rR\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\rR\u0014\u0010 \u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\rR\u0014\u0010\"\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\rR\u0014\u0010$\u001a\u0004\u0018\u00010%X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006."
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/interfaces/INotificationContent;",
        "Landroid/os/Parcelable;",
        "badgeCount",
        "",
        "getBadgeCount",
        "()Ljava/lang/Number;",
        "body",
        "Lorg/json/JSONObject;",
        "getBody",
        "()Lorg/json/JSONObject;",
        "categoryId",
        "",
        "getCategoryId",
        "()Ljava/lang/String;",
        "color",
        "getColor",
        "isAutoDismiss",
        "",
        "()Z",
        "isSticky",
        "priority",
        "Lexpo/modules/notifications/notifications/enums/NotificationPriority;",
        "getPriority",
        "()Lexpo/modules/notifications/notifications/enums/NotificationPriority;",
        "shouldPlayDefaultSound",
        "getShouldPlayDefaultSound",
        "shouldUseDefaultVibrationPattern",
        "getShouldUseDefaultVibrationPattern",
        "soundName",
        "getSoundName",
        "subText",
        "getSubText",
        "text",
        "getText",
        "title",
        "getTitle",
        "vibrationPattern",
        "",
        "getVibrationPattern",
        "()[J",
        "containsImage",
        "getImage",
        "Landroid/graphics/Bitmap;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract containsImage()Z
.end method

.method public abstract getBadgeCount()Ljava/lang/Number;
.end method

.method public abstract getBody()Lorg/json/JSONObject;
.end method

.method public abstract getCategoryId()Ljava/lang/String;
.end method

.method public abstract getColor()Ljava/lang/Number;
.end method

.method public abstract getImage(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getPriority()Lexpo/modules/notifications/notifications/enums/NotificationPriority;
.end method

.method public abstract getShouldPlayDefaultSound()Z
.end method

.method public abstract getShouldUseDefaultVibrationPattern()Z
.end method

.method public abstract getSoundName()Ljava/lang/String;
.end method

.method public abstract getSubText()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVibrationPattern()[J
.end method

.method public abstract isAutoDismiss()Z
.end method

.method public abstract isSticky()Z
.end method
