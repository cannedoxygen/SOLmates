.class Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;
.super Ljava/lang/Object;
.source "BackgroundRemoteNotificationTaskConsumer.java"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->didExecuteJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;

.field final synthetic val$jobService:Landroid/app/job/JobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;->this$0:Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;

    iput-object p2, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;->val$jobService:Landroid/app/job/JobService;

    iput-object p3, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;->val$jobService:Landroid/app/job/JobService;

    iget-object v1, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 85
    return-void
.end method
