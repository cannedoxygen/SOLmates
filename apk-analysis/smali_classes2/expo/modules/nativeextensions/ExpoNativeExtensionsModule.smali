.class public final Lexpo/modules/nativeextensions/ExpoNativeExtensionsModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ExpoNativeExtensionsModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoNativeExtensionsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoNativeExtensionsModule.kt\nexpo/modules/nativeextensions/ExpoNativeExtensionsModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 8 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n*L\n1#1,17:1\n61#2:18\n14#3:19\n25#3:20\n27#4,3:21\n31#4:32\n109#5:24\n110#5,2:30\n26#6:25\n20#7:26\n13#8,3:27\n*S KotlinDebug\n*F\n+ 1 ExpoNativeExtensionsModule.kt\nexpo/modules/nativeextensions/ExpoNativeExtensionsModule\n*L\n7#1:18\n7#1:19\n7#1:20\n7#1:21,3\n7#1:32\n10#1:24\n10#1:30,2\n10#1:25\n10#1:26\n10#1:27,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/nativeextensions/ExpoNativeExtensionsModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "privy-io-expo-native-extensions_debug"
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

    .line 6
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 26

    .line 7
    move-object/from16 v1, p0

    check-cast v1, Lexpo/modules/kotlin/modules/Module;

    .local v1, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v2, 0x0

    .line 18
    .local v2, "$i$f$ModuleDefinition":I
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".ModuleDefinition"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "blockName$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 19
    .local v4, "$i$f$trace":I
    const-string v5, "ExpoModulesCore"

    .local v5, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 20
    .local v6, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "] "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 21
    .local v8, "$i$f$trace":I
    invoke-static {v7}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 22
    nop

    .line 23
    const/4 v0, 0x0

    .line 18
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v9, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v9, v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v10, v9

    .local v10, "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v11, 0x0

    .line 8
    .local v11, "$i$a$-ModuleDefinition-ExpoNativeExtensionsModule$definition$1":I
    const-string v12, "ExpoNativeExtensions"

    invoke-virtual {v10, v12}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 10
    move-object v12, v10

    check-cast v12, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v13, "vibeCheck"

    .local v12, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v13, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 24
    .local v14, "$i$f$FunctionWithoutArgs":I
    new-instance v15, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/16 v16, 0x0

    .line 25
    .local v16, "$i$f$emptyArray":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const/4 v0, 0x0

    new-array v0, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 24
    .end local v16    # "$i$f$emptyArray":I
    const/16 v16, 0x0

    .line 26
    .local v16, "$i$f$toReturnType":I
    sget-object v18, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .local v18, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/16 v19, 0x0

    .line 27
    .local v19, "$i$f$get":I
    move-object/from16 v20, v1

    .end local v1    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v20, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v1

    const-class v21, Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v22, v2

    .end local v2    # "$i$f$ModuleDefinition":I
    .local v22, "$i$f$ModuleDefinition":I
    :try_start_2
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v1, :cond_0

    new-instance v1, Lexpo/modules/kotlin/types/ReturnType;

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v2, v1

    .local v2, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v21, 0x0

    .line 28
    .local v21, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v23, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v24, v1

    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v1

    const-class v23, Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v3

    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .local v25, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    nop

    .line 27
    .end local v2    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v21    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    move-object/from16 v1, v24

    goto :goto_0

    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v3    # "blockName$iv$iv":Ljava/lang/String;
    :cond_0
    move-object/from16 v25, v3

    .line 26
    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .end local v18    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v19    # "$i$f$get":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    :goto_0
    nop

    .line 24
    .end local v16    # "$i$f$toReturnType":I
    new-instance v2, Lexpo/modules/nativeextensions/ExpoNativeExtensionsModule$definition$lambda$1$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v2}, Lexpo/modules/nativeextensions/ExpoNativeExtensionsModule$definition$lambda$1$$inlined$FunctionWithoutArgs$1;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v15, v13, v0, v1, v2}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    move-object v0, v15

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v1, 0x0

    .line 30
    .local v1, "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    invoke-virtual {v12}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    nop

    .line 24
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v1    # "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    nop

    .line 15
    .end local v12    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v13    # "name$iv":Ljava/lang/String;
    .end local v14    # "$i$f$FunctionWithoutArgs":I
    nop

    .line 18
    .end local v10    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v11    # "$i$a$-ModuleDefinition-ExpoNativeExtensionsModule$definition$1":I
    invoke-virtual {v9}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 32
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 23
    nop

    .line 20
    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    nop

    .line 19
    .end local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    nop

    .line 18
    .end local v4    # "$i$f$trace":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 15
    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v22    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 32
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v3    # "blockName$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v3

    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v22    # "$i$f$ModuleDefinition":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .local v2, "$i$f$ModuleDefinition":I
    .restart local v3    # "blockName$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v25, v3

    .end local v2    # "$i$f$ModuleDefinition":I
    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v22    # "$i$f$ModuleDefinition":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .local v1, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v2    # "$i$f$ModuleDefinition":I
    .restart local v3    # "blockName$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v1

    move/from16 v22, v2

    move-object/from16 v25, v3

    .end local v1    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v2    # "$i$f$ModuleDefinition":I
    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
