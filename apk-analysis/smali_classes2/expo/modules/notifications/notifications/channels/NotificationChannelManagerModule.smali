.class public Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationChannelManagerModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationChannelManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationChannelManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 11 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,84:1\n61#2:85\n14#3:86\n25#3:87\n27#4,3:88\n31#4:301\n110#5,2:91\n233#6:93\n234#6,2:124\n243#6,8:126\n251#6,2:180\n259#6:182\n262#6,3:241\n243#6,8:244\n251#6,2:299\n26#7:94\n13#8,6:95\n19#8,19:105\n13#8,6:151\n19#8,19:161\n13#8,6:212\n19#8,19:222\n13#8,6:270\n19#8,19:280\n8#9,4:101\n8#9,4:157\n8#9,4:218\n8#9,4:276\n172#10,6:134\n168#10:140\n158#10,8:143\n182#10,7:183\n168#10:190\n158#10,8:193\n189#10:201\n168#10:202\n158#10,8:203\n187#10:211\n172#10,6:252\n168#10:258\n158#10,8:261\n176#10:269\n143#11,2:141\n143#11,2:191\n143#11,2:259\n*S KotlinDebug\n*F\n+ 1 NotificationChannelManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule\n*L\n22#1:85\n22#1:86\n22#1:87\n22#1:88,3\n22#1:301\n25#1:91,2\n33#1:93\n33#1:124,2\n43#1:126,8\n43#1:180,2\n52#1:182\n52#1:241,3\n66#1:244,8\n66#1:299,2\n33#1:94\n33#1:95,6\n33#1:105,19\n43#1:151,6\n43#1:161,19\n52#1:212,6\n52#1:222,19\n66#1:270,6\n66#1:280,19\n33#1:101,4\n43#1:157,4\n52#1:218,4\n66#1:276,4\n43#1:134,6\n43#1:140\n43#1:143,8\n52#1:183,7\n52#1:190\n52#1:193,8\n52#1:201\n52#1:202\n52#1:203,8\n52#1:211\n66#1:252,6\n66#1:258\n66#1:261,8\n66#1:269\n43#1:141,2\n52#1:191,2\n66#1:259,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0003J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "channelManager",
        "Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;",
        "channelSerializer",
        "Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getImportanceFromOptions",
        "",
        "channelOptions",
        "Lexpo/modules/core/arguments/ReadableArguments;",
        "getNameFromOptions",
        "",
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
.field private channelManager:Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

.field private channelSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getChannelManager$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    .line 18
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelManager:Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    return-object v0
.end method

.method public static final synthetic access$getChannelSerializer$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;

    .line 18
    iget-object v0, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    return-object v0
.end method

.method public static final synthetic access$getImportanceFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)I
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;
    .param p1, "channelOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getImportanceFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getNameFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;
    .param p1, "channelOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setChannelManager$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;
    .param p1, "<set-?>"    # Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    .line 18
    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelManager:Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;

    return-void
.end method

.method public static final synthetic access$setChannelSerializer$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;
    .param p1, "<set-?>"    # Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    .line 18
    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;->channelSerializer:Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;

    return-void
.end method

