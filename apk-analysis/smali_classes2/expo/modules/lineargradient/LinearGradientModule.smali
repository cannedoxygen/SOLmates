.class public final Lexpo/modules/lineargradient/LinearGradientModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "LinearGradientModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinearGradientModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinearGradientModule.kt\nexpo/modules/lineargradient/LinearGradientModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,39:1\n61#2:40\n14#3:41\n25#3:42\n27#4,3:43\n31#4:165\n94#5,9:46\n103#5,2:163\n127#6,3:55\n130#6,3:70\n127#6,3:73\n130#6,3:88\n127#6,3:91\n130#6,3:106\n127#6,3:109\n130#6,3:124\n127#6,3:127\n130#6,3:142\n127#6,3:145\n130#6,3:160\n167#7,2:58\n158#7,8:62\n167#7,2:76\n158#7,8:80\n167#7,2:94\n158#7,8:98\n167#7,2:112\n158#7,8:116\n167#7,2:130\n158#7,8:134\n167#7,2:148\n158#7,8:152\n143#8,2:60\n143#8,2:78\n143#8,2:96\n143#8,2:114\n143#8,2:132\n143#8,2:150\n*S KotlinDebug\n*F\n+ 1 LinearGradientModule.kt\nexpo/modules/lineargradient/LinearGradientModule\n*L\n7#1:40\n7#1:41\n7#1:42\n7#1:43,3\n7#1:165\n10#1:46,9\n10#1:163,2\n11#1:55,3\n11#1:70,3\n15#1:73,3\n15#1:88,3\n21#1:91,3\n21#1:106,3\n25#1:109,3\n25#1:124,3\n29#1:127,3\n29#1:142,3\n33#1:145,3\n33#1:160,3\n11#1:58,2\n11#1:62,8\n15#1:76,2\n15#1:80,8\n21#1:94,2\n21#1:98,8\n25#1:112,2\n25#1:116,8\n29#1:130,2\n29#1:134,8\n33#1:148,2\n33#1:152,8\n11#1:60,2\n15#1:78,2\n21#1:96,2\n25#1:114,2\n29#1:132,2\n33#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/lineargradient/LinearGradientModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-linear-gradient_debug"
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
    .locals 34

    .line 7
    const-class v0, [I

    const-class v1, [F

    move-object/from16 v2, p0

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 40
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

    .line 41
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 42
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

    .line 43
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 44
    nop

    .line 45
    const/4 v10, 0x0

    .line 40
    .local v10, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v11, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v11, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v12, v11

    .local v12, "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v13, 0x0

    .line 8
    .local v13, "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    const-string v14, "ExpoLinearGradient"

    invoke-virtual {v12, v14}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 10
    move-object v14, v12

    check-cast v14, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    const-class v15, Lexpo/modules/lineargradient/LinearGradientView;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .local v14, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .local v15, "viewClass$iv":Lkotlin/reflect/KClass;
    const/16 v16, 0x0

    .line 46
    .local v16, "$i$f$View":I
    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-instance v2, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    .line 47
    nop

    .line 48
    new-instance v24, Lexpo/modules/kotlin/types/LazyKType;

    const-class v18, Lexpo/modules/lineargradient/LinearGradientView;

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v19

    .line 46
    sget-object v18, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$$inlined$View$1;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$$inlined$View$1;

    move-object/from16 v21, v18

    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 48
    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v23}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move/from16 v18, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v18, "$i$f$ModuleDefinition":I
    :try_start_2
    move-object/from16 v3, v24

    check-cast v3, Lkotlin/reflect/KType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 49
    move-object/from16 v19, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v19, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v14}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 46
    invoke-direct {v2, v15, v3, v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 52
    .local v2, "viewDefinitionBuilder$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    invoke-static {v2}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseCSSProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V

    .line 54
    move-object v3, v2

    .local v3, "$this$definition_u24lambda_u241_u24lambda_u240":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v4, 0x0

    .line 11
    .local v4, "$i$a$-View-LinearGradientModule$definition$1$1":I
    const-string v20, "colors"

    sget-object v21, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$1;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$1;

    check-cast v21, Lkotlin/jvm/functions/Function2;

    .local v21, "body$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v22, v3

    .local v22, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    move-object/from16 v23, v21

    .end local v21    # "body$iv":Lkotlin/jvm/functions/Function2;
    .local v23, "body$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v21, v20

    .local v21, "name$iv":Ljava/lang/String;
    const/16 v20, 0x0

    .line 55
    .local v20, "$i$f$Prop":I
    move/from16 v24, v4

    .end local v4    # "$i$a$-View-LinearGradientModule$definition$1$1":I
    .local v24, "$i$a$-View-LinearGradientModule$definition$1$1":I
    invoke-virtual/range {v22 .. v22}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move/from16 v25, v5

    .end local v5    # "$i$f$trace":I
    .local v25, "$i$f$trace":I
    :try_start_4
    new-instance v5, Lexpo/modules/kotlin/views/ConcreteViewProp;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 56
    nop

    .line 57
    nop

    .line 58
    move-object/from16 v26, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v26, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/16 v27, 0x0

    .line 59
    .local v27, "$i$f$toAnyType":I
    :try_start_5
    sget-object v28, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .local v28, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v29, 0x0

    .line 60
    .local v29, "$i$f$cachedAnyType":I
    move/from16 v30, v7

    .end local v7    # "$i$f$trace":I
    .local v30, "$i$f$trace":I
    :try_start_6
    new-instance v7, Lkotlin/Pair;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v31, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v31, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v32, v9

    .end local v9    # "$i$f$trace":I
    .local v32, "$i$f$trace":I
    const/4 v9, 0x0

    move/from16 v33, v10

    .end local v10    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v33, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .local v7, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v28 .. v28}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 59
    .end local v7    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v28    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v29    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_0

    sget-object v7, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$1;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 62
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 63
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 65
    nop

    .line 66
    nop

    .line 63
    move/from16 v29, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toAnyType":I
    .local v29, "$i$f$toAnyType":I
    invoke-direct {v9, v0, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 68
    nop

    .line 62
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 69
    move-object v8, v10

    .line 59
    .end local v7    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$toAnyType":I
    :cond_0
    nop

    .line 70
    .end local v6    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v27    # "$i$f$toAnyType":I
    nop

    .line 55
    move-object/from16 v6, v21

    move-object/from16 v0, v23

    .end local v21    # "name$iv":Ljava/lang/String;
    .end local v23    # "body$iv":Lkotlin/jvm/functions/Function2;
    .local v0, "body$iv":Lkotlin/jvm/functions/Function2;
    .local v6, "name$iv":Ljava/lang/String;
    invoke-direct {v5, v6, v8, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    nop

    .line 15
    .end local v0    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v6    # "name$iv":Ljava/lang/String;
    .end local v20    # "$i$f$Prop":I
    .end local v22    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const-string v0, "locations"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .local v4, "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v5, v3

    .local v0, "name$iv":Ljava/lang/String;
    .local v5, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v6, 0x0

    .line 73
    .local v6, "$i$f$Prop":I
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 74
    nop

    .line 75
    nop

    .line 76
    const/4 v9, 0x0

    .local v9, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v10, 0x0

    .line 77
    .local v10, "$i$f$toAnyType":I
    sget-object v20, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v20, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v21, 0x0

    .line 78
    .local v21, "$i$f$cachedAnyType":I
    move-object/from16 v22, v5

    .end local v5    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .restart local v22    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    new-instance v5, Lkotlin/Pair;

    move/from16 v23, v6

    .end local v6    # "$i$f$Prop":I
    .local v23, "$i$f$Prop":I
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v27, v10

    .end local v10    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    const/4 v10, 0x1

    move-object/from16 v28, v12

    .end local v12    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .local v28, "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v5, v6, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .local v5, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v20 .. v20}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 77
    .end local v5    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v20    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v21    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_1

    sget-object v5, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$2;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 80
    .local v6, "$i$f$toAnyType":I
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 81
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    move/from16 v21, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v21, "$i$f$toAnyType":I
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 83
    nop

    .line 84
    nop

    .line 81
    move/from16 v29, v13

    const/4 v13, 0x1

    .end local v13    # "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    .local v29, "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    invoke-direct {v10, v6, v13, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 86
    nop

    .line 80
    invoke-direct {v12, v10, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 87
    move-object v6, v12

    goto :goto_0

    .line 77
    .end local v5    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v21    # "$i$f$toAnyType":I
    .end local v29    # "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    .restart local v13    # "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    :cond_1
    move/from16 v29, v13

    .end local v13    # "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    .restart local v29    # "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    :goto_0
    nop

    .line 88
    .end local v9    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v27    # "$i$f$toAnyType":I
    nop

    .line 73
    invoke-direct {v8, v0, v6, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .line 21
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v23    # "$i$f$Prop":I
    const-string v0, "startPoint"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$3;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$3;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .restart local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v5, v3

    .restart local v0    # "name$iv":Ljava/lang/String;
    .local v5, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v6, 0x0

    .line 91
    .local v6, "$i$f$Prop":I
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 92
    nop

    .line 93
    nop

    .line 94
    const/4 v9, 0x0

    .restart local v9    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v10, 0x0

    .line 95
    .restart local v10    # "$i$f$toAnyType":I
    sget-object v12, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v12, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v13, 0x0

    .line 96
    .local v13, "$i$f$cachedAnyType":I
    move-object/from16 v21, v5

    .end local v5    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .local v21, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    new-instance v5, Lkotlin/Pair;

    const-class v22, Lkotlin/Pair;

    move/from16 v23, v6

    .end local v6    # "$i$f$Prop":I
    .restart local v23    # "$i$f$Prop":I
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v22, v10

    const/16 v20, 0x1

    .end local v10    # "$i$f$toAnyType":I
    .local v22, "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v5, v6, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .local v5, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v12}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 95
    .end local v5    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v12    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v13    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_2

    sget-object v5, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$3;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$3;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 98
    .local v6, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 99
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 101
    nop

    .line 102
    nop

    .line 99
    move/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v12, v13, v6, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 104
    nop

    .line 98
    invoke-direct {v10, v12, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 105
    move-object v6, v10

    .line 95
    .end local v5    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_2
    nop

    .line 106
    .end local v9    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v22    # "$i$f$toAnyType":I
    nop

    .line 91
    invoke-direct {v8, v0, v6, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    nop

    .line 25
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v23    # "$i$f$Prop":I
    const-string v0, "endPoint"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$4;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$4;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .restart local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v5, v3

    .restart local v0    # "name$iv":Ljava/lang/String;
    .local v5, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v6, 0x0

    .line 109
    .local v6, "$i$f$Prop":I
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 110
    nop

    .line 111
    nop

    .line 112
    const/4 v9, 0x0

    .restart local v9    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v10, 0x0

    .line 113
    .restart local v10    # "$i$f$toAnyType":I
    sget-object v12, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v12    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v13, 0x0

    .line 114
    .restart local v13    # "$i$f$cachedAnyType":I
    move-object/from16 v21, v5

    .end local v5    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .restart local v21    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    new-instance v5, Lkotlin/Pair;

    const-class v22, Lkotlin/Pair;

    move/from16 v23, v6

    .end local v6    # "$i$f$Prop":I
    .restart local v23    # "$i$f$Prop":I
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v22, v10

    const/16 v20, 0x1

    .end local v10    # "$i$f$toAnyType":I
    .restart local v22    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v5, v6, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .local v5, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v12}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 113
    .end local v5    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v12    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v13    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_3

    sget-object v5, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$4;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$4;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 116
    .local v6, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 117
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 119
    nop

    .line 120
    nop

    .line 117
    move/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v12, v13, v6, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 122
    nop

    .line 116
    invoke-direct {v10, v12, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 123
    move-object v6, v10

    .line 113
    .end local v5    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_3
    nop

    .line 124
    .end local v9    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v22    # "$i$f$toAnyType":I
    nop

    .line 109
    invoke-direct {v8, v0, v6, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    nop

    .line 29
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v23    # "$i$f$Prop":I
    const-string v0, "borderRadii"

    sget-object v4, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$5;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$5;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .restart local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v5, v3

    .restart local v0    # "name$iv":Ljava/lang/String;
    .local v5, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$f$Prop":I
    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 128
    nop

    .line 129
    nop

    .line 130
    const/4 v9, 0x0

    .restart local v9    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v10, 0x0

    .line 131
    .restart local v10    # "$i$f$toAnyType":I
    sget-object v12, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v12    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v13, 0x0

    .line 132
    .restart local v13    # "$i$f$cachedAnyType":I
    move-object/from16 v21, v5

    .end local v5    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .restart local v21    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    new-instance v5, Lkotlin/Pair;

    move/from16 v22, v6

    .end local v6    # "$i$f$Prop":I
    .local v22, "$i$f$Prop":I
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v23, v10

    const/16 v20, 0x1

    .end local v10    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v5, v6, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .local v5, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v12}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 131
    .end local v5    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v12    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v13    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_4

    sget-object v5, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$5;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$5;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 134
    .local v6, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 135
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 137
    nop

    .line 138
    nop

    .line 135
    const/4 v13, 0x1

    invoke-direct {v12, v1, v13, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 140
    nop

    .line 134
    invoke-direct {v10, v12, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 141
    move-object v6, v10

    .line 131
    .end local v5    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_4
    nop

    .line 142
    .end local v9    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v23    # "$i$f$toAnyType":I
    nop

    .line 127
    invoke-direct {v8, v0, v6, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    nop

    .line 33
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v22    # "$i$f$Prop":I
    const-string v0, "dither"

    sget-object v1, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$6;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$6;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .local v1, "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v4, v3

    .restart local v0    # "name$iv":Ljava/lang/String;
    .local v4, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v5, 0x0

    .line 145
    .local v5, "$i$f$Prop":I
    invoke-virtual {v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 146
    nop

    .line 147
    nop

    .line 148
    const/4 v8, 0x0

    .local v8, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v9, 0x0

    .line 149
    .local v9, "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v10, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v12, 0x0

    .line 150
    .local v12, "$i$f$cachedAnyType":I
    new-instance v13, Lkotlin/Pair;

    const-class v21, Ljava/lang/Boolean;

    move-object/from16 v22, v3

    .end local v3    # "$this$definition_u24lambda_u241_u24lambda_u240":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .local v22, "$this$definition_u24lambda_u241_u24lambda_u240":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v21, v4

    const/16 v20, 0x1

    .end local v4    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .restart local v21    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v13, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v13

    .line 151
    .local v3, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;

    .line 149
    .end local v3    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v12    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_5

    sget-object v3, Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$6;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$lambda$1$lambda$0$$inlined$Prop$6;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 152
    .local v4, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 153
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/Boolean;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 155
    nop

    .line 156
    nop

    .line 153
    move/from16 v23, v4

    const/4 v4, 0x1

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-direct {v12, v13, v4, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 158
    nop

    .line 152
    invoke-direct {v10, v12, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 159
    move-object v4, v10

    .line 149
    .end local v3    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    :cond_5
    nop

    .line 160
    .end local v8    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v9    # "$i$f$toAnyType":I
    nop

    .line 145
    invoke-direct {v7, v0, v4, v1}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    nop

    .line 36
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$i$f$Prop":I
    .end local v21    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    nop

    .line 54
    .end local v22    # "$this$definition_u24lambda_u241_u24lambda_u240":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v24    # "$i$a$-View-LinearGradientModule$definition$1$1":I
    nop

    .line 163
    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v0

    invoke-virtual {v14, v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    .line 164
    nop

    .line 37
    .end local v2    # "viewDefinitionBuilder$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v15    # "viewClass$iv":Lkotlin/reflect/KClass;
    .end local v16    # "$i$f$View":I
    nop

    .line 40
    .end local v28    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v29    # "$i$a$-ModuleDefinition-LinearGradientModule$definition$1":I
    invoke-virtual {v11}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 45
    .end local v33    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 165
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 45
    nop

    .line 42
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    nop

    .line 41
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    nop

    .line 40
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    nop

    .line 37
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 165
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .end local v32    # "$i$f$trace":I
    .local v9, "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v32, v9

    .end local v9    # "$i$f$trace":I
    .restart local v32    # "$i$f$trace":I
    goto/16 :goto_1

    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    move-object/from16 v31, v8

    move/from16 v32, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v30    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v25    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v18    # "$i$f$ModuleDefinition":I
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    goto :goto_1

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "$i$f$ModuleDefinition":I
    .end local v19    # "blockName$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "$i$f$trace":I
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

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
    .restart local v18    # "$i$f$ModuleDefinition":I
    .restart local v19    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "$i$f$trace":I
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
