.class public Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;
.super Ljava/lang/Object;
.source "ExpoPresentationDelegate.kt"

# interfaces
.implements Lexpo/modules/notifications/service/interfaces/PresentationDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoPresentationDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoPresentationDelegate.kt\nexpo/modules/notifications/service/delegates/ExpoPresentationDelegate\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n11383#2,9:217\n13309#2:226\n13310#2:228\n11392#2:229\n1#3:227\n1#3:231\n1855#4:230\n1856#4:232\n*S KotlinDebug\n*F\n+ 1 ExpoPresentationDelegate.kt\nexpo/modules/notifications/service/delegates/ExpoPresentationDelegate\n*L\n140#1:217,9\n140#1:226\n140#1:228\n140#1:229\n140#1:227\n144#1:230\n144#1:232\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 &2\u00020\u0001:\u0001&B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0094@\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0014H\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u001a\u0010$\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010%\u001a\u0004\u0018\u00010\u000eH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;",
        "Lexpo/modules/notifications/service/interfaces/PresentationDelegate;",
        "context",
        "Landroid/content/Context;",
        "notificationManager",
        "Landroidx/core/app/NotificationManagerCompat;",
        "(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;)V",
        "getContext",
        "()Landroid/content/Context;",
        "createNotification",
        "Landroid/app/Notification;",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "notificationBehavior",
        "Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
        "(Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dismissAllNotifications",
        "",
        "dismissNotifications",
        "identifiers",
        "",
        "",
        "fromBundle",
        "Lorg/json/JSONObject;",
        "bundle",
        "Landroid/os/Bundle;",
        "getAllPresentedNotifications",
        "getNotification",
        "statusBarNotification",
        "Landroid/service/notification/StatusBarNotification;",
        "getNotificationSoundUri",
        "Landroid/net/Uri;",
        "getNotifyId",
        "",
        "request",
        "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
        "presentNotification",
        "behavior",
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
.field protected static final ANDROID_NOTIFICATION_ID:I = 0x0

.field public static final Companion:Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;

.field protected static final INTERNAL_IDENTIFIER_AUTHORITY:Ljava/lang/String; = "foreign_notifications"

.field protected static final INTERNAL_IDENTIFIER_ID_KEY:Ljava/lang/String; = "id"

.field protected static final INTERNAL_IDENTIFIER_SCHEME:Ljava/lang/String; = "expo-notifications"

.field protected static final INTERNAL_IDENTIFIER_TAG_KEY:Ljava/lang/String; = "tag"


# instance fields
.field private final context:Landroid/content/Context;

.field private final notificationManager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroidx/core/app/NotificationManagerCompat;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 31
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 33
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    const-string p3, "from(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;-><init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;)V

    .line 215
    return-void
.end method

