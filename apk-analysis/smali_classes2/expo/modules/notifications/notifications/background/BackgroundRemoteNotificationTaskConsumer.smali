.class public Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;
.super Lexpo/modules/interfaces/taskManager/TaskConsumer;
.source "BackgroundRemoteNotificationTaskConsumer.java"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;


# static fields
.field private static final NOTIFICATION_KEY:Ljava/lang/String; = "notification"


# instance fields
.field private mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskManagerUtils"    # Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    .line 38
    invoke-direct {p0, p1, p2}, Lexpo/modules/interfaces/taskManager/TaskConsumer;-><init>(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V

    .line 39
    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->addBackgroundTaskConsumer(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;)V

    .line 40
    return-void
.end method

.method private static bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    goto :goto_2

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create JSON object from notification bundle. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "expo-notifications"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2
    goto :goto_0

    .line 110
    :cond_1
    return-object v0
.end method

.method private static jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 120
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse notification from JSON string. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "expo-notifications"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public didExecuteJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
    .locals 7
    .param p1, "jobService"    # Landroid/app/job/JobService;
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 72
    iget-object v0, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;->extractDataFromJobParams(Landroid/app/job/JobParameters;)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 79
    .local v2, "item":Landroid/os/PersistableBundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    iget-object v4, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    new-instance v5, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;

    invoke-direct {v5, p0, p1, p2}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;-><init>(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    const/4 v6, 0x0

    invoke-interface {v4, v3, v6, v5}, Lexpo/modules/interfaces/taskManager/TaskInterface;->execute(Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V

    .line 87
    .end local v2    # "item":Landroid/os/PersistableBundle;
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 91
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public didRegister(Lexpo/modules/interfaces/taskManager/TaskInterface;)V
    .locals 0
    .param p1, "task"    # Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 51
    iput-object p1, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 52
    return-void
.end method

.method public didUnregister()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 57
    return-void
.end method

.method public executeTask(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 125
    iget-object v0, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->execute(Landroid/os/Bundle;Ljava/lang/Error;)V

    .line 126
    return-void
.end method

.method public scheduleJob(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 60
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 65
    .local v1, "data":Landroid/os/PersistableBundle;
    invoke-static {p1}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object v2

    iget-object v3, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;->scheduleJob(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;Ljava/util/List;)V

    .line 68
    .end local v1    # "data":Landroid/os/PersistableBundle;
    :cond_0
    return-void
.end method

.method public taskType()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "remote-notification"

    return-object v0
.end method
