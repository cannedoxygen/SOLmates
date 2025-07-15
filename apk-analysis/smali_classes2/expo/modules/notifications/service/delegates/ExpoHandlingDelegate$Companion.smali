.class public final Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;
.super Ljava/lang/Object;
.source "ExpoHandlingDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007J\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0016\u0010 \u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R,\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00080\u0006X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;",
        "",
        "()V",
        "OPEN_APP_INTENT_ACTION",
        "",
        "sListenersReferences",
        "Ljava/util/WeakHashMap;",
        "Lexpo/modules/notifications/notifications/NotificationManager;",
        "Ljava/lang/ref/WeakReference;",
        "getSListenersReferences",
        "()Ljava/util/WeakHashMap;",
        "setSListenersReferences",
        "(Ljava/util/WeakHashMap;)V",
        "sPendingNotificationResponses",
        "",
        "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
        "getSPendingNotificationResponses",
        "()Ljava/util/Collection;",
        "setSPendingNotificationResponses",
        "(Ljava/util/Collection;)V",
        "addListener",
        "",
        "listener",
        "createPendingIntentForOpeningApp",
        "Landroid/app/PendingIntent;",
        "context",
        "Landroid/content/Context;",
        "broadcastIntent",
        "Landroid/content/Intent;",
        "notificationResponse",
        "getMainActivityLauncher",
        "getNotificationActionLauncher",
        "openAppToForeground",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;-><init>()V

    return-void
.end method

.method private final getMainActivityLauncher(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationActionLauncher(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "expo.modules.notifications.OPEN_APP_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 91
    .local v1, "$i$a$-also-ExpoHandlingDelegate$Companion$getNotificationActionLauncher$1":I
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "it":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 94
    .local v3, "$i$a$-let-ExpoHandlingDelegate$Companion$getNotificationActionLauncher$1$1":I
    return-object v0

    .line 96
    .end local v2    # "it":Landroid/content/pm/ResolveInfo;
    .end local v3    # "$i$a$-let-ExpoHandlingDelegate$Companion$getNotificationActionLauncher$1$1":I
    :cond_0
    nop

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "$i$a$-also-ExpoHandlingDelegate$Companion$getNotificationActionLauncher$1":I
    nop

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final addListener(Lexpo/modules/notifications/notifications/NotificationManager;)V
    .locals 2
    .param p1, "listener"    # Lexpo/modules/notifications/notifications/NotificationManager;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->getSListenersReferences()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->getSListenersReferences()Ljava/util/WeakHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->getSPendingNotificationResponses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->getSPendingNotificationResponses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    .local v0, "responseIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/model/NotificationResponse;

    invoke-virtual {p1, v1}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)V

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 55
    .end local v0    # "responseIterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public final createPendingIntentForOpeningApp(Landroid/content/Context;Landroid/content/Intent;Lexpo/modules/notifications/notifications/model/NotificationResponse;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broadcastIntent"    # Landroid/content/Intent;
    .param p3, "notificationResponse"    # Lexpo/modules/notifications/notifications/model/NotificationResponse;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/high16 v0, 0x8000000

    .line 65
    .local v0, "intentFlags":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 68
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 71
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lexpo/modules/notifications/service/NotificationForwarderActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "backgroundActivityIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    const/high16 v2, 0x18000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const-class v2, Lexpo/modules/notifications/service/NotificationsService;

    invoke-virtual {v2}, Ljava/lang/Class;->hashCode()I

    move-result v2

    .line 76
    .local v2, "requestCode":I
    :goto_0
    invoke-static {p1, v2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "getActivity(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method protected final getSListenersReferences()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/notifications/NotificationManager;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/notifications/NotificationManager;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->access$getSListenersReferences$cp()Ljava/util/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected final getSPendingNotificationResponses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->access$getSPendingNotificationResponses$cp()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final openAppToForeground(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationResponse;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationResponse"    # Lexpo/modules/notifications/notifications/model/NotificationResponse;

    .line 80
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->getNotificationActionLauncher(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->getMainActivityLauncher(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 81
    .local v1, "$i$a$-let-ExpoHandlingDelegate$Companion$openAppToForeground$1":I
    sget-object v2, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {v2, v0, p2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->setNotificationResponseToIntent(Landroid/content/Intent;Lexpo/modules/notifications/notifications/model/NotificationResponse;)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "$i$a$-let-ExpoHandlingDelegate$Companion$openAppToForeground$1":I
    :cond_1
    const-string v0, "expo-notifications"

    const-string v1, "No launch intent found for application. Interacting with the notification won\'t open the app. The implementation uses `getLaunchIntentForPackage` to find appropriate activity."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method protected final setSListenersReferences(Ljava/util/WeakHashMap;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/notifications/NotificationManager;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/notifications/NotificationManager;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->access$setSListenersReferences$cp(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method protected final setSPendingNotificationResponses(Ljava/util/Collection;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->access$setSPendingNotificationResponses$cp(Ljava/util/Collection;)V

    return-void
.end method
