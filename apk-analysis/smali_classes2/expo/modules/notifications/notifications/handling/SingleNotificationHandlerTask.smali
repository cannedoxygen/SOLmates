.class public Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;
.super Ljava/lang/Object;
.source "SingleNotificationHandlerTask.java"


# static fields
.field private static final HANDLE_NOTIFICATION_EVENT_NAME:Ljava/lang/String; = "onHandleNotification"

.field private static final HANDLE_NOTIFICATION_TIMEOUT_EVENT_NAME:Ljava/lang/String; = "onHandleNotificationTimeout"

.field private static final SECONDS_TO_TIMEOUT:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

.field private mEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

.field private mHandler:Landroid/os/Handler;

.field private mNotification:Lexpo/modules/notifications/notifications/model/Notification;

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$7W-Ia3UNDLbLTUHNdUQiMM5Q2T8(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->handleTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotification(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)Lexpo/modules/notifications/notifications/model/Notification;
    .locals 0

    iget-object p0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinish(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->finish()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lexpo/modules/core/interfaces/services/EventEmitter;Landroid/os/Handler;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventEmitter"    # Lexpo/modules/core/interfaces/services/EventEmitter;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;
    .param p5, "delegate"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p2, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    .line 52
    iput-object p4, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    .line 53
    iput-object p5, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mDelegate:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    .line 54
    return-void
.end method

.method private finish()V
    .locals 2

    .line 130
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mDelegate:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-virtual {v0, p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->onTaskFinished(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)V

    .line 132
    return-void
.end method

.method private handleTimeout()V
    .locals 3

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "eventBody":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    const-string v2, "onHandleNotificationTimeout"

    invoke-interface {v1, v2, v0}, Lexpo/modules/core/interfaces/services/EventEmitter;->emit(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->finish()V

    .line 123
    return-void
.end method


# virtual methods
.method getIdentifier()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method processNotificationWithBehavior(Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lexpo/modules/kotlin/Promise;)V
    .locals 2
    .param p1, "behavior"    # Lexpo/modules/notifications/notifications/model/NotificationBehavior;
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 91
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;

    invoke-direct {v1, p0, p1, p2}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;-><init>(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lexpo/modules/kotlin/Promise;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method start()V
    .locals 5

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "eventBody":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mNotification:Lexpo/modules/notifications/notifications/model/Notification;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    const-string v2, "onHandleNotification"

    invoke-interface {v1, v2, v0}, Lexpo/modules/core/interfaces/services/EventEmitter;->emit(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method stop()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->finish()V

    .line 82
    return-void
.end method
