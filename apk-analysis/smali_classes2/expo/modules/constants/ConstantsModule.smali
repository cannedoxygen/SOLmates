.class public final Lexpo/modules/constants/ConstantsModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ConstantsModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstantsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstantsModule.kt\nexpo/modules/constants/ConstantsModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,21:1\n61#2:22\n14#3:23\n25#3:24\n27#4,3:25\n31#4:61\n233#5:28\n234#5,2:59\n26#6:29\n13#7,6:30\n19#7,19:40\n8#8,4:36\n*S KotlinDebug\n*F\n+ 1 ConstantsModule.kt\nexpo/modules/constants/ConstantsModule\n*L\n9#1:22\n9#1:23\n9#1:24\n9#1:25,3\n9#1:61\n16#1:28\n16#1:59,2\n16#1:29\n16#1:30,6\n16#1:40,19\n16#1:36,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/constants/ConstantsModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-constants_debug"
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

    .line 7
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 20

    .line 9
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 22
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

    .line 23
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 24
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

    .line 25
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 26
    nop

    .line 27
    const/4 v0, 0x0

    .line 22
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 10
    .local v12, "$i$a$-ModuleDefinition-ConstantsModule$definition$1":I
    const-string v13, "ExponentConstants"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 12
    new-instance v13, Lexpo/modules/constants/ConstantsModule$definition$1$1;

    invoke-direct {v13, v1}, Lexpo/modules/constants/ConstantsModule$definition$1$1;-><init>(Lexpo/modules/constants/ConstantsModule;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants(Lkotlin/jvm/functions/Function0;)V

    .line 16
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "getWebViewUserAgentAsync"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 28
    .local v15, "$i$f$AsyncFunction":I
    const/16 v16, 0x0

    .line 29
    .local v16, "$i$f$emptyArray":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const/4 v0, 0x0

    new-array v0, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 28
    .end local v16    # "$i$f$emptyArray":I
    new-instance v16, Lexpo/modules/constants/ConstantsModule$definition$lambda$1$$inlined$AsyncFunction$1;

    invoke-direct/range {v16 .. v16}, Lexpo/modules/constants/ConstantsModule$definition$lambda$1$$inlined$AsyncFunction$1;-><init>()V

    check-cast v16, Lkotlin/jvm/functions/Function1;

    .local v0, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .local v16, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v18, v16

    .end local v16    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v18, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    const/16 v16, 0x0

    .line 30
    .local v16, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 31
    new-instance v1, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    .end local v18    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v2, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v19, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    invoke-direct {v1, v14, v0, v2}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 28
    .end local v0    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v2    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v16    # "$i$f$createAsyncFunctionComponent":I
    move-object v0, v1

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    nop

    .line 28
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v1    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 19
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    nop

    .line 22
    .end local v11    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ConstantsModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 61
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 27
    nop

    .line 24
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    nop

    .line 23
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    nop

    .line 22
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 19
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    return-object v0

    .line 61
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
