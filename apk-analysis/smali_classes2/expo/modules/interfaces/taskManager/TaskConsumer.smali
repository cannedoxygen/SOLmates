.class public abstract Lexpo/modules/interfaces/taskManager/TaskConsumer;
.super Ljava/lang/Object;
.source "TaskConsumer.java"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;


# static fields
.field public static VERSION:I


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskManagerUtils:Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput v0, Lexpo/modules/interfaces/taskManager/TaskConsumer;->VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskManagerUtils"    # Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/interfaces/taskManager/TaskConsumer;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 26
    iput-object p2, p0, Lexpo/modules/interfaces/taskManager/TaskConsumer;->mTaskManagerUtils:Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    .line 27
    return-void
.end method


# virtual methods
.method public canReceiveCustomBroadcast(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public didCancelJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobService"    # Landroid/app/job/JobService;
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public didExecuteJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobService"    # Landroid/app/job/JobService;
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public didReceiveBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 41
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/interfaces/taskManager/TaskConsumer;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/interfaces/taskManager/TaskConsumer;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/interfaces/taskManager/TaskConsumer;->mTaskManagerUtils:Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    return-object v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method
