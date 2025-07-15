.class public Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationScheduler.kt\nexpo/modules/notifications/notifications/scheduling/NotificationScheduler\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n61#2:255\n14#3:256\n25#3:257\n27#4,3:258\n31#4:462\n243#5,8:261\n251#5,2:315\n322#5:317\n325#5,3:358\n272#5:361\n275#5,3:380\n243#5,8:383\n251#5,2:438\n272#5:440\n275#5,3:459\n172#6,6:269\n168#6:275\n158#6,8:278\n194#6,8:318\n168#6:326\n158#6,8:329\n202#6:337\n168#6:338\n158#6,8:339\n203#6:347\n168#6:348\n158#6,8:349\n200#6:357\n172#6,6:362\n168#6:368\n158#6,8:371\n176#6:379\n172#6,6:391\n168#6:397\n158#6,8:400\n176#6:408\n172#6,6:441\n168#6:447\n158#6,8:450\n176#6:458\n143#7,2:276\n143#7,2:327\n143#7,2:369\n143#7,2:398\n143#7,2:448\n13#8,6:286\n19#8,19:296\n13#8,6:409\n19#8,19:419\n8#9,4:292\n8#9,4:415\n1549#10:463\n1620#10,3:464\n*S KotlinDebug\n*F\n+ 1 NotificationScheduler.kt\nexpo/modules/notifications/notifications/scheduling/NotificationScheduler\n*L\n43#1:255\n43#1:256\n43#1:257\n43#1:258,3\n43#1:462\n46#1:261,8\n46#1:315,2\n65#1:317\n65#1:358,3\n93#1:361\n93#1:380,3\n95#1:383,8\n95#1:438,2\n97#1:440\n97#1:459,3\n46#1:269,6\n46#1:275\n46#1:278,8\n65#1:318,8\n65#1:326\n65#1:329,8\n65#1:337\n65#1:338\n65#1:339,8\n65#1:347\n65#1:348\n65#1:349,8\n65#1:357\n93#1:362,6\n93#1:368\n93#1:371,8\n93#1:379\n95#1:391,6\n95#1:397\n95#1:400,8\n95#1:408\n97#1:441,6\n97#1:447\n97#1:450,8\n97#1:458\n46#1:276,2\n65#1:327,2\n93#1:369,2\n95#1:398,2\n97#1:448,2\n46#1:286,6\n46#1:296,19\n95#1:409,6\n95#1:419,19\n46#1:292,4\n95#1:415,4\n251#1:463\n251#1:464,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014JF\u0010\u0016\u001a\u00020\u00172<\u0010\u0018\u001a8\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0015\u0012\u0013\u0018\u00010\u001e\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\n0\u0019j\u0002` H\u0004J\u0008\u0010!\u001a\u00020\"H\u0016J\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001e0$2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00110&H\u0014J\u0014\u0010\'\u001a\u0004\u0018\u00010\u00152\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006*"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "schedulingContext",
        "Landroid/content/Context;",
        "getSchedulingContext",
        "()Landroid/content/Context;",
        "cancelAllScheduledNotificationsAsync",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "cancelScheduledNotificationAsync",
        "identifier",
        "",
        "createNotificationRequest",
        "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
        "content",
        "Lexpo/modules/notifications/notifications/model/NotificationContent;",
        "notificationTrigger",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;",
        "createResultReceiver",
        "Landroid/os/ResultReceiver;",
        "body",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "resultCode",
        "Landroid/os/Bundle;",
        "resultData",
        "Lexpo/modules/notifications/ResultReceiverBody;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "serializeScheduledNotificationRequests",
        "",
        "requests",
        "",
        "triggerFromParams",
        "params",
        "Lexpo/modules/core/arguments/ReadableArguments;",
        "expo-notifications_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public cancelAllScheduledNotificationsAsync(Lexpo/modules/kotlin/Promise;)V
    .locals 3
    .param p1, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 137
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->getSchedulingContext()Landroid/content/Context;

    move-result-object v1

    .line 138
    new-instance v2, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$cancelAllScheduledNotificationsAsync$1;

    invoke-direct {v2, p1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$cancelAllScheduledNotificationsAsync$1;-><init>(Lexpo/modules/kotlin/Promise;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v2}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->removeAllScheduledNotifications(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    .line 147
    return-void
.end method

.method public cancelScheduledNotificationAsync(Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 122
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->getSchedulingContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    nop

    .line 124
    new-instance v2, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$cancelScheduledNotificationAsync$1;

    invoke-direct {v2, p2}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$cancelScheduledNotificationAsync$1;-><init>(Lexpo/modules/kotlin/Promise;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v2}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->removeScheduledNotification(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 133
    return-void
.end method

.method protected createNotificationRequest(Ljava/lang/String;Lexpo/modules/notifications/notifications/model/NotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "content"    # Lexpo/modules/notifications/notifications/model/NotificationContent;
    .param p3, "notificationTrigger"    # Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-object v1, p2

    check-cast v1, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    invoke-direct {v0, p1, v1, p3}, Lexpo/modules/notifications/notifications/model/NotificationRequest;-><init>(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)V

    return-object v0
.end method

.method protected final createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;
    .locals 1
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->handler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lexpo/modules/notifications/UtilsKt;->createDefaultResultReceiver(Landroid/os/Handler;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 32

    .line 43
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 255
    .local v3, "$i$f$ModuleDefinition":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".ModuleDefinition"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 256
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 257
    .local v7, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 258
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 259
    nop

    .line 260
    const/4 v0, 0x0

    .line 255
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 44
    .local v12, "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    const-string v13, "ExpoNotificationScheduler"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 46
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "getAllScheduledNotificationsAsync"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 261
    .local v15, "$i$f$AsyncFunction":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const-class v0, Lexpo/modules/kotlin/Promise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    const-class v2, Lexpo/modules/kotlin/Promise;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 262
    :try_start_2
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v19, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v19, "$i$f$ModuleDefinition":I
    :try_start_3
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 268
    new-instance v2, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$1;

    invoke-direct {v2, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 262
    invoke-direct {v0, v14, v3, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    goto/16 :goto_2

    .line 462
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    goto/16 :goto_7

    .end local v19    # "$i$f$ModuleDefinition":I
    .restart local v3    # "$i$f$ModuleDefinition":I
    :catchall_1
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .restart local v19    # "$i$f$ModuleDefinition":I
    goto/16 :goto_7

    .line 264
    .end local v19    # "$i$f$ModuleDefinition":I
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :cond_0
    move/from16 v19, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .restart local v19    # "$i$f$ModuleDefinition":I
    :try_start_4
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v0

    .line 269
    .local v0, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 270
    const-class v2, Lexpo/modules/kotlin/Promise;

    .line 269
    .local v2, "p0$iv$iv":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$f$toArgsArray":I
    move-object/from16 v21, v2

    move/from16 v22, v3

    const/4 v2, 0x1

    .end local v2    # "p0$iv$iv":Ljava/lang/Class;
    .end local v3    # "$i$f$toArgsArray":I
    .local v21, "p0$iv$iv":Ljava/lang/Class;
    .local v22, "$i$f$toArgsArray":I
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v2, 0x0

    .line 275
    .local v2, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 276
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v2

    .end local v2    # "$i$f$toAnyType":I
    .local v25, "$i$f$toAnyType":I
    new-instance v2, Lkotlin/Pair;

    const-class v26, Lexpo/modules/kotlin/Promise;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object/from16 v27, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v27, "blockName$iv$iv":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    move/from16 v26, v5

    const/16 v20, 0x0

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    .local v2, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 275
    .end local v2    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_1

    :try_start_7
    sget-object v2, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 278
    .local v4, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/AnyType;

    .line 279
    move/from16 v23, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Lexpo/modules/kotlin/Promise;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v28, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v28, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_8
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 281
    nop

    .line 282
    nop

    .line 279
    move/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_9
    invoke-direct {v4, v6, v7, v2}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 284
    nop

    .line 278
    invoke-direct {v5, v4, v0}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 285
    move-object v4, v5

    goto :goto_0

    .line 462
    .end local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v2    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    .end local v22    # "$i$f$toArgsArray":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v25    # "$i$f$toAnyType":I
    :catchall_2
    move-exception v0

    move-object/from16 v31, v8

    move/from16 v23, v9

    goto/16 :goto_7

    .end local v24    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    goto/16 :goto_7

    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_7

    .line 275
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v21    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v22    # "$i$f$toArgsArray":I
    .restart local v25    # "$i$f$toAnyType":I
    :cond_1
    move-object/from16 v28, v6

    move/from16 v24, v7

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .end local v25    # "$i$f$toAnyType":I
    :try_start_a
    aput-object v4, v3, v2

    .line 274
    nop

    .line 273
    nop

    .line 264
    .end local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    .end local v22    # "$i$f$toArgsArray":I
    new-instance v0, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$3;

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v2, v3

    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v3, 0x0

    .line 286
    .local v3, "$i$f$createAsyncFunctionComponent":I
    const-class v4, Lkotlin/Unit;

    .line 289
    nop

    .line 290
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v5, :cond_2

    .line 291
    const/4 v4, 0x0

    .line 292
    .local v4, "$i$f$enforceType":I
    nop

    .line 295
    nop

    .line 296
    .end local v4    # "$i$f$enforceType":I
    :try_start_b
    new-instance v4, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    .line 298
    :cond_2
    :try_start_c
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v5, :cond_3

    .line 299
    const/4 v4, 0x0

    .line 292
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 295
    nop

    .line 300
    .end local v4    # "$i$f$enforceType":I
    :try_start_d
    new-instance v4, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_1

    .line 302
    :cond_3
    :try_start_e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v5, :cond_4

    .line 303
    const/4 v4, 0x0

    .line 292
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 295
    nop

    .line 304
    .end local v4    # "$i$f$enforceType":I
    :try_start_f
    new-instance v4, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1

    .line 306
    :cond_4
    :try_start_10
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v5, :cond_5

    .line 307
    const/4 v4, 0x0

    .line 292
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 295
    nop

    .line 308
    .end local v4    # "$i$f$enforceType":I
    :try_start_11
    new-instance v4, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_1

    .line 310
    :cond_5
    :try_start_12
    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v4, :cond_6

    .line 311
    const/4 v4, 0x0

    .line 292
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 295
    nop

    .line 312
    .end local v4    # "$i$f$enforceType":I
    :try_start_13
    new-instance v4, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_1

    .line 314
    :cond_6
    :try_start_14
    new-instance v4, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 289
    :goto_1
    move-object v0, v4

    .line 268
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v3    # "$i$f$createAsyncFunctionComponent":I
    :goto_2
    nop

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 315
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    nop

    .line 268
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 261
    nop

    .line 65
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "scheduleNotificationAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 317
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 318
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 319
    const-class v6, Ljava/lang/String;

    .line 318
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 320
    const-class v7, Lexpo/modules/core/arguments/ReadableArguments;

    .line 318
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 321
    const-class v13, Lexpo/modules/core/arguments/ReadableArguments;

    .line 318
    .local v13, "p2$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 325
    .local v14, "$i$f$toArgsArray":I
    const/4 v15, 0x3

    new-array v15, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v21, 0x0

    .line 326
    .local v21, "$i$f$toAnyType":I
    sget-object v22, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v22, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 327
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v25, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v25, "$i$f$AsyncFunctionWithPromise":I
    new-instance v3, Lkotlin/Pair;

    const-class v29, Ljava/lang/String;

    move-object/from16 v30, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v30, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v29, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v29, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v22 .. v22}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 326
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v22    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_7

    sget-object v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 329
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 330
    move/from16 v22, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v22, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move-object/from16 v31, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v31, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_15
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 332
    nop

    .line 333
    nop

    .line 330
    move/from16 v23, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$trace":I
    .local v23, "$i$f$trace":I
    :try_start_16
    invoke-direct {v6, v8, v9, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 335
    nop

    .line 329
    invoke-direct {v7, v6, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 336
    move-object v6, v7

    goto :goto_3

    .line 462
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    .end local v13    # "p2$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v21    # "$i$f$toAnyType":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "$i$f$trace":I
    .end local v25    # "$i$f$AsyncFunctionWithPromise":I
    .end local v29    # "p1$iv$iv":Ljava/lang/Class;
    .end local v30    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move/from16 v23, v9

    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    goto/16 :goto_7

    .line 326
    .end local v23    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    .restart local v13    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v14    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v21    # "$i$f$toAnyType":I
    .restart local v25    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v29    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v30    # "p0$iv$iv":Ljava/lang/Class;
    :cond_7
    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    .end local v21    # "$i$f$toAnyType":I
    aput-object v6, v15, v3

    .line 325
    nop

    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 327
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v21, v3

    const/16 v20, 0x0

    .end local v3    # "$i$f$toAnyType":I
    .restart local v21    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v8

    .line 328
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 338
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_8

    sget-object v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 339
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 340
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 342
    nop

    .line 343
    nop

    .line 340
    move/from16 v22, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v22    # "$i$f$toAnyType":I
    invoke-direct {v7, v9, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 345
    nop

    .line 339
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 346
    nop

    .line 338
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v22    # "$i$f$toAnyType":I
    :cond_8
    const/4 v3, 0x1

    .end local v21    # "$i$f$toAnyType":I
    aput-object v8, v15, v3

    .line 325
    nop

    .line 347
    const/4 v3, 0x0

    .line 348
    .local v3, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 327
    .restart local v7    # "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v21, v3

    const/16 v18, 0x1

    .end local v3    # "$i$f$toAnyType":I
    .restart local v21    # "$i$f$toAnyType":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v8

    .line 328
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 348
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_9

    sget-object v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 349
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 350
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 352
    nop

    .line 353
    nop

    .line 350
    move/from16 v22, v6

    const/4 v6, 0x1

    .end local v6    # "$i$f$toAnyType":I
    .restart local v22    # "$i$f$toAnyType":I
    invoke-direct {v7, v9, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 355
    nop

    .line 349
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 356
    nop

    .line 348
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v22    # "$i$f$toAnyType":I
    :cond_9
    nop

    .end local v21    # "$i$f$toAnyType":I
    const/4 v3, 0x2

    aput-object v8, v15, v3

    .line 325
    nop

    .line 357
    nop

    .line 358
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p2$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v29    # "p1$iv$iv":Ljava/lang/Class;
    .end local v30    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 317
    invoke-direct {v4, v2, v15, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 358
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 359
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    nop

    .line 358
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 317
    nop

    .line 93
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v25    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "cancelScheduledNotificationAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 361
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 362
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 363
    const-class v6, Ljava/lang/String;

    .line 362
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 367
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 368
    .local v8, "$i$f$toAnyType":I
    sget-object v13, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v13, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v14, 0x0

    .line 369
    .local v14, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v21, Ljava/lang/String;

    move/from16 v22, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v22, "$i$f$AsyncFunctionWithPromise":I
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v21, v6

    const/16 v20, 0x0

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v21, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v15, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v15

    .line 370
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v13}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 368
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v13    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v14    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_a

    sget-object v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$5;->INSTANCE:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 371
    .local v6, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 372
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 374
    nop

    .line 375
    nop

    .line 372
    move/from16 v25, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .local v25, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 377
    nop

    .line 371
    invoke-direct {v13, v14, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 378
    move-object v6, v13

    .line 368
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$toAnyType":I
    :cond_a
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v3

    .line 367
    nop

    .line 379
    nop

    .line 380
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$6;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$6;-><init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 361
    invoke-direct {v4, v2, v9, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 380
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 381
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    nop

    .line 380
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 361
    nop

    .line 95
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v22    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "cancelAllScheduledNotificationsAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 383
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Lexpo/modules/kotlin/Promise;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 384
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v5, 0x0

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 390
    new-instance v5, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$4;

    invoke-direct {v5, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 384
    invoke-direct {v4, v2, v6, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v21, v3

    goto/16 :goto_6

    .line 386
    :cond_b
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 391
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 392
    const-class v5, Lexpo/modules/kotlin/Promise;

    .line 391
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 396
    .local v6, "$i$f$toArgsArray":I
    const/4 v7, 0x1

    new-array v8, v7, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v7, 0x0

    .line 397
    .local v7, "$i$f$toAnyType":I
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v9, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v13, 0x0

    .line 398
    .local v13, "$i$f$cachedAnyType":I
    new-instance v14, Lkotlin/Pair;

    const-class v15, Lexpo/modules/kotlin/Promise;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    move/from16 v21, v3

    const/16 v20, 0x0

    .end local v3    # "$i$f$AsyncFunction":I
    .local v21, "$i$f$AsyncFunction":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v14, v15, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v14

    .line 399
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lexpo/modules/kotlin/types/AnyType;

    .line 397
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v9    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v13    # "$i$f$cachedAnyType":I
    if-nez v14, :cond_c

    sget-object v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v9, 0x0

    .line 400
    .local v9, "$i$f$toAnyType":I
    new-instance v14, Lexpo/modules/kotlin/types/AnyType;

    .line 401
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/kotlin/Promise;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 403
    nop

    .line 404
    nop

    .line 401
    move-object/from16 v22, v5

    const/4 v5, 0x0

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v22, "p0$iv$iv":Ljava/lang/Class;
    invoke-direct {v13, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 406
    nop

    .line 400
    invoke-direct {v14, v13, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 407
    goto :goto_4

    .line 397
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "$i$f$toAnyType":I
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v5    # "p0$iv$iv":Ljava/lang/Class;
    :cond_c
    move-object/from16 v22, v5

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v22    # "p0$iv$iv":Ljava/lang/Class;
    :goto_4
    const/4 v3, 0x0

    .end local v7    # "$i$f$toAnyType":I
    aput-object v14, v8, v3

    .line 396
    nop

    .line 408
    nop

    .line 386
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v6    # "$i$f$toArgsArray":I
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$6;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v8

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 409
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 412
    nop

    .line 413
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 414
    const/4 v6, 0x0

    .line 415
    .local v6, "$i$f$enforceType":I
    nop

    .line 418
    nop

    .line 419
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 421
    :cond_d
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 422
    const/4 v6, 0x0

    .line 415
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 418
    nop

    .line 423
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 425
    :cond_e
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 426
    const/4 v6, 0x0

    .line 415
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 418
    nop

    .line 427
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 429
    :cond_f
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 430
    const/4 v6, 0x0

    .line 415
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 418
    nop

    .line 431
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 433
    :cond_10
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 434
    const/4 v6, 0x0

    .line 415
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 418
    nop

    .line 435
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 437
    :cond_11
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 412
    :goto_5
    move-object v4, v6

    .line 390
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_6
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 438
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    nop

    .line 390
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 383
    nop

    .line 97
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNextTriggerDateAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 440
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 441
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 442
    const-class v6, Lexpo/modules/core/arguments/ReadableArguments;

    .line 441
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 446
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 447
    .restart local v8    # "$i$f$toAnyType":I
    sget-object v13, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v13, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v14, 0x0

    .line 448
    .restart local v14    # "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v21, Lexpo/modules/core/arguments/ReadableArguments;

    move/from16 v22, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v22, "$i$f$AsyncFunctionWithPromise":I
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v21, v6

    const/16 v18, 0x1

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v21, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v15, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v15

    .line 449
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v13}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 447
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v13    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v14    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_12

    sget-object v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$7;->INSTANCE:Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$7;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 450
    .local v6, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 451
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 453
    nop

    .line 454
    nop

    .line 451
    move/from16 v25, v6

    const/4 v6, 0x1

    .end local v6    # "$i$f$toAnyType":I
    .restart local v25    # "$i$f$toAnyType":I
    invoke-direct {v14, v15, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 456
    nop

    .line 450
    invoke-direct {v13, v14, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 457
    move-object v6, v13

    .line 447
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$i$f$toAnyType":I
    :cond_12
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v3

    .line 446
    nop

    .line 458
    nop

    .line 459
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$8;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler$definition$lambda$4$$inlined$AsyncFunctionWithPromise$8;-><init>(Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 440
    invoke-direct {v4, v2, v9, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 459
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 460
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    nop

    .line 459
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 440
    nop

    .line 118
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v22    # "$i$f$AsyncFunctionWithPromise":I
    nop

    .line 255
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationScheduler$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 260
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 462
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 260
    nop

    .line 257
    .end local v23    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 256
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 255
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 118
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 462
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_7

    .end local v23    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v9, "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_7

    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_7

    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_7

    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_a
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_7

    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_b
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_7

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_c
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v19, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_7
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method protected getSchedulingContext()Landroid/content/Context;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/scheduling/NotificationScheduler;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method protected serializeScheduledNotificationRequests(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .param p1, "requests"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 463
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 464
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 465
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    .local v7, "p0":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    const/4 v8, 0x0

    .line 251
    .local v8, "$i$a$-map-NotificationScheduler$serializeScheduledNotificationRequests$1":I
    invoke-static {v7}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationRequest;)Landroid/os/Bundle;

    move-result-object v7

    .line 465
    .end local v7    # "p0":Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .end local v8    # "$i$a$-map-NotificationScheduler$serializeScheduledNotificationRequests$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 463
    nop

    .line 251
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method protected final triggerFromParams(Lexpo/modules/core/arguments/ReadableArguments;)Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;
    .locals 13
    .param p1, "params"    # Lexpo/modules/core/arguments/ReadableArguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/core/errors/InvalidArgumentException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 152
    return-object v0

    .line 154
    :cond_0
    const-string v1, "channelId"

    invoke-interface {p1, v1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "channelId":Ljava/lang/String;
    const-string v2, "type"

    invoke-interface {p1, v2}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "type":Ljava/lang/String;
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "Invalid value(s) provided for yearly trigger."

    const-string v4, "day"

    const-string v5, "minute"

    const-string v6, "hour"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v2, "monthly"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 202
    invoke-interface {p1, v4}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_1

    check-cast v2, Ljava/lang/Number;

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 203
    .local v2, "day":Ljava/lang/Number;
    :goto_0
    invoke-interface {p1, v6}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_2

    check-cast v4, Ljava/lang/Number;

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 204
    .local v4, "hour":Ljava/lang/Number;
    :goto_1
    invoke-interface {p1, v5}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_3

    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    .line 206
    .local v0, "minute":Ljava/lang/Number;
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 210
    new-instance v3, Lexpo/modules/notifications/notifications/triggers/MonthlyTrigger;

    .line 211
    nop

    .line 212
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 213
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 214
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 210
    invoke-direct {v3, v1, v5, v6, v7}, Lexpo/modules/notifications/notifications/triggers/MonthlyTrigger;-><init>(Ljava/lang/String;III)V

    .end local v0    # "minute":Ljava/lang/Number;
    .end local v2    # "day":Ljava/lang/Number;
    .end local v4    # "hour":Ljava/lang/Number;
    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    goto/16 :goto_8

    .line 207
    .restart local v0    # "minute":Ljava/lang/Number;
    .restart local v2    # "day":Ljava/lang/Number;
    .restart local v4    # "hour":Ljava/lang/Number;
    :cond_4
    new-instance v5, Lexpo/modules/core/errors/InvalidArgumentException;

    invoke-direct {v5, v3}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    .end local v0    # "minute":Ljava/lang/Number;
    .end local v2    # "day":Ljava/lang/Number;
    .end local v4    # "hour":Ljava/lang/Number;
    :sswitch_1
    const-string v2, "timeInterval"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 157
    const-string v2, "seconds"

    invoke-interface {p1, v2}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_5

    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    :cond_5
    if-eqz v0, :cond_6

    .line 160
    .local v0, "seconds":Ljava/lang/Number;
    new-instance v11, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-string v2, "repeats"

    invoke-interface {p1, v2}, Lexpo/modules/core/arguments/ReadableArguments;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lexpo/modules/notifications/notifications/triggers/TimeIntervalTrigger;-><init>(Ljava/lang/String;JZLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v0    # "seconds":Ljava/lang/Number;
    move-object v3, v11

    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    goto/16 :goto_8

    .line 158
    :cond_6
    new-instance v0, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v2, "Invalid value provided as interval of trigger."

    invoke-direct {v0, v2}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :sswitch_2
    const-string v0, "channel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 237
    new-instance v0, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/triggers/ChannelAwareTrigger;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    goto/16 :goto_8

    .line 155
    :sswitch_3
    const-string v2, "daily"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 171
    invoke-interface {p1, v6}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/lang/Number;

    goto :goto_2

    :cond_7
    move-object v2, v0

    .line 172
    .local v2, "hour":Ljava/lang/Number;
    :goto_2
    invoke-interface {p1, v5}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_8

    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    .line 174
    .local v0, "minute":Ljava/lang/Number;
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 178
    new-instance v3, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;

    .line 179
    nop

    .line 180
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 181
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 178
    invoke-direct {v3, v1, v4, v5}, Lexpo/modules/notifications/notifications/triggers/DailyTrigger;-><init>(Ljava/lang/String;II)V

    .end local v0    # "minute":Ljava/lang/Number;
    .end local v2    # "hour":Ljava/lang/Number;
    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    goto/16 :goto_8

    .line 175
    .restart local v0    # "minute":Ljava/lang/Number;
    .restart local v2    # "hour":Ljava/lang/Number;
    :cond_9
    new-instance v3, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v4, "Invalid value(s) provided for daily trigger."

    invoke-direct {v3, v4}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    .end local v0    # "minute":Ljava/lang/Number;
    .end local v2    # "hour":Ljava/lang/Number;
    :sswitch_4
    const-string v2, "date"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 164
    const-string v2, "timestamp"

    invoke-interface {p1, v2}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_a

    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    :cond_a
    if-eqz v0, :cond_b

    .line 167
    .local v0, "timestamp":Ljava/lang/Number;
    new-instance v2, Lexpo/modules/notifications/notifications/triggers/DateTrigger;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lexpo/modules/notifications/notifications/triggers/DateTrigger;-><init>(Ljava/lang/String;J)V

    .end local v0    # "timestamp":Ljava/lang/Number;
    move-object v3, v2

    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    goto/16 :goto_8

    .line 165
    :cond_b
    new-instance v0, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v2, "Invalid value provided as date of trigger."

    invoke-direct {v0, v2}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :sswitch_5
    const-string v2, "yearly"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 219
    invoke-interface {p1, v4}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_c

    check-cast v2, Ljava/lang/Number;

    goto :goto_3

    :cond_c
    move-object v2, v0

    :goto_3
    move-object v8, v2

    .line 220
    .local v8, "day":Ljava/lang/Number;
    const-string v2, "month"

    invoke-interface {p1, v2}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_d

    check-cast v2, Ljava/lang/Number;

    goto :goto_4

    :cond_d
    move-object v2, v0

    :goto_4
    move-object v9, v2

    .line 221
    .local v9, "month":Ljava/lang/Number;
    invoke-interface {p1, v6}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_e

    check-cast v2, Ljava/lang/Number;

    goto :goto_5

    :cond_e
    move-object v2, v0

    :goto_5
    move-object v11, v2

    .line 222
    .local v11, "hour":Ljava/lang/Number;
    invoke-interface {p1, v5}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_f

    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    .line 224
    .local v0, "minute":Ljava/lang/Number;
    :cond_f
    if-eqz v8, :cond_10

    if-eqz v9, :cond_10

    if-eqz v11, :cond_10

    if-eqz v0, :cond_10

    .line 228
    new-instance v12, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;

    .line 229
    nop

    .line 230
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 231
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 232
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 233
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 228
    move-object v2, v12

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lexpo/modules/notifications/notifications/triggers/YearlyTrigger;-><init>(Ljava/lang/String;IIII)V

    .end local v0    # "minute":Ljava/lang/Number;
    .end local v8    # "day":Ljava/lang/Number;
    .end local v9    # "month":Ljava/lang/Number;
    .end local v11    # "hour":Ljava/lang/Number;
    move-object v3, v12

    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    goto :goto_8

    .line 225
    .restart local v0    # "minute":Ljava/lang/Number;
    .restart local v8    # "day":Ljava/lang/Number;
    .restart local v9    # "month":Ljava/lang/Number;
    .restart local v11    # "hour":Ljava/lang/Number;
    :cond_10
    new-instance v2, Lexpo/modules/core/errors/InvalidArgumentException;

    invoke-direct {v2, v3}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v0    # "minute":Ljava/lang/Number;
    .end local v8    # "day":Ljava/lang/Number;
    .end local v9    # "month":Ljava/lang/Number;
    .end local v11    # "hour":Ljava/lang/Number;
    :sswitch_6
    const-string v2, "weekly"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 186
    const-string v2, "weekday"

    invoke-interface {p1, v2}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_11

    check-cast v2, Ljava/lang/Number;

    goto :goto_6

    :cond_11
    move-object v2, v0

    .line 187
    .local v2, "weekday":Ljava/lang/Number;
    :goto_6
    invoke-interface {p1, v6}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_12

    check-cast v3, Ljava/lang/Number;

    goto :goto_7

    :cond_12
    move-object v3, v0

    .line 188
    .local v3, "hour":Ljava/lang/Number;
    :goto_7
    invoke-interface {p1, v5}, Lexpo/modules/core/arguments/ReadableArguments;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_13

    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    .line 190
    .restart local v0    # "minute":Ljava/lang/Number;
    :cond_13
    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    if-eqz v0, :cond_14

    .line 193
    new-instance v4, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;

    .line 194
    nop

    .line 195
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 196
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 197
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 193
    invoke-direct {v4, v1, v5, v6, v7}, Lexpo/modules/notifications/notifications/triggers/WeeklyTrigger;-><init>(Ljava/lang/String;III)V

    .end local v0    # "minute":Ljava/lang/Number;
    .end local v2    # "weekday":Ljava/lang/Number;
    .end local v3    # "hour":Ljava/lang/Number;
    move-object v3, v4

    check-cast v3, Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    .line 155
    .end local v10    # "type":Ljava/lang/String;
    :goto_8
    return-object v3

    .line 191
    .restart local v0    # "minute":Ljava/lang/Number;
    .restart local v2    # "weekday":Ljava/lang/Number;
    .restart local v3    # "hour":Ljava/lang/Number;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_14
    new-instance v4, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v5, "Invalid value(s) provided for weekly trigger."

    invoke-direct {v4, v5}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    .end local v0    # "minute":Ljava/lang/Number;
    .end local v2    # "weekday":Ljava/lang/Number;
    .end local v3    # "hour":Ljava/lang/Number;
    :cond_15
    :goto_9
    new-instance v0, Lexpo/modules/core/errors/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported on Android."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_6
        -0x2bc88576 -> :sswitch_5
        0x2eefae -> :sswitch_4
        0x5aede19 -> :sswitch_3
        0x2c0b7d03 -> :sswitch_2
        0x366b7eb2 -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch
.end method
