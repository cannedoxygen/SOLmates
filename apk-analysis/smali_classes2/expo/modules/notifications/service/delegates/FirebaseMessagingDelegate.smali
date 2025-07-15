.class public Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;
.super Ljava/lang/Object;
.source "FirebaseMessagingDelegate.kt"

# interfaces
.implements Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseMessagingDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseMessagingDelegate.kt\nexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1603#2,9:140\n1855#2:149\n1856#2:151\n1612#2:152\n1855#2,2:153\n1#3:150\n*S KotlinDebug\n*F\n+ 1 FirebaseMessagingDelegate.kt\nexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate\n*L\n90#1:140,9\n90#1:149\n90#1:151\n90#1:152\n106#1:153,2\n90#1:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0004J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0004J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u000eH\u0016J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\nH\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;",
        "Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "createNotification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "remoteMessage",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "createNotificationRequest",
        "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
        "identifier",
        "",
        "content",
        "Lexpo/modules/notifications/notifications/interfaces/INotificationContent;",
        "notificationTrigger",
        "Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;",
        "getBackgroundTasks",
        "",
        "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
        "getNotificationIdentifier",
        "onDeletedMessages",
        "",
        "onMessageReceived",
        "onNewToken",
        "token",
        "runTaskManagerTasks",
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
.field public static final Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

.field private static sBackgroundTaskConsumerReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLastToken:Ljava/lang/String;

.field private static final sTokenListenersReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sTokenListenersReferences:Ljava/util/WeakHashMap;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sBackgroundTaskConsumerReferences:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getSBackgroundTaskConsumerReferences$cp()Ljava/util/WeakHashMap;
    .locals 1

    .line 20
    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sBackgroundTaskConsumerReferences:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static final synthetic access$getSLastToken$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sLastToken:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTokenListenersReferences$cp()Ljava/util/WeakHashMap;
    .locals 1

    .line 20
    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sTokenListenersReferences:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static final synthetic access$setSBackgroundTaskConsumerReferences$cp(Ljava/util/WeakHashMap;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/WeakHashMap;

    .line 20
    sput-object p0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sBackgroundTaskConsumerReferences:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static final synthetic access$setSLastToken$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 20
    sput-object p0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sLastToken:Ljava/lang/String;

    return-void
.end method

.method public static final addTokenListener(Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->addTokenListener(Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;)V

    return-void
.end method

.method private final getBackgroundTasks()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sBackgroundTaskConsumerReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 140
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 148
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 149
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

    .line 148
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Ljava/lang/ref/WeakReference;

    .local v11, "it":Ljava/lang/ref/WeakReference;
    const/4 v12, 0x0

    .line 90
    .local v12, "$i$a$-mapNotNull-FirebaseMessagingDelegate$getBackgroundTasks$1":I
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;

    .line 148
    .end local v11    # "it":Ljava/lang/ref/WeakReference;
    .end local v12    # "$i$a$-mapNotNull-FirebaseMessagingDelegate$getBackgroundTasks$1":I
    if-eqz v13, :cond_0

    move-object v11, v13

    .line 150
    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 148
    .local v12, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 151
    :cond_1
    nop

    .line 152
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 140
    nop

    .line 90
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    return-object v2
.end method

.method private final runTaskManagerTasks(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 7
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .line 105
    sget-object v0, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;->INSTANCE:Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;

    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;->getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    .line 106
    invoke-direct {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->getBackgroundTasks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 153
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

    check-cast v4, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;

    .local v4, "it":Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;
    const/4 v5, 0x0

    .line 107
    .local v5, "$i$a$-forEach-FirebaseMessagingDelegate$runTaskManagerTasks$1":I
    invoke-static {p1}, Lexpo/modules/notifications/notifications/RemoteMessageSerializer;->toBundle(Lcom/google/firebase/messaging/RemoteMessage;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v6}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->executeTask(Landroid/os/Bundle;)V

    .line 108
    nop

    .line 153
    .end local v4    # "it":Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;
    .end local v5    # "$i$a$-forEach-FirebaseMessagingDelegate$runTaskManagerTasks$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 154
    :cond_0
    nop

    .line 109
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method protected final createNotification(Lcom/google/firebase/messaging/RemoteMessage;)Lexpo/modules/notifications/notifications/model/Notification;
    .locals 6
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->getNotificationIdentifier(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "identifier":Ljava/lang/String;
    new-instance v1, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;

    invoke-direct {v1, p1}, Lexpo/modules/notifications/notifications/model/RemoteNotificationContent;-><init>(Lcom/google/firebase/messaging/RemoteMessage;)V

    check-cast v1, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    new-instance v2, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;

    invoke-direct {v2, p1}, Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;-><init>(Lcom/google/firebase/messaging/RemoteMessage;)V

    invoke-virtual {p0, v0, v1, v2}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->createNotificationRequest(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;)Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v1

    .line 115
    .local v1, "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    new-instance v2, Lexpo/modules/notifications/notifications/model/Notification;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getSentTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v2, v1, v3}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;Ljava/util/Date;)V

    return-object v2
.end method

.method protected createNotificationRequest(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;)Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "content"    # Lexpo/modules/notifications/notifications/interfaces/INotificationContent;
    .param p3, "notificationTrigger"    # Lexpo/modules/notifications/notifications/model/triggers/FirebaseNotificationTrigger;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationTrigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-object v1, p3

    check-cast v1, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    invoke-direct {v0, p1, p2, v1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;-><init>(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)V

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getNotificationIdentifier(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/lang/String;
    .locals 2
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "tag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onDeletedMessages()V
    .locals 2

    .line 136
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lexpo/modules/notifications/service/NotificationsService$Companion;->handleDropped(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 8
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lexpo/modules/notifications/notifications/debug/DebugLogging;->INSTANCE:Lexpo/modules/notifications/notifications/debug/DebugLogging;

    const-string v1, "FirebaseMessagingDelegate.onMessageReceived: message"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logRemoteMessage(Ljava/lang/String;Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 95
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->createNotification(Lcom/google/firebase/messaging/RemoteMessage;)Lexpo/modules/notifications/notifications/model/Notification;

    move-result-object v0

    .line 96
    .local v0, "notification":Lexpo/modules/notifications/notifications/model/Notification;
    sget-object v1, Lexpo/modules/notifications/notifications/debug/DebugLogging;->INSTANCE:Lexpo/modules/notifications/notifications/debug/DebugLogging;

    const-string v2, "FirebaseMessagingDelegate.onMessageReceived: notification"

    invoke-virtual {v1, v2, v0}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logNotification(Ljava/lang/String;Lexpo/modules/notifications/notifications/model/Notification;)V

    .line 97
    sget-object v2, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    iget-object v3, p0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->context:Landroid/content/Context;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lexpo/modules/notifications/service/NotificationsService$Companion;->receive$default(Lexpo/modules/notifications/service/NotificationsService$Companion;Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Landroid/os/ResultReceiver;ILjava/lang/Object;)V

    .line 98
    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->runTaskManagerTasks(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 99
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sTokenListenersReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 85
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;->onNewToken(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;
    :cond_1
    sput-object p1, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->sLastToken:Ljava/lang/String;

    .line 88
    return-void
.end method
