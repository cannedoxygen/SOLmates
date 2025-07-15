.class Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1$1;
.super Landroid/os/ResultReceiver;
.source "SingleNotificationHandlerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;


# direct methods
.method constructor <init>(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1$1;->this$1:Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 97
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1$1;->this$1:Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;

    iget-object v0, v0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;->val$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {v0}, Lexpo/modules/kotlin/Promise;->resolve()V

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "exception"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1$1;->this$1:Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;

    iget-object v1, v1, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask$1;->val$promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "ERR_NOTIFICATION_PRESENTATION_FAILED"

    const-string v3, "Notification presentation failed."

    invoke-interface {v1, v2, v3, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
