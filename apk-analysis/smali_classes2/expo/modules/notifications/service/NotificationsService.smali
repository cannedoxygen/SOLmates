.class public Lexpo/modules/notifications/service/NotificationsService;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/service/NotificationsService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationsService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationsService.kt\nexpo/modules/notifications/service/NotificationsService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,795:1\n1#2:796\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0016\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010 \u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010!\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\"\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010#\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/notifications/service/NotificationsService;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "getCategoriesDelegate",
        "Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;",
        "context",
        "Landroid/content/Context;",
        "getHandlingDelegate",
        "Lexpo/modules/notifications/service/interfaces/HandlingDelegate;",
        "getPresentationDelegate",
        "Lexpo/modules/notifications/service/interfaces/PresentationDelegate;",
        "getSchedulingDelegate",
        "Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;",
        "handleIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onDeleteCategory",
        "Landroid/os/Bundle;",
        "onDismissAllNotifications",
        "onDismissNotifications",
        "onGetAllPresentedNotifications",
        "onGetAllScheduledNotifications",
        "onGetCategories",
        "onGetScheduledNotification",
        "onNotificationTriggered",
        "onNotificationsDropped",
        "onPresentNotification",
        "onReceive",
        "onReceiveNotification",
        "onReceiveNotificationResponse",
        "onRemoveAllScheduledNotifications",
        "onRemoveScheduledNotifications",
        "onScheduleNotification",
        "onSetCategory",
        "onSetupScheduledNotifications",
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
.field public static final Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

.field private static final DELETE_CATEGORY_TYPE:Ljava/lang/String; = "deleteCategory"

.field private static final DISMISS_ALL_TYPE:Ljava/lang/String; = "dismissAll"

.field private static final DISMISS_SELECTED_TYPE:Ljava/lang/String; = "dismissSelected"

.field private static final DROPPED_TYPE:Ljava/lang/String; = "dropped"

.field public static final ERROR_CODE:I = 0x1

.field public static final EVENT_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final EXCEPTION_KEY:Ljava/lang/String; = "exception"

.field private static final GET_ALL_DISPLAYED_TYPE:Ljava/lang/String; = "getAllDisplayed"

.field private static final GET_ALL_SCHEDULED_TYPE:Ljava/lang/String; = "getAllScheduled"

.field private static final GET_CATEGORIES_TYPE:Ljava/lang/String; = "getCategories"

.field private static final GET_SCHEDULED_TYPE:Ljava/lang/String; = "getScheduled"

.field public static final IDENTIFIERS_KEY:Ljava/lang/String; = "identifiers"

.field public static final IDENTIFIER_KEY:Ljava/lang/String; = "identifier"

.field public static final NOTIFICATIONS_KEY:Ljava/lang/String; = "notifications"

.field public static final NOTIFICATION_ACTION_KEY:Ljava/lang/String; = "notificationAction"

.field public static final NOTIFICATION_BEHAVIOR_KEY:Ljava/lang/String; = "notificationBehavior"

.field public static final NOTIFICATION_CATEGORIES_KEY:Ljava/lang/String; = "notificationCategories"

.field public static final NOTIFICATION_CATEGORY_KEY:Ljava/lang/String; = "notificationCategory"

.field public static final NOTIFICATION_EVENT_ACTION:Ljava/lang/String; = "expo.modules.notifications.NOTIFICATION_EVENT"

.field public static final NOTIFICATION_KEY:Ljava/lang/String; = "notification"

.field public static final NOTIFICATION_REQUESTS_KEY:Ljava/lang/String; = "notificationRequests"

.field public static final NOTIFICATION_REQUEST_KEY:Ljava/lang/String; = "notificationRequest"

.field public static final NOTIFICATION_RESPONSE_KEY:Ljava/lang/String; = "notificationResponse"

.field private static final PRESENT_TYPE:Ljava/lang/String; = "present"

.field public static final RECEIVER_KEY:Ljava/lang/String; = "receiver"

.field private static final RECEIVE_RESPONSE_TYPE:Ljava/lang/String; = "receiveResponse"

.field private static final RECEIVE_TYPE:Ljava/lang/String; = "receive"

.field private static final REMOVE_ALL_TYPE:Ljava/lang/String; = "removeAll"

.field private static final REMOVE_SELECTED_TYPE:Ljava/lang/String; = "removeSelected"

