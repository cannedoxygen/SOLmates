.class public final Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;
.super Ljava/lang/Object;
.source "ExpoHandlingDelegate.kt"

# interfaces
.implements Lexpo/modules/notifications/service/interfaces/HandlingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoHandlingDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoHandlingDelegate.kt\nexpo/modules/notifications/service/delegates/ExpoHandlingDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,158:1\n1603#2,9:159\n1855#2:168\n1856#2:170\n1612#2:171\n1855#2,2:172\n1855#2,2:174\n1855#2,2:176\n1#3:169\n*S KotlinDebug\n*F\n+ 1 ExpoHandlingDelegate.kt\nexpo/modules/notifications/service/delegates/ExpoHandlingDelegate\n*L\n106#1:159,9\n106#1:168\n106#1:170\n106#1:171\n119#1:172,2\n146#1:174,2\n153#1:176,2\n106#1:169\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0006\u0010\u0012\u001a\u00020\u0013J\u000c\u0010\u0014\u001a\u00020\u0013*\u00020\rH\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;",
        "Lexpo/modules/notifications/service/interfaces/HandlingDelegate;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getListeners",
        "",
        "Lexpo/modules/notifications/notifications/NotificationManager;",
        "handleNotification",
        "",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "handleNotificationResponse",
        "notificationResponse",
        "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
        "handleNotificationsDropped",
        "isAppInForeground",
        "",
        "shouldPresent",
        "Companion",
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
.field public static final Companion:Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

.field public static final OPEN_APP_INTENT_ACTION:Ljava/lang/String; = "expo.modules.notifications.OPEN_APP_ACTION"

.field private static sListenersReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/notifications/NotificationManager;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/notifications/NotificationManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPendingNotificationResponses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    sput-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sPendingNotificationResponses:Ljava/util/Collection;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sListenersReferences:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getSListenersReferences$cp()Ljava/util/WeakHashMap;
    .locals 1

    .line 19
    sget-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sListenersReferences:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static final synthetic access$getSPendingNotificationResponses$cp()Ljava/util/Collection;
    .locals 1

    .line 19
    sget-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sPendingNotificationResponses:Ljava/util/Collection;

    return-object v0
.end method

.method public static final synthetic access$setSListenersReferences$cp(Ljava/util/WeakHashMap;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/WeakHashMap;

    .line 19
    sput-object p0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sListenersReferences:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static final synthetic access$setSPendingNotificationResponses$cp(Ljava/util/Collection;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/Collection;

    .line 19
    sput-object p0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sPendingNotificationResponses:Ljava/util/Collection;

    return-void
.end method

.method private final shouldPresent(Lexpo/modules/notifications/notifications/model/Notification;)Z
    .locals 3
    .param p1, "$this$shouldPresent"    # Lexpo/modules/notifications/notifications/model/Notification;

    .line 135
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getListeners()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/notifications/notifications/NotificationManager;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sListenersReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 159
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 168
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 167
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Ljava/lang/ref/WeakReference;

    .local v11, "it":Ljava/lang/ref/WeakReference;
    const/4 v12, 0x0

    .line 106
    .local v12, "$i$a$-mapNotNull-ExpoHandlingDelegate$getListeners$1":I
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lexpo/modules/notifications/notifications/NotificationManager;

    .line 167
    .end local v11    # "it":Ljava/lang/ref/WeakReference;
    .end local v12    # "$i$a$-mapNotNull-ExpoHandlingDelegate$getListeners$1":I
    if-eqz v13, :cond_0

    move-object v11, v13

    .line 169
    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 167
    .local v12, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 170
    :cond_1
    nop

    .line 171
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 159
    nop

    .line 106
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    return-object v2
.end method

.method public handleNotification(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 8
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 172
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/notifications/notifications/NotificationManager;

    .local v4, "it":Lexpo/modules/notifications/notifications/NotificationManager;
    const/4 v5, 0x0

    .line 120
    .local v5, "$i$a$-forEach-ExpoHandlingDelegate$handleNotification$1":I
    invoke-virtual {v4, p1}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V

    .line 121
    nop

    .line 172
    .end local v4    # "it":Lexpo/modules/notifications/notifications/NotificationManager;
    .end local v5    # "$i$a$-forEach-ExpoHandlingDelegate$handleNotification$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 173
    :cond_0
    nop

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    goto :goto_1

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->shouldPresent(Lexpo/modules/notifications/notifications/model/Notification;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v1, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v2, p0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->context:Landroid/content/Context;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lexpo/modules/notifications/service/NotificationsService$Companion;->present$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    .line 127
    :cond_2
    :goto_1
    return-void
.end method

.method public handleNotificationResponse(Lexpo/modules/notifications/notifications/model/NotificationResponse;)V
    .locals 7
    .param p1, "notificationResponse"    # Lexpo/modules/notifications/notifications/model/NotificationResponse;

    const-string v0, "notificationResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationResponse;->getAction()Lexpo/modules/notifications/notifications/model/NotificationAction;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationAction;->opensAppToForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->openAppToForeground(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationResponse;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->getListeners()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "listeners":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    sget-object v1, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->sPendingNotificationResponses:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 174
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lexpo/modules/notifications/notifications/NotificationManager;

    .local v5, "it":Lexpo/modules/notifications/notifications/NotificationManager;
    const/4 v6, 0x0

    .line 147
    .local v6, "$i$a$-forEach-ExpoHandlingDelegate$handleNotificationResponse$1":I
    invoke-virtual {v5, p1}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)V

    .line 148
    nop

    .line 174
    .end local v5    # "it":Lexpo/modules/notifications/notifications/NotificationManager;
    .end local v6    # "$i$a$-forEach-ExpoHandlingDelegate$handleNotificationResponse$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 175
    :cond_2
    nop

    .line 150
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :goto_1
    return-void
.end method

.method public handleNotificationsDropped()V
    .locals 6

    .line 153
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/notifications/notifications/NotificationManager;

    .local v4, "it":Lexpo/modules/notifications/notifications/NotificationManager;
    const/4 v5, 0x0

    .line 154
    .local v5, "$i$a$-forEach-ExpoHandlingDelegate$handleNotificationsDropped$1":I
    invoke-virtual {v4}, Lexpo/modules/notifications/notifications/NotificationManager;->onNotificationsDropped()V

    .line 155
    nop

    .line 176
    .end local v4    # "it":Lexpo/modules/notifications/notifications/NotificationManager;
    .end local v5    # "$i$a$-forEach-ExpoHandlingDelegate$handleNotificationsDropped$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 177
    :cond_0
    nop

    .line 156
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final isAppInForeground()Z
    .locals 2

    .line 104
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method
