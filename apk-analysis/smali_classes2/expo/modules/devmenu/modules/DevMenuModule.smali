.class public final Lexpo/modules/devmenu/modules/DevMenuModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "DevMenuModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuModule.kt\nexpo/modules/devmenu/modules/DevMenuModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 11 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n*L\n1#1,49:1\n61#2:50\n14#3:51\n25#3:52\n27#4,3:53\n31#4:213\n233#5:56\n234#5,2:87\n233#5:89\n234#5,2:120\n233#5:122\n234#5,2:153\n243#5,8:155\n251#5,2:209\n26#6:57\n26#6:90\n26#6:123\n13#7,6:58\n19#7,19:68\n13#7,6:91\n19#7,19:101\n13#7,6:124\n19#7,19:134\n13#7,6:180\n19#7,19:190\n8#8,4:64\n8#8,4:97\n8#8,4:130\n8#8,4:186\n172#9,6:163\n168#9:169\n158#9,8:172\n143#10,2:170\n124#11,2:211\n*S KotlinDebug\n*F\n+ 1 DevMenuModule.kt\nexpo/modules/devmenu/modules/DevMenuModule\n*L\n13#1:50\n13#1:51\n13#1:52\n13#1:53,3\n13#1:213\n16#1:56\n16#1:87,2\n20#1:89\n20#1:120,2\n24#1:122\n24#1:153,2\n28#1:155,8\n28#1:209,2\n16#1:57\n20#1:90\n24#1:123\n16#1:58,6\n16#1:68,19\n20#1:91,6\n20#1:101,19\n24#1:124,6\n24#1:134,19\n28#1:180,6\n28#1:190,19\n16#1:64,4\n20#1:97,4\n24#1:130,4\n28#1:186,4\n28#1:163,6\n28#1:169\n28#1:172,8\n28#1:170,2\n44#1:211,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/devmenu/modules/DevMenuModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "currentActivity",
        "Landroid/app/Activity;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-dev-menu_debug"
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

    .line 9
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 27

    .line 13
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 50
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

    .line 51
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 52
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

    .line 53
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    nop

    .line 55
    const/4 v0, 0x0

    .line 50
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 14
    .local v12, "$i$a$-ModuleDefinition-DevMenuModule$definition$1":I
    const-string v13, "ExpoDevMenu"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 16
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "openMenu"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 56
    .local v15, "$i$f$AsyncFunction":I
    const/16 v16, 0x0

    .line 57
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

    .line 56
    .end local v16    # "$i$f$emptyArray":I
    new-instance v0, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$1;

    invoke-direct {v0, v1}, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/devmenu/modules/DevMenuModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/16 v19, 0x0

    .line 58
    .local v19, "$i$f$createAsyncFunctionComponent":I
    const-class v1, Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 61
    nop

    .line 62
    move/from16 v20, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v20, "$i$f$ModuleDefinition":I
    :try_start_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v3, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "$i$f$enforceType":I
    nop

    .line 67
    nop

    .line 68
    .end local v1    # "$i$f$enforceType":I
    :try_start_3
    new-instance v1, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v1, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 213
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-DevMenuModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    :catchall_0
    move-exception v0

    move-object/from16 v25, v4

    move/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v22, v7

    goto/16 :goto_6

    .line 70
    .restart local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-DevMenuModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$createAsyncFunctionComponent":I
    :cond_0
    :try_start_4
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v3, :cond_1

    .line 71
    const/4 v1, 0x0

    .line 64
    .restart local v1    # "$i$f$enforceType":I
    nop

    .line 67
    nop

    .line 72
    .end local v1    # "$i$f$enforceType":I
    :try_start_5
    new-instance v1, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v1, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 74
    :cond_1
    :try_start_6
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v3, :cond_2

    .line 75
    const/4 v1, 0x0

    .line 64
    .restart local v1    # "$i$f$enforceType":I
    nop

    .line 67
    nop

    .line 76
    .end local v1    # "$i$f$enforceType":I
    :try_start_7
    new-instance v1, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v1, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 78
    :cond_2
    :try_start_8
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v3, :cond_3

    .line 79
    const/4 v1, 0x0

    .line 64
    .restart local v1    # "$i$f$enforceType":I
    nop

    .line 67
    nop

    .line 80
    .end local v1    # "$i$f$enforceType":I
    :try_start_9
    new-instance v1, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v1, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 82
    :cond_3
    :try_start_a
    const-class v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_4

    .line 83
    const/4 v1, 0x0

    .line 64
    .restart local v1    # "$i$f$enforceType":I
    nop

    .line 67
    nop

    .line 84
    .end local v1    # "$i$f$enforceType":I
    :try_start_b
    new-instance v1, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v1, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 86
    :cond_4
    :try_start_c
    new-instance v1, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v1, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 61
    :goto_0
    nop

    .line 56
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    move-object v0, v1

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v1, 0x0

    .line 87
    .local v1, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    nop

    .line 56
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v1    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 20
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v1, "closeMenu"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 89
    .local v2, "$i$f$AsyncFunction":I
    const/4 v3, 0x0

    .line 90
    .local v3, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 89
    .end local v3    # "$i$f$emptyArray":I
    new-instance v3, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$2;

    invoke-direct {v3}, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$2;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .local v13, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 91
    .local v14, "$i$f$createAsyncFunctionComponent":I
    const-class v15, Lkotlin/Unit;

    .line 94
    nop

    .line 95
    move/from16 v19, v2

    .end local v2    # "$i$f$AsyncFunction":I
    .local v19, "$i$f$AsyncFunction":I
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v2, :cond_5

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$f$enforceType":I
    nop

    .line 100
    nop

    .line 101
    .end local v2    # "$i$f$enforceType":I
    :try_start_d
    new-instance v2, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .line 103
    :cond_5
    :try_start_e
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v2, :cond_6

    .line 104
    const/4 v2, 0x0

    .line 97
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 100
    nop

    .line 105
    .end local v2    # "$i$f$enforceType":I
    :try_start_f
    new-instance v2, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1

    .line 107
    :cond_6
    :try_start_10
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v2, :cond_7

    .line 108
    const/4 v2, 0x0

    .line 97
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 100
    nop

    .line 109
    .end local v2    # "$i$f$enforceType":I
    :try_start_11
    new-instance v2, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    .line 111
    :cond_7
    :try_start_12
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v2, :cond_8

    .line 112
    const/4 v2, 0x0

    .line 97
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 100
    nop

    .line 113
    .end local v2    # "$i$f$enforceType":I
    :try_start_13
    new-instance v2, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_1

    .line 115
    :cond_8
    :try_start_14
    const-class v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-eqz v2, :cond_9

    .line 116
    const/4 v2, 0x0

    .line 97
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 100
    nop

    .line 117
    .end local v2    # "$i$f$enforceType":I
    :try_start_15
    new-instance v2, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_1

    .line 119
    :cond_9
    :try_start_16
    new-instance v2, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 94
    :goto_1
    nop

    .line 89
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v2, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    nop

    .line 89
    .end local v2    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v3    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 24
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v1, "hideMenu"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v1    # "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$AsyncFunction":I
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 122
    .end local v3    # "$i$f$emptyArray":I
    new-instance v3, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$3;

    invoke-direct {v3}, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$3;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .restart local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 124
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    const-class v15, Lkotlin/Unit;

    .line 127
    nop

    .line 128
    move/from16 v19, v2

    .end local v2    # "$i$f$AsyncFunction":I
    .restart local v19    # "$i$f$AsyncFunction":I
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v2, :cond_a

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$f$enforceType":I
    nop

    .line 133
    nop

    .line 134
    .end local v2    # "$i$f$enforceType":I
    :try_start_17
    new-instance v2, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_2

    .line 136
    :cond_a
    :try_start_18
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v2, :cond_b

    .line 137
    const/4 v2, 0x0

    .line 130
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 133
    nop

    .line 138
    .end local v2    # "$i$f$enforceType":I
    :try_start_19
    new-instance v2, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_2

    .line 140
    :cond_b
    :try_start_1a
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    if-eqz v2, :cond_c

    .line 141
    const/4 v2, 0x0

    .line 130
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 133
    nop

    .line 142
    .end local v2    # "$i$f$enforceType":I
    :try_start_1b
    new-instance v2, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_2

    .line 144
    :cond_c
    :try_start_1c
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    if-eqz v2, :cond_d

    .line 145
    const/4 v2, 0x0

    .line 130
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 133
    nop

    .line 146
    .end local v2    # "$i$f$enforceType":I
    :try_start_1d
    new-instance v2, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_2

    .line 148
    :cond_d
    :try_start_1e
    const-class v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    if-eqz v2, :cond_e

    .line 149
    const/4 v2, 0x0

    .line 130
    .restart local v2    # "$i$f$enforceType":I
    nop

    .line 133
    nop

    .line 150
    .end local v2    # "$i$f$enforceType":I
    :try_start_1f
    new-instance v2, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_2

    .line 152
    :cond_e
    :try_start_20
    new-instance v2, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v2, v1, v13, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 127
    :goto_2
    nop

    .line 122
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v2, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v3, 0x0

    .line 153
    .local v3, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    nop

    .line 122
    .end local v2    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v3    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 28
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v1, "addDevMenuCallbacks"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v1    # "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 155
    .local v2, "$i$f$AsyncFunction":I
    const-class v3, Lcom/facebook/react/bridge/ReadableArray;

    const-class v13, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    if-eqz v3, :cond_f

    .line 156
    :try_start_21
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v13, 0x0

    new-array v13, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 162
    new-instance v14, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$4;

    invoke-direct {v14}, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$4;-><init>()V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 156
    invoke-direct {v3, v1, v13, v14}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    move/from16 v23, v2

    move-object/from16 v25, v4

    move/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v22, v7

    goto/16 :goto_5

    .line 158
    :cond_f
    :try_start_22
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 163
    .local v3, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 164
    const-class v13, Lcom/facebook/react/bridge/ReadableArray;

    .line 163
    .local v13, "p0$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 168
    .local v14, "$i$f$toArgsArray":I
    const/4 v15, 0x1

    new-array v15, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v19, 0x0

    .line 169
    .local v19, "$i$f$toAnyType":I
    sget-object v21, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v21, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v22, 0x0

    .line 170
    .local v22, "$i$f$cachedAnyType":I
    move/from16 v23, v2

    .end local v2    # "$i$f$AsyncFunction":I
    .local v23, "$i$f$AsyncFunction":I
    new-instance v2, Lkotlin/Pair;

    const-class v24, Lcom/facebook/react/bridge/ReadableArray;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move-object/from16 v25, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v25, "blockName$iv$iv":Ljava/lang/String;
    :try_start_23
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    move/from16 v24, v5

    const/16 v16, 0x0

    .end local v5    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_24
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .local v2, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v21 .. v21}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;

    .line 169
    .end local v2    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v21    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v22    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_10

    sget-object v2, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$5;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 172
    .local v4, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/AnyType;

    .line 173
    move/from16 v21, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v21, "$i$f$toAnyType":I
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v22, Lcom/facebook/react/bridge/ReadableArray;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    move-object/from16 v26, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v26, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_25
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 175
    nop

    .line 176
    nop

    .line 173
    move/from16 v22, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$trace":I
    .local v22, "$i$f$trace":I
    :try_start_26
    invoke-direct {v4, v6, v7, v2}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 178
    nop

    .line 172
    invoke-direct {v5, v4, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 179
    move-object v4, v5

    goto :goto_3

    .line 213
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-DevMenuModule$definition$1":I
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$toAnyType":I
    .end local v21    # "$i$f$toAnyType":I
    .end local v22    # "$i$f$trace":I
    .end local v23    # "$i$f$AsyncFunction":I
    .restart local v7    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v22, v7

    .end local v7    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    goto/16 :goto_6

    .line 169
    .end local v22    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v3    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-DevMenuModule$definition$1":I
    .restart local v13    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v14    # "$i$f$toArgsArray":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$AsyncFunction":I
    :cond_10
    move-object/from16 v26, v6

    move/from16 v22, v7

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    .end local v19    # "$i$f$toAnyType":I
    aput-object v4, v15, v2

    .line 168
    nop

    .line 167
    nop

    .line 158
    .end local v3    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    new-instance v2, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$6;

    invoke-direct {v2}, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$AsyncFunction$6;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .local v2, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v3, v15

    .local v3, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v4, 0x0

    .line 180
    .local v4, "$i$f$createAsyncFunctionComponent":I
    const-class v5, Lkotlin/Unit;

    .line 183
    nop

    .line 184
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, "$i$f$enforceType":I
    nop

    .line 189
    nop

    .line 190
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v2}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 192
    :cond_11
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 193
    const/4 v5, 0x0

    .line 186
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 189
    nop

    .line 194
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v2}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 196
    :cond_12
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 197
    const/4 v5, 0x0

    .line 186
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 189
    nop

    .line 198
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v2}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 200
    :cond_13
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 201
    const/4 v5, 0x0

    .line 186
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 189
    nop

    .line 202
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v2}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 204
    :cond_14
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 205
    const/4 v5, 0x0

    .line 186
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 189
    nop

    .line 206
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v2}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 208
    :cond_15
    new-instance v5, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v2}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 183
    :goto_4
    move-object v3, v5

    .line 162
    .end local v2    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v4    # "$i$f$createAsyncFunctionComponent":I
    :goto_5
    move-object v2, v3

    .local v2, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v3, 0x0

    .line 209
    .local v3, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    nop

    .line 162
    .end local v2    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v3    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 155
    nop

    .line 44
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v0, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v1, 0x0

    .line 211
    .local v1, "$i$f$OnDestroy":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v4, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v5, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$OnDestroy$1;

    invoke-direct {v6}, Lexpo/modules/devmenu/modules/DevMenuModule$definition$lambda$5$$inlined$OnDestroy$1;-><init>()V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v5, v6}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    nop

    .line 47
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v1    # "$i$f$OnDestroy":I
    nop

    .line 50
    .end local v11    # "$this$definition_u24lambda_u245":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-DevMenuModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 55
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 213
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 55
    nop

    .line 52
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    nop

    .line 51
    .end local v22    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 50
    .end local v24    # "$i$f$trace":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 47
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 213
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v22    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_6

    .end local v22    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v22, v7

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v22    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v22, v7

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v22    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move-object/from16 v25, v4

    move/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v22, v7

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v22    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v22    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v25, v4

    move/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v22, v7

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v22    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v22    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v25, v4

    move/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v22, v7

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v22    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_6
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lexpo/modules/devmenu/modules/DevMenuModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;-><init>()V

    throw v0
.end method
