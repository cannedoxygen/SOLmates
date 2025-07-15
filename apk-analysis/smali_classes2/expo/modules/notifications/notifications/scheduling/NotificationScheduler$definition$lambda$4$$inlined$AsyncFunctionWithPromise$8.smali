.class public final Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$8;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 NotificationScheduler.kt\nexpo/modules/notifications/notifications/scheduling/NotificationScheduler\n*L\n1#1,611:1\n8#2,4:612\n98#3,20:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n*L\n273#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
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

    iput-object p1, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$8;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 275
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$8;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 10
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "ERR_NOTIFICATIONS_FAILED_TO_GET_NEXT_TRIGGER_DATE"

    const-string v1, "<name for destructuring parameter 0>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 273
    .local p1, "p0":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 274
    .end local v1    # "$i$f$enforceType":I
    move-object v1, p1

    check-cast v1, Lexpo/modules/core/arguments/ReadableArguments;

    .local v1, "triggerParams":Lexpo/modules/core/arguments/ReadableArguments;
    move-object v2, p2

    .local v2, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v3, 0x0

    .line 616
    .local v3, "$i$a$-AsyncFunctionWithPromise-NotificationScheduler$definition$1$5":I
    nop

    .line 617
    :try_start_0
    iget-object v4, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$8;->this$0:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;

    invoke-virtual {v4, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->triggerFromParams(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    move-result-object v4

    .line 618
    .local v4, "trigger":Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;
    instance-of v5, v4, Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 619
    move-object v5, v4

    check-cast v5, Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;

    invoke-interface {v5}, Lexpo/modules/notifications/notifications/interfaces/SchedulableNotificationTrigger;->nextTriggerDate()Ljava/util/Date;

    move-result-object v5

    .line 620
    .local v5, "nextTriggerDate":Ljava/util/Date;
    if-nez v5, :cond_0

    .line 621
    invoke-interface {v2, v6}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 623
    :cond_0
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface {v2, v6, v7}, Lexpo/modules/kotlin/Promise;->resolve(D)V

    .end local v5    # "nextTriggerDate":Ljava/util/Date;
    goto :goto_1

    .line 626
    :cond_1
    if-nez v4, :cond_2

    const-string v5, "null"

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "triggerDescription":Ljava/lang/String;
    :goto_0
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v7, "It is not possible to get next trigger date for triggers other than calendar-based. Provided trigger resulted in %s trigger."

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "format(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    .local v7, "message":Ljava/lang/String;
    const-string v8, "ERR_NOTIFICATIONS_INVALID_CALENDAR_TRIGGER"

    invoke-interface {v2, v8, v7, v6}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lexpo/modules/core/errors/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "trigger":Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;
    .end local v5    # "triggerDescription":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    goto :goto_1

    .line 632
    :catch_0
    move-exception v4

    .line 633
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get next trigger date for the trigger. Encountered unexpected null value. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {v2, v0, v5, v6}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 630
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 631
    .local v4, "e":Lexpo/modules/core/errors/InvalidArgumentException;
    invoke-virtual {v4}, Lexpo/modules/core/errors/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get next trigger date for the trigger. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {v2, v0, v5, v6}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 635
    .end local v4    # "e":Lexpo/modules/core/errors/InvalidArgumentException;
    :goto_1
    nop

    .line 274
    .end local v1    # "triggerParams":Lexpo/modules/core/arguments/ReadableArguments;
    .end local v2    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v3    # "$i$a$-AsyncFunctionWithPromise-NotificationScheduler$definition$1$5":I
    nop

    .line 275
    return-void
.end method