.method private final getImportanceFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)I
    .locals 3
    .param p1, "channelOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 79
    sget-object v0, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->getEnumValue()I

    move-result v0

    const-string v1, "importance"

    invoke-interface {p1, v1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "enumValue":I
    invoke-static {v0}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->fromEnumValue(I)Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/enums/NotificationImportance;

    .line 81
    .local v1, "importance":Lexpo/modules/notifications/notifications/enums/NotificationImportance;
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/enums/NotificationImportance;->getNativeValue()I

    move-result v2

    return v2
.end method

.method private final getNameFromOptions(Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "channelOptions"    # Lexpo/modules/core/arguments/ReadableArguments;

    .line 74
    const-string v0, "name"

    invoke-interface {p1, v0}, Lexpo/modules/core/arguments/ReadableArguments;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 29

    .line 22
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 85
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

    .line 86
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 87
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

    .line 88
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 89
    nop

    .line 90
    const/4 v0, 0x0

    .line 85
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 23
    .local v12, "$i$a$-ModuleDefinition-NotificationChannelManagerModule$definition$1":I
    const-string v13, "ExpoNotificationChannelManager"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 25
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v13, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v14, 0x0

    .line 91
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
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$OnCreate$1;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$OnCreate$1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    nop

    .line 33
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v14    # "$i$f$OnCreate":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelsAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 93
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 94
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 93
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$1;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v14, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v15, 0x0

    .line 95
    .local v15, "$i$f$createAsyncFunctionComponent":I
    const-class v13, Ljava/util/List;

    .line 98
    nop

    .line 99
    move/from16 v21, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v21, "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v3, :cond_0

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "$i$f$enforceType":I
    nop

    .line 104
    nop

    .line 105
    .end local v3    # "$i$f$enforceType":I
    :try_start_4
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v14, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 301
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationChannelManagerModule$definition$1":I
    .end local v14    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v15    # "$i$f$createAsyncFunctionComponent":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v21    # "$i$f$AsyncFunction":I
    :catchall_0
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    goto/16 :goto_5

    .line 107
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationChannelManagerModule$definition$1":I
    .restart local v14    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v15    # "$i$f$createAsyncFunctionComponent":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v21    # "$i$f$AsyncFunction":I
    :cond_0
    :try_start_5
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v3, :cond_1

    .line 108
    const/4 v3, 0x0

    .line 101
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 104
    nop

    .line 109
    .end local v3    # "$i$f$enforceType":I
    :try_start_6
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v14, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 111
    :cond_1
    :try_start_7
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v3, :cond_2

    .line 112
    const/4 v3, 0x0

    .line 101
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 104
    nop

    .line 113
    .end local v3    # "$i$f$enforceType":I
    :try_start_8
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v14, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 115
    :cond_2
    :try_start_9
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v3, :cond_3

    .line 116
    const/4 v3, 0x0

    .line 101
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 104
    nop

    .line 117
    .end local v3    # "$i$f$enforceType":I
    :try_start_a
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v14, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 119
    :cond_3
    :try_start_b
    const-class v3, Ljava/lang/String;

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v3, :cond_4

    .line 120
    const/4 v3, 0x0

    .line 101
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 104
    nop

    .line 121
    .end local v3    # "$i$f$enforceType":I
    :try_start_c
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v14, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 123
    :cond_4
    :try_start_d
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v14, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 98
    :goto_0
    nop

    .line 93
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v14    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v15    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 124
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    nop

    .line 93
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 43
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getNotificationChannelAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/String;

    const-class v13, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/4 v13, 0x1

    if-eqz v4, :cond_5

    .line 127
    :try_start_e
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v14, 0x0

    new-array v15, v14, [Lexpo/modules/kotlin/types/AnyType;

    .line 133
    new-instance v14, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$2;

    invoke-direct {v14, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$2;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 127
    invoke-direct {v4, v2, v15, v14}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move/from16 v21, v3

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    goto/16 :goto_2

    .line 129
    :cond_5
    :try_start_f
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 134
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 135
    const-class v14, Ljava/lang/String;

    .line 134
    .local v14, "p0$iv$iv":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 139
    .local v15, "$i$f$toArgsArray":I
    move/from16 v21, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v21    # "$i$f$AsyncFunction":I
    new-array v3, v13, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v22, 0x0

    .line 140
    .local v22, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 141
    .local v24, "$i$f$cachedAnyType":I
    new-instance v13, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move/from16 v26, v5

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_10
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v25, v6

    const/16 v20, 0x0

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v25, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_11
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v13, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v13

    .line 142
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 140
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_6

    sget-object v5, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$3;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$3;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 143
    .local v6, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 144
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move/from16 v27, v7

    .end local v7    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_12
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 146
    nop

    .line 147
    nop

    .line 144
    move-object/from16 v24, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v24, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_13
    invoke-direct {v6, v7, v8, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 149
    nop

    .line 143
    invoke-direct {v13, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 150
    move-object v6, v13

    goto :goto_1

    .line 301
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationChannelManagerModule$definition$1":I
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
    goto/16 :goto_5

    .line 140
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationChannelManagerModule$definition$1":I
    .restart local v14    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v15    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v21    # "$i$f$AsyncFunction":I
    .restart local v22    # "$i$f$toAnyType":I
    :cond_6
    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :goto_1
    const/4 v5, 0x0

    .end local v22    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 139
    nop

    .line 138
    nop

    .line 129
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    new-instance v4, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$4;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v3, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 151
    .local v5, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 152
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move-object v4, v6

    .line 133
    .end local v3    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_2
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 180
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    nop

    .line 133
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 126
    nop

    .line 52
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setNotificationChannelAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 182
    .local v3, "$i$f$AsyncFunction":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 183
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 184
    const-class v5, Ljava/lang/String;

    .line 183
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 185
    const-class v6, Lexpo/modules/core/arguments/ReadableArguments;

    .line 183
    .local v6, "p1$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 189
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x2

    new-array v8, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v13, 0x0

    .line 190
    .local v13, "$i$f$toAnyType":I
    sget-object v14, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v14, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 191
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

    .line 192
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v14}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 190
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v14    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_7

    sget-object v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 193
    .local v5, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 194
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 196
    nop

    .line 197
    nop

    .line 194
    move/from16 v28, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .local v28, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 199
    nop

    .line 193
    invoke-direct {v6, v14, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 200
    move-object v5, v6

    .line 190
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v28    # "$i$f$toAnyType":I
    :cond_7
    const/4 v3, 0x0

    .end local v13    # "$i$f$toAnyType":I
    aput-object v5, v8, v3

    .line 189
    nop

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$f$toAnyType":I
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v5, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v6, 0x0

    .line 191
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

    .line 192
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lexpo/modules/kotlin/types/AnyType;

    .line 202
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v5    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v6    # "$i$f$cachedAnyType":I
    if-nez v13, :cond_8

    sget-object v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$6;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$6;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 203
    .local v5, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 204
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 206
    nop

    .line 207
    nop

    .line 204
    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 209
    nop

    .line 203
    invoke-direct {v13, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 210
    nop

    .line 202
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$toAnyType":I
    :cond_8
    const/4 v3, 0x1

    .end local v28    # "$i$f$toAnyType":I
    aput-object v13, v8, v3

    .line 189
    nop

    .line 211
    nop

    .line 182
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v22    # "p1$iv$iv":Ljava/lang/Class;
    .end local v23    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v8

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 212
    .local v5, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 213
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 241
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    move-object v3, v6

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 242
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    nop

    .line 241
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 182
    nop

    .line 66
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deleteNotificationChannelAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 244
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/String;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 245
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 251
    new-instance v6, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$8;

    invoke-direct {v6, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 245
    invoke-direct {v4, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v22, v3

    goto/16 :goto_4

    .line 247
    :cond_9
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 252
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 253
    const-class v5, Ljava/lang/String;

    .line 252
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 257
    .local v6, "$i$f$toArgsArray":I
    const/4 v7, 0x1

    new-array v7, v7, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 258
    .local v8, "$i$f$toAnyType":I
    sget-object v13, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v13, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v14, 0x0

    .line 259
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

    .line 260
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v13}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 258
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v13    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v14    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_a

    sget-object v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$9;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 261
    .local v5, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 262
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 264
    nop

    .line 265
    nop

    .line 262
    move/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 267
    nop

    .line 261
    invoke-direct {v13, v14, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 268
    move-object v5, v13

    .line 258
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    :cond_a
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v5, v7, v3

    .line 257
    nop

    .line 269
    nop

    .line 247
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v6    # "$i$f$toArgsArray":I
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$10;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule$definition$lambda$5$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v7

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 270
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 273
    nop

    .line 274
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 275
    const/4 v6, 0x0

    .line 276
    .local v6, "$i$f$enforceType":I
    nop

    .line 279
    nop

    .line 280
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 282
    :cond_b
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 283
    const/4 v6, 0x0

    .line 276
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 279
    nop

    .line 284
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 286
    :cond_c
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 287
    const/4 v6, 0x0

    .line 276
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 279
    nop

    .line 288
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 290
    :cond_d
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 291
    const/4 v6, 0x0

    .line 276
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 279
    nop

    .line 292
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 294
    :cond_e
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 295
    const/4 v6, 0x0

    .line 276
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 279
    nop

    .line 296
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 298
    :cond_f
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 273
    :goto_3
    move-object v4, v6

    .line 251
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_4
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 299
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    nop

    .line 251
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 244
    nop

    .line 71
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v22    # "$i$f$AsyncFunction":I
    nop

    .line 85
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationChannelManagerModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 90
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 301
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 90
    nop

    .line 87
    .end local v9    # "$i$f$trace":I
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 86
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 85
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    nop

    .line 71
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 301
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

    goto :goto_5

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
    goto :goto_5

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
    goto :goto_5

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
    goto :goto_5

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
    goto :goto_5

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
    goto :goto_5

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
    :goto_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
