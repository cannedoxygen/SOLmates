.class public final Lexpo/modules/notifications/tokens/PushTokenModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "PushTokenModule.kt"

# interfaces
.implements Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushTokenModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushTokenModule.kt\nexpo/modules/notifications/tokens/PushTokenModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 9 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 10 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,106:1\n61#2:107\n14#3:108\n25#3:109\n27#4,3:110\n31#4:230\n110#5,2:113\n124#5,2:115\n243#6,8:117\n251#6,2:171\n243#6,8:173\n251#6,2:228\n172#7,6:125\n168#7:131\n158#7,8:134\n172#7,6:181\n168#7:187\n158#7,8:190\n176#7:198\n143#8,2:132\n143#8,2:188\n13#9,6:142\n19#9,19:152\n13#9,6:199\n19#9,19:209\n8#10,4:148\n8#10,4:205\n*S KotlinDebug\n*F\n+ 1 PushTokenModule.kt\nexpo/modules/notifications/tokens/PushTokenModule\n*L\n23#1:107\n23#1:108\n23#1:109\n23#1:110,3\n23#1:230\n28#1:113,2\n37#1:115,2\n46#1:117,8\n46#1:171,2\n65#1:173,8\n65#1:228,2\n46#1:125,6\n46#1:131\n46#1:134,8\n65#1:181,6\n65#1:187\n65#1:190,8\n65#1:198\n46#1:132,2\n65#1:188,2\n46#1:142,6\n46#1:152,19\n65#1:199,6\n65#1:209,19\n46#1:148,4\n65#1:205,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/notifications/tokens/PushTokenModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;",
        "()V",
        "eventEmitter",
        "Lexpo/modules/core/interfaces/services/EventEmitter;",
        "tokenManager",
        "Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;",
        "getTokenManager",
        "()Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getFirebaseMessagingInstance",
        "Lcom/google/firebase/messaging/FirebaseMessaging;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "onNewToken",
        "",
        "token",
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
.field private eventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFirebaseMessagingInstance(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/kotlin/Promise;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/tokens/PushTokenModule;
    .param p1, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/notifications/tokens/PushTokenModule;->getFirebaseMessagingInstance(Lexpo/modules/kotlin/Promise;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTokenManager(Lexpo/modules/notifications/tokens/PushTokenModule;)Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/tokens/PushTokenModule;

    .line 18
    invoke-direct {p0}, Lexpo/modules/notifications/tokens/PushTokenModule;->getTokenManager()Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setEventEmitter$p(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/core/interfaces/services/EventEmitter;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/tokens/PushTokenModule;
    .param p1, "<set-?>"    # Lexpo/modules/core/interfaces/services/EventEmitter;

    .line 18
    iput-object p1, p0, Lexpo/modules/notifications/tokens/PushTokenModule;->eventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    return-void
.end method

.method private final getFirebaseMessagingInstance(Lexpo/modules/kotlin/Promise;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 4
    .param p1, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 80
    nop

    .line 81
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalStateException;
    nop

    .line 84
    nop

    .line 85
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Make sure to complete the guide at https://docs.expo.dev/push-notifications/fcm-credentials/ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 83
    const-string v3, "E_REGISTRATION_FAILED"

    invoke-interface {p1, v3, v1, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v1, 0x0

    move-object v0, v1

    .line 80
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-object v0
.end method

.method private final getTokenManager()Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;
    .locals 3

    .line 19
    invoke-virtual {p0}, Lexpo/modules/notifications/tokens/PushTokenModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    .line 20
    const-string v1, "PushTokenManager"

    const-class v2, Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/core/ModuleRegistry;->getSingletonModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;

    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 29

    .line 23
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 107
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

    .line 108
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 109
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

    .line 110
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    .line 107
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 24
    .local v12, "$i$a$-ModuleDefinition-PushTokenModule$definition$1":I
    const-string v13, "ExpoPushTokenManager"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 26
    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const-string v15, "onDevicePushToken"

    const/4 v13, 0x0

    aput-object v15, v14, v13

    invoke-virtual {v11, v14}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 28
    move-object v14, v11

    check-cast v14, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v14, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v15, 0x0

    .line 113
    .local v15, "$i$f$OnCreate":I
    invoke-virtual {v14}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v13

    move/from16 v18, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v18, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    sget-object v0, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v19, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v19, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-instance v2, Lexpo/modules/kotlin/events/BasicEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move/from16 v20, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v20, "$i$f$ModuleDefinition":I
    :try_start_2
    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object/from16 v21, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v21, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v4, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;-><init>(Lexpo/modules/notifications/tokens/PushTokenModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    nop

    .line 37
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v15    # "$i$f$OnCreate":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v0, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$f$OnDestroy":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v13, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v14, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v15, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnDestroy$1;

    invoke-direct {v15, v1}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnDestroy$1;-><init>(Lexpo/modules/notifications/tokens/PushTokenModule;)V

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-direct {v13, v14, v15}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    nop

    .line 46
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnDestroy":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getDevicePushTokenAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Lexpo/modules/kotlin/Promise;

    const-class v13, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v4, :cond_0

    .line 118
    :try_start_4
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 124
    new-instance v13, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;

    invoke-direct {v13, v1, v11}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 118
    invoke-direct {v4, v2, v14, v13}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v22, v3

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    goto/16 :goto_2

    .line 230
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-PushTokenModule$definition$1":I
    .end local v18    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :catchall_0
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    goto/16 :goto_6

    .line 120
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$AsyncFunction":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-PushTokenModule$definition$1":I
    .restart local v18    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :cond_0
    :try_start_5
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 125
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 126
    const-class v13, Lexpo/modules/kotlin/Promise;

    .line 125
    .local v13, "p0$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 130
    .local v14, "$i$f$toArgsArray":I
    move/from16 v22, v3

    const/4 v15, 0x1

    .end local v3    # "$i$f$AsyncFunction":I
    .local v22, "$i$f$AsyncFunction":I
    new-array v3, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v15, 0x0

    .line 131
    .local v15, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 132
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v5

    .end local v5    # "$i$f$trace":I
    .local v25, "$i$f$trace":I
    :try_start_6
    new-instance v5, Lkotlin/Pair;

    const-class v26, Lexpo/modules/kotlin/Promise;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v27, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v27, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v26, v7

    const/16 v17, 0x0

    .end local v7    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 131
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_1

    sget-object v5, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 134
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 135
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Lexpo/modules/kotlin/Promise;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v28, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v28, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_9
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 137
    nop

    .line 138
    nop

    .line 135
    move/from16 v24, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_a
    invoke-direct {v6, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 140
    nop

    .line 134
    invoke-direct {v7, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 141
    move-object v6, v7

    goto :goto_0

    .line 230
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-PushTokenModule$definition$1":I
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v15    # "$i$f$toAnyType":I
    .end local v18    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v22    # "$i$f$AsyncFunction":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v24, v9

    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    goto/16 :goto_6

    .line 131
    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-PushTokenModule$definition$1":I
    .restart local v13    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v14    # "$i$f$toArgsArray":I
    .restart local v15    # "$i$f$toAnyType":I
    .restart local v18    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v22    # "$i$f$AsyncFunction":I
    :cond_1
    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .end local v15    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 130
    nop

    .line 129
    nop

    .line 120
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    new-instance v4, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;

    invoke-direct {v4, v1, v11}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v3, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 142
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 145
    nop

    .line 146
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    const/4 v6, 0x0

    .line 148
    .local v6, "$i$f$enforceType":I
    nop

    .line 151
    nop

    .line 152
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 154
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    const/4 v6, 0x0

    .line 148
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 151
    nop

    .line 156
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 158
    :cond_3
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    const/4 v6, 0x0

    .line 148
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 151
    nop

    .line 160
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 162
    :cond_4
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 163
    const/4 v6, 0x0

    .line 148
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 151
    nop

    .line 164
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 166
    :cond_5
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 167
    const/4 v6, 0x0

    .line 148
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 151
    nop

    .line 168
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 170
    :cond_6
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 145
    :goto_1
    move-object v4, v6

    .line 124
    .end local v3    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_2
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 171
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    nop

    .line 124
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 117
    nop

    .line 65
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v22    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "unregisterForNotificationsAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 173
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Lexpo/modules/kotlin/Promise;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 174
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 180
    new-instance v6, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$4;

    invoke-direct {v6, v1}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/tokens/PushTokenModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 174
    invoke-direct {v4, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v22, v3

    goto/16 :goto_5

    .line 176
    :cond_7
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 181
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 182
    const-class v5, Lexpo/modules/kotlin/Promise;

    .line 181
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 186
    .local v6, "$i$f$toArgsArray":I
    const/4 v7, 0x1

    new-array v7, v7, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 187
    .local v8, "$i$f$toAnyType":I
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v9, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v13, 0x0

    .line 188
    .local v13, "$i$f$cachedAnyType":I
    new-instance v14, Lkotlin/Pair;

    const-class v15, Lexpo/modules/kotlin/Promise;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    move/from16 v22, v3

    const/16 v16, 0x0

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v22    # "$i$f$AsyncFunction":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v14, v15, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v14

    .line 189
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lexpo/modules/kotlin/types/AnyType;

    .line 187
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v9    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v13    # "$i$f$cachedAnyType":I
    if-nez v14, :cond_8

    sget-object v3, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v9, 0x0

    .line 190
    .local v9, "$i$f$toAnyType":I
    new-instance v14, Lexpo/modules/kotlin/types/AnyType;

    .line 191
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/kotlin/Promise;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 193
    nop

    .line 194
    nop

    .line 191
    move-object/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v16, "p0$iv$iv":Ljava/lang/Class;
    invoke-direct {v13, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 196
    nop

    .line 190
    invoke-direct {v14, v13, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 197
    goto :goto_3

    .line 187
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "$i$f$toAnyType":I
    .end local v16    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v5    # "p0$iv$iv":Ljava/lang/Class;
    :cond_8
    move-object/from16 v16, v5

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v16    # "p0$iv$iv":Ljava/lang/Class;
    :goto_3
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v14, v7, v3

    .line 186
    nop

    .line 198
    nop

    .line 176
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v6    # "$i$f$toArgsArray":I
    .end local v16    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$6;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/notifications/tokens/PushTokenModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v7

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 199
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 202
    nop

    .line 203
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 204
    const/4 v6, 0x0

    .line 205
    .local v6, "$i$f$enforceType":I
    nop

    .line 208
    nop

    .line 209
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 211
    :cond_9
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 212
    const/4 v6, 0x0

    .line 205
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 208
    nop

    .line 213
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 215
    :cond_a
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 216
    const/4 v6, 0x0

    .line 205
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 208
    nop

    .line 217
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 219
    :cond_b
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 220
    const/4 v6, 0x0

    .line 205
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 208
    nop

    .line 221
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 223
    :cond_c
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 224
    const/4 v6, 0x0

    .line 205
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 208
    nop

    .line 225
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 227
    :cond_d
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 202
    :goto_4
    move-object v4, v6

    .line 180
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_5
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 228
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    nop

    .line 180
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 173
    nop

    .line 77
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v22    # "$i$f$AsyncFunction":I
    nop

    .line 107
    .end local v11    # "$this$definition_u24lambda_u244":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-PushTokenModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 112
    .end local v18    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 230
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 112
    nop

    .line 109
    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 108
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 107
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    nop

    .line 77
    .end local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 230
    .restart local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v9, "$i$f$trace":I
    :catchall_3
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_6
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lexpo/modules/notifications/tokens/PushTokenModule;->eventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    if-eqz v0, :cond_0

    .local v0, "it":Lexpo/modules/core/interfaces/services/EventEmitter;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$a$-let-PushTokenModule$onNewToken$1":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, "eventBody":Landroid/os/Bundle;
    const-string v3, "devicePushToken"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "onDevicePushToken"

    invoke-interface {v0, v3, v2}, Lexpo/modules/core/interfaces/services/EventEmitter;->emit(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    nop

    .line 99
    .end local v0    # "it":Lexpo/modules/core/interfaces/services/EventEmitter;
    .end local v1    # "$i$a$-let-PushTokenModule$onNewToken$1":I
    .end local v2    # "eventBody":Landroid/os/Bundle;
    nop

    .line 104
    :cond_0
    return-void
.end method
