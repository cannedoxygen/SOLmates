.class final Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "resultCode",
        "",
        "resultData",
        "Landroid/os/Bundle;",
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
.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-object p2, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;->invoke(ILandroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 50
    const-string v0, "Failed to fetch scheduled notifications."

    const-string v1, "ERR_NOTIFICATIONS_FAILED_TO_FETCH"

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 51
    if-eqz p2, :cond_0

    const-string v3, "notificationRequests"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 52
    .local v3, "requests":Ljava/util/ArrayList;
    :goto_0
    if-nez v3, :cond_1

    .line 53
    iget-object v4, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {v4, v1, v0, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v1, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->serializeScheduledNotificationRequests(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/util/Collection;)V

    .end local v3    # "requests":Ljava/util/ArrayList;
    goto :goto_1

    .line 58
    :cond_2
    if-eqz p2, :cond_3

    const-string v2, "exception"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    :cond_3
    const-string v3, "null cannot be cast to non-null type java.lang.Exception{ kotlin.TypeAliasesKt.Exception }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Exception;

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$1$1;->$promise:Lexpo/modules/kotlin/Promise;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v3, v1, v0, v4}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
