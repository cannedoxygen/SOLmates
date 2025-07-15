.class public final Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnDestroy$1\n+ 2 NotificationsEmitter.kt\nexpo/modules/notifications/notifications/emitting/NotificationsEmitter\n*L\n1#1,213:1\n38#2,2:214\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 124
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnDestroy-NotificationsEmitter$definition$1$2":I
    iget-object v1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    invoke-static {v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->access$getNotificationManager$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "notificationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;->this$0:Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    invoke-interface {v1, v2}, Lexpo/modules/notifications/notifications/interfaces/NotificationManager;->removeListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V

    .line 215
    nop

    .line 124
    .end local v0    # "$i$a$-OnDestroy-NotificationsEmitter$definition$1$2":I
    return-void
.end method
