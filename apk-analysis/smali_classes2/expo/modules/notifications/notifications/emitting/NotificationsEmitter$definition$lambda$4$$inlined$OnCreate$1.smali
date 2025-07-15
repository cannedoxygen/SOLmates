.class public final Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 NotificationsEmitter.kt\nexpo/modules/notifications/notifications/emitting/NotificationsEmitter\n*L\n1#1,213:1\n33#2,3:214\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 110
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnCreate-NotificationsEmitter$definition$1$1":I
    iget-object v1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    iget-object v2, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-string v3, "NotificationManager"

    const-class v4, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    invoke-virtual {v2, v3, v4}, Lexpo/modules/core/ModuleRegistry;->getSingletonModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    invoke-static {v1, v2}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->access$setNotificationManager$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;Lexpo/modules/notifications/notifications/interfaces/NotificationManager;)V

    .line 215
    iget-object v1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->access$getNotificationManager$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "notificationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    invoke-interface {v1, v2}, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;->addListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V

    .line 216
    nop

    .line 110
    .end local v0    # "$i$a$-OnCreate-NotificationsEmitter$definition$1$1":I
    return-void

    .line 214
    .restart local v0    # "$i$a$-OnCreate-NotificationsEmitter$definition$1$1":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
