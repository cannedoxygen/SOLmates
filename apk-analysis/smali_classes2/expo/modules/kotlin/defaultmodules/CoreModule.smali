.class public final Lexpo/modules/kotlin/defaultmodules/CoreModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "CoreModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilder\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 8 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 9 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 11 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 12 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 13 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,91:1\n61#2:92\n14#3:93\n25#3:94\n27#4,3:95\n31#4:272\n550#5,2:98\n552#5,2:108\n550#5,2:110\n552#5,2:120\n550#5,2:122\n552#5,2:132\n109#5:134\n110#5,2:140\n139#5:142\n142#5,3:175\n139#5:178\n142#5,3:212\n243#5,8:215\n251#5,2:270\n18#6,2:100\n20#6:107\n18#6,2:112\n20#6:119\n18#6,2:124\n20#6:131\n26#7:102\n26#7:114\n26#7:126\n26#7:135\n20#8:103\n20#8:115\n20#8:127\n20#8:136\n20#8:171\n20#8:208\n13#9,3:104\n13#9,3:116\n13#9,3:128\n13#9,3:137\n13#9,3:172\n13#9,3:209\n182#10,7:143\n168#10:150\n158#10,8:153\n189#10:161\n168#10:162\n158#10,8:163\n182#10,7:179\n168#10:186\n158#10,8:189\n189#10:197\n168#10:198\n158#10,8:199\n187#10:207\n172#10,6:223\n168#10:229\n158#10,8:232\n176#10:240\n143#11,2:151\n143#11,2:187\n143#11,2:230\n13#12,6:241\n19#12,19:251\n8#13,4:247\n*S KotlinDebug\n*F\n+ 1 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n*L\n20#1:92\n20#1:93\n20#1:94\n20#1:95,3\n20#1:272\n21#1:98,2\n21#1:108,2\n34#1:110,2\n34#1:120,2\n38#1:122,2\n38#1:132,2\n43#1:134\n43#1:140,2\n47#1:142\n47#1:175,3\n56#1:178\n56#1:212,3\n84#1:215,8\n84#1:270,2\n21#1:100,2\n21#1:107\n34#1:112,2\n34#1:119\n38#1:124,2\n38#1:131\n21#1:102\n34#1:114\n38#1:126\n43#1:135\n21#1:103\n34#1:115\n38#1:127\n43#1:136\n47#1:171\n56#1:208\n21#1:104,3\n34#1:116,3\n38#1:128,3\n43#1:137,3\n47#1:172,3\n56#1:209,3\n47#1:143,7\n47#1:150\n47#1:153,8\n47#1:161\n47#1:162\n47#1:163,8\n56#1:179,7\n56#1:186\n56#1:189,8\n56#1:197\n56#1:198\n56#1:199,8\n56#1:207\n84#1:223,6\n84#1:229\n84#1:232,8\n84#1:240\n47#1:151,2\n56#1:187,2\n84#1:230,2\n84#1:241,6\n84#1:251,19\n84#1:247,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
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

    .line 16
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext(Lexpo/modules/kotlin/defaultmodules/CoreModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/defaultmodules/CoreModule;

    .line 16
    invoke-direct {p0}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 34

    .line 20
    move-object/from16 v1, p0

    const-string v0, "get"

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$f$ModuleDefinition":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ModuleDefinition"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 93
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 94
    .local v7, "$i$f$trace":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 95
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 96
    nop

    .line 97
    const/4 v10, 0x0

    .line 92
    .local v10, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v11, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v11, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v12, v11

    .local v12, "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v13, 0x0

    .line 21
    .local v13, "$i$a$-ModuleDefinition-CoreModule$definition$1":I
    move-object v14, v12

    check-cast v14, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v15, "expoModulesCoreVersion"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .local v14, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v15, "name$iv":Ljava/lang/String;
    const/16 v16, 0x0

    .line 98
    .local v16, "$i$f$Property":I
    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-instance v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;

    invoke-direct {v2, v15}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .local v2, "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/16 v18, 0x0

    .line 99
    .local v18, "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    move-object/from16 v19, v2

    .local v19, "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/16 v20, 0x0

    .line 100
    .local v20, "$i$f$get":I
    move-object/from16 v21, v19

    .local v21, "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/16 v22, 0x0

    .line 101
    .local v22, "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    move/from16 v23, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v23, "$i$f$ModuleDefinition":I
    :try_start_2
    new-instance v3, Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/16 v24, 0x0

    .line 102
    .local v24, "$i$f$emptyArray":I
    move-object/from16 v25, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v25, "blockName$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    move/from16 v26, v5

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_3
    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 101
    .end local v24    # "$i$f$emptyArray":I
    const/16 v24, 0x0

    .line 103
    .local v24, "$i$f$toReturnType":I
    sget-object v27, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v27, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/16 v28, 0x0

    .line 104
    .local v28, "$i$f$get":I
    invoke-virtual/range {v27 .. v27}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v4

    const-class v29, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v30, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v30, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_4
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/ReturnType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v4, :cond_0

    :try_start_5
    new-instance v4, Lexpo/modules/kotlin/types/ReturnType;

    const-class v6, Ljava/util/Map;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v4, v6}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v6, v4

    .local v6, "it$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v29, 0x0

    .line 105
    .local v29, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv$iv":I
    sget-object v31, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v32, v4

    invoke-virtual/range {v31 .. v31}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v4

    const-class v31, Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v33, v7

    .end local v7    # "$i$f$trace":I
    .local v33, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v31 .. v31}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    nop

    .line 104
    .end local v6    # "it$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v29    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv$iv":I
    move-object/from16 v4, v32

    goto :goto_0

    .line 272
    .end local v2    # "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v10    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v12    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v13    # "$i$a$-ModuleDefinition-CoreModule$definition$1":I
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v15    # "name$iv":Ljava/lang/String;
    .end local v16    # "$i$f$Property":I
    .end local v18    # "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    .end local v19    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v20    # "$i$f$get":I
    .end local v21    # "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v22    # "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    .end local v24    # "$i$f$toReturnType":I
    .end local v27    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v28    # "$i$f$get":I
    :catchall_0
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v32, v9

    goto/16 :goto_a

    .end local v33    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v33, v7

    move-object/from16 v28, v8

    move/from16 v32, v9

    .end local v7    # "$i$f$trace":I
    .restart local v33    # "$i$f$trace":I
    goto/16 :goto_a

    .line 104
    .end local v33    # "$i$f$trace":I
    .restart local v2    # "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .restart local v7    # "$i$f$trace":I
    .restart local v10    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v12    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v13    # "$i$a$-ModuleDefinition-CoreModule$definition$1":I
    .restart local v14    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v15    # "name$iv":Ljava/lang/String;
    .restart local v16    # "$i$f$Property":I
    .restart local v18    # "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    .restart local v19    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .restart local v20    # "$i$f$get":I
    .restart local v21    # "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .restart local v22    # "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    .restart local v24    # "$i$f$toReturnType":I
    .restart local v27    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .restart local v28    # "$i$f$get":I
    :cond_0
    move/from16 v33, v7

    .line 103
    .end local v7    # "$i$f$trace":I
    .end local v27    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v28    # "$i$f$get":I
    .restart local v33    # "$i$f$trace":I
    :goto_0
    nop

    .line 101
    .end local v24    # "$i$f$toReturnType":I
    :try_start_7
    new-instance v6, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Property$1;

    invoke-direct {v6}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Property$1;-><init>()V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v0, v5, v4, v6}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v21

    .end local v21    # "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .local v4, "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    invoke-virtual {v4, v3}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setGetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 107
    nop

    .line 100
    .end local v4    # "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v22    # "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    nop

    .line 107
    nop

    .line 108
    .end local v19    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v20    # "$i$f$get":I
    invoke-virtual {v14}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    nop

    .line 98
    .end local v2    # "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v18    # "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    nop

    .line 34
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v15    # "name$iv":Ljava/lang/String;
    .end local v16    # "$i$f$Property":I
    move-object v2, v12

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "cacheDir"

    .local v2, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v3, "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$f$Property":I
    new-instance v5, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;

    invoke-direct {v5, v3}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;-><init>(Ljava/lang/String;)V

    .local v5, "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/4 v6, 0x0

    .line 111
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    move-object v7, v5

    .local v7, "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/4 v14, 0x0

    .line 112
    .local v14, "$i$f$get":I
    move-object v15, v7

    .local v15, "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/16 v16, 0x0

    .line 113
    .local v16, "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    move/from16 v18, v4

    .end local v4    # "$i$f$Property":I
    .local v18, "$i$f$Property":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/16 v19, 0x0

    .line 114
    .local v19, "$i$f$emptyArray":I
    move/from16 v20, v6

    move-object/from16 v21, v7

    const/4 v6, 0x0

    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    .end local v7    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .local v20, "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    .local v21, "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 113
    .end local v19    # "$i$f$emptyArray":I
    const/4 v6, 0x0

    .line 115
    .local v6, "$i$f$toReturnType":I
    sget-object v19, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v19, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/16 v22, 0x0

    .line 116
    .local v22, "$i$f$get":I
    move/from16 v24, v6

    .end local v6    # "$i$f$toReturnType":I
    .restart local v24    # "$i$f$toReturnType":I
    invoke-virtual/range {v19 .. v19}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    const-class v27, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v28, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v28, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_8
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v6, :cond_1

    new-instance v6, Lexpo/modules/kotlin/types/ReturnType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v6, v8}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v8, v6

    .local v8, "it$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v27, 0x0

    .line 117
    .local v27, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv$iv":I
    sget-object v29, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v31, v6

    invoke-virtual/range {v29 .. v29}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    const-class v29, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move/from16 v32, v9

    .end local v9    # "$i$f$trace":I
    .local v32, "$i$f$trace":I
    :try_start_9
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    nop

    .line 116
    .end local v8    # "it$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v27    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv$iv":I
    move-object/from16 v6, v31

    goto :goto_1

    .end local v32    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    :cond_1
    move/from16 v32, v9

    .line 115
    .end local v9    # "$i$f$trace":I
    .end local v19    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v22    # "$i$f$get":I
    .restart local v32    # "$i$f$trace":I
    :goto_1
    nop

    .line 113
    .end local v24    # "$i$f$toReturnType":I
    new-instance v8, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Property$2;

    invoke-direct {v8, v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Property$2;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v0, v7, v6, v8}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v15, v4}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setGetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 119
    nop

    .line 112
    .end local v15    # "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v16    # "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    nop

    .line 119
    nop

    .line 120
    .end local v14    # "$i$f$get":I
    .end local v21    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    nop

    .line 110
    .end local v5    # "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v20    # "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    nop

    .line 38
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$Property":I
    move-object v2, v12

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "documentsDir"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 122
    .restart local v4    # "$i$f$Property":I
    new-instance v5, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;

    invoke-direct {v5, v3}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;-><init>(Ljava/lang/String;)V

    .restart local v5    # "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/4 v6, 0x0

    .line 123
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    move-object v7, v5

    .restart local v7    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/4 v8, 0x0

    .line 124
    .local v8, "$i$f$get":I
    move-object v9, v7

    .local v9, "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/4 v14, 0x0

    .line 125
    .local v14, "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    new-instance v15, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/16 v16, 0x0

    .line 126
    .local v16, "$i$f$emptyArray":I
    move/from16 v18, v4

    move/from16 v19, v6

    const/4 v4, 0x0

    .end local v4    # "$i$f$Property":I
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    .restart local v18    # "$i$f$Property":I
    .local v19, "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 125
    .end local v16    # "$i$f$emptyArray":I
    const/4 v4, 0x0

    .line 127
    .local v4, "$i$f$toReturnType":I
    sget-object v16, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v16, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/16 v20, 0x0

    .line 128
    .local v20, "$i$f$get":I
    move/from16 v21, v4

    .end local v4    # "$i$f$toReturnType":I
    .local v21, "$i$f$toReturnType":I
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v4

    const-class v22, Ljava/lang/String;

    move-object/from16 v24, v7

    .end local v7    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .local v24, "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v4, :cond_2

    new-instance v4, Lexpo/modules/kotlin/types/ReturnType;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v4, v7}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v7, v4

    .local v7, "it$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v22, 0x0

    .line 129
    .local v22, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv$iv":I
    sget-object v27, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v29, v4

    invoke-virtual/range {v27 .. v27}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v4

    const-class v27, Ljava/lang/String;

    move/from16 v31, v8

    .end local v8    # "$i$f$get":I
    .local v31, "$i$f$get":I
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    nop

    .line 128
    .end local v7    # "it$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v22    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv$iv":I
    move-object/from16 v4, v29

    goto :goto_2

    .end local v31    # "$i$f$get":I
    .restart local v8    # "$i$f$get":I
    :cond_2
    move/from16 v31, v8

    .line 127
    .end local v8    # "$i$f$get":I
    .end local v16    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v20    # "$i$f$get":I
    .restart local v31    # "$i$f$get":I
    :goto_2
    nop

    .line 125
    .end local v21    # "$i$f$toReturnType":I
    new-instance v7, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Property$3;

    invoke-direct {v7, v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Property$3;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-direct {v15, v0, v6, v4, v7}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v9, v15}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setGetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 131
    nop

    .line 124
    .end local v9    # "$this$get_u24lambda_u240$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v14    # "$i$a$-apply-PropertyComponentBuilder$get$1$iv$iv":I
    nop

    .line 131
    nop

    .line 132
    .end local v24    # "this_$iv$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v31    # "$i$f$get":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    nop

    .line 122
    .end local v5    # "it$iv":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v19    # "$i$a$-also-ObjectDefinitionBuilder$Property$2$iv":I
    nop

    .line 43
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$Property":I
    move-object v0, v12

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "uuidv4"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 134
    .local v3, "$i$f$FunctionWithoutArgs":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v5, 0x0

    .line 135
    .local v5, "$i$f$emptyArray":I
    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 134
    .end local v5    # "$i$f$emptyArray":I
    const/4 v5, 0x0

    .line 136
    .local v5, "$i$f$toReturnType":I
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v6, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v8, 0x0

    .line 137
    .restart local v8    # "$i$f$get":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v9

    const-class v14, Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v9, :cond_3

    new-instance v9, Lexpo/modules/kotlin/types/ReturnType;

    const-class v14, Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v9, v14}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v14, v9

    .local v14, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v15, 0x0

    .line 138
    .local v15, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v16, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move/from16 v18, v3

    .end local v3    # "$i$f$FunctionWithoutArgs":I
    .local v18, "$i$f$FunctionWithoutArgs":I
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v3

    const-class v16, Ljava/lang/Object;

    move/from16 v19, v5

    .end local v5    # "$i$f$toReturnType":I
    .local v19, "$i$f$toReturnType":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    nop

    .end local v14    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v15    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    goto :goto_3

    .line 137
    .end local v18    # "$i$f$FunctionWithoutArgs":I
    .end local v19    # "$i$f$toReturnType":I
    .restart local v3    # "$i$f$FunctionWithoutArgs":I
    .restart local v5    # "$i$f$toReturnType":I
    :cond_3
    move/from16 v18, v3

    move/from16 v19, v5

    .end local v3    # "$i$f$FunctionWithoutArgs":I
    .end local v5    # "$i$f$toReturnType":I
    .restart local v18    # "$i$f$FunctionWithoutArgs":I
    .restart local v19    # "$i$f$toReturnType":I
    :goto_3
    nop

    .line 136
    .end local v6    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v8    # "$i$f$get":I
    nop

    .line 134
    .end local v19    # "$i$f$toReturnType":I
    new-instance v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v3}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$FunctionWithoutArgs$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v2, v7, v9, v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    nop

    .line 134
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    nop

    .line 47
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$FunctionWithoutArgs":I
    move-object v0, v12

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "uuidv5"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 142
    .local v3, "$i$f$Function":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 143
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 144
    const-class v6, Ljava/lang/String;

    .line 143
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 145
    const-class v7, Ljava/lang/String;

    .line 143
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 149
    .local v8, "$i$f$toArgsArray":I
    const/4 v9, 0x2

    new-array v14, v9, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v15, 0x0

    .line 150
    .local v15, "$i$f$toAnyType":I
    sget-object v16, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v16, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v18, 0x0

    .line 151
    .local v18, "$i$f$cachedAnyType":I
    new-instance v9, Lkotlin/Pair;

    const-class v20, Ljava/lang/String;

    move/from16 v21, v3

    .end local v3    # "$i$f$Function":I
    .local v21, "$i$f$Function":I
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v22, v6

    const/16 v20, 0x0

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v22, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v9, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v9

    .line 152
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 150
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v16    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v18    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_4

    sget-object v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$1;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 153
    .local v6, "$i$f$toAnyType":I
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 154
    move/from16 v16, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v16, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v18, Ljava/lang/String;

    move-object/from16 v20, v7

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v20, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    .line 156
    nop

    .line 157
    nop

    .line 154
    move/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toArgsArray":I
    .local v18, "$i$f$toArgsArray":I
    invoke-direct {v6, v7, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 159
    nop

    .line 153
    invoke-direct {v9, v6, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 160
    move-object v6, v9

    goto :goto_4

    .line 150
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$toAnyType":I
    .end local v18    # "$i$f$toArgsArray":I
    .end local v20    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v7    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v8    # "$i$f$toArgsArray":I
    :cond_4
    move-object/from16 v20, v7

    move/from16 v18, v8

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .end local v8    # "$i$f$toArgsArray":I
    .restart local v18    # "$i$f$toArgsArray":I
    .restart local v20    # "p1$iv$iv":Ljava/lang/Class;
    :goto_4
    const/4 v3, 0x0

    .end local v15    # "$i$f$toAnyType":I
    aput-object v6, v14, v3

    .line 149
    nop

    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 151
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v16, v3

    const/4 v15, 0x0

    .end local v3    # "$i$f$toAnyType":I
    .restart local v16    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v8

    .line 152
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 162
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_5

    sget-object v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$2;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 163
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 164
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 166
    nop

    .line 167
    nop

    .line 164
    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 169
    nop

    .line 163
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 170
    nop

    .line 162
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_5
    nop

    .end local v16    # "$i$f$toAnyType":I
    const/4 v3, 0x1

    aput-object v8, v14, v3

    .line 149
    nop

    .line 148
    nop

    .line 142
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v18    # "$i$f$toArgsArray":I
    .end local v20    # "p1$iv$iv":Ljava/lang/Class;
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    const/4 v5, 0x0

    .line 171
    .local v5, "$i$f$toReturnType":I
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v6, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v7, 0x0

    .line 172
    .local v7, "$i$f$get":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v8, :cond_6

    new-instance v8, Lexpo/modules/kotlin/types/ReturnType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v9, v8

    .local v9, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v15, 0x0

    .line 173
    .local v15, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v16, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v3

    const-class v16, Ljava/lang/String;

    move/from16 v20, v5

    .end local v5    # "$i$f$toReturnType":I
    .local v20, "$i$f$toReturnType":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    nop

    .end local v9    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v15    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    goto :goto_5

    .line 172
    .end local v20    # "$i$f$toReturnType":I
    .restart local v5    # "$i$f$toReturnType":I
    :cond_6
    move/from16 v20, v5

    .end local v5    # "$i$f$toReturnType":I
    .restart local v20    # "$i$f$toReturnType":I
    :goto_5
    nop

    .line 171
    .end local v6    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v7    # "$i$f$get":I
    nop

    .line 175
    .end local v20    # "$i$f$toReturnType":I
    new-instance v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$3;

    invoke-direct {v3}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$3;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 142
    invoke-direct {v4, v2, v14, v8, v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 175
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v4, 0x0

    .line 176
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$Function$9$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    nop

    .line 175
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$Function$9$iv":I
    nop

    .line 142
    nop

    .line 56
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$Function":I
    move-object v0, v12

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getViewConfig"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "$i$f$Function":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 179
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 180
    const-class v6, Ljava/lang/String;

    .line 179
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 181
    const-class v7, Ljava/lang/String;

    .line 179
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 185
    .restart local v8    # "$i$f$toArgsArray":I
    const/4 v9, 0x2

    new-array v9, v9, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v14, 0x0

    .line 186
    .local v14, "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v15, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v16, 0x0

    .line 187
    .local v16, "$i$f$cachedAnyType":I
    move/from16 v19, v3

    .end local v3    # "$i$f$Function":I
    .local v19, "$i$f$Function":I
    new-instance v3, Lkotlin/Pair;

    const-class v20, Ljava/lang/String;

    move-object/from16 v21, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v21, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v22, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v22, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 186
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v16    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_7

    sget-object v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$4;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$4;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 189
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 190
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v16, Ljava/lang/String;

    move/from16 v20, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v20, "$i$f$toAnyType":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 192
    nop

    .line 193
    nop

    .line 190
    move/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toArgsArray":I
    .local v16, "$i$f$toArgsArray":I
    invoke-direct {v15, v6, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 195
    nop

    .line 189
    invoke-direct {v7, v15, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 196
    move-object v6, v7

    goto :goto_6

    .line 186
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$toArgsArray":I
    .end local v20    # "$i$f$toAnyType":I
    .restart local v8    # "$i$f$toArgsArray":I
    :cond_7
    move/from16 v16, v8

    .end local v8    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$f$toArgsArray":I
    :goto_6
    const/4 v3, 0x0

    .end local v14    # "$i$f$toAnyType":I
    aput-object v6, v9, v3

    .line 185
    nop

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 187
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    move/from16 v20, v3

    const/4 v15, 0x1

    .end local v3    # "$i$f$toAnyType":I
    .restart local v20    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v8, v14, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v8

    .line 188
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 198
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_8

    sget-object v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$5;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 199
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 200
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 202
    nop

    .line 203
    nop

    .line 200
    const/4 v15, 0x1

    invoke-direct {v7, v14, v15, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 205
    nop

    .line 199
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 206
    nop

    .line 198
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_8
    const/4 v3, 0x1

    .end local v20    # "$i$f$toAnyType":I
    aput-object v8, v9, v3

    .line 185
    nop

    .line 207
    nop

    .line 178
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v16    # "$i$f$toArgsArray":I
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    .end local v22    # "p1$iv$iv":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 208
    .local v3, "$i$f$toReturnType":I
    sget-object v5, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v5, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v6, 0x0

    .line 209
    .local v6, "$i$f$get":I
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v7

    const-class v8, Ljava/util/Map;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v7, :cond_9

    new-instance v7, Lexpo/modules/kotlin/types/ReturnType;

    const-class v8, Ljava/util/Map;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v8, v7

    .local v8, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v14, 0x0

    .line 210
    .local v14, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v15, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v15}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v15

    const-class v16, Ljava/util/Map;

    move/from16 v20, v3

    .end local v3    # "$i$f$toReturnType":I
    .local v20, "$i$f$toReturnType":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v15, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    nop

    .end local v8    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v14    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    goto :goto_7

    .line 209
    .end local v20    # "$i$f$toReturnType":I
    .restart local v3    # "$i$f$toReturnType":I
    :cond_9
    move/from16 v20, v3

    .end local v3    # "$i$f$toReturnType":I
    .restart local v20    # "$i$f$toReturnType":I
    :goto_7
    nop

    .line 208
    .end local v5    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v6    # "$i$f$get":I
    nop

    .line 212
    .end local v20    # "$i$f$toReturnType":I
    new-instance v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;

    invoke-direct {v3, v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 178
    invoke-direct {v4, v2, v9, v7, v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 212
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v4, 0x0

    .line 213
    .restart local v4    # "$i$a$-also-ObjectDefinitionBuilder$Function$9$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    nop

    .line 212
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$Function$9$iv":I
    nop

    .line 178
    nop

    .line 84
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$Function":I
    move-object v0, v12

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "reloadAppAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 215
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/String;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 216
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 222
    new-instance v6, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$AsyncFunction$1;

    invoke-direct {v6, v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 216
    invoke-direct {v4, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v18, v3

    goto/16 :goto_9

    .line 218
    :cond_a
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 223
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 224
    const-class v5, Ljava/lang/String;

    .line 223
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 228
    .local v6, "$i$f$toArgsArray":I
    const/4 v7, 0x1

    new-array v7, v7, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 229
    .local v8, "$i$f$toAnyType":I
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v9, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v14, 0x0

    .line 230
    .local v14, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v16, Ljava/lang/String;

    move/from16 v18, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v18, "$i$f$AsyncFunction":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v19, v5

    const/16 v16, 0x0

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v19, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v15, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v15

    .line 231
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 229
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v9    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v14    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_b

    sget-object v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$AsyncFunction$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 232
    .local v5, "$i$f$toAnyType":I
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 233
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 235
    nop

    .line 236
    nop

    .line 233
    move/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .local v16, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 238
    nop

    .line 232
    invoke-direct {v9, v14, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 239
    move-object v5, v9

    .line 229
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$toAnyType":I
    :cond_b
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v5, v7, v3

    .line 228
    nop

    .line 240
    nop

    .line 218
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v6    # "$i$f$toArgsArray":I
    .end local v19    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$AsyncFunction$3;

    invoke-direct {v3, v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v7

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 241
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 244
    nop

    .line 245
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 246
    const/4 v6, 0x0

    .line 247
    .local v6, "$i$f$enforceType":I
    nop

    .line 250
    nop

    .line 251
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 253
    :cond_c
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 254
    const/4 v6, 0x0

    .line 247
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 250
    nop

    .line 255
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 257
    :cond_d
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 258
    const/4 v6, 0x0

    .line 247
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 250
    nop

    .line 259
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 261
    :cond_e
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 262
    const/4 v6, 0x0

    .line 247
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 250
    nop

    .line 263
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 265
    :cond_f
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 266
    const/4 v6, 0x0

    .line 247
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 250
    nop

    .line 267
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 269
    :cond_10
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 244
    :goto_8
    move-object v4, v6

    .line 222
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_9
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 270
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    nop

    .line 222
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 215
    nop

    .line 89
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$AsyncFunction":I
    nop

    .line 92
    .end local v12    # "$this$definition_u24lambda_u2412":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v13    # "$i$a$-ModuleDefinition-CoreModule$definition$1":I
    invoke-virtual {v11}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 97
    .end local v10    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 272
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 97
    nop

    .line 94
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    nop

    .line 93
    .end local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v33    # "$i$f$trace":I
    nop

    .line 92
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    nop

    .line 89
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v23    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 272
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v23    # "$i$f$ModuleDefinition":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    .restart local v33    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    goto :goto_a

    .end local v32    # "$i$f$trace":I
    .local v9, "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v32, v9

    .end local v9    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    goto :goto_a

    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v32, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_a

    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .end local v33    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move/from16 v33, v7

    move-object/from16 v28, v8

    move/from16 v32, v9

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    .restart local v33    # "$i$f$trace":I
    goto :goto_a

    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .end local v33    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move-object/from16 v30, v6

    move/from16 v33, v7

    move-object/from16 v28, v8

    move/from16 v32, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    .restart local v33    # "$i$f$trace":I
    goto :goto_a

    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .end local v33    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v30, v6

    move/from16 v33, v7

    move-object/from16 v28, v8

    move/from16 v32, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    .restart local v33    # "$i$f$trace":I
    goto :goto_a

    .end local v23    # "$i$f$ModuleDefinition":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .end local v33    # "$i$f$trace":I
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v30, v6

    move/from16 v33, v7

    move-object/from16 v28, v8

    move/from16 v32, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$ModuleDefinition":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    .restart local v33    # "$i$f$trace":I
    goto :goto_a

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v23    # "$i$f$ModuleDefinition":I
    .end local v25    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .end local v33    # "$i$f$trace":I
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

    move-object/from16 v17, v2

    move/from16 v23, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v30, v6

    move/from16 v33, v7

    move-object/from16 v28, v8

    move/from16 v32, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v23    # "$i$f$ModuleDefinition":I
    .restart local v25    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    .restart local v33    # "$i$f$trace":I
    :goto_a
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
