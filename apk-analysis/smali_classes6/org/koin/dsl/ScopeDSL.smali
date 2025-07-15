.class public final Lorg/koin/dsl/ScopeDSL;
.super Ljava/lang/Object;
.source "ScopeDSL.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeDSL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 2 Module.kt\norg/koin/core/module/ModuleKt\n+ 3 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 4 Module.kt\norg/koin/core/module/Module\n*L\n1#1,47:1\n226#2:48\n227#2:63\n216#2:65\n217#2:80\n216#2,2:83\n105#3,14:49\n105#3,14:66\n160#4:64\n161#4,2:81\n*S KotlinDebug\n*F\n+ 1 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n*L\n36#1:48\n36#1:63\n45#1:65\n45#1:80\n45#1:83,2\n36#1:49,14\n45#1:66,14\n45#1:64\n45#1:81,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006JQ\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000c\"\u0006\u0008\u0000\u0010\r\u0018\u00012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032)\u0008\u0008\u0010\u000f\u001a#\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002H\r0\u0010j\u0008\u0012\u0004\u0012\u0002H\r`\u0013\u00a2\u0006\u0002\u0008\u0014H\u0086\u0008\u00f8\u0001\u0000JQ\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000c\"\u0006\u0008\u0000\u0010\r\u0018\u00012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032)\u0008\u0008\u0010\u000f\u001a#\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002H\r0\u0010j\u0008\u0012\u0004\u0012\u0002H\r`\u0013\u00a2\u0006\u0002\u0008\u0014H\u0086\u0008\u00f8\u0001\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/koin/dsl/ScopeDSL;",
        "",
        "scopeQualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "module",
        "Lorg/koin/core/module/Module;",
        "(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/module/Module;)V",
        "getModule",
        "()Lorg/koin/core/module/Module;",
        "getScopeQualifier",
        "()Lorg/koin/core/qualifier/Qualifier;",
        "factory",
        "Lorg/koin/core/definition/KoinDefinition;",
        "T",
        "qualifier",
        "definition",
        "Lkotlin/Function2;",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/definition/Definition;",
        "Lkotlin/ExtensionFunctionType;",
        "scoped",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lorg/koin/core/module/KoinDslMarker;
.end annotation


# instance fields
.field private final module:Lorg/koin/core/module/Module;

.field private final scopeQualifier:Lorg/koin/core/qualifier/Qualifier;


# direct methods
.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/module/Module;)V
    .locals 1
    .param p1, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "module"    # Lorg/koin/core/module/Module;

    const-string v0, "scopeQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/koin/dsl/ScopeDSL;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p2, p0, Lorg/koin/dsl/ScopeDSL;->module:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static synthetic factory$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 17
    .param p0, "$this"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;

    .line 41
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 41
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const-string v1, "definition"

    move-object/from16 v8, p2

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 45
    .local v9, "$i$f$factory":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v10

    .local v10, "this_$iv":Lorg/koin/core/module/Module;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .local v2, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v11, 0x0

    .line 64
    .local v11, "$i$f$factory":I
    const/4 v12, 0x0

    .line 83
    .local v12, "$i$f$_factoryInstanceFactory":I
    sget-object v13, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 66
    .local v13, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 66
    .local v14, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 73
    .local v15, "$i$f$_createDefinition":I
    new-instance v16, Lorg/koin/core/definition/BeanDefinition;

    .line 74
    const/4 v1, 0x4

    const-string v3, "T"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 73
    move-object/from16 v1, v16

    move-object v4, v0

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 83
    .end local v13    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v14    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v15    # "$i$f$_createDefinition":I
    nop

    .line 84
    .local v1, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 64
    .end local v1    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v12    # "$i$f$_factoryInstanceFactory":I
    move-object v1, v3

    .line 81
    .local v1, "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v10, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 82
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v1

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v10, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 45
    .end local v1    # "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v2    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v11    # "$i$f$factory":I
    return-object v3
.end method

.method public static synthetic scoped$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .locals 16
    .param p0, "$this"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;

    .line 32
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 32
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const-string v1, "definition"

    move-object/from16 v8, p2

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 36
    .local v9, "$i$f$scoped":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v10

    .local v10, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v11, 0x0

    .line 48
    .local v11, "$i$f$_scopedInstanceFactory":I
    sget-object v12, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .line 49
    .local v12, "kind$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 49
    .local v13, "secondaryTypes$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 56
    .local v14, "$i$f$_createDefinition":I
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 57
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 56
    move-object v1, v15

    move-object v2, v10

    move-object v4, v0

    move-object/from16 v5, p2

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 48
    .end local v12    # "kind$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v13    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$_createDefinition":I
    nop

    .line 63
    .local v1, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v2, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 36
    .end local v1    # "def$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v10    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "$i$f$_scopedInstanceFactory":I
    move-object v1, v2

    .line 37
    .local v1, "def":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v2, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 38
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v2, v3, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic factory(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 16
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "definition"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$factory":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v9

    .local v9, "this_$iv":Lorg/koin/core/module/Module;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .local v2, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v10, 0x0

    .line 64
    .local v10, "$i$f$factory":I
    const/4 v11, 0x0

    .line 65
    .local v11, "$i$f$_factoryInstanceFactory":I
    sget-object v12, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 66
    .local v12, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 66
    .local v13, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 73
    .local v14, "$i$f$_createDefinition":I
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 74
    const/4 v1, 0x4

    const-string v3, "T"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 73
    move-object v1, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 65
    .end local v12    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v13    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$_createDefinition":I
    nop

    .line 80
    .local v1, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v3, v1}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 64
    .end local v1    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v11    # "$i$f$_factoryInstanceFactory":I
    move-object v1, v3

    .line 81
    .local v1, "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v9, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 82
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v1

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v9, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 45
    .end local v1    # "factory$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v2    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v10    # "$i$f$factory":I
    return-object v3
.end method

.method public final getModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/koin/dsl/ScopeDSL;->module:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public final getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/koin/dsl/ScopeDSL;->scopeQualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public final synthetic scoped(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/KoinDefinition;
    .locals 15
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/ParametersHolder;",
            "+TT;>;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "definition"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    .local v0, "$i$f$scoped":I
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v9

    .local v9, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v10, 0x0

    .line 48
    .local v10, "$i$f$_scopedInstanceFactory":I
    sget-object v11, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .line 49
    .local v11, "kind$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 49
    .local v12, "secondaryTypes$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 56
    .local v13, "$i$f$_createDefinition":I
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 57
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 56
    move-object v1, v14

    move-object v2, v9

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 48
    .end local v11    # "kind$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v12    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$_createDefinition":I
    nop

    .line 63
    .local v1, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v2, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 36
    .end local v1    # "def$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "$i$f$_scopedInstanceFactory":I
    move-object v1, v2

    .line 37
    .local v1, "def":Lorg/koin/core/instance/ScopedInstanceFactory;
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v2, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 38
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getModule()Lorg/koin/core/module/Module;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v2, v3, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-object v2
.end method
