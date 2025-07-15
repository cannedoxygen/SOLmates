.class public final Lexpo/modules/keepawake/KeepAwakeModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "KeepAwakeModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepAwakeModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepAwakeModule.kt\nexpo/modules/keepawake/KeepAwakeModule\n+ 2 AppContext.kt\nexpo/modules/kotlin/AppContext\n+ 3 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 4 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 5 Trace.kt\nandroidx/tracing/TraceKt\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 9 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 10 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 11 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,38:1\n134#2,4:39\n61#3:43\n14#4:44\n25#4:45\n27#5,3:46\n31#5:125\n272#6:49\n275#6,3:67\n272#6:70\n275#6,3:89\n233#6:92\n234#6,2:123\n172#7,6:50\n168#7:56\n158#7,8:59\n172#7,6:71\n168#7:77\n158#7,8:80\n176#7:88\n143#8,2:57\n143#8,2:78\n26#9:93\n13#10,6:94\n19#10,19:104\n8#11,4:100\n*S KotlinDebug\n*F\n+ 1 KeepAwakeModule.kt\nexpo/modules/keepawake/KeepAwakeModule\n*L\n12#1:39,4\n14#1:43\n14#1:44\n14#1:45\n14#1:46,3\n14#1:125\n17#1:49\n17#1:67,3\n25#1:70\n25#1:89,3\n33#1:92\n33#1:123,2\n17#1:50,6\n17#1:56\n17#1:59,8\n25#1:71,6\n25#1:77\n25#1:80,8\n25#1:88\n17#1:57,2\n25#1:78,2\n33#1:93\n33#1:94,6\n33#1:104,19\n33#1:100,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/keepawake/KeepAwakeModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "keepAwakeManager",
        "Lexpo/modules/core/interfaces/services/KeepAwakeManager;",
        "getKeepAwakeManager",
        "()Lexpo/modules/core/interfaces/services/KeepAwakeManager;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-keep-awake_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKeepAwakeManager(Lexpo/modules/keepawake/KeepAwakeModule;)Lexpo/modules/core/interfaces/services/KeepAwakeManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/keepawake/KeepAwakeModule;

    .line 10
    invoke-direct {p0}, Lexpo/modules/keepawake/KeepAwakeModule;->getKeepAwakeManager()Lexpo/modules/core/interfaces/services/KeepAwakeManager;

    move-result-object v0

    return-object v0
.end method

