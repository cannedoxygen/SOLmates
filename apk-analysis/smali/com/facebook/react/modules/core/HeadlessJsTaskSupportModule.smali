.class public Lcom/facebook/react/modules/core/HeadlessJsTaskSupportModule;
.super Lcom/facebook/fbreact/specs/NativeHeadlessJsTaskSupportSpec;
.source "HeadlessJsTaskSupportModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "HeadlessJsTaskSupport"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/react/modules/core/HeadlessJsTaskSupportModule;",
        "Lcom/facebook/fbreact/specs/NativeHeadlessJsTaskSupportSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "notifyTaskFinished",
        "",
        "taskIdDouble",
        "",
        "notifyTaskRetry",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "ReactAndroid_debug"
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
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeHeadlessJsTaskSupportSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 22
    return-void
.end method


# virtual methods
.method public notifyTaskFinished(D)V
    .locals 5
    .param p1, "taskIdDouble"    # D

    .line 40
    double-to-int v0, p1

    .line 41
    .local v0, "taskId":I
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/HeadlessJsTaskSupportModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v1

    .line 42
    .local v1, "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    invoke-virtual {v1, v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->isTaskRunning(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1, v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->finishTask(I)V

    goto :goto_0

    :cond_0
    nop

    .line 47
    nop

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 45
    const-class v3, Lcom/facebook/react/modules/core/HeadlessJsTaskSupportModule;

    const-string v4, "Tried to finish non-active task with id %d. Did it time out?"

    invoke-static {v3, v4, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void
.end method

.method public notifyTaskRetry(DLcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "taskIdDouble"    # D
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    double-to-int v0, p1

    .line 26
    .local v0, "taskId":I
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/HeadlessJsTaskSupportModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v1

    .line 27
    .local v1, "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    invoke-virtual {v1, v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->isTaskRunning(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v1, v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->retryTask(I)Z

    move-result v2

    .line 29
    .local v2, "retryPosted":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .end local v2    # "retryPosted":Z
    goto :goto_0

    :cond_0
    nop

    .line 33
    nop

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 31
    const-class v3, Lcom/facebook/react/modules/core/HeadlessJsTaskSupportModule;

    const-string v4, "Tried to retry non-active task with id %d. Did it time out?"

    invoke-static {v3, v4, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 37
    :goto_0
    return-void
.end method
