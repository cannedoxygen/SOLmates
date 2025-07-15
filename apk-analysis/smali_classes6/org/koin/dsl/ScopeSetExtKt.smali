.class public final Lorg/koin/dsl/ScopeSetExtKt;
.super Ljava/lang/Object;
.source "ScopeSetExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeSetExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeSetExt.kt\norg/koin/dsl/ScopeSetExtKt\n+ 2 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 5 Module.kt\norg/koin/core/module/Module\n*L\n1#1,49:1\n36#2:50\n37#2,2:67\n45#2:69\n226#3:51\n227#3:66\n216#3:71\n217#3:86\n216#3,2:89\n105#4,14:52\n105#4,14:72\n160#5:70\n161#5,2:87\n*S KotlinDebug\n*F\n+ 1 ScopeSetExt.kt\norg/koin/dsl/ScopeSetExtKt\n*L\n34#1:50\n34#1:67,2\n48#1:69\n34#1:51\n34#1:66\n48#1:71\n48#1:86\n48#1:89,2\n34#1:52,14\n48#1:72,14\n48#1:70\n48#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a+\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0087\u0008\u001a+\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0087\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "factory",
        "Lorg/koin/core/definition/KoinDefinition;",
        "R",
        "",
        "Lorg/koin/dsl/ScopeDSL;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "scoped",
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
.method public static final synthetic factory(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/definition/KoinDefinition;
    .locals 19
    .param p0, "$this$factory"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TR;>;"
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

    .line 48
    .local v0, "$i$f$factory":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v2, Lorg/koin/dsl/ScopeSetExtKt$factory$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$factory$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .local v2, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v10, p0

    .local v10, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    const/4 v11, 0x0

    .line 69
    .local v11, "$i$f$factory":I
    invoke-virtual {v10}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v12

    .local v12, "this_$iv$iv":Lorg/koin/core/module/Module;
    invoke-virtual {v10}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    .local v4, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 70
    .local v13, "$i$f$factory":I
    const/4 v14, 0x0

    .line 71
    .local v14, "$i$f$_factoryInstanceFactory":I
    sget-object v15, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 72
    .local v15, "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 72
    .local v16, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 79
    .local v17, "$i$f$_createDefinition":I
    new-instance v18, Lorg/koin/core/definition/BeanDefinition;

    .line 80
    const/4 v3, 0x4

    const-string v5, "R"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 79
    move-object/from16 v3, v18

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 71
    .end local v15    # "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v16    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$_createDefinition":I
    nop

    .line 86
    .local v3, "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v5, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v5, v3}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 70
    .end local v3    # "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v14    # "$i$f$_factoryInstanceFactory":I
    move-object v3, v5

    .line 87
    .local v3, "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v5, v3

    check-cast v5, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v12, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 88
    new-instance v5, Lorg/koin/core/definition/KoinDefinition;

    move-object v6, v3

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v5, v12, v6}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 69
    .end local v3    # "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v4    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .end local v13    # "$i$f$factory":I
    nop

    .line 48
    .end local v2    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v10    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v11    # "$i$f$factory":I
    return-object v5
.end method

.method public static synthetic factory$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 20
    .param p0, "$this$factory_u24default"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;

    .line 45
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 45
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

    .line 48
    .local v9, "$i$f$factory":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v1, Lorg/koin/dsl/ScopeSetExtKt$factory$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$factory$1;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .local v10, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    const/4 v12, 0x0

    .line 69
    .local v12, "$i$f$factory":I
    invoke-virtual {v11}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v13

    .local v13, "this_$iv$iv":Lorg/koin/core/module/Module;
    invoke-virtual {v11}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .local v2, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v14, 0x0

    .line 70
    .local v14, "$i$f$factory":I
    const/4 v15, 0x0

    .line 89
    .local v15, "$i$f$_factoryInstanceFactory":I
    sget-object v16, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 72
    .local v16, "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 72
    .local v17, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 79
    .local v18, "$i$f$_createDefinition":I
    new-instance v19, Lorg/koin/core/definition/BeanDefinition;

    .line 80
    const/4 v1, 0x4

    const-string v3, "R"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 79
    move-object/from16 v1, v19

    move-object v4, v0

    move-object v5, v10

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 89
    .end local v16    # "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v17    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v18    # "$i$f$_createDefinition":I
    nop

    .line 90
    .local v1, "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 70
    .end local v1    # "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v15    # "$i$f$_factoryInstanceFactory":I
    move-object v1, v3

    .line 87
    .local v1, "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v13, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 88
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v1

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v13, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 69
    .end local v1    # "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v2    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .end local v14    # "$i$f$factory":I
    nop

    .line 48
    .end local v10    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v12    # "$i$f$factory":I
    return-object v3