.method static synthetic createNotification$suspendImpl(Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;
    .param p2, "notificationBehavior"    # Lexpo/modules/notifications/notifications/model/NotificationBehavior;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;",
            "Lexpo/modules/notifications/notifications/model/Notification;",
            "Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 160
    new-instance v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;

    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    new-instance v2, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    iget-object v3, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p1, v2}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;-><init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;)V

    move-object v1, v0

    .local v1, "$this$createNotification_u24lambda_u244":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    const/4 v2, 0x0

    .line 161
    .local v2, "$i$a$-apply-ExpoPresentationDelegate$createNotification$2":I
    invoke-virtual {v1, p2}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->setAllowedBehavior(Lexpo/modules/notifications/notifications/model/NotificationBehavior;)Lexpo/modules/notifications/notifications/interfaces/NotificationBuilder;

    .line 162
    nop

    .line 160
    .end local v1    # "$this$createNotification_u24lambda_u244":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    .end local v2    # "$i$a$-apply-ExpoPresentationDelegate$createNotification$2":I
    nop

    .line 162
    invoke-virtual {v0, p3}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->build(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationSoundUri(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/net/Uri;
    .locals 4
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 118
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getTrigger()Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;->getNotificationChannel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "$i$a$-let-ExpoPresentationDelegate$getNotificationSoundUri$1":I
    iget-object v3, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    .line 118
    .end local v0    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-ExpoPresentationDelegate$getNotificationSoundUri$1":I
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getSoundName()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lexpo/modules/notifications/notifications/SoundResolver;

    iget-object v2, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lexpo/modules/notifications/notifications/SoundResolver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lexpo/modules/notifications/notifications/SoundResolver;->resolve(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected createNotification(Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/notifications/notifications/model/Notification;",
            "Lexpo/modules/notifications/notifications/model/NotificationBehavior;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->createNotification$suspendImpl(Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public dismissAllNotifications()V
    .locals 1

    .line 157
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    return-void
.end method

.method public dismissNotifications(Ljava/util/Collection;)V
    .locals 13
    .param p1, "identifiers"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "identifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 230
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .local v4, "identifier":Ljava/lang/String;
    const/4 v5, 0x0

    .line 145
    .local v5, "$i$a$-forEach-ExpoPresentationDelegate$dismissNotifications$1":I
    sget-object v6, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;

    invoke-virtual {v6, v4}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;->parseNotificationIdentifier(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 146
    .local v6, "foreignNotification":Landroid/util/Pair;
    if-eqz v6, :cond_0

    .line 148
    iget-object v7, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    invoke-static {v7}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v7

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v10, "second"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    goto :goto_2

    .line 151
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->getAllPresentedNotifications()Ljava/util/Collection;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lexpo/modules/notifications/notifications/model/Notification;

    .line 231
    .local v10, "it":Lexpo/modules/notifications/notifications/model/Notification;
    const/4 v11, 0x0

    .line 151
    .local v11, "$i$a$-find-ExpoPresentationDelegate$dismissNotifications$1$existingNotification$1":I
    invoke-virtual {v10}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v12

    invoke-virtual {v12}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .end local v10    # "it":Lexpo/modules/notifications/notifications/model/Notification;
    .end local v11    # "$i$a$-find-ExpoPresentationDelegate$dismissNotifications$1$existingNotification$1":I
    if-eqz v10, :cond_1

    goto :goto_1

    :cond_2
    move-object v8, v9

    :goto_1
    move-object v7, v8

    check-cast v7, Lexpo/modules/notifications/notifications/model/Notification;

    .line 152
    .local v7, "existingNotification":Lexpo/modules/notifications/notifications/model/Notification;
    iget-object v8, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    invoke-static {v8}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v8

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v9

    :cond_3
    invoke-virtual {p0, v9}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->getNotifyId(Lexpo/modules/notifications/notifications/model/NotificationRequest;)I

    move-result v9

    invoke-virtual {v8, v4, v9}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 154
    .end local v7    # "existingNotification":Lexpo/modules/notifications/notifications/model/Notification;
    :goto_2
    nop

    .line 230
    .end local v4    # "identifier":Ljava/lang/String;
    .end local v5    # "$i$a$-forEach-ExpoPresentationDelegate$dismissNotifications$1":I
    .end local v6    # "foreignNotification":Landroid/util/Pair;
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 232
    :cond_4
    nop

    .line 155
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method protected fromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .local v1, "json":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$a$-also-ExpoPresentationDelegate$fromBundle$1":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 206
    .local v4, "key":Ljava/lang/String;
    nop

    .line 207
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v5

    .line 210
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error encountered while serializing Android notification extras: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;

    const-string v8, "expo-notifications"

    invoke-static {v8, v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_0
    nop

    .line 204
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "$i$a$-also-ExpoPresentationDelegate$fromBundle$1":I
    return-object v0
.end method

.method public getAllPresentedNotifications()Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/Notification;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 140
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    const-string v2, "getActiveNotifications(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .local v1, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 217
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 225
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 226
    .local v7, "$i$f$forEach":I
    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v6, v9

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 225
    .local v12, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Landroid/service/notification/StatusBarNotification;

    .local v13, "it":Landroid/service/notification/StatusBarNotification;
    const/4 v14, 0x0

    .line 140
    .local v14, "$i$a$-mapNotNull-ExpoPresentationDelegate$getAllPresentedNotifications$1":I
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v13}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->getNotification(Landroid/service/notification/StatusBarNotification;)Lexpo/modules/notifications/notifications/model/Notification;

    move-result-object v13

    .line 225
    .end local v13    # "it":Landroid/service/notification/StatusBarNotification;
    .end local v14    # "$i$a$-mapNotNull-ExpoPresentationDelegate$getAllPresentedNotifications$1":I
    if-eqz v13, :cond_0

    .line 227
    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 225
    .local v14, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 228
    :cond_1
    nop

    .line 229
    .end local v6    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 217
    nop

    .end local v1    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$mapNotNull":I
    check-cast v3, Ljava/util/Collection;

    .line 140
    return-object v3
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getNotification(Landroid/service/notification/StatusBarNotification;)Lexpo/modules/notifications/notifications/model/Notification;
    .locals 9
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    const-string v0, "statusBarNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 166
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "expo.notification_request"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "it":[B
    const/4 v2, 0x0

    .line 167
    .local v2, "$i$a$-let-ExpoPresentationDelegate$getNotification$1":I
    nop

    .line 168
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, "$this$getNotification_u24lambda_u246_u24lambda_u245":Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 169
    .local v4, "$i$a$-with-ExpoPresentationDelegate$getNotification$1$1":I
    array-length v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 170
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 171
    sget-object v5, Lexpo/modules/notifications/notifications/model/NotificationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "createFromParcel(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .line 172
    .local v5, "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 173
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 174
    .local v6, "notificationDate":Ljava/util/Date;
    new-instance v7, Lexpo/modules/notifications/notifications/model/Notification;

    invoke-direct {v7, v5, v6}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 176
    .end local v3    # "$this$getNotification_u24lambda_u246_u24lambda_u245":Landroid/os/Parcel;
    .end local v4    # "$i$a$-with-ExpoPresentationDelegate$getNotification$1$1":I
    .end local v5    # "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .end local v6    # "notificationDate":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not have unmarshalled NotificationRequest from ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "message":Ljava/lang/String;
    const-string v5, "expo-notifications"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "message":Ljava/lang/String;
    nop

    .line 166
    .end local v1    # "it":[B
    .end local v2    # "$i$a$-let-ExpoPresentationDelegate$getNotification$1":I
    nop

    .line 188
    :cond_0
    new-instance v1, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    invoke-direct {v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;-><init>()V

    .line 189
    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getContentTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setTitle(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 190
    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getContentText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setText(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 191
    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setSubtitle(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 192
    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getAutoCancel(Landroid/app/Notification;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setAutoDismiss(Z)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 193
    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getOngoing(Landroid/app/Notification;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setSticky(Z)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 194
    iget v2, v0, Landroid/app/Notification;->priority:I

    invoke-static {v2}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->fromNativeValue(I)Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setPriority(Lexpo/modules/notifications/notifications/enums/NotificationPriority;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 195
    iget-object v2, v0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setVibrationPattern([J)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 196
    iget-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setSound(Landroid/net/Uri;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 197
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "extras"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->fromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->setBody(Lorg/json/JSONObject;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->build()Lexpo/modules/notifications/notifications/model/NotificationContent;

    move-result-object v1

    .line 188
    nop

    .line 199
    .local v1, "content":Lexpo/modules/notifications/notifications/model/NotificationContent;
    new-instance v2, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    sget-object v4, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;

    invoke-virtual {v4, p1}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$Companion;->getInternalIdentifierKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    invoke-direct {v2, v4, v5, v3}, Lexpo/modules/notifications/notifications/model/NotificationRequest;-><init>(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)V

    .line 200
    .local v2, "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    new-instance v3, Lexpo/modules/notifications/notifications/model/Notification;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v3, v2, v4}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;Ljava/util/Date;)V

    return-object v3
.end method

.method protected getNotifyId(Lexpo/modules/notifications/notifications/model/NotificationRequest;)I
    .locals 1
    .param p1, "request"    # Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public presentNotification(Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;)V
    .locals 7
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;
    .param p2, "behavior"    # Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->shouldShowAlert()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p2}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-direct {p0, p1}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->getNotificationSoundUri(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 99
    .local v0, "sound":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;->context:Landroid/content/Context;

    .line 100
    nop

    .line 98
    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 103
    .end local v0    # "sound":Landroid/net/Uri;
    :cond_2
    return-void

    .line 105
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$presentNotification$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate$presentNotification$1;-><init>(Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 114
    return-void
.end method
