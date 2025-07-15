.class public final Lexpo/modules/blur/BlurModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "BlurModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurModule.kt\nexpo/modules/blur/BlurModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,35:1\n61#2:36\n14#3:37\n25#3:38\n27#4,3:39\n31#4:129\n94#5,9:42\n103#5,2:127\n127#6,3:51\n130#6,3:66\n127#6,3:69\n130#6,3:84\n127#6,3:87\n130#6,3:102\n127#6,3:105\n130#6,3:120\n107#6,4:123\n167#7,2:54\n158#7,8:58\n167#7,2:72\n158#7,8:76\n167#7,2:90\n158#7,8:94\n167#7,2:108\n158#7,8:112\n143#8,2:56\n143#8,2:74\n143#8,2:92\n143#8,2:110\n*S KotlinDebug\n*F\n+ 1 BlurModule.kt\nexpo/modules/blur/BlurModule\n*L\n9#1:36\n9#1:37\n9#1:38\n9#1:39,3\n9#1:129\n12#1:42,9\n12#1:127,2\n13#1:51,3\n13#1:66,3\n17#1:69,3\n17#1:84,3\n21#1:87,3\n21#1:102,3\n25#1:105,3\n25#1:120,3\n29#1:123,4\n13#1:54,2\n13#1:58,8\n17#1:72,2\n17#1:76,8\n21#1:90,2\n21#1:94,8\n25#1:108,2\n25#1:112,8\n13#1:56,2\n17#1:74,2\n21#1:92,2\n25#1:110,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/blur/BlurModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-blur_debug"
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

    .line 8
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 33

    .line 9
    move-object/from16 v1, p0

    check-cast v1, Lexpo/modules/kotlin/modules/Module;

    .local v1, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v2, 0x0

    .line 36
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

    .line 37
    .local v4, "$i$f$trace":I
    const-string v5, "ExpoModulesCore"

    .local v5, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 38
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

    .line 39
    .local v8, "$i$f$trace":I
    invoke-static {v7}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 40
    nop

    .line 41
    const/4 v0, 0x0

    .line 36
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v9, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v9, v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v10, v9

    .local v10, "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v11, 0x0

    .line 10
    .local v11, "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    const-string v12, "ExpoBlurView"

    invoke-virtual {v10, v12}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 12
    move-object v12, v10

    check-cast v12, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    const-class v13, Lexpo/modules/blur/ExpoBlurView;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .local v12, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .local v13, "viewClass$iv":Lkotlin/reflect/KClass;
    const/4 v14, 0x0

    .line 42
    .local v14, "$i$f$View":I
    new-instance v15, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    .line 43
    nop

    .line 44
    new-instance v22, Lexpo/modules/kotlin/types/LazyKType;

    const-class v16, Lexpo/modules/blur/ExpoBlurView;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    .line 42
    sget-object v16, Lexpo/modules/blur/BlurModule$definition$lambda$2$$inlined$View$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$$inlined$View$1;

    move-object/from16 v19, v16

    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 44
    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v21}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    move-object/from16 v0, v22

    check-cast v0, Lkotlin/reflect/KType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 45
    move-object/from16 v17, v1

    .end local v1    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    invoke-virtual {v12}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v1

    .line 42
    invoke-direct {v15, v13, v0, v1}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v0, v15

    .line 48
    .local v0, "viewDefinitionBuilder$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    invoke-static {v0}, Lexpo/modules/kotlin/views/decorators/CSSPropsKt;->UseCSSProps(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V

    .line 50
    move-object v1, v0

    .local v1, "$this$definition_u24lambda_u242_u24lambda_u241":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v15, 0x0

    .line 13
    .local v15, "$i$a$-View-BlurModule$definition$1$1":I
    const-string v18, "intensity"

    sget-object v19, Lexpo/modules/blur/BlurModule$definition$1$1$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$1;

    check-cast v19, Lkotlin/jvm/functions/Function2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .local v19, "body$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v20, v1

    .local v20, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    move-object/from16 v21, v19

    .end local v19    # "body$iv":Lkotlin/jvm/functions/Function2;
    .local v21, "body$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v19, v18

    .local v19, "name$iv":Ljava/lang/String;
    const/16 v18, 0x0

    .line 51
    .local v18, "$i$f$Prop":I
    move/from16 v22, v2

    .end local v2    # "$i$f$ModuleDefinition":I
    .local v22, "$i$f$ModuleDefinition":I
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v23, v3

    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .local v23, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 52
    nop

    .line 53
    nop

    .line 54
    move/from16 v24, v4

    .end local v4    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    const/4 v4, 0x0

    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/16 v25, 0x0

    .line 55
    .local v25, "$i$f$toAnyType":I
    :try_start_4
    sget-object v26, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .local v26, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v27, 0x0

    .line 56
    .local v27, "$i$f$cachedAnyType":I
    move-object/from16 v28, v5

    .end local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v28, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_5
    new-instance v5, Lkotlin/Pair;

    const-class v29, Ljava/lang/Float;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v30, v6

    .end local v6    # "$i$f$trace":I
    .local v30, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v29, v7

    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v29, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    move/from16 v31, v8

    .end local v8    # "$i$f$trace":I
    .local v31, "$i$f$trace":I
    :try_start_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .local v5, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v26 .. v26}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 55
    .end local v5    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v26    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v27    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_0

    sget-object v5, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 58
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 59
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v27, Ljava/lang/Float;

    move/from16 v32, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v32, "$i$f$toAnyType":I
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 61
    nop

    .line 62
    nop

    .line 59
    move-object/from16 v27, v10

    const/4 v10, 0x0

    .end local v10    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .local v27, "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    invoke-direct {v7, v6, v10, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 64
    nop

    .line 58
    invoke-direct {v8, v7, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 65
    move-object v6, v8

    goto :goto_0

    .line 55
    .end local v5    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v32    # "$i$f$toAnyType":I
    .restart local v10    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    :cond_0
    move-object/from16 v27, v10

    .end local v10    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v27    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    :goto_0
    nop

    .line 66
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v25    # "$i$f$toAnyType":I
    nop

    .line 51
    move-object/from16 v5, v19

    move-object/from16 v4, v21

    .end local v19    # "name$iv":Ljava/lang/String;
    .end local v21    # "body$iv":Lkotlin/jvm/functions/Function2;
    .local v4, "body$iv":Lkotlin/jvm/functions/Function2;
    .local v5, "name$iv":Ljava/lang/String;
    invoke-direct {v3, v5, v6, v4}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    nop

    .line 17
    .end local v4    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$Prop":I
    .end local v20    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const-string v2, "tint"

    sget-object v3, Lexpo/modules/blur/BlurModule$definition$1$1$2;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$2;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .local v3, "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v4, v1

    .local v2, "name$iv":Ljava/lang/String;
    .local v4, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v5, 0x0

    .line 69
    .local v5, "$i$f$Prop":I
    invoke-virtual {v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 70
    nop

    .line 71
    nop

    .line 72
    const/4 v8, 0x0

    .local v8, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v10, 0x0

    .line 73
    .local v10, "$i$f$toAnyType":I
    sget-object v18, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v18, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v19, 0x0

    .line 74
    .local v19, "$i$f$cachedAnyType":I
    move-object/from16 v20, v4

    .end local v4    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .restart local v20    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    new-instance v4, Lkotlin/Pair;

    const-class v21, Lexpo/modules/blur/enums/TintStyle;

    move/from16 v25, v5

    .end local v5    # "$i$f$Prop":I
    .local v25, "$i$f$Prop":I
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move/from16 v32, v10

    const/16 v21, 0x0

    .end local v10    # "$i$f$toAnyType":I
    .restart local v32    # "$i$f$toAnyType":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .local v4, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v18 .. v18}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 73
    .end local v4    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v18    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v19    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_1

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$2;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 76
    .local v5, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 77
    move/from16 v18, v5

    .end local v5    # "$i$f$toAnyType":I
    .local v18, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v19, Lexpo/modules/blur/enums/TintStyle;

    move/from16 v21, v11

    .end local v11    # "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    .local v21, "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 79
    nop

    .line 80
    nop

    .line 77
    move-object/from16 v19, v13

    const/4 v13, 0x0

    .end local v13    # "viewClass$iv":Lkotlin/reflect/KClass;
    .local v19, "viewClass$iv":Lkotlin/reflect/KClass;
    invoke-direct {v5, v11, v13, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 82
    nop

    .line 76
    invoke-direct {v10, v5, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 83
    move-object v5, v10

    goto :goto_1

    .line 73
    .end local v4    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$i$f$toAnyType":I
    .end local v19    # "viewClass$iv":Lkotlin/reflect/KClass;
    .end local v21    # "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    .restart local v11    # "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    .restart local v13    # "viewClass$iv":Lkotlin/reflect/KClass;
    :cond_1
    move/from16 v21, v11

    move-object/from16 v19, v13

    .end local v11    # "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    .end local v13    # "viewClass$iv":Lkotlin/reflect/KClass;
    .restart local v19    # "viewClass$iv":Lkotlin/reflect/KClass;
    .restart local v21    # "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    :goto_1
    nop

    .line 84
    .end local v8    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v32    # "$i$f$toAnyType":I
    nop

    .line 69
    invoke-direct {v7, v2, v5, v3}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    nop

    .line 21
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v20    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v25    # "$i$f$Prop":I
    const-string v2, "blurReductionFactor"

    sget-object v3, Lexpo/modules/blur/BlurModule$definition$1$1$3;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$3;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .restart local v3    # "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v4, v1

    .restart local v2    # "name$iv":Ljava/lang/String;
    .local v4, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v5, 0x0

    .line 87
    .local v5, "$i$f$Prop":I
    invoke-virtual {v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 88
    nop

    .line 89
    nop

    .line 90
    const/4 v8, 0x0

    .restart local v8    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v10, 0x0

    .line 91
    .restart local v10    # "$i$f$toAnyType":I
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v11, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v13, 0x0

    .line 92
    .local v13, "$i$f$cachedAnyType":I
    move-object/from16 v18, v4

    .end local v4    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .local v18, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    new-instance v4, Lkotlin/Pair;

    const-class v20, Ljava/lang/Float;

    move/from16 v25, v5

    .end local v5    # "$i$f$Prop":I
    .restart local v25    # "$i$f$Prop":I
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move/from16 v32, v10

    const/16 v20, 0x0

    .end local v10    # "$i$f$toAnyType":I
    .restart local v32    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .local v4, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 91
    .end local v4    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v11    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v13    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_2

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$3;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$3;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 94
    .local v5, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 95
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/Float;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 97
    nop

    .line 98
    nop

    .line 95
    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .local v20, "$i$f$toAnyType":I
    invoke-direct {v11, v13, v5, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 100
    nop

    .line 94
    invoke-direct {v10, v11, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 101
    move-object v5, v10

    .line 91
    .end local v4    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toAnyType":I
    :cond_2
    nop

    .line 102
    .end local v8    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v32    # "$i$f$toAnyType":I
    nop

    .line 87
    invoke-direct {v7, v2, v5, v3}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    nop

    .line 25
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v25    # "$i$f$Prop":I
    const-string v2, "experimentalBlurMethod"

    sget-object v3, Lexpo/modules/blur/BlurModule$definition$1$1$4;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$4;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .restart local v3    # "body$iv":Lkotlin/jvm/functions/Function2;
    move-object v4, v1

    .restart local v2    # "name$iv":Ljava/lang/String;
    .local v4, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v5, 0x0

    .line 105
    .local v5, "$i$f$Prop":I
    invoke-virtual {v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 106
    nop

    .line 107
    nop

    .line 108
    const/4 v8, 0x0

    .restart local v8    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v10, 0x0

    .line 109
    .restart local v10    # "$i$f$toAnyType":I
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v11    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v13, 0x0

    .line 110
    .restart local v13    # "$i$f$cachedAnyType":I
    move-object/from16 v18, v4

    .end local v4    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .restart local v18    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    new-instance v4, Lkotlin/Pair;

    const-class v20, Lexpo/modules/blur/enums/BlurMethod;

    move/from16 v25, v5

    .end local v5    # "$i$f$Prop":I
    .restart local v25    # "$i$f$Prop":I
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move/from16 v32, v10

    const/16 v20, 0x0

    .end local v10    # "$i$f$toAnyType":I
    .restart local v32    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .local v4, "key$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 109
    .end local v4    # "key$iv$iv$iv":Lkotlin/Pair;
    .end local v11    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v13    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_3

    sget-object v4, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$4;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$4;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 112
    .local v5, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 113
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/blur/enums/BlurMethod;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 115
    nop

    .line 116
    nop

    .line 113
    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .restart local v20    # "$i$f$toAnyType":I
    invoke-direct {v11, v13, v5, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 118
    nop

    .line 112
    invoke-direct {v10, v11, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 119
    move-object v5, v10

    .line 109
    .end local v4    # "$this$toAnyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toAnyType":I
    :cond_3
    nop

    .line 120
    .end local v8    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v32    # "$i$f$toAnyType":I
    nop

    .line 105
    invoke-direct {v7, v2, v5, v3}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    nop

    .line 29
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "body$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v25    # "$i$f$Prop":I
    move-object v2, v1

    .local v2, "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$f$OnViewDidUpdateProps":I
    new-instance v4, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$OnViewDidUpdateProps$1;

    invoke-direct {v4}, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$OnViewDidUpdateProps$1;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->setOnViewDidUpdateProps(Lkotlin/jvm/functions/Function1;)V

    .line 126
    nop

    .line 32
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v3    # "$i$f$OnViewDidUpdateProps":I
    nop

    .line 50
    .end local v1    # "$this$definition_u24lambda_u242_u24lambda_u241":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v15    # "$i$a$-View-BlurModule$definition$1$1":I
    nop

    .line 127
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v1

    invoke-virtual {v12, v1}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->registerViewDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    .line 128
    nop

    .line 33
    .end local v0    # "viewDefinitionBuilder$iv":Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .end local v12    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v14    # "$i$f$View":I
    .end local v19    # "viewClass$iv":Lkotlin/reflect/KClass;
    nop

    .line 36
    .end local v21    # "$i$a$-ModuleDefinition-BlurModule$definition$1":I
    .end local v27    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    invoke-virtual {v9}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 41
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 129
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 41
    nop

    .line 38
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "$i$f$trace":I
    nop

    .line 37
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    nop

    .line 36
    .end local v23    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    nop

    .line 33
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v22    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 129
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v23    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v8, "$i$f$trace":I
    :catchall_1
    move-exception v0

    move-object/from16 v29, v7

    move/from16 v31, v8

    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "$i$f$trace":I
    goto :goto_2

    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .local v6, "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    move/from16 v30, v6

    move-object/from16 v29, v7

    move/from16 v31, v8

    .end local v6    # "$i$f$trace":I
    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    goto :goto_2

    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .local v5, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v30, v6

    move-object/from16 v29, v7

    move/from16 v31, v8

    .end local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    goto :goto_2

    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .local v4, "$i$f$trace":I
    .restart local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move/from16 v24, v4

    move-object/from16 v28, v5

    move/from16 v30, v6

    move-object/from16 v29, v7

    move/from16 v31, v8

    .end local v4    # "$i$f$trace":I
    .end local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    goto :goto_2

    .end local v23    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .local v3, "blockName$iv$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    move/from16 v30, v6

    move-object/from16 v29, v7

    move/from16 v31, v8

    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .restart local v23    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    goto :goto_2

    .end local v22    # "$i$f$ModuleDefinition":I
    .end local v23    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .local v2, "$i$f$ModuleDefinition":I
    .restart local v3    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    move/from16 v30, v6

    move-object/from16 v29, v7

    move/from16 v31, v8

    .end local v2    # "$i$f$ModuleDefinition":I
    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v23    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    goto :goto_2

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v22    # "$i$f$ModuleDefinition":I
    .end local v23    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "$i$f$trace":I
    .end local v31    # "$i$f$trace":I
    .local v1, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v2    # "$i$f$ModuleDefinition":I
    .restart local v3    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v17, v1

    move/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    move/from16 v30, v6

    move-object/from16 v29, v7

    move/from16 v31, v8

    .end local v1    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v2    # "$i$f$ModuleDefinition":I
    .end local v3    # "blockName$iv$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v23    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v29    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "$i$f$trace":I
    :goto_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