.method private final getKeepAwakeManager()Lexpo/modules/core/interfaces/services/KeepAwakeManager;
    .locals 4

    .line 12
    invoke-virtual {p0}, Lexpo/modules/keepawake/KeepAwakeModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 39
    .local v1, "$i$f$legacyModule":I
    nop

    .line 40
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/core/interfaces/services/KeepAwakeManager;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 39
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 12
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/core/interfaces/services/KeepAwakeManager;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Lexpo/modules/keepawake/MissingModuleException;

    const-string v1, "KeepAwakeManager"

    invoke-direct {v0, v1}, Lexpo/modules/keepawake/MissingModuleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 30

    .line 14
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 43
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

    .line 44
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 45
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

    .line 46
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    const/4 v0, 0x0

    .line 43
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 15
    .local v12, "$i$a$-ModuleDefinition-KeepAwakeModule$definition$1":I
    const-string v13, "ExpoKeepAwake"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 17
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "activate"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 49
    .local v15, "$i$f$AsyncFunctionWithPromise":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v17

    move-object/from16 v18, v17

    .line 50
    .local v18, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 51
    const-class v17, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 50
    .local v17, "p0$iv$iv":Ljava/lang/Class;
    const/16 v19, 0x0

    .line 55
    .local v19, "$i$f$toArgsArray":I
    move-object/from16 v20, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v20, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v2, 0x1

    move/from16 v21, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v21, "$i$f$ModuleDefinition":I
    :try_start_1
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v22, 0x0

    .line 56
    .local v22, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 57
    .local v24, "$i$f$cachedAnyType":I
    new-instance v2, Lkotlin/Pair;

    const-class v26, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v27, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v27, "blockName$iv$iv":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move/from16 v26, v5

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    const/4 v5, 0x0

    move-object/from16 v28, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v28, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .local v2, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 56
    .end local v2    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_0

    :try_start_4
    sget-object v2, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 60
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;

    move/from16 v29, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v29, "$i$f$toAnyType":I
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    nop

    .line 63
    nop

    .line 60
    move/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_5
    invoke-direct {v5, v4, v7, v2}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 65
    nop

    .line 59
    move-object/from16 v7, v18

    .end local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v7, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    invoke-direct {v6, v5, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    move-object v4, v6

    goto :goto_0

    .line 125
    .end local v2    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-KeepAwakeModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunctionWithPromise":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v17    # "p0$iv$iv":Ljava/lang/Class;
    .end local v19    # "$i$f$toArgsArray":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v29    # "$i$f$toAnyType":I
    :catchall_0
    move-exception v0

    move-object/from16 v17, v8

    goto/16 :goto_3

    .end local v24    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v17, v8

    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    goto/16 :goto_3

    .line 56
    .end local v24    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-KeepAwakeModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v17    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v19    # "$i$f$toArgsArray":I
    .restart local v22    # "$i$f$toAnyType":I
    :cond_0
    move/from16 v24, v7

    move-object/from16 v7, v18

    .end local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v7, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v24    # "$i$f$trace":I
    :goto_0
    const/4 v2, 0x0

    .end local v22    # "$i$f$toAnyType":I
    :try_start_6
    aput-object v4, v3, v2

    .line 55
    nop

    .line 54
    nop

    .line 67
    .end local v7    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v17    # "p0$iv$iv":Ljava/lang/Class;
    .end local v19    # "$i$f$toArgsArray":I
    new-instance v2, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v2, v1}, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/keepawake/KeepAwakeModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 49
    invoke-direct {v0, v14, v3, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 67
    move-object v2, v0

    .local v2, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v3, 0x0

    .line 68
    .local v3, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    nop

    .line 67
    .end local v2    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v3    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 49
    nop

    .line 25
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deactivate"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 70
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 71
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 72
    const-class v6, Ljava/lang/String;

    .line 71
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 76
    .local v7, "$i$f$toArgsArray":I
    const/4 v13, 0x1

    new-array v13, v13, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v14, 0x0

    .line 77
    .local v14, "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v15, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v17, 0x0

    .line 78
    .local v17, "$i$f$cachedAnyType":I
    move/from16 v18, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v18, "$i$f$AsyncFunctionWithPromise":I
    new-instance v3, Lkotlin/Pair;

    const-class v19, Ljava/lang/String;

    move-object/from16 v22, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v22, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v25, v7

    const/16 v19, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .local v25, "$i$f$toArgsArray":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 77
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v17    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_1

    sget-object v3, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 80
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 81
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v17, Ljava/lang/String;

    move/from16 v19, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v19, "$i$f$toAnyType":I
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 83
    nop

    .line 84
    nop

    .line 81
    move-object/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v17, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-direct {v15, v6, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 86
    nop

    .line 80
    invoke-direct {v7, v15, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 87
    move-object v6, v7

    goto :goto_1

    .line 77
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v19    # "$i$f$toAnyType":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .end local v14    # "$i$f$toAnyType":I
    aput-object v6, v13, v3

    .line 76
    nop

    .line 88
    nop

    .line 89
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    .end local v25    # "$i$f$toArgsArray":I
    new-instance v3, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v3, v1}, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/keepawake/KeepAwakeModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 70
    invoke-direct {v4, v2, v13, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 89
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    nop

    .line 89
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 70
    nop

    .line 33
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isActivated"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 93
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 92
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunction$1;

    invoke-direct {v4, v1}, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/keepawake/KeepAwakeModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 94
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/lang/Boolean;

    .line 97
    nop

    .line 98
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    const/4 v7, 0x0

    .line 100
    .local v7, "$i$f$enforceType":I
    nop

    .line 103
    nop

    .line 104
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 106
    :cond_2
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 107
    const/4 v7, 0x0

    .line 100
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 103
    nop

    .line 108
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 110
    :cond_3
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    const/4 v7, 0x0

    .line 100
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 103
    nop

    .line 112
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 114
    :cond_4
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 115
    const/4 v7, 0x0

    .line 100
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 103
    nop

    .line 116
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 118
    :cond_5
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 119
    const/4 v7, 0x0

    .line 100
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 103
    nop

    .line 120
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 122
    :cond_6
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 97
    :goto_2
    nop

    .line 92
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 123
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    nop

    .line 92
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 36
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    nop

    .line 43
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-KeepAwakeModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 48
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 125
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 48
    nop

    .line 45
    .end local v9    # "$i$f$trace":I
    .end local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 44
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 43
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 36
    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v21    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 125
    .restart local v9    # "$i$f$trace":I
    .restart local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v17, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    goto :goto_3

    .end local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v17, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v17, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_3

    .end local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v21    # "$i$f$ModuleDefinition":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v17, v8

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v17    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_3
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
