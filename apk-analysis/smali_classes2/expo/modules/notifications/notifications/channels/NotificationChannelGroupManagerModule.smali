.class public final Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationChannelGroupManagerModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationChannelGroupManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationChannelGroupManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 9 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 10 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 11 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,72:1\n61#2:73\n14#3:74\n25#3:75\n27#4,3:76\n31#4:289\n110#5,2:79\n243#6,8:81\n251#6,2:135\n233#6:137\n234#6,2:168\n259#6:170\n262#6,3:229\n243#6,8:232\n251#6,2:287\n172#7,6:89\n168#7:95\n158#7,8:98\n182#7,7:171\n168#7:178\n158#7,8:181\n189#7:189\n168#7:190\n158#7,8:191\n187#7:199\n172#7,6:240\n168#7:246\n158#7,8:249\n176#7:257\n143#8,2:96\n143#8,2:179\n143#8,2:247\n13#9,6:106\n19#9,19:116\n13#9,6:139\n19#9,19:149\n13#9,6:200\n19#9,19:210\n13#9,6:258\n19#9,19:268\n8#10,4:112\n8#10,4:145\n8#10,4:206\n8#10,4:264\n26#11:138\n*S KotlinDebug\n*F\n+ 1 NotificationChannelGroupManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule\n*L\n19#1:73\n19#1:74\n19#1:75\n19#1:76,3\n19#1:289\n22#1:79,2\n29#1:81,8\n29#1:135,2\n38#1:137\n38#1:168,2\n48#1:170\n48#1:229,3\n61#1:232,8\n61#1:287,2\n29#1:89,6\n29#1:95\n29#1:98,8\n48#1:171,7\n48#1:178\n48#1:181,8\n48#1:189\n48#1:190\n48#1:191,8\n48#1:199\n61#1:240,6\n61#1:246\n61#1:249,8\n61#1:257\n29#1:96,2\n48#1:179,2\n61#1:247,2\n29#1:106,6\n29#1:116,19\n38#1:139,6\n38#1:149,19\n48#1:200,6\n48#1:210,19\n61#1:258,6\n61#1:268,19\n29#1:112,4\n38#1:145,4\n48#1:206,4\n61#1:264,4\n38#1:138\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "groupManager",
        "Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;",
        "groupSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getNameFromOptions",
        "",
        "groupOptions",
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
.field private groupManager:Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

.field private groupSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGroupManager$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    .line 15
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupManager:Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    return-object v0
.end method

.method public static final synthetic access$getGroupSerializer$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    .line 15
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    return-object v0
.end method

.method public static final synthetic access$getNameFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;
    .param p1, "groupOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 15
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setGroupManager$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;
    .param p1, "<set-?>"    # Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    .line 15
    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupManager:Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    return-void
.end method

.method public static final synthetic access$setGroupSerializer$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;
    .param p1, "<set-?>"    # Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    .line 15
    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->groupSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    return-void
.end method

