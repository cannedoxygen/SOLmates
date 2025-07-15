.class public final Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnDestroy$1\n+ 2 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,213:1\n77#2,3:214\n82#2,2:219\n1855#3,2:217\n*S KotlinDebug\n*F\n+ 1 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n*L\n79#1:217,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnDestroy$1"
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 124
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnDestroy-NotificationsHandler$definition$1$2":I
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$getNotificationManager$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "notificationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    invoke-interface {v1, v3}, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;->removeListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V

    .line 216
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$getTasksMap$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 217
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;

    .local v6, "p0":Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;
    const/4 v7, 0x0

    .line 216
    .local v7, "$i$a$-forEach-NotificationsHandler$definition$1$2$1":I
    invoke-virtual {v6}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->stop()V

    .line 217
    .end local v6    # "p0":Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;
    .end local v7    # "$i$a$-forEach-NotificationsHandler$definition$1$2$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 218
    :cond_1
    nop

    .line 219
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$getNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Landroid/os/HandlerThread;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "notificationsHandlerThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 220
    nop

    .line 124
    .end local v0    # "$i$a$-OnDestroy-NotificationsHandler$definition$1$2":I
    return-void
.end method
