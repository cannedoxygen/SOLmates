.class public final Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 NotificationScheduler.kt\nexpo/modules/notifications/notifications/scheduling/NotificationScheduler\n*L\n1#1,611:1\n22#2,4:612\n66#3,26:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n*L\n323#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u00012\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18"
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 325
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 16
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ERR_NOTIFICATIONS_FAILED_TO_SCHEDULE"

    const-string v3, "<name for destructuring parameter 0>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "promise"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .local v3, "p0":Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .local v5, "p1":Ljava/lang/Object;
    const/4 v6, 0x2

    aget-object v6, v0, v6

    .line 323
    .local v6, "p2":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 324
    .end local v0    # "$i$f$enforceType":I
    move-object v7, v6

    check-cast v7, Lexpo/modules/core/arguments/ReadableArguments;

    .local v7, "triggerParams":Lexpo/modules/core/arguments/ReadableArguments;
    move-object v8, v5

    check-cast v8, Lexpo/modules/core/arguments/ReadableArguments;

    .local v8, "notificationContentMap":Lexpo/modules/core/arguments/ReadableArguments;
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .local v0, "identifier":Ljava/lang/String;
    move-object v9, v0

    .end local v0    # "identifier":Ljava/lang/String;
    .local v9, "identifier":Ljava/lang/String;
    move-object/from16 v10, p2

    .local v10, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v11, 0x0

    .line 616
    .local v11, "$i$a$-AsyncFunctionWithPromise-NotificationScheduler$definition$1$2":I
    nop

    .line 617
    :try_start_0
    new-instance v0, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;

    iget-object v12, v1, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    invoke-virtual {v12}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->getSchedulingContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v0, v12}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->setPayload(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->build()Lexpo/modules/notifications/notifications/model/NotificationContent;

    move-result-object v0

    .line 618
    .local v0, "content":Lexpo/modules/notifications/notifications/model/NotificationContent;
    iget-object v12, v1, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    .line 619
    nop

    .line 620
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 621
    iget-object v13, v1, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    invoke-virtual {v13, v7}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->triggerFromParams(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v13

    .line 618
    invoke-virtual {v12, v9, v0, v13}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->createNotificationRequest(Ljava/lang/String;Lexpo/modules/notifications/notifications/model/NotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v12

    .line 624
    .local v12, "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    sget-object v13, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 625
    iget-object v14, v1, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    invoke-virtual {v14}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->getSchedulingContext()Landroid/content/Context;

    move-result-object v14

    .line 626
    nop

    .line 627
    iget-object v15, v1, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    move-object/from16 p1, v0

    .end local v0    # "content":Lexpo/modules/notifications/notifications/model/NotificationContent;
    .local p1, "content":Lexpo/modules/notifications/notifications/model/NotificationContent;
    new-instance v0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$2$1;

    invoke-direct {v0, v10, v9}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$1$2$1;-><init>(Lexpo/modules/kotlin/Promise;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v15, v0}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 624
    invoke-virtual {v13, v14, v12, v0}, Lexpo/modules/notifications/service/NotificationsService$Companion;->schedule(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationRequest;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Lexpo/modules/core/errors/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .end local p1    # "content":Lexpo/modules/notifications/notifications/model/NotificationContent;
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to schedule the notification. Encountered unexpected null value. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v0

    check-cast v13, Ljava/lang/Throwable;

    invoke-interface {v10, v2, v12, v13}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 636
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 637
    .local v0, "e":Lexpo/modules/core/errors/InvalidArgumentException;
    invoke-virtual {v0}, Lexpo/modules/core/errors/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to schedule the notification. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v0

    check-cast v13, Ljava/lang/Throwable;

    invoke-interface {v10, v2, v12, v13}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    .end local v0    # "e":Lexpo/modules/core/errors/InvalidArgumentException;
    :goto_0
    nop

    .line 324
    .end local v7    # "triggerParams":Lexpo/modules/core/arguments/ReadableArguments;
    .end local v8    # "notificationContentMap":Lexpo/modules/core/arguments/ReadableArguments;
    .end local v9    # "identifier":Ljava/lang/String;
    .end local v10    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v11    # "$i$a$-AsyncFunctionWithPromise-NotificationScheduler$definition$1$2":I
    nop

    .line 325
    return-void
.end method