.method private final getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;
    .locals 2
    .param p1, "groupOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 69
    const-string v0, "name"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 29

    .line 19
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 73
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

    .line 74
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 75
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

    .line 76
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    const/4 v0, 0x0

    .line 73
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 20
    .local v12, "$i$a$-ModuleDefinition-NotificationChannelGroupManagerModule$definition$1":I
    const-string v13, "ExpoNotificationChannelGroupManager"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 22
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v13, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v14, 0x0

    .line 79
    .local v14, "$i$f$OnCreate":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v15

    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    sget-object v0, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-instance v2, Lexpo/modules/kotlin/events/BasicEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move/from16 v18, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v18, "$i$f$ModuleDefinition":I
    :try_start_2
    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v19, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v19, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$OnCreate$1;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$OnCreate$1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    nop

    .line 29
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v14    # "$i$f$OnCreate":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelGroupAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 81
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/String;

    const-class v13, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_0

    .line 82
    :try_start_4
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v15, v14, [Lexpo/modules/kotlin/types/AnyType;

    .line 88
    new-instance v14, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$1;

    invoke-direct {v14, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 82
    invoke-direct {v4, v2, v15, v14}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v21, v3

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    goto/16 :goto_1

    .line 289
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationChannelGroupManagerModule$definition$1":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :catchall_0
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    goto/16 :goto_4

    .line 84
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$AsyncFunction":I
    .restart local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationChannelGroupManagerModule$definition$1":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :cond_0
    :try_start_5
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 89
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 90
    const-class v14, Ljava/lang/String;

    .line 89
    .local v14, "p0$iv$iv":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 94
    .local v15, "$i$f$toArgsArray":I
    move/from16 v21, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v21, "$i$f$AsyncFunction":I
    new-array v3, v13, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v22, 0x0

    .line 95
    .local v22, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 96
    .local v24, "$i$f$cachedAnyType":I
    new-instance v13, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move/from16 v26, v5

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v25, v6

    const/16 v20, 0x0

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v25, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v13, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v13

    .line 97
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 95
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_1

    sget-object v5, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 98
    .local v6, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 99
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v27, v7

    .end local v7    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_8
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 101
    nop

    .line 102
    nop

    .line 99
    move-object/from16 v24, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v24, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_9
    invoke-direct {v6, v7, v8, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 104
    nop

    .line 98
    invoke-direct {v13, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 105
    move-object v6, v13

    goto :goto_0

    .line 289
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationChannelGroupManagerModule$definition$1":I
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v21    # "$i$f$AsyncFunction":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_4

    .line 95
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationChannelGroupManagerModule$definition$1":I
    .restart local v14    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v15    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v21    # "$i$f$AsyncFunction":I
    .restart local v22    # "$i$f$toAnyType":I
    :cond_1
    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :goto_0
    const/4 v5, 0x0

    .end local v22    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 94
    nop

    .line 93
    nop

    .line 84
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$3;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v3, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 106
    .local v5, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 107
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move-object v4, v6

    .line 88
    .end local v3    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_1
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 135
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    nop

    .line 88
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 81
    nop

    .line 38
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelGroupsAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 138
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 137
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$4;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v6

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 139
    .local v6, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 140
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 137
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 168
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    nop

    .line 137
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 48
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setNotificationChannelGroupAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 170
    .restart local v3    # "$i$f$AsyncFunction":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 171
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 172
    const-class v5, Ljava/lang/String;

    .line 171
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 173
    const-class v6, Lexpo/modules/core/arguments/ReadableArguments;

    .line 171
    .local v6, "p1$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 177
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x2

    new-array v8, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v13, 0x0

    .line 178
    .local v13, "$i$f$toAnyType":I
    sget-object v14, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v14, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 179
    .local v15, "$i$f$cachedAnyType":I
    move/from16 v21, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v21    # "$i$f$AsyncFunction":I
    new-instance v3, Lkotlin/Pair;

    const-class v22, Ljava/lang/String;

    move-object/from16 v23, v5

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v23, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move-object/from16 v22, v6

    const/16 v20, 0x0

    .end local v6    # "p1$iv$iv":Ljava/lang/Class;
    .local v22, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v14}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 178
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v14    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_2

    sget-object v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 181
    .local v5, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 182
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 184
    nop

    .line 185
    nop

    .line 182
    move/from16 v28, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .local v28, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 187
    nop

    .line 181
    invoke-direct {v6, v14, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 188
    move-object v5, v6

    .line 178
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v28    # "$i$f$toAnyType":I
    :cond_2
    const/4 v3, 0x0

    .end local v13    # "$i$f$toAnyType":I
    aput-object v5, v8, v3

    .line 177
    nop

    .line 189
    const/4 v3, 0x0

    .line 190
    .local v3, "$i$f$toAnyType":I
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v5, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v6, 0x0

    .line 179
    .local v6, "$i$f$cachedAnyType":I
    new-instance v13, Lkotlin/Pair;

    const-class v14, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    move/from16 v28, v3

    const/4 v15, 0x0

    .end local v3    # "$i$f$toAnyType":I
    .restart local v28    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v13, v14, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v13

    .line 180
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lexpo/modules/kotlin/types/AnyType;

    .line 190
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v5    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v6    # "$i$f$cachedAnyType":I
    if-nez v13, :cond_3

    sget-object v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$6;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$6;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 191
    .local v5, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 192
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 194
    nop

    .line 195
    nop

    .line 192
    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 197
    nop

    .line 191
    invoke-direct {v13, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 198
    nop

    .line 190
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$toAnyType":I
    :cond_3
    const/4 v3, 0x1

    .end local v28    # "$i$f$toAnyType":I
    aput-object v13, v8, v3

    .line 177
    nop

    .line 199
    nop

    .line 170
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v22    # "p1$iv$iv":Ljava/lang/Class;
    .end local v23    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v8

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 200
    .local v5, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 201
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 229
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    move-object v3, v6

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 230
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    nop

    .line 229
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 170
    nop

    .line 61
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deleteNotificationChannelGroupAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 232
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/String;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 233
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 239
    new-instance v6, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$8;

    invoke-direct {v6, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 233
    invoke-direct {v4, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v22, v3

    goto/16 :goto_3

    .line 235
    :cond_4
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 240
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 241
    const-class v5, Ljava/lang/String;

    .line 240
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 245
    .local v6, "$i$f$toArgsArray":I
    const/4 v7, 0x1

    new-array v7, v7, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 246
    .local v8, "$i$f$toAnyType":I
    sget-object v13, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v13, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v14, 0x0

    .line 247
    .local v14, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v21, Ljava/lang/String;

    move/from16 v22, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v22, "$i$f$AsyncFunction":I
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v21, v5

    const/16 v20, 0x0

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v21, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v15, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v15

    .line 248
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v13}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 246
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v13    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v14    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_5

    sget-object v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$9;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 249
    .local v5, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 250
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 252
    nop

    .line 253
    nop

    .line 250
    move/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 255
    nop

    .line 249
    invoke-direct {v13, v14, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 256
    move-object v5, v13

    .line 246
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    :cond_5
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v5, v7, v3

    .line 245
    nop

    .line 257
    nop

    .line 235
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v6    # "$i$f$toArgsArray":I
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$10;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v7

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 258
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 261
    nop

    .line 262
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 268
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 270
    :cond_6
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 271
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 272
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 274
    :cond_7
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 275
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 276
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 278
    :cond_8
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 279
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 280
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 282
    :cond_9
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 283
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 284
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 286
    :cond_a
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 261
    :goto_2
    move-object v4, v6

    .line 239
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_3
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 287
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    nop

    .line 239
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 232
    nop

    .line 66
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v22    # "$i$f$AsyncFunction":I
    nop

    .line 73
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationChannelGroupManagerModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 78
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 289
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 78
    nop

    .line 75
    .end local v9    # "$i$f$trace":I
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 74
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 73
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    nop

    .line 66
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 289
    .restart local v9    # "$i$f$trace":I
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v18    # "$i$f$ModuleDefinition":I
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "$i$f$ModuleDefinition":I
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    :goto_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
