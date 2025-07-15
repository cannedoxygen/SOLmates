.class final Lexpo/modules/notifications/service/NotificationsService$onReceive$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationsService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/service/NotificationsService;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationsService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationsService.kt\nexpo/modules/notifications/service/NotificationsService$onReceive$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,795:1\n1#2:796\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $pendingIntent:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic this$0:Lexpo/modules/notifications/service/NotificationsService;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Lexpo/modules/notifications/service/NotificationsService;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$pendingIntent:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p3, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->this$0:Lexpo/modules/notifications/service/NotificationsService;

    iput-object p4, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 597
    nop

    .line 598
    :try_start_0
    iget-object v0, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->this$0:Lexpo/modules/notifications/service/NotificationsService;

    iget-object v2, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$intent:Landroid/content/Intent;

    .line 796
    .local v0, "$this$invoke_u24lambda_u240":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 598
    .local v4, "$i$a$-run-NotificationsService$onReceive$1$1":I
    invoke-virtual {v1, v2, v3}, Lexpo/modules/notifications/service/NotificationsService;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    .end local v0    # "$this$invoke_u24lambda_u240":Landroid/content/Intent;
    .end local v4    # "$i$a$-run-NotificationsService$onReceive$1$1":I
    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$pendingIntent:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 601
    nop

    .line 602
    return-void

    .line 600
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lexpo/modules/notifications/service/NotificationsService$onReceive$1;->$pendingIntent:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0
.end method
