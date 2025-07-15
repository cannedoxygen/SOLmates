.class public final Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n*L\n1#1,213:1\n65#2,10:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1"
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
.field final synthetic $this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

.field final synthetic this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    iput-object p2, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 110
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnCreate-NotificationsHandler$definition$1$1":I
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    iget-object v2, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    invoke-static {v1, v2}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$setModuleRegistry$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Lexpo/modules/core/ModuleRegistry;)V

    .line 218
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    iget-object v2, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v2}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$getModuleRegistry$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "moduleRegistry"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    const-string v4, "NotificationManager"

    const-class v5, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    invoke-virtual {v2, v4, v5}, Lexpo/modules/core/ModuleRegistry;->getSingletonModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    invoke-static {v1, v2}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$setNotificationManager$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Lexpo/modules/notifications/notifications/interfaces/NotificationManager;)V

    .line 219
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$getNotificationManager$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "notificationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    iget-object v2, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    invoke-interface {v1, v2}, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;->addListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V

    .line 220
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    new-instance v2, Landroid/os/HandlerThread;

    iget-object v4, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationsHandlerThread - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$setNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Landroid/os/HandlerThread;)V

    .line 221
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$getNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Landroid/os/HandlerThread;

    move-result-object v1

    const-string v2, "notificationsHandlerThread"

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 222
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v5}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$getNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Landroid/os/HandlerThread;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v5

    :goto_0
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v4}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$setHandler$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Landroid/os/Handler;)V

    .line 223
    nop

    .line 110
    .end local v0    # "$i$a$-OnCreate-NotificationsHandler$definition$1$1":I
    return-void

    .line 218
    .restart local v0    # "$i$a$-OnCreate-NotificationsHandler$definition$1$1":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
