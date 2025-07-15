.class public final Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "NativeModulesProxyModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeModulesProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeModulesProxyModule.kt\nexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,28:1\n61#2:29\n14#3:30\n25#3:31\n27#4,3:32\n31#4:78\n322#5:35\n325#5,3:75\n194#6,8:36\n168#6:44\n158#6,8:47\n202#6:55\n168#6:56\n158#6,8:57\n203#6:65\n168#6:66\n158#6,8:67\n143#7,2:45\n*S KotlinDebug\n*F\n+ 1 NativeModulesProxyModule.kt\nexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule\n*L\n13#1:29\n13#1:30\n13#1:31\n13#1:32,3\n13#1:78\n20#1:35\n20#1:75,3\n20#1:36,8\n20#1:44\n20#1:47,8\n20#1:55\n20#1:56\n20#1:57,8\n20#1:65\n20#1:66\n20#1:67,8\n20#1:45,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-modules-core_debug"
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

    .line 12
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 31

    .line 13
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 29
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

    .line 30
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 31
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

    .line 32
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    const/4 v0, 0x0

    .line 29
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 14
    .local v12, "$i$a$-ModuleDefinition-NativeModulesProxyModule$definition$1":I
    const-string v13, "NativeModulesProxy"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 16
    new-instance v13, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;

    invoke-direct {v13, v1}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;-><init>(Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants(Lkotlin/jvm/functions/Function0;)V

    .line 20
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "callMethod"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$f$AsyncFunctionWithPromise":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v17

    move-object/from16 v18, v17

    .line 36
    .local v18, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 37
    const-class v17, Ljava/lang/String;

    .line 36
    .local v17, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 38
    const-class v19, Ljava/lang/String;

    .line 36
    .local v19, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 39
    const-class v20, Lcom/facebook/react/bridge/ReadableArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 36
    .local v20, "p2$iv$iv":Ljava/lang/Class;
    const/16 v21, 0x0

    .line 43
    .local v21, "$i$f$toArgsArray":I
    move-object/from16 v22, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v22, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v23, 0x0

    .line 44
    .local v23, "$i$f$toAnyType":I
    sget-object v24, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .local v24, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v25, 0x0

    .line 45
    .local v25, "$i$f$cachedAnyType":I
    move/from16 v26, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v26, "$i$f$ModuleDefinition":I
    :try_start_2
    new-instance v3, Lkotlin/Pair;

    const-class v27, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v28, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v28, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move/from16 v27, v5

    .end local v5    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    const/4 v5, 0x0

    move-object/from16 v29, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v29, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v24 .. v24}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 44
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v24    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v25    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_0

    :try_start_5
    sget-object v3, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 48
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v25, Ljava/lang/String;

    move/from16 v30, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v30, "$i$f$toAnyType":I
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 50
    nop

    .line 51
    nop

    .line 48
    move/from16 v25, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$trace":I
    .local v25, "$i$f$trace":I
    :try_start_6
    invoke-direct {v5, v4, v7, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 53
    nop

    .line 47
    move-object/from16 v7, v18

    .end local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v7, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    invoke-direct {v6, v5, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 54
    move-object v4, v6

    goto :goto_0

    .line 78
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NativeModulesProxyModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunctionWithPromise":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v17    # "p0$iv$iv":Ljava/lang/Class;
    .end local v19    # "p1$iv$iv":Ljava/lang/Class;
    .end local v20    # "p2$iv$iv":Ljava/lang/Class;
    .end local v21    # "$i$f$toArgsArray":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v30    # "$i$f$toAnyType":I
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_2

    .end local v25    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    .end local v7    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    goto/16 :goto_2

    .line 44
    .end local v25    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NativeModulesProxyModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v17    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v19    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v20    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v21    # "$i$f$toArgsArray":I
    .restart local v23    # "$i$f$toAnyType":I
    :cond_0
    move/from16 v25, v7

    move-object/from16 v7, v18

    .end local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v7, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v25    # "$i$f$trace":I
    :goto_0
    const/4 v3, 0x0

    .end local v23    # "$i$f$toAnyType":I
    :try_start_7
    aput-object v4, v2, v3

    .line 43
    nop

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$f$toAnyType":I
    sget-object v4, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v4, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v5, 0x0

    .line 45
    .local v5, "$i$f$cachedAnyType":I
    new-instance v6, Lkotlin/Pair;

    const-class v18, Ljava/lang/String;

    move/from16 v23, v3

    .end local v3    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move/from16 v30, v5

    const/16 v18, 0x0

    .end local v5    # "$i$f$cachedAnyType":I
    .local v30, "$i$f$cachedAnyType":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v6

    .line 46
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v4}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 56
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v4    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v30    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_1

    sget-object v3, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 57
    .local v4, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/AnyType;

    .line 58
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v18, Ljava/lang/String;

    move/from16 v30, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v30, "$i$f$toAnyType":I
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 60
    nop

    .line 61
    nop

    .line 58
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v18, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_8
    invoke-direct {v6, v4, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 63
    nop

    .line 57
    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 64
    goto :goto_1

    .line 56
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$toAnyType":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_1
    nop

    .end local v23    # "$i$f$toAnyType":I
    const/4 v3, 0x1

    aput-object v5, v2, v3

    .line 43
    nop

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "$i$f$toAnyType":I
    sget-object v4, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v4, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v5, 0x0

    .line 45
    .restart local v5    # "$i$f$cachedAnyType":I
    new-instance v6, Lkotlin/Pair;

    const-class v8, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move/from16 v30, v3

    const/16 v23, 0x0

    .end local v3    # "$i$f$toAnyType":I
    .restart local v30    # "$i$f$toAnyType":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v6, v8, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v6

    .line 46
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v4}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 66
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v4    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v5    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_2

    sget-object v3, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 68
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 70
    nop

    .line 71
    nop

    .line 68
    move/from16 v23, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-direct {v5, v8, v4, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 73
    nop

    .line 67
    invoke-direct {v6, v5, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 74
    nop

    .line 66
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    :cond_2
    nop

    .end local v30    # "$i$f$toAnyType":I
    const/4 v3, 0x2

    aput-object v6, v2, v3

    .line 43
    nop

    .line 42
    nop

    .line 75
    .end local v7    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v17    # "p0$iv$iv":Ljava/lang/Class;
    .end local v19    # "p1$iv$iv":Ljava/lang/Class;
    .end local v20    # "p2$iv$iv":Ljava/lang/Class;
    .end local v21    # "$i$f$toArgsArray":I
    new-instance v3, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v3, v1}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 35
    invoke-direct {v0, v14, v2, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 75
    move-object v2, v0

    .local v2, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v3, 0x0

    .line 76
    .local v3, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    nop

    .line 75
    .end local v2    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v3    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 35
    nop

    .line 26
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunctionWithPromise":I
    nop

    .line 29
    .end local v11    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NativeModulesProxyModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 34
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 78
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 34
    nop

    .line 31
    .end local v9    # "$i$f$trace":I
    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 30
    .end local v25    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 29
    .end local v27    # "$i$f$trace":I
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 26
    .end local v22    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v26    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 78
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v22    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$ModuleDefinition":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_2

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v18, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    goto :goto_2

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v25, v7

    move-object/from16 v18, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_2

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v25, v7

    move-object/from16 v18, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_2

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$ModuleDefinition":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v25, v7

    move-object/from16 v18, v8

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$ModuleDefinition":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_2

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v22    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$ModuleDefinition":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "blockName$iv$iv":Ljava/lang/String;
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v25, v7

    move-object/from16 v18, v8

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v22    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$ModuleDefinition":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
