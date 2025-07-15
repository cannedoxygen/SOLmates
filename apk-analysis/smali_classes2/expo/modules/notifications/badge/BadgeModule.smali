.class public final Lexpo/modules/notifications/badge/BadgeModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "BadgeModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBadgeModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BadgeModule.kt\nexpo/modules/notifications/badge/BadgeModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,23:1\n61#2:24\n14#3:25\n25#3:26\n27#4,3:27\n31#4:119\n233#5:30\n234#5,2:61\n243#5,8:63\n251#5,2:117\n26#6:31\n13#7,6:32\n19#7,19:42\n13#7,6:88\n19#7,19:98\n8#8,4:38\n8#8,4:94\n172#9,6:71\n168#9:77\n158#9,8:80\n143#10,2:78\n*S KotlinDebug\n*F\n+ 1 BadgeModule.kt\nexpo/modules/notifications/badge/BadgeModule\n*L\n8#1:24\n8#1:25\n8#1:26\n8#1:27,3\n8#1:119\n11#1:30\n11#1:61,2\n15#1:63,8\n15#1:117,2\n11#1:31\n11#1:32,6\n11#1:42,19\n15#1:88,6\n15#1:98,19\n11#1:38,4\n15#1:94,4\n15#1:71,6\n15#1:77\n15#1:80,8\n15#1:78,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/notifications/badge/BadgeModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 28

    .line 8
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 24
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

    .line 25
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 26
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

    .line 27
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 28
    nop

    .line 29
    const/4 v0, 0x0

    .line 24
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 9
    .local v12, "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    const-string v13, "ExpoBadgeModule"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 11
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "getBadgeCountAsync"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 30
    .local v15, "$i$f$AsyncFunction":I
    const/16 v16, 0x0

    .line 31
    .local v16, "$i$f$emptyArray":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const/4 v0, 0x0

    move-object/from16 v18, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v18, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-array v2, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 30
    .end local v16    # "$i$f$emptyArray":I
    new-instance v16, Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$1;

    invoke-direct/range {v16 .. v16}, Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$1;-><init>()V

    check-cast v16, Lkotlin/jvm/functions/Function1;

    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .local v16, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v19, v16

    .end local v16    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v19, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    const/16 v16, 0x0

    .line 32
    .local v16, "$i$f$createAsyncFunctionComponent":I
    const-class v0, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 35
    nop

    .line 36
    move/from16 v21, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v21, "$i$f$ModuleDefinition":I
    :try_start_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v3, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$enforceType":I
    nop

    .line 41
    nop

    .line 42
    .end local v0    # "$i$f$enforceType":I
    :try_start_3
    new-instance v0, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    move-object/from16 v3, v19

    .end local v19    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    invoke-direct {v0, v14, v2, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v19, v4

    goto/16 :goto_0

    .line 119
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$f$createAsyncFunctionComponent":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    goto/16 :goto_4

    .line 44
    .restart local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$f$createAsyncFunctionComponent":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    :cond_0
    move-object/from16 v3, v19

    .end local v19    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v19, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v19, "blockName$iv$iv":Ljava/lang/String;
    :try_start_4
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v4, :cond_1

    .line 45
    const/4 v0, 0x0

    .line 38
    .restart local v0    # "$i$f$enforceType":I
    nop

    .line 41
    nop

    .line 46
    .end local v0    # "$i$f$enforceType":I
    :try_start_5
    new-instance v0, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v0, v14, v2, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 119
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$f$createAsyncFunctionComponent":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :catchall_1
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    goto/16 :goto_4

    .line 48
    .restart local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$f$createAsyncFunctionComponent":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :cond_1
    :try_start_6
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v4, :cond_2

    .line 49
    const/4 v0, 0x0

    .line 38
    .restart local v0    # "$i$f$enforceType":I
    nop

    .line 41
    nop

    .line 50
    .end local v0    # "$i$f$enforceType":I
    :try_start_7
    new-instance v0, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v0, v14, v2, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 52
    :cond_2
    :try_start_8
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v4, :cond_3

    .line 53
    const/4 v0, 0x0

    .line 38
    .restart local v0    # "$i$f$enforceType":I
    nop

    .line 41
    nop

    .line 54
    .end local v0    # "$i$f$enforceType":I
    :try_start_9
    new-instance v0, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v0, v14, v2, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 56
    :cond_3
    :try_start_a
    const-class v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v0, :cond_4

    .line 57
    const/4 v0, 0x0

    .line 38
    .restart local v0    # "$i$f$enforceType":I
    nop

    .line 41
    nop

    .line 58
    .end local v0    # "$i$f$enforceType":I
    :try_start_b
    new-instance v0, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v0, v14, v2, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    .line 60
    :cond_4
    :try_start_c
    new-instance v0, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v0, v14, v2, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 35
    :goto_0
    nop

    .line 30
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v16    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    nop

    .line 30
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 15
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setBadgeCountAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 63
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/Integer;

    const-class v13, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v4, :cond_5

    .line 64
    :try_start_d
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v13, 0x0

    new-array v13, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 70
    new-instance v14, Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$2;

    invoke-direct {v14, v1}, Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$2;-><init>(Lexpo/modules/notifications/badge/BadgeModule;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 64
    invoke-direct {v4, v2, v13, v14}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move/from16 v24, v3

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    goto/16 :goto_3

    .line 66
    :cond_5
    :try_start_e
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 71
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 72
    const-class v13, Ljava/lang/Integer;

    .line 71
    .local v13, "p0$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 76
    .local v14, "$i$f$toArgsArray":I
    const/4 v15, 0x1

    new-array v15, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v16, 0x0

    .line 77
    .local v16, "$i$f$toAnyType":I
    sget-object v22, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v22, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 78
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v24, "$i$f$AsyncFunction":I
    new-instance v3, Lkotlin/Pair;

    const-class v25, Ljava/lang/Integer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move/from16 v26, v5

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_f
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v25, v6

    const/16 v20, 0x0

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v25, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_10
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v22 .. v22}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 77
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v22    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_6

    sget-object v3, Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$3;->INSTANCE:Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 80
    .local v5, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 81
    move/from16 v22, v5

    .end local v5    # "$i$f$toAnyType":I
    .local v22, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/Integer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move/from16 v27, v7

    .end local v7    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_11
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 83
    nop

    .line 84
    nop

    .line 81
    move-object/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v23, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_12
    invoke-direct {v5, v7, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 86
    nop

    .line 80
    invoke-direct {v6, v5, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 87
    move-object v5, v6

    goto :goto_1

    .line 119
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v16    # "$i$f$toAnyType":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_4

    .line 77
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    .restart local v13    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v14    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$f$toAnyType":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v24    # "$i$f$AsyncFunction":I
    :cond_6
    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :goto_1
    const/4 v3, 0x0

    .end local v16    # "$i$f$toAnyType":I
    aput-object v5, v15, v3

    .line 76
    nop

    .line 75
    nop

    .line 66
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    new-instance v3, Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$4;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/badge/BadgeModule$definition$lambda$2$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/badge/BadgeModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v15

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 88
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Ljava/lang/Boolean;

    .line 91
    nop

    .line 92
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 93
    const/4 v6, 0x0

    .line 94
    .local v6, "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 98
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 100
    :cond_7
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 101
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 102
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 104
    :cond_8
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 105
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 106
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 108
    :cond_9
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 109
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 110
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 112
    :cond_a
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 113
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 114
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 116
    :cond_b
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 91
    :goto_2
    move-object v4, v6

    .line 70
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_3
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 117
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    nop

    .line 70
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 63
    nop

    .line 21
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    nop

    .line 24
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-BadgeModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 29
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 119
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 29
    nop

    .line 26
    .end local v9    # "$i$f$trace":I
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 25
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 24
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    nop

    .line 21
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v21    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 119
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    goto :goto_4

    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v21    # "$i$f$ModuleDefinition":I
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v19, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_4

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v21    # "$i$f$ModuleDefinition":I
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
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
    :catchall_9
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v21, v3

    move-object/from16 v19, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    :goto_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