.field private static final SCHEDULE_TYPE:Ljava/lang/String; = "schedule"

.field private static final SETUP_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_CATEGORY_TYPE:Ljava/lang/String; = "setCategory"

.field public static final SUCCEEDED_KEY:Ljava/lang/String; = "succeeded"

.field public static final SUCCESS_CODE:I = 0x0

.field public static final TEXT_INPUT_NOTIFICATION_RESPONSE_KEY:Ljava/lang/String; = "textInputNotificationResponse"

.field private static final TRIGGER_TYPE:Ljava/lang/String; = "trigger"

.field public static final USER_TEXT_RESPONSE_KEY:Ljava/lang/String; = "userTextResponse"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lexpo/modules/notifications/service/NotificationsService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/service/NotificationsService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 32
    nop

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    aput-object v2, v0, v1

    .line 34
    const-string v1, "android.intent.action.REBOOT"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 33
    nop

    .line 35
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 33
    nop

    .line 36
    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 33
    nop

    .line 37
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 33
    nop

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lexpo/modules/notifications/service/NotificationsService;->SETUP_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSETUP_ACTIONS$cp()Ljava/util/List;
    .locals 1

    .line 29
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->SETUP_ACTIONS:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected getCategoriesDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;

    invoke-direct {v0, p1}, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;-><init>(Landroid/content/Context;)V

    check-cast v0, Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;

    return-object v0
.end method

.method protected getHandlingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/HandlingDelegate;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;

    invoke-direct {v0, p1}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;-><init>(Landroid/content/Context;)V

    check-cast v0, Lexpo/modules/notifications/service/interfaces/HandlingDelegate;

    return-object v0
.end method

.method protected getPresentationDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/PresentationDelegate;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lexpo/modules/notifications/service/delegates/ExpoPresentationDelegate;-><init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lexpo/modules/notifications/service/interfaces/PresentationDelegate;

    return-object v0
.end method

