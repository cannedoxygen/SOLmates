.class public final Lorg/koin/core/registry/InstanceRegistry;
.super Ljava/lang/Object;
.source "InstanceRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstanceRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Logger.kt\norg/koin/core/logger/Logger\n+ 5 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,204:1\n1855#2,2:205\n1855#2,2:207\n1855#2,2:227\n1855#2,2:236\n1855#2,2:245\n800#2,11:247\n1855#2,2:258\n766#2:262\n857#2,2:263\n766#2:265\n857#2,2:266\n1549#2:268\n1620#2,3:269\n1855#2,2:272\n1855#2,2:274\n215#3,2:209\n215#3,2:260\n36#4,12:211\n28#4:223\n46#4,2:224\n29#4:226\n112#5,7:229\n112#5,7:238\n*S KotlinDebug\n*F\n+ 1 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n*L\n47#1:205,2\n54#1:207,2\n95#1:227,2\n136#1:236,2\n156#1:245,2\n164#1:247,11\n164#1:258,2\n176#1:262\n176#1:263,2\n179#1:265\n179#1:266,2\n185#1:268\n185#1:269,3\n189#1:272,2\n193#1:274,2\n69#1:209,2\n168#1:260,2\n85#1:211,12\n88#1:223\n88#1:224,2\n88#1:226\n128#1:229,7\n152#1:238,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\r\u0010\u0019\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u001aJ\r\u0010\u001b\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u001cJ\u001a\u0010\u001d\u001a\u00020\u00162\u0010\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000f0\u001eH\u0002JH\u0010\u001f\u001a\u00020\u0016\"\u0006\u0008\u0000\u0010 \u0018\u00012\u0006\u0010!\u001a\u0002H 2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\u0012\u0008\u0002\u0010$\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030&0%2\u0008\u0008\u0002\u0010\'\u001a\u00020(H\u0081\u0008\u00a2\u0006\u0002\u0010)J\\\u0010*\u001a\u00020\u0016\"\u0006\u0008\u0000\u0010 \u0018\u00012\u0006\u0010!\u001a\u0002H 2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\u0012\u0008\u0002\u0010$\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030&0%2\u0008\u0008\u0002\u0010\'\u001a\u00020(2\u0006\u0010+\u001a\u00020#2\n\u0010,\u001a\u00060\u0007j\u0002`-H\u0081\u0008\u00a2\u0006\u0002\u0010.J\u0015\u0010/\u001a\u00020\u00162\u0006\u00100\u001a\u000201H\u0000\u00a2\u0006\u0002\u00082J-\u00103\u001a\u0008\u0012\u0004\u0012\u0002H 0%\"\u0004\u0008\u0000\u0010 2\n\u00104\u001a\u0006\u0012\u0002\u0008\u00030&2\u0006\u00105\u001a\u000206H\u0000\u00a2\u0006\u0002\u00087J\u0018\u00108\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0002J#\u00109\u001a\u00020\u00162\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00180;2\u0006\u0010\'\u001a\u00020(H\u0000\u00a2\u0006\u0002\u0008<J1\u0010=\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t2\n\u00104\u001a\u0006\u0012\u0002\u0008\u00030&2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010+\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008>J=\u0010?\u001a\u0004\u0018\u0001H \"\u0004\u0008\u0000\u0010 2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\n\u00104\u001a\u0006\u0012\u0002\u0008\u00030&2\u0006\u0010+\u001a\u00020#2\u0006\u00105\u001a\u000206H\u0000\u00a2\u0006\u0004\u0008@\u0010AJ2\u0010B\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020(2\n\u0010C\u001a\u00060\u0007j\u0002`\u00082\n\u0010D\u001a\u0006\u0012\u0002\u0008\u00030\t2\u0008\u0008\u0002\u0010E\u001a\u00020(H\u0007J\u0006\u0010F\u001a\u00020\u000eJ\u0010\u0010G\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001b\u0010H\u001a\u00020\u00162\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00180;H\u0000\u00a2\u0006\u0002\u0008IR\"\u0010\u0005\u001a\u0016\u0012\u0008\u0012\u00060\u0007j\u0002`\u0008\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR2\u0010\u000c\u001a&\u0012\u0004\u0012\u00020\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000f0\rj\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000f`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010\u0011\u001a\u0016\u0012\u0008\u0012\u00060\u0007j\u0002`\u0008\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t0\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006J"
    }
    d2 = {
        "Lorg/koin/core/registry/InstanceRegistry;",
        "",
        "_koin",
        "Lorg/koin/core/Koin;",
        "(Lorg/koin/core/Koin;)V",
        "_instances",
        "",
        "",
        "Lorg/koin/core/definition/IndexKey;",
        "Lorg/koin/core/instance/InstanceFactory;",
        "get_koin",
        "()Lorg/koin/core/Koin;",
        "eagerInstances",
        "Ljava/util/HashMap;",
        "",
        "Lorg/koin/core/instance/SingleInstanceFactory;",
        "Lkotlin/collections/HashMap;",
        "instances",
        "",
        "getInstances",
        "()Ljava/util/Map;",
        "addAllEagerInstances",
        "",
        "module",
        "Lorg/koin/core/module/Module;",
        "close",
        "close$koin_core",
        "createAllEagerInstances",
        "createAllEagerInstances$koin_core",
        "createEagerInstances",
        "",
        "declareRootInstance",
        "T",
        "instance",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "secondaryTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "allowOverride",
        "",
        "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V",
        "declareScopedInstance",
        "scopeQualifier",
        "scopeID",
        "Lorg/koin/core/scope/ScopeID;",
        "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZLorg/koin/core/qualifier/Qualifier;Ljava/lang/String;)V",
        "dropScopeInstances",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "dropScopeInstances$koin_core",
        "getAll",
        "clazz",
        "instanceContext",
        "Lorg/koin/core/instance/InstanceContext;",
        "getAll$koin_core",
        "loadModule",
        "loadModules",
        "modules",
        "",
        "loadModules$koin_core",
        "resolveDefinition",
        "resolveDefinition$koin_core",
        "resolveInstance",
        "resolveInstance$koin_core",
        "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;",
        "saveMapping",
        "mapping",
        "factory",
        "logWarning",
        "size",
        "unloadModule",
        "unloadModules",
        "unloadModules$koin_core",
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


# instance fields
.field private final _instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final _koin:Lorg/koin/core/Koin;

.field private final eagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/koin/core/instance/SingleInstanceFactory<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1
    .param p1, "_koin"    # Lorg/koin/core/Koin;

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    .line 40
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->safeHashMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method private final addAllEagerInstances(Lorg/koin/core/module/Module;)V
    .locals 8
    .param p1, "module"    # Lorg/koin/core/module/Module;

    .line 54
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getEagerInstances()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 207
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .local v4, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    const/4 v5, 0x0

    .line 59
    .local v5, "$i$a$-forEach-InstanceRegistry$addAllEagerInstances$1":I
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/HashMap;

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v4}, Lorg/koin/core/instance/SingleInstanceFactory;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    nop

    .line 207
    .end local v4    # "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$addAllEagerInstances$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 208
    :cond_0
    nop

    .line 61
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final createEagerInstances(Ljava/util/Collection;)V
    .locals 7
    .param p1, "eagerInstances"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/koin/core/instance/SingleInstanceFactory<",
            "*>;>;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lorg/koin/core/instance/InstanceContext;

    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v2

    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/koin/core/instance/InstanceContext;-><init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .local v0, "defaultContext":Lorg/koin/core/instance/InstanceContext;
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 227
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .local v5, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    const/4 v6, 0x0

    .line 96
    .local v6, "$i$a$-forEach-InstanceRegistry$createEagerInstances$1":I
    invoke-virtual {v5, v0}, Lorg/koin/core/instance/SingleInstanceFactory;->get(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;

    .line 97
    nop

    .line 227
    .end local v5    # "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v6    # "$i$a$-forEach-InstanceRegistry$createEagerInstances$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 228
    :cond_0
    nop

    .line 99
    .end local v0    # "defaultContext":Lorg/koin/core/instance/InstanceContext;
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :cond_1
    return-void
.end method

.method public static synthetic declareRootInstance$default(Lorg/koin/core/registry/InstanceRegistry;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 23
    .param p0, "$this"    # Lorg/koin/core/registry/InstanceRegistry;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "secondaryTypes"    # Ljava/util/List;
    .param p4, "allowOverride"    # Z

    .line 145
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 145
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p2

    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    .line 148
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    .end local p3    # "secondaryTypes":Ljava/util/List;
    .local v1, "secondaryTypes":Ljava/util/List;
    goto :goto_1

    .line 145
    .end local v1    # "secondaryTypes":Ljava/util/List;
    .restart local p3    # "secondaryTypes":Ljava/util/List;
    :cond_1
    move-object/from16 v8, p3

    .end local p3    # "secondaryTypes":Ljava/util/List;
    .local v8, "secondaryTypes":Ljava/util/List;
    :goto_1
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_2

    .line 149
    const/4 v1, 0x1

    move/from16 v16, v1

    .end local p4    # "allowOverride":Z
    .local v1, "allowOverride":Z
    goto :goto_2

    .line 145
    .end local v1    # "allowOverride":Z
    .restart local p4    # "allowOverride":Z
    :cond_2
    move/from16 v16, p4

    .end local p4    # "allowOverride":Z
    .local v16, "allowOverride":Z
    :goto_2
    const-string v1, "secondaryTypes"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    .line 151
    .local v17, "$i$f$declareRootInstance":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->get_koin()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v18

    .line 152
    .local v18, "rootQualifier":Lorg/koin/core/qualifier/Qualifier;
    sget-object v9, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v9, "kind$iv":Lorg/koin/core/definition/Kind;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;

    move-object/from16 v15, p1

    invoke-direct {v1, v15}, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;-><init>(Ljava/lang/Object;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .local v5, "definition$iv":Lkotlin/jvm/functions/Function2;
    const/4 v10, 0x0

    .line 238
    .local v10, "$i$f$_createDefinition":I
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 239
    const-string v1, "T"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 238
    move-object v1, v11

    move-object/from16 v2, v18

    move-object v4, v0

    move-object v6, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 152
    .end local v5    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v9    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v10    # "$i$f$_createDefinition":I
    nop

    .line 153
    .local v1, "def":Lorg/koin/core/definition/BeanDefinition;
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 154
    .local v2, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "indexKey":Ljava/lang/String;
    move-object v12, v2

    check-cast v12, Lorg/koin/core/instance/InstanceFactory;

    const/16 v14, 0x8

    const/4 v4, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move/from16 v10, v16

    move-object v11, v3

    move-object v15, v4

    invoke-static/range {v9 .. v15}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 156
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 245
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v15, v7

    check-cast v15, Lkotlin/reflect/KClass;

    .local v15, "clazz":Lkotlin/reflect/KClass;
    const/16 v19, 0x0

    .line 157
    .local v19, "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v9

    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v10

    invoke-static {v15, v9, v10}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v20

    .line 158
    .local v20, "index":Ljava/lang/String;
    move-object v12, v2

    check-cast v12, Lorg/koin/core/instance/InstanceFactory;

    const/16 v14, 0x8

    const/16 v21, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move/from16 v10, v16

    move-object/from16 v11, v20

    move-object/from16 v22, v15

    .end local v15    # "clazz":Lkotlin/reflect/KClass;
    .local v22, "clazz":Lkotlin/reflect/KClass;
    move-object/from16 v15, v21

    invoke-static/range {v9 .. v15}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 159
    nop

    .line 245
    .end local v19    # "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    .end local v20    # "index":Ljava/lang/String;
    .end local v22    # "clazz":Lkotlin/reflect/KClass;
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 246
    :cond_3
    nop

    .line 160
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    return-void
.end method

.method public static synthetic declareScopedInstance$default(Lorg/koin/core/registry/InstanceRegistry;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZLorg/koin/core/qualifier/Qualifier;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 25
    .param p0, "$this"    # Lorg/koin/core/registry/InstanceRegistry;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "secondaryTypes"    # Ljava/util/List;
    .param p4, "allowOverride"    # Z
    .param p5, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p6, "scopeID"    # Ljava/lang/String;

    .line 120
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x0

    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v2, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 120
    .end local v2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v2, p2

    .end local p2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v2    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    .line 123
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v10, v3

    .end local p3    # "secondaryTypes":Ljava/util/List;
    .local v3, "secondaryTypes":Ljava/util/List;
    goto :goto_1

    .line 120
    .end local v3    # "secondaryTypes":Ljava/util/List;
    .restart local p3    # "secondaryTypes":Ljava/util/List;
    :cond_1
    move-object/from16 v10, p3

    .end local p3    # "secondaryTypes":Ljava/util/List;
    .local v10, "secondaryTypes":Ljava/util/List;
    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    .line 124
    const/4 v3, 0x1

    move/from16 v18, v3

    .end local p4    # "allowOverride":Z
    .local v3, "allowOverride":Z
    goto :goto_2

    .line 120
    .end local v3    # "allowOverride":Z
    .restart local p4    # "allowOverride":Z
    :cond_2
    move/from16 v18, p4

    .end local p4    # "allowOverride":Z
    .local v18, "allowOverride":Z
    :goto_2
    const-string v3, "secondaryTypes"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "scopeQualifier"

    move-object/from16 v15, p5

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "scopeID"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    .line 128
    .local v19, "$i$f$declareScopedInstance":I
    sget-object v11, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v11, "kind$iv":Lorg/koin/core/definition/Kind;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;

    invoke-direct {v3, v0}, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;-><init>(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .local v7, "definition$iv":Lkotlin/jvm/functions/Function2;
    const/4 v12, 0x0

    .line 229
    .local v12, "$i$f$_createDefinition":I
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 230
    const-string v3, "T"

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 229
    move-object v3, v13

    move-object/from16 v4, p5

    move-object v6, v2

    move-object v8, v11

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 128
    .end local v7    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v11    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v12    # "$i$f$_createDefinition":I
    nop

    .line 129
    .local v3, "def":Lorg/koin/core/definition/BeanDefinition;
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "indexKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->getInstances()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/koin/core/instance/ScopedInstanceFactory;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 131
    .local v5, "existingFactory":Lorg/koin/core/instance/ScopedInstanceFactory;
    :goto_3
    if-eqz v5, :cond_4

    .line 132
    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Lorg/koin/core/instance/ScopedInstanceFactory;->refreshInstance(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 134
    :cond_4
    new-instance v6, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v6, v3}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 135
    .local v6, "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    move-object v14, v6

    check-cast v14, Lorg/koin/core/instance/InstanceFactory;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    move/from16 v12, v18

    move-object v13, v4

    move v15, v7

    invoke-static/range {v11 .. v17}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 136
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 236
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .local v20, "element$iv":Ljava/lang/Object;
    move-object/from16 v15, v20

    check-cast v15, Lkotlin/reflect/KClass;

    .local v15, "clazz":Lkotlin/reflect/KClass;
    const/16 v21, 0x0

    .line 137
    .local v21, "$i$a$-forEach-InstanceRegistry$declareScopedInstance$1":I
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v11

    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v12

    invoke-static {v15, v11, v12}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v22

    .line 138
    .local v22, "index":Ljava/lang/String;
    move-object v14, v6

    check-cast v14, Lorg/koin/core/instance/InstanceFactory;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/16 v23, 0x0

    move-object/from16 v11, p0

    move/from16 v12, v18

    move-object/from16 v13, v22

    move-object/from16 v24, v15

    .end local v15    # "clazz":Lkotlin/reflect/KClass;
    .local v24, "clazz":Lkotlin/reflect/KClass;
    move/from16 v15, v23

    invoke-static/range {v11 .. v17}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 139
    nop

    .line 236
    .end local v21    # "$i$a$-forEach-InstanceRegistry$declareScopedInstance$1":I
    .end local v22    # "index":Ljava/lang/String;
    .end local v24    # "clazz":Lkotlin/reflect/KClass;
    nop

    .end local v20    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 237
    :cond_5
    nop

    .line 142
    .end local v6    # "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    :goto_5
    return-void
.end method

.method private final loadModule(Lorg/koin/core/module/Module;Z)V
    .locals 14
    .param p1, "module"    # Lorg/koin/core/module/Module;
    .param p2, "allowOverride"    # Z

    .line 69
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .line 69
    .local v4, "$i$a$-forEach-InstanceRegistry$loadModule$1":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "mapping":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lorg/koin/core/instance/InstanceFactory;

    .line 70
    .local v13, "factory":Lorg/koin/core/instance/InstanceFactory;
    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    move/from16 v7, p2

    move-object v8, v5

    move-object v9, v13

    invoke-static/range {v6 .. v12}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 71
    nop

    .line 209
    .end local v4    # "$i$a$-forEach-InstanceRegistry$loadModule$1":I
    .end local v5    # "mapping":Ljava/lang/String;
    .end local v13    # "factory":Lorg/koin/core/instance/InstanceFactory;
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 210
    :cond_0
    nop

    .line 72
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static synthetic saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V
    .locals 0

    .line 75
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 79
    const/4 p4, 0x1

    .line 75
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping(ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;Z)V

    return-void
.end method

.method private final unloadModule(Lorg/koin/core/module/Module;)V
    .locals 7
    .param p1, "module"    # Lorg/koin/core/module/Module;

    .line 193
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "module.mappings.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 274
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .local v4, "mapping":Ljava/lang/String;
    const/4 v5, 0x0

    .line 194
    .local v5, "$i$a$-forEach-InstanceRegistry$unloadModule$1":I
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/koin/core/instance/InstanceFactory;->dropAll()V

    .line 196
    :cond_0
    iget-object v6, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1
    nop

    .line 274
    .end local v4    # "mapping":Ljava/lang/String;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$unloadModule$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 275
    :cond_2
    nop

    .line 199
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final close$koin_core()V
    .locals 7

    .line 168
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 260
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .line 168
    .local v4, "$i$a$-forEach-InstanceRegistry$close$1":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    .line 169
    .local v6, "factory":Lorg/koin/core/instance/InstanceFactory;
    invoke-virtual {v6}, Lorg/koin/core/instance/InstanceFactory;->dropAll()V

    .line 170
    nop

    .line 260
    .end local v4    # "$i$a$-forEach-InstanceRegistry$close$1":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "factory":Lorg/koin/core/instance/InstanceFactory;
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 261
    :cond_0
    nop

    .line 171
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    return-void
.end method

.method public final createAllEagerInstances$koin_core()V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "eagerInstances.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/koin/core/registry/InstanceRegistry;->createEagerInstances(Ljava/util/Collection;)V

    .line 65
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->eagerInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    return-void
.end method

.method public final synthetic declareRootInstance(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V
    .locals 22
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "secondaryTypes"    # Ljava/util/List;
    .param p4, "allowOverride"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z)V"
        }
    .end annotation

    const-string v0, "secondaryTypes"

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    .local v0, "$i$f$declareRootInstance":I
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->get_koin()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v9

    .line 152
    .local v9, "rootQualifier":Lorg/koin/core/qualifier/Qualifier;
    sget-object v10, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v10, "kind$iv":Lorg/koin/core/definition/Kind;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;

    move-object/from16 v11, p1

    invoke-direct {v1, v11}, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;-><init>(Ljava/lang/Object;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .local v5, "definition$iv":Lkotlin/jvm/functions/Function2;
    const/4 v12, 0x0

    .line 238
    .local v12, "$i$f$_createDefinition":I
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 239
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 238
    move-object v1, v13

    move-object v2, v9

    move-object/from16 v4, p2

    move-object v6, v10

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 152
    .end local v5    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v10    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v12    # "$i$f$_createDefinition":I
    nop

    .line 153
    .local v1, "def":Lorg/koin/core/definition/BeanDefinition;
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 154
    .local v2, "factory":Lorg/koin/core/instance/SingleInstanceFactory;
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "indexKey":Ljava/lang/String;
    move-object v15, v2

    check-cast v15, Lorg/koin/core/instance/InstanceFactory;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    move/from16 v13, p4

    move-object v14, v3

    invoke-static/range {v12 .. v18}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 156
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 245
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v10, v7

    check-cast v10, Lkotlin/reflect/KClass;

    .local v10, "clazz":Lkotlin/reflect/KClass;
    const/4 v12, 0x0

    .line 157
    .local v12, "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v13

    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v14

    invoke-static {v10, v13, v14}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, "index":Ljava/lang/String;
    move-object/from16 v18, v2

    check-cast v18, Lorg/koin/core/instance/InstanceFactory;

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, p0

    move/from16 v16, p4

    move-object/from16 v17, v13

    invoke-static/range {v15 .. v21}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 159
    nop

    .line 245
    .end local v10    # "clazz":Lkotlin/reflect/KClass;
    .end local v12    # "$i$a$-forEach-InstanceRegistry$declareRootInstance$1":I
    .end local v13    # "index":Ljava/lang/String;
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 246
    :cond_0
    nop

    .line 160
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    return-void
.end method

.method public final synthetic declareScopedInstance(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZLorg/koin/core/qualifier/Qualifier;Ljava/lang/String;)V
    .locals 23
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "secondaryTypes"    # Ljava/util/List;
    .param p4, "allowOverride"    # Z
    .param p5, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p6, "scopeID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    const-string v2, "secondaryTypes"

    move-object/from16 v10, p3

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scopeQualifier"

    move-object/from16 v11, p5

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scopeID"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$declareScopedInstance":I
    sget-object v12, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v12, "kind$iv":Lorg/koin/core/definition/Kind;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;

    invoke-direct {v3, v0}, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;-><init>(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .local v7, "definition$iv":Lkotlin/jvm/functions/Function2;
    const/4 v13, 0x0

    .line 229
    .local v13, "$i$f$_createDefinition":I
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 230
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 229
    move-object v3, v14

    move-object/from16 v4, p5

    move-object/from16 v6, p2

    move-object v8, v12

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 128
    .end local v7    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v12    # "kind$iv":Lorg/koin/core/definition/Kind;
    .end local v13    # "$i$f$_createDefinition":I
    nop

    .line 129
    .local v3, "def":Lorg/koin/core/definition/BeanDefinition;
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "indexKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->getInstances()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v6, :cond_0

    check-cast v5, Lorg/koin/core/instance/ScopedInstanceFactory;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 131
    .local v5, "existingFactory":Lorg/koin/core/instance/ScopedInstanceFactory;
    :goto_0
    if-eqz v5, :cond_1

    .line 132
    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Lorg/koin/core/instance/ScopedInstanceFactory;->refreshInstance(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 134
    :cond_1
    new-instance v6, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v6, v3}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 135
    .local v6, "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    move-object v15, v6

    check-cast v15, Lorg/koin/core/instance/InstanceFactory;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    move/from16 v13, p4

    move-object v14, v4

    invoke-static/range {v12 .. v18}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 136
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 236
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lkotlin/reflect/KClass;

    .local v13, "clazz":Lkotlin/reflect/KClass;
    const/4 v14, 0x0

    .line 137
    .local v14, "$i$a$-forEach-InstanceRegistry$declareScopedInstance$1":I
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v15

    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    invoke-static {v13, v15, v0}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "index":Ljava/lang/String;
    move-object/from16 v19, v6

    check-cast v19, Lorg/koin/core/instance/InstanceFactory;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p4

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v22}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 139
    nop

    .line 236
    .end local v0    # "index":Ljava/lang/String;
    .end local v13    # "clazz":Lkotlin/reflect/KClass;
    .end local v14    # "$i$a$-forEach-InstanceRegistry$declareScopedInstance$1":I
    move-object/from16 v0, p1

    .end local v12    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 237
    :cond_2
    nop

    .line 142
    .end local v6    # "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    :goto_2
    return-void
.end method

.method public final dropScopeInstances$koin_core(Lorg/koin/core/scope/Scope;)V
    .locals 8
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 247
    .local v1, "$i$f$filterIsInstance":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 256
    .local v4, "$i$f$filterIsInstanceTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    instance-of v7, v6, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterIsInstanceTo":I
    check-cast v2, Ljava/util/List;

    .line 247
    nop

    .end local v0    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterIsInstance":I
    check-cast v2, Ljava/lang/Iterable;

    .line 164
    move-object v0, v2

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 258
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/instance/ScopedInstanceFactory;

    .local v4, "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    const/4 v5, 0x0

    .line 164
    .local v5, "$i$a$-forEach-InstanceRegistry$dropScopeInstances$1":I
    invoke-virtual {v4, p1}, Lorg/koin/core/instance/ScopedInstanceFactory;->drop(Lorg/koin/core/scope/Scope;)V

    .line 258
    .end local v4    # "factory":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$dropScopeInstances$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 259
    :cond_2
    nop

    .line 165
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final getAll$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/instance/InstanceContext;)Ljava/util/List;
    .locals 11
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .param p2, "instanceContext"    # Lorg/koin/core/instance/InstanceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/instance/InstanceContext;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 176
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 262
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 263
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    .local v7, "factory":Lorg/koin/core/instance/InstanceFactory;
    const/4 v8, 0x0

    .line 177
    .local v8, "$i$a$-filter-InstanceRegistry$getAll$1":I
    invoke-virtual {v7}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v9

    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v9

    invoke-virtual {p2}, Lorg/koin/core/instance/InstanceContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v10

    invoke-virtual {v10}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 263
    .end local v7    # "factory":Lorg/koin/core/instance/InstanceFactory;
    .end local v8    # "$i$a$-filter-InstanceRegistry$getAll$1":I
    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 262
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 179
    move-object v0, v2

    .restart local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 265
    .restart local v1    # "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .restart local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 266
    .restart local v4    # "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    .restart local v7    # "factory":Lorg/koin/core/instance/InstanceFactory;
    const/4 v8, 0x0

    .line 180
    .local v8, "$i$a$-filter-InstanceRegistry$getAll$2":I
    invoke-virtual {v7}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v9

    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v9

    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v9

    .line 181
    nop

    .line 180
    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 266
    .end local v7    # "factory":Lorg/koin/core/instance/InstanceFactory;
    .end local v8    # "$i$a$-filter-InstanceRegistry$getAll$2":I
    :goto_3
    if-eqz v9, :cond_2

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 265
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 184
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 185
    nop

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 268
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 269
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 270
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/koin/core/instance/InstanceFactory;

    .local v7, "it":Lorg/koin/core/instance/InstanceFactory;
    const/4 v8, 0x0

    .line 185
    .local v8, "$i$a$-map-InstanceRegistry$getAll$3":I
    invoke-virtual {v7, p2}, Lorg/koin/core/instance/InstanceFactory;->get(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;

    move-result-object v7

    .line 270
    .end local v7    # "it":Lorg/koin/core/instance/InstanceFactory;
    .end local v8    # "$i$a$-map-InstanceRegistry$getAll$3":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 271
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 268
    nop

    .line 175
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method public final getInstances()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    return-object v0
.end method

.method public final get_koin()Lorg/koin/core/Koin;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final loadModules$koin_core(Ljava/util/Set;Z)V
    .locals 6
    .param p1, "modules"    # Ljava/util/Set;
    .param p2, "allowOverride"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/koin/core/module/Module;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/module/Module;

    .local v4, "module":Lorg/koin/core/module/Module;
    const/4 v5, 0x0

    .line 48
    .local v5, "$i$a$-forEach-InstanceRegistry$loadModules$1":I
    invoke-direct {p0, v4, p2}, Lorg/koin/core/registry/InstanceRegistry;->loadModule(Lorg/koin/core/module/Module;Z)V

    .line 49
    invoke-direct {p0, v4}, Lorg/koin/core/registry/InstanceRegistry;->addAllEagerInstances(Lorg/koin/core/module/Module;)V

    .line 50
    nop

    .line 205
    .end local v4    # "module":Lorg/koin/core/module/Module;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$loadModules$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 206
    :cond_0
    nop

    .line 51
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;
    .locals 2
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {p1, p2, p3}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "indexKey":Ljava/lang/String;
    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/instance/InstanceFactory;

    return-object v1
.end method

.method public final resolveInstance$koin_core(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "clazz"    # Lkotlin/reflect/KClass;
    .param p3, "scopeQualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p4, "instanceContext"    # Lorg/koin/core/instance/InstanceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lorg/koin/core/instance/InstanceContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p2, p1, p3}, Lorg/koin/core/registry/InstanceRegistry;->resolveDefinition$koin_core(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Lorg/koin/core/instance/InstanceFactory;->get(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public final saveMapping(ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;Z)V
    .locals 9
    .param p1, "allowOverride"    # Z
    .param p2, "mapping"    # Ljava/lang/String;
    .param p3, "factory"    # Lorg/koin/core/instance/InstanceFactory;
    .param p4, "logWarning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "mapping"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x27

    const-string v2, "\' -> \'"

    if-eqz v0, :cond_2

    .line 82
    if-nez p1, :cond_0

    .line 83
    invoke-static {p3, p2}, Lorg/koin/core/module/ModuleKt;->overrideError(Lorg/koin/core/instance/InstanceFactory;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    if-eqz p4, :cond_2

    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .local v0, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(+) override index \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "msg$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 211
    .local v4, "$i$f$warn":I
    sget-object v5, Lorg/koin/core/logger/Level;->WARNING:Lorg/koin/core/logger/Level;

    .local v5, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v6, v0

    .local v6, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v7, 0x0

    .line 221
    .local v7, "$i$f$log":I
    invoke-virtual {v6, v5}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v5, v3}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 222
    :cond_1
    nop

    .line 212
    .end local v5    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v6    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v7    # "$i$f$log":I
    nop

    .line 88
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v3    # "msg$iv":Ljava/lang/String;
    .end local v4    # "$i$f$warn":I
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .restart local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(+) index \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/koin/core/instance/InstanceFactory;->getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 223
    .local v2, "$i$f$debug":I
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v3, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v4, v0

    .local v4, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v5, 0x0

    .line 224
    .local v5, "$i$f$log":I
    invoke-virtual {v4, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v3, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 225
    :cond_3
    nop

    .line 226
    .end local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "$i$f$log":I
    nop

    .line 89
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "$i$f$debug":I
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public final size()I
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->_instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final unloadModules$koin_core(Ljava/util/Set;)V
    .locals 6
    .param p1, "modules"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 272
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/module/Module;

    .local v4, "it":Lorg/koin/core/module/Module;
    const/4 v5, 0x0

    .line 189
    .local v5, "$i$a$-forEach-InstanceRegistry$unloadModules$1":I
    invoke-direct {p0, v4}, Lorg/koin/core/registry/InstanceRegistry;->unloadModule(Lorg/koin/core/module/Module;)V

    .line 272
    .end local v4    # "it":Lorg/koin/core/module/Module;
    .end local v5    # "$i$a$-forEach-InstanceRegistry$unloadModules$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 273
    :cond_0
    nop

    .line 190
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