.end method

.method public static final synthetic scoped(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/definition/KoinDefinition;
    .locals 18
    .param p0, "$this$scoped"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "API is deprecated in favor of scopedOf DSL"
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinReflectAPI;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$scoped":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v2, Lorg/koin/dsl/ScopeSetExtKt$scoped$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$scoped$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .local v2, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v10, p0

    .local v10, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    const/4 v11, 0x0

    .line 50
    .local v11, "$i$f$scoped":I
    invoke-virtual {v10}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v12

    .local v12, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 51
    .local v13, "$i$f$_scopedInstanceFactory":I
    sget-object v14, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .line 52
    .local v14, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 56
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 52
    .local v15, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 59
    .local v16, "$i$f$_createDefinition":I
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 60
    const/4 v3, 0x4

    const-string v4, "R"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 62
    nop

    .line 63
    nop

    .line 64
    nop

    .line 65
    nop

    .line 59
    move-object/from16 v3, v17

    move-object v4, v12

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v14

    move-object v9, v15

    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 51
    .end local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$_createDefinition":I
    nop

    .line 66
    .local v3, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v4, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v4, v3}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 50
    .end local v3    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "$i$f$_scopedInstanceFactory":I
    move-object v3, v4

    .line 67
    .local v3, "def$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual {v10}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v4, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 68
    new-instance v4, Lorg/koin/core/definition/KoinDefinition;

    invoke-virtual {v10}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v4, v5, v6}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 34
    .end local v2    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v3    # "def$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v10    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v11    # "$i$f$scoped":I
    return-object v4
.end method

.method public static synthetic scoped$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 19
    .param p0, "$this$scoped_u24default"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;

    .line 31
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 31
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

    .line 34
    .local v9, "$i$f$scoped":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v1, Lorg/koin/dsl/ScopeSetExtKt$scoped$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$scoped$1;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .local v10, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    const/4 v12, 0x0

    .line 50
    .local v12, "$i$f$scoped":I
    invoke-virtual {v11}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v13

    .local v13, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v14, 0x0

    .line 51
    .local v14, "$i$f$_scopedInstanceFactory":I
    sget-object v15, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .line 52
    .local v15, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 56
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 52
    .local v16, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 59
    .local v17, "$i$f$_createDefinition":I
    new-instance v18, Lorg/koin/core/definition/BeanDefinition;

    .line 60
    const/4 v1, 0x4

    const-string v2, "R"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 62
    nop

    .line 63
    nop

    .line 64
    nop

    .line 65
    nop

    .line 59
    move-object/from16 v1, v18

    move-object v2, v13

    move-object v4, v0

    move-object v5, v10

    move-object v6, v15

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 51
    .end local v15    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v16    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$_createDefinition":I
    nop

    .line 66
    .local v1, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v2, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 50
    .end local v1    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v13    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "$i$f$_scopedInstanceFactory":I
    move-object v1, v2

    .line 67
    .local v1, "def$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual {v11}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v2, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 68
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-virtual {v11}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v2, v3, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 34
    .end local v1    # "def$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v10    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v12    # "$i$f$scoped":I
    return-object v2
.end method