.method protected getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;

    invoke-direct {v0, p1}, Lexpo/modules/notifications/service/delegates/ExpoSchedulingDelegate;-><init>(Landroid/content/Context;)V

    check-cast v0, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->SETUP_ACTIONS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onSetupScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 608
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expo.modules.notifications.NOTIFICATION_EVENT"

    const-string v2, ". Ignoring."

    if-ne v0, v1, :cond_6

    .line 609
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v3, "receiver"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v3, v0, Landroid/os/ResultReceiver;

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/os/ResultReceiver;

    :cond_2
    move-object v0, v1

    .line 610
    .local v0, "receiver":Landroid/os/ResultReceiver;
    nop

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, "resultData":Landroid/os/Bundle;
    :try_start_0
    const-string v3, "type"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "eventType":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "setCategory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 632
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onSetCategory(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_1

    .line 612
    :sswitch_1
    const-string v4, "dropped"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 620
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onNotificationsDropped(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 612
    :sswitch_2
    const-string v4, "removeAll"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 647
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onRemoveAllScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 612
    :sswitch_3
    const-string v4, "receive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 616
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onReceiveNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 612
    :sswitch_4
    const-string v4, "getCategories"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 629
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onGetCategories(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_1

    .line 612
    :sswitch_5
    const-string v4, "dismissAll"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onDismissAllNotifications(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 612
    :sswitch_6
    const-string v4, "getScheduled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 641
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onGetScheduledNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_1

    .line 612
    :sswitch_7
    const-string v4, "present"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 622
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onPresentNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 612
    :sswitch_8
    const-string v4, "removeSelected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onRemoveScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 612
    :sswitch_9
    const-string v4, "dismissSelected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 624
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onDismissNotifications(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 612
    :sswitch_a
    const-string v4, "schedule"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 643
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onScheduleNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 612
    :sswitch_b
    const-string v4, "trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 649
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onNotificationTriggered(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 612
    :sswitch_c
    const-string v4, "getAllDisplayed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 614
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onGetAllPresentedNotifications(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 612
    :sswitch_d
    const-string v4, "getAllScheduled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 638
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onGetAllScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 612
    :sswitch_e
    const-string v4, "deleteCategory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 635
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onDeleteCategory(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 612
    :sswitch_f
    const-string v4, "receiveResponse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    invoke-virtual {p0, p1, p2}, Lexpo/modules/notifications/service/NotificationsService;->onReceiveNotificationResponse(Landroid/content/Context;Landroid/content/Intent;)V

    .line 655
    .end local v3    # "eventType":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_4

    .line 651
    .restart local v3    # "eventType":Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received event of unrecognized type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "receiver":Landroid/os/ResultReceiver;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v1    # "resultData":Landroid/os/Bundle;
    .end local v3    # "eventType":Ljava/lang/String;
    .restart local v0    # "receiver":Landroid/os/ResultReceiver;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lexpo/modules/notifications/BuildConfig;->DEBUG:Z

    const-string v3, " failed: "

    const-string v4, "Action "

    const-string v5, "expo-notifications"

    if-eqz v2, :cond_4

    .line 659
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 661
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    if-eqz v0, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 796
    move-object v3, v2

    .local v3, "it":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 665
    .local v4, "$i$a$-also-NotificationsService$handleIntent$1":I
    const-string v5, "exception"

    move-object v6, v1

    check-cast v6, Ljava/io/Serializable;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .end local v3    # "it":Landroid/os/Bundle;
    .end local v4    # "$i$a$-also-NotificationsService$handleIntent$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 670
    .end local v0    # "receiver":Landroid/os/ResultReceiver;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    return-void

    .line 668
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent of unrecognized action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7fcfa7bc -> :sswitch_f
        -0x775b3437 -> :sswitch_e
        -0x6768c17e -> :sswitch_d
        -0x4f12854a -> :sswitch_c
        -0x3f2caa48 -> :sswitch_b
        -0x29996d69 -> :sswitch_a
        -0x226a20bb -> :sswitch_9
        -0x180374c1 -> :sswitch_8
        -0x12f88745 -> :sswitch_7
        -0xa26ce09 -> :sswitch_6
        0x26a6cab7 -> :sswitch_5
        0x3b87fe12 -> :sswitch_4
        0x408272e3 -> :sswitch_3
        0x4c6f0a7d -> :sswitch_2
        0x72c867c0 -> :sswitch_1
        0x79955b80 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDeleteCategory(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 741
    .local v2, "$i$a$-also-NotificationsService$onDeleteCategory$1":I
    nop

    .line 742
    nop

    .line 743
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getCategoriesDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;

    move-result-object v3

    .line 744
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "identifier"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 743
    invoke-interface {v3, v4}, Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;->deleteCategory(Ljava/lang/String;)Z

    move-result v3

    .line 741
    const-string v4, "succeeded"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 747
    nop

    .line 740
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-NotificationsService$onDeleteCategory$1":I
    nop

    .line 747
    return-object v0
.end method

.method public onDismissAllNotifications(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getPresentationDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/PresentationDelegate;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/service/interfaces/PresentationDelegate;->dismissAllNotifications()V

    return-void
.end method

.method public onDismissNotifications(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getPresentationDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/PresentationDelegate;

    move-result-object v0

    .line 692
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "identifiers"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 691
    invoke-interface {v0, v1}, Lexpo/modules/notifications/service/interfaces/PresentationDelegate;->dismissNotifications(Ljava/util/Collection;)V

    .line 693
    return-void
.end method

.method public onGetAllPresentedNotifications(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 682
    .local v2, "$i$a$-also-NotificationsService$onGetAllPresentedNotifications$1":I
    nop

    .line 683
    nop

    .line 684
    new-instance v3, Ljava/util/ArrayList;

    .line 685
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getPresentationDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/PresentationDelegate;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/notifications/service/interfaces/PresentationDelegate;->getAllPresentedNotifications()Ljava/util/Collection;

    move-result-object v4

    .line 684
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    const-string v4, "notifications"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 688
    nop

    .line 681
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-NotificationsService$onGetAllPresentedNotifications$1":I
    nop

    .line 688
    return-object v0
.end method

.method public onGetAllScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 754
    .local v2, "$i$a$-also-NotificationsService$onGetAllScheduledNotifications$1":I
    nop

    .line 755
    nop

    .line 756
    new-instance v3, Ljava/util/ArrayList;

    .line 757
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;->getAllScheduledNotifications()Ljava/util/Collection;

    move-result-object v4

    .line 756
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 754
    const-string v4, "notificationRequests"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 760
    nop

    .line 753
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-NotificationsService$onGetAllScheduledNotifications$1":I
    nop

    .line 760
    return-object v0
.end method

.method public onGetCategories(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 721
    .local v2, "$i$a$-also-NotificationsService$onGetCategories$1":I
    nop

    .line 722
    nop

    .line 723
    new-instance v3, Ljava/util/ArrayList;

    .line 724
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getCategoriesDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;->getCategories()Ljava/util/Collection;

    move-result-object v4

    .line 723
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 721
    const-string v4, "notificationCategories"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 727
    nop

    .line 720
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-NotificationsService$onGetCategories$1":I
    nop

    .line 727
    return-object v0
.end method

.method public onGetScheduledNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 764
    .local v2, "$i$a$-also-NotificationsService$onGetScheduledNotification$1":I
    nop

    .line 765
    nop

    .line 766
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    move-result-object v3

    .line 767
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "identifier"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 766
    invoke-interface {v3, v4}, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;->getScheduledNotification(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 764
    const-string v4, "notificationRequest"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 770
    nop

    .line 763
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-NotificationsService$onGetScheduledNotification$1":I
    nop

    .line 770
    return-object v0
.end method

.method public onNotificationTriggered(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    move-result-object v0

    .line 779
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "identifier"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 778
    invoke-interface {v0, v1}, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;->triggerNotification(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public onNotificationsDropped(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getHandlingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/HandlingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/service/interfaces/HandlingDelegate;->handleNotificationsDropped()V

    return-void
.end method

.method public onPresentNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getPresentationDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/PresentationDelegate;

    move-result-object v0

    .line 676
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/model/Notification;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 677
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "notificationBehavior"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    .line 675
    :cond_1
    invoke-interface {v0, v1, v2}, Lexpo/modules/notifications/service/interfaces/PresentationDelegate;->presentNotification(Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;)V

    .line 678
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationsService;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 596
    .local v0, "pendingIntent":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v1, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;

    invoke-direct {v1, p2, v0, p0, p1}, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;-><init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Lexpo/modules/notifications/service/NotificationsService;Landroid/content/Context;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 603
    return-void
.end method

.method public onReceiveNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getHandlingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/HandlingDelegate;

    move-result-object v0

    .line 704
    const-string v1, "notification"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lexpo/modules/notifications/notifications/model/Notification;

    .line 703
    invoke-interface {v0, v1}, Lexpo/modules/notifications/service/interfaces/HandlingDelegate;->handleNotification(Lexpo/modules/notifications/notifications/model/Notification;)V

    .line 705
    return-void
.end method

.method public onReceiveNotificationResponse(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {v0, p2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->getNotificationResponseFromBroadcastIntent(Landroid/content/Intent;)Lexpo/modules/notifications/notifications/model/NotificationResponse;

    move-result-object v0

    .line 709
    .local v0, "response":Lexpo/modules/notifications/notifications/model/NotificationResponse;
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getHandlingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/HandlingDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lexpo/modules/notifications/service/interfaces/HandlingDelegate;->handleNotificationResponse(Lexpo/modules/notifications/notifications/model/NotificationResponse;)V

    .line 710
    return-void
.end method

.method public onRemoveAllScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;->removeAllScheduledNotifications()V

    return-void
.end method

.method public onRemoveScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    move-result-object v0

    .line 784
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "identifiers"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 783
    invoke-interface {v0, v1}, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;->removeScheduledNotifications(Ljava/util/Collection;)V

    .line 785
    return-void
.end method

.method public onScheduleNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    move-result-object v0

    .line 774
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "notificationRequest"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 773
    invoke-interface {v0, v1}, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;->scheduleNotification(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V

    .line 775
    return-void
.end method

.method public onSetCategory(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 731
    .local v2, "$i$a$-also-NotificationsService$onSetCategory$1":I
    nop

    .line 732
    nop

    .line 733
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getCategoriesDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;

    move-result-object v3

    .line 734
    const-string v4, "notificationCategory"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    .line 733
    invoke-interface {v3, v5}, Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;->setCategory(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Lexpo/modules/notifications/notifications/model/NotificationCategory;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 731
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 737
    nop

    .line 730
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-NotificationsService$onSetCategory$1":I
    nop

    .line 737
    return-object v0
.end method

.method public onSetupScheduledNotifications(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0, p1}, Lexpo/modules/notifications/service/NotificationsService;->getSchedulingDelegate(Landroid/content/Context;)Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/service/interfaces/SchedulingDelegate;->setupScheduledNotifications()V

    return-void
.end method
