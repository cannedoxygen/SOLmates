.class public abstract Lcom/facebook/react/HeadlessJsTaskService;
.super Landroid/app/Service;
.source "HeadlessJsTaskService.java"

# interfaces
.implements Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final mActiveTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveTasks(Lcom/facebook/react/HeadlessJsTaskService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvokeStartTask(Lcom/facebook/react/HeadlessJsTaskService;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/HeadlessJsTaskService;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    return-void
.end method

.method public static acquireWakeLockNow(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    nop

    .line 75
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 76
    .local v0, "powerManager":Landroid/os/PowerManager;
    nop

    .line 78
    const-class v1, Lcom/facebook/react/HeadlessJsTaskService;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    sget-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 80
    sget-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 82
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    return-void
.end method

.method private createReactContextAndScheduleTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 2
    .param p1, "taskConfig"    # Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 182
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableBridgelessArchitecture:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    .line 184
    .local v0, "reactHost":Lcom/facebook/react/ReactHost;
    new-instance v1, Lcom/facebook/react/HeadlessJsTaskService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/react/HeadlessJsTaskService$2;-><init>(Lcom/facebook/react/HeadlessJsTaskService;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Lcom/facebook/react/ReactHost;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/ReactHost;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 192
    invoke-interface {v0}, Lcom/facebook/react/ReactHost;->start()Lcom/facebook/react/interfaces/TaskInterface;

    .line 193
    .end local v0    # "reactHost":Lcom/facebook/react/ReactHost;
    goto :goto_0

    .line 194
    :cond_0
    nop

    .line 195
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 197
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    new-instance v1, Lcom/facebook/react/HeadlessJsTaskService$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/react/HeadlessJsTaskService$3;-><init>(Lcom/facebook/react/HeadlessJsTaskService;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 205
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    .line 207
    .end local v0    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    :goto_0
    return-void
.end method

.method private invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "taskConfig"    # Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 110
    nop

    .line 111
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v0

    .line 112
    .local v0, "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    invoke-virtual {v0, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->addTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    .line 114
    new-instance v1, Lcom/facebook/react/HeadlessJsTaskService$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/facebook/react/HeadlessJsTaskService$1;-><init>(Lcom/facebook/react/HeadlessJsTaskService;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method


# virtual methods
.method protected getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 2

    .line 170
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableBridgelessArchitecture:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    .line 172
    .local v0, "reactHost":Lcom/facebook/react/ReactHost;
    const-string v1, "getReactHost() is null in New Architecture"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    invoke-interface {v0}, Lcom/facebook/react/ReactHost;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    return-object v1

    .line 175
    .end local v0    # "reactHost":Lcom/facebook/react/ReactHost;
    :cond_0
    nop

    .line 176
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 177
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    return-object v1
.end method

.method protected getReactHost()Lcom/facebook/react/ReactHost;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method protected getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    return-object v0
.end method

.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 127
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 129
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v1

    .line 131
    .local v1, "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    invoke-virtual {v1, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->removeTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    .line 133
    .end local v1    # "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    :cond_0
    sget-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 134
    sget-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 136
    :cond_1
    return-void
.end method

.method public onHeadlessJsTaskFinish(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 143
    iget-object v0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->stopSelf()V

    .line 147
    :cond_0
    return-void
.end method

.method public onHeadlessJsTaskStart(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 139
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 49
    invoke-virtual {p0, p1}, Lcom/facebook/react/HeadlessJsTaskService;->getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    move-result-object v0

    .line 50
    .local v0, "taskConfig":Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/facebook/react/HeadlessJsTaskService;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    .line 52
    const/4 v1, 0x3

    return v1

    .line 54
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method protected startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 1
    .param p1, "taskConfig"    # Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 97
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 98
    invoke-static {p0}, Lcom/facebook/react/HeadlessJsTaskService;->acquireWakeLockNow(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 102
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/react/HeadlessJsTaskService;->createReactContextAndScheduleTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/facebook/react/HeadlessJsTaskService;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    .line 107
    :goto_0
    return-void
.end method
