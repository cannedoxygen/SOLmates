.class public final Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ExpoNotificationPresentationModule.kt\nexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule\n*L\n1#1,611:1\n15#2,4:612\n35#3,17:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n*L\n298#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u00012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14"
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 300
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 13
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 298
    .local p1, "p1":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 299
    .end local v1    # "$i$f$enforceType":I
    move-object v1, p1

    check-cast v1, Lexpo/modules/core/arguments/ReadableArguments;

    .local v1, "payload":Lexpo/modules/core/arguments/ReadableArguments;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .local v2, "identifier":Ljava/lang/String;
    move-object v3, p2

    .local v3, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v4, 0x0

    .line 616
    .local v4, "$i$a$-AsyncFunctionWithPromise-ExpoNotificationPresentationModule$definition$1$1":I
    new-instance v5, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;

    iget-object v6, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    invoke-static {v6}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->access$getContext(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lexpo/modules/notifications/notifications/ArgumentsNotificationContentBuilder;->setPayload(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/notifications/notifications/model/NotificationContent$Builder;->build()Lexpo/modules/notifications/notifications/model/NotificationContent;

    move-result-object v5

    .line 617
    .local v5, "content":Lexpo/modules/notifications/notifications/model/NotificationContent;
    iget-object v6, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v5

    check-cast v7, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->createNotificationRequest(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v6

    .line 618
    .local v6, "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    new-instance v7, Lexpo/modules/notifications/notifications/model/Notification;

    invoke-direct {v7, v6}, Lexpo/modules/notifications/notifications/model/Notification;-><init>(Lexpo/modules/notifications/notifications/model/NotificationRequest;)V

    .line 619
    .local v7, "notification":Lexpo/modules/notifications/notifications/model/Notification;
    sget-object v9, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 620
    iget-object v10, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    invoke-static {v10}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->access$getContext(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)Landroid/content/Context;

    move-result-object v10

    .line 621
    nop

    .line 622
    nop

    .line 623
    iget-object v11, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->this$0:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    new-instance v12, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$1$1$1;

    invoke-direct {v12, v3, v2}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$1$1$1;-><init>(Lexpo/modules/kotlin/Promise;Ljava/lang/String;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v11, v12}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v11

    .line 619
    invoke-virtual {v9, v10, v7, v8, v11}, Lexpo/modules/notifications/service/NotificationsService$Companion;->present(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationBehavior;Landroid/os/ResultReceiver;)V

    .line 632
    nop

    .line 299
    .end local v1    # "payload":Lexpo/modules/core/arguments/ReadableArguments;
    .end local v2    # "identifier":Ljava/lang/String;
    .end local v3    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v4    # "$i$a$-AsyncFunctionWithPromise-ExpoNotificationPresentationModule$definition$1$1":I
    .end local v5    # "content":Lexpo/modules/notifications/notifications/model/NotificationContent;
    .end local v6    # "request":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .end local v7    # "notification":Lexpo/modules/notifications/notifications/model/Notification;
    nop

    .line 300
    return-void
.end method
