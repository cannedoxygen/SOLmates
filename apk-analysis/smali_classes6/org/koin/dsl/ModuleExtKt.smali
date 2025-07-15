.class public final Lorg/koin/dsl/ModuleExtKt;
.super Ljava/lang/Object;
.source "ModuleExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleExt.kt\norg/koin/dsl/ModuleExtKt\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,53:1\n108#2:54\n109#2,5:76\n151#2,10:81\n161#2,2:107\n151#2,10:109\n161#2,2:121\n201#3,6:55\n207#3:75\n216#3:91\n217#3:106\n216#3,2:119\n105#4,14:61\n105#4,14:92\n*S KotlinDebug\n*F\n+ 1 ModuleExt.kt\norg/koin/dsl/ModuleExtKt\n*L\n38#1:54\n38#1:76,5\n52#1:81,10\n52#1:107,2\n52#1:109,10\n52#1:121,2\n38#1:55,6\n38#1:75\n52#1:91\n52#1:106\n52#1:119,2\n38#1:61,14\n52#1:92,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a+\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0087\u0008\u001a5\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0087\u0008\u00a8\u0006\n"
    }
    d2 = {
        "factory",
        "Lorg/koin/core/definition/KoinDefinition;",
        "T",
        "",
        "Lorg/koin/core/module/Module;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "single",
        "createOnStart",
        "",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic factory(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/definition/KoinDefinition;
    .locals 19
    .param p0, "$this$factory"    # Lorg/koin/core/module/Module;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "API is deprecated in favor of factoryOf DSL"
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinReflectAPI;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$factory":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v2, Lorg/koin/dsl/ModuleExtKt$factory$1;->INSTANCE:Lorg/koin/dsl/ModuleExtKt$factory$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .local v2, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v10, p0

    .local v10, "this_$iv":Lorg/koin/core/module/Module;
    const/4 v11, 0x0

    .line 81
    .local v11, "$i$f$factory":I
    sget-object v3, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/koin/core/qualifier/Qualifier;

    .local v4, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v12, v10

    .local v12, "this_$iv$iv":Lorg/koin/core/module/Module;
    const/4 v13, 0x0

    .line 90
    .local v13, "$i$f$factory":I
    const/4 v14, 0x0

    .line 91
    .local v14, "$i$f$_factoryInstanceFactory":I
    sget-object v15, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 92
    .local v15, "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 92
    .local v16, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 99
    .local v17, "$i$f$_createDefinition":I
    new-instance v18, Lorg/koin/core/definition/BeanDefinition;

    .line 100
    const/4 v3, 0x4

    const-string v5, "T"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 99
    move-object/from16 v3, v18

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 91
    .end local v15    # "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v16    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$_createDefinition":I
    nop

    .line 106
    .local v3, "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v5, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v5, v3}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 90
    .end local v3    # "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v14    # "$i$f$_factoryInstanceFactory":I
    move-object v3, v5

    .line 107
    .local v3, "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v5, v3

    check-cast v5, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v12, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 108
    new-instance v5, Lorg/koin/core/definition/KoinDefinition;

    move-object v6, v3

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v5, v12, v6}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 81
    .end local v3    # "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v4    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .end local v13    # "$i$f$factory":I
    nop

    .line 52
    .end local v2    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v10    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v11    # "$i$f$factory":I
    return-object v5
.end method

.method public static synthetic factory$default(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 20
    .param p0, "$this$factory_u24default"    # Lorg/koin/core/module/Module;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;

    .line 49
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 49
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const-string v1, "<this>"

    move-object/from16 v8, p0

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 52
    .local v9, "$i$f$factory":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v1, Lorg/koin/dsl/ModuleExtKt$factory$1;->INSTANCE:Lorg/koin/dsl/ModuleExtKt$factory$1;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .local v10, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lorg/koin/core/module/Module;
    const/4 v12, 0x0

    .line 109
    .local v12, "$i$f$factory":I
    sget-object v1, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .local v2, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object v13, v11

    .local v13, "this_$iv$iv":Lorg/koin/core/module/Module;
    const/4 v14, 0x0

    .line 118
    .local v14, "$i$f$factory":I
    const/4 v15, 0x0

    .line 119
    .local v15, "$i$f$_factoryInstanceFactory":I
    sget-object v16, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 92
    .local v16, "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 92
    .local v17, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 99
    .local v18, "$i$f$_createDefinition":I
    new-instance v19, Lorg/koin/core/definition/BeanDefinition;

    .line 100
    const/4 v1, 0x4

    const-string v3, "T"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 99
    move-object/from16 v1, v19

    move-object v4, v0

    move-object v5, v10

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 119
    .end local v16    # "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v17    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v18    # "$i$f$_createDefinition":I
    nop

    .line 120
    .local v1, "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 118
    .end local v1    # "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v15    # "$i$f$_factoryInstanceFactory":I
    move-object v1, v3

    .line 121
    .local v1, "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v13, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 122
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v1

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v13, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 109
    .end local v1    # "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v2    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .end local v14    # "$i$f$factory":I
    nop

    .line 52
    .end local v10    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v12    # "$i$f$factory":I
    return-object v3
.end method

.method public static final synthetic single(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/KoinDefinition;
    .locals 17
    .param p0, "$this$single"    # Lorg/koin/core/module/Module;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "createOnStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "API is deprecated in favor of singleOf DSL"
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinReflectAPI;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$single":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v2, Lorg/koin/dsl/ModuleExtKt$single$1;->INSTANCE:Lorg/koin/dsl/ModuleExtKt$single$1;

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .local v7, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v2, p0

    .local v2, "this_$iv":Lorg/koin/core/module/Module;
    const/4 v10, 0x0

    .line 54
    .local v10, "$i$f$single":I
    nop

    .line 55
    nop

    .line 58
    sget-object v3, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lorg/koin/core/qualifier/Qualifier;

    .line 55
    .local v11, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v12, 0x0

    .line 60
    .local v12, "$i$f$_singleInstanceFactory":I
    sget-object v13, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 61
    .local v13, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 65
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 61
    .local v14, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 68
    .local v15, "$i$f$_createDefinition":I
    new-instance v16, Lorg/koin/core/definition/BeanDefinition;

    .line 69
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 68
    move-object/from16 v3, v16

    move-object v4, v11

    move-object/from16 v6, p1

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 60
    .end local v13    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v14    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v15    # "$i$f$_createDefinition":I
    nop

    .line 75
    .local v3, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 54
    .end local v3    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v11    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "$i$f$_singleInstanceFactory":I
    move-object v3, v4

    .line 76
    .local v3, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v2, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 77
    if-nez p2, :cond_0

    invoke-virtual {v2}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    :cond_0
    invoke-virtual {v2, v3}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 80
    :cond_1
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    move-object v5, v3

    check-cast v5, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v4, v2, v5}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 38
    .end local v2    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v3    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v7    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v10    # "$i$f$single":I
    return-object v4
.end method

.method public static synthetic single$default(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 19
    .param p0, "$this$single_u24default"    # Lorg/koin/core/module/Module;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "createOnStart"    # Z

    .line 34
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 34
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 36
    const/4 v1, 0x0

    move v8, v1

    .end local p2    # "createOnStart":Z
    .local v1, "createOnStart":Z
    goto :goto_1

    .line 34
    .end local v1    # "createOnStart":Z
    .restart local p2    # "createOnStart":Z
    :cond_1
    move/from16 v8, p2

    .end local p2    # "createOnStart":Z
    .local v8, "createOnStart":Z
    :goto_1
    const-string v1, "<this>"

    move-object/from16 v9, p0

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 38
    .local v10, "$i$f$single":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v1, Lorg/koin/dsl/ModuleExtKt$single$1;->INSTANCE:Lorg/koin/dsl/ModuleExtKt$single$1;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .local v5, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lorg/koin/core/module/Module;
    const/4 v12, 0x0

    .line 54
    .local v12, "$i$f$single":I
    nop

    .line 55
    nop

    .line 58
    sget-object v1, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/koin/core/qualifier/Qualifier;

    .line 55
    .local v13, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v14, 0x0

    .line 60
    .local v14, "$i$f$_singleInstanceFactory":I
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 61
    .local v15, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 65
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 61
    .local v16, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 68
    .local v17, "$i$f$_createDefinition":I
    new-instance v18, Lorg/koin/core/definition/BeanDefinition;

    .line 69
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 68
    move-object/from16 v1, v18

    move-object v2, v13

    move-object v4, v0

    move-object v6, v15

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 60
    .end local v15    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v16    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$_createDefinition":I
    nop

    .line 75
    .local v1, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 54
    .end local v1    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v13    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "$i$f$_singleInstanceFactory":I
    move-object v1, v2

    .line 76
    .local v1, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v2, v1

    check-cast v2, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v11, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 77
    if-nez v8, :cond_2

    invoke-virtual {v11}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    :cond_2
    invoke-virtual {v11, v1}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 80
    :cond_3
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v2, v11, v3}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 38
    .end local v1    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v5    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v12    # "$i$f$single":I
    return-object v2
.end method
