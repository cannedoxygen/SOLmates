.class public Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationsEmitter.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationsEmitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationsEmitter.kt\nexpo/modules/notifications/notifications/emitting/NotificationsEmitter\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,93:1\n61#2:94\n14#3:95\n25#3:96\n27#4,3:97\n31#4:143\n110#5,2:100\n124#5,2:102\n233#6:104\n234#6,2:135\n224#6:137\n225#6,2:141\n26#7:105\n26#7:138\n13#8,6:106\n19#8,19:116\n13#8,2:139\n8#9,4:112\n*S KotlinDebug\n*F\n+ 1 NotificationsEmitter.kt\nexpo/modules/notifications/notifications/emitting/NotificationsEmitter\n*L\n21#1:94\n21#1:95\n21#1:96\n21#1:97,3\n21#1:143\n30#1:100,2\n37#1:102,2\n41#1:104\n41#1:135,2\n45#1:137\n45#1:141,2\n41#1:105\n45#1:138\n41#1:106,6\n41#1:116,19\n45#1:139,2\n41#1:112,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
        "()V",
        "lastNotificationResponseBundle",
        "Landroid/os/Bundle;",
        "notificationManager",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationManager;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "onNotificationReceived",
        "",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "onNotificationResponseIntentReceived",
        "extras",
        "onNotificationResponseReceived",
        "",
        "response",
        "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
        "onNotificationsDropped",
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
.field private lastNotificationResponseBundle:Landroid/os/Bundle;

.field private notificationManager:Lexpo/modules/notifications/notifications/interfaces/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLastNotificationResponseBundle$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)Landroid/os/Bundle;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    .line 17
    iget-object v0, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static final synthetic access$getNotificationManager$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)Lexpo/modules/notifications/notifications/interfaces/NotificationManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;

    .line 17
    iget-object v0, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->notificationManager:Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    return-object v0
.end method

.method public static final synthetic access$setLastNotificationResponseBundle$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;
    .param p1, "<set-?>"    # Landroid/os/Bundle;

    .line 17
    iput-object p1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static final synthetic access$setNotificationManager$p(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;Lexpo/modules/notifications/notifications/interfaces/NotificationManager;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;
    .param p1, "<set-?>"    # Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    .line 17
    iput-object p1, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->notificationManager:Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 21

    .line 21
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 94
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

    .line 95
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 96
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

    .line 97
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 98
    nop

    .line 99
    const/4 v0, 0x0

    .line 94
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 22
    .local v12, "$i$a$-ModuleDefinition-NotificationsEmitter$definition$1":I
    const-string v13, "ExpoNotificationsEmitter"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 24
    nop

    .line 25
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "onDidReceiveNotification"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 26
    const-string v14, "onNotificationsDeleted"

    const/16 v16, 0x1

    aput-object v14, v13, v16

    .line 25
    nop

    .line 27
    const-string v14, "onDidReceiveNotificationResponse"

    const/16 v16, 0x2

    aput-object v14, v13, v16

    .line 25
    nop

    .line 24
    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 30
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v13, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v14, 0x0

    .line 100
    .local v14, "$i$f$OnCreate":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v15

    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    sget-object v0, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v18, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-instance v2, Lexpo/modules/kotlin/events/BasicEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v19, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v19, "$i$f$ModuleDefinition":I
    :try_start_2
    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v20, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v20, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v4, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnCreate$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    nop

    .line 37
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v14    # "$i$f$OnCreate":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v0, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 102
    .local v2, "$i$f$OnDestroy":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v13, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v14, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v15, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;

    invoke-direct {v15, v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$OnDestroy$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-direct {v13, v14, v15}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    nop

    .line 41
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnDestroy":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getLastNotificationResponseAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 104
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 105
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 104
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$AsyncFunction$1;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .local v13, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 106
    .local v14, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 107
    new-instance v15, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v15, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v15, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 104
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v15

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v13, 0x0

    .line 135
    .local v13, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    nop

    .line 104
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v13    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 45
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "clearLastNotificationResponseAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$f$AsyncFunctionWithoutArgs":I
    const/4 v4, 0x0

    .line 138
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v13, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 137
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$AsyncFunctionWithoutArgs$1;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter$definition$lambda$4$$inlined$AsyncFunctionWithoutArgs$1;-><init>(Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v13, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 139
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .line 140
    new-instance v15, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v15, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v15, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 137
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v15

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v13, 0x0

    .line 141
    .local v13, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$2$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    nop

    .line 137
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v13    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$2$iv":I
    nop

    .line 49
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunctionWithoutArgs":I
    nop

    .line 94
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationsEmitter$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 143
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 99
    nop

    .line 96
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    nop

    .line 95
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    nop

    .line 94
    .end local v5    # "$i$f$trace":I
    .end local v20    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 49
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 143
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v20    # "blockName$iv$iv":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v20    # "blockName$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v20    # "blockName$iv$iv":Ljava/lang/String;
    goto :goto_0

    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v20    # "blockName$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v20    # "blockName$iv$iv":Ljava/lang/String;
    goto :goto_0

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v20    # "blockName$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v20    # "blockName$iv$iv":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 2
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "NotificationsEmitter.onNotificationReceived"

    invoke-static {v1, v0}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    const-string v1, "onDidReceiveNotification"

    invoke-virtual {p0, v1, v0}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onNotificationResponseIntentReceived(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 79
    invoke-static {p1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toResponseBundleFromExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "toResponseBundleFromExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "NotificationsEmitter.onNotificationResponseIntentReceived"

    invoke-static {v1, v0}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    iput-object v0, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    .line 82
    const-string v1, "onDidReceiveNotificationResponse"

    iget-object v2, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z
    .locals 3
    .param p1, "response"    # Lexpo/modules/notifications/notifications/model/NotificationResponse;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "NotificationsEmitter.onNotificationResponseReceived"

    invoke-static {v1, v0}, Lexpo/modules/notifications/notifications/debug/DebugLogging;->logBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    iput-object v0, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    .line 74
    const-string v1, "onDidReceiveNotificationResponse"

    iget-object v2, p0, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->lastNotificationResponseBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    const/4 v1, 0x1

    return v1
.end method

.method public onNotificationsDropped()V
    .locals 2

    .line 90
    const-string v0, "onNotificationsDeleted"

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/emitting/NotificationsEmitter;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method
