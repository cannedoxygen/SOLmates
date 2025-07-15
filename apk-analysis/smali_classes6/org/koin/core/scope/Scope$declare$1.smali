.class public final Lorg/koin/core/scope/Scope$declare$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->declare(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n+ 2 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 3 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,403:1\n128#2:404\n129#2,8:412\n137#2,3:421\n142#2:425\n112#3,7:405\n1855#4:420\n1856#4:424\n*S KotlinDebug\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n*L\n319#1:404\n319#1:412,8\n319#1:421,3\n319#1:425\n319#1:405,7\n319#1:420\n319#1:424\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $allowOverride:Z

.field final synthetic $instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $secondaryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "TT;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/core/scope/Scope$declare$1;->$instance:Ljava/lang/Object;

    iput-object p3, p0, Lorg/koin/core/scope/Scope$declare$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p4, p0, Lorg/koin/core/scope/Scope$declare$1;->$secondaryTypes:Ljava/util/List;

    iput-boolean p5, p0, Lorg/koin/core/scope/Scope$declare$1;->$allowOverride:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 318
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope$declare$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 27

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->get_koin()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v2

    .line 320
    iget-object v1, v0, Lorg/koin/core/scope/Scope$declare$1;->$instance:Ljava/lang/Object;

    .line 321
    iget-object v12, v0, Lorg/koin/core/scope/Scope$declare$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 322
    iget-object v15, v0, Lorg/koin/core/scope/Scope$declare$1;->$secondaryTypes:Ljava/util/List;

    .line 323
    iget-boolean v3, v0, Lorg/koin/core/scope/Scope$declare$1;->$allowOverride:Z

    .line 324
    iget-object v4, v0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v4}, Lorg/koin/core/scope/Scope;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v10

    .line 325
    iget-object v4, v0, Lorg/koin/core/scope/Scope$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v4}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v4

    .line 319
    nop

    .local v1, "instance$iv":Ljava/lang/Object;
    .local v2, "this_$iv":Lorg/koin/core/registry/InstanceRegistry;
    .local v10, "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .local v12, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .local v15, "secondaryTypes$iv":Ljava/util/List;
    move-object v8, v4

    .local v3, "allowOverride$iv":Z
    .local v8, "scopeID$iv":Ljava/lang/String;
    const/16 v16, 0x0

    .line 404
    .local v16, "$i$f$declareScopedInstance":I
    sget-object v4, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .local v4, "kind$iv$iv":Lorg/koin/core/definition/Kind;
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v5, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$declareScopedInstance$1;

    invoke-direct {v5, v1}, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$declareScopedInstance$1;-><init>(Ljava/lang/Object;)V

    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .local v13, "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v5, 0x0

    .line 405
    .local v5, "$i$f$_createDefinition":I
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 406
    const/4 v7, 0x4

    const-string v9, "T"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 408
    nop

    .line 409
    nop

    .line 410
    nop

    .line 411
    nop

    .line 405
    move-object v9, v6

    move-object v14, v4

    invoke-direct/range {v9 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 404
    .end local v4    # "kind$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v5    # "$i$f$_createDefinition":I
    .end local v13    # "definition$iv$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 412
    .local v9, "def$iv":Lorg/koin/core/definition/BeanDefinition;
    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getPrimaryType()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v11

    .line 413
    .local v11, "indexKey$iv":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/koin/core/registry/InstanceRegistry;->getInstances()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/koin/core/instance/ScopedInstanceFactory;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/koin/core/instance/ScopedInstanceFactory;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v13, v4

    .line 414
    .local v13, "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    if-eqz v13, :cond_1

    .line 415
    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v13, v8, v4}, Lorg/koin/core/instance/ScopedInstanceFactory;->refreshInstance(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v19, v1

    move-object/from16 v18, v8

    goto :goto_2

    .line 417
    :cond_1
    new-instance v4, Lorg/koin/core/instance/ScopedInstanceFactory;

    invoke-direct {v4, v9}, Lorg/koin/core/instance/ScopedInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    move-object v14, v4

    .line 418
    .local v14, "factory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    move-object v5, v14

    check-cast v5, Lorg/koin/core/instance/InstanceFactory;

    const/16 v7, 0x8

    const/16 v17, 0x0

    const/4 v6, 0x0

    move-object v4, v11

    move-object/from16 v18, v8

    .end local v8    # "scopeID$iv":Ljava/lang/String;
    .local v18, "scopeID$iv":Ljava/lang/String;
    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 419
    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getSecondaryTypes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 420
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/KClass;

    .local v8, "clazz$iv":Lkotlin/reflect/KClass;
    const/16 v17, 0x0

    .line 421
    .local v17, "$i$a$-forEach-InstanceRegistry$declareScopedInstance$1$iv":I
    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    move-object/from16 v19, v1

    .end local v1    # "instance$iv":Ljava/lang/Object;
    .local v19, "instance$iv":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/koin/core/definition/BeanDefinition;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lorg/koin/core/definition/BeanDefinitionKt;->indexKey(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "index$iv":Ljava/lang/String;
    move-object/from16 v23, v14

    check-cast v23, Lorg/koin/core/instance/InstanceFactory;

    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v26}, Lorg/koin/core/registry/InstanceRegistry;->saveMapping$default(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/InstanceFactory;ZILjava/lang/Object;)V

    .line 423
    nop

    .line 420
    .end local v0    # "index$iv":Ljava/lang/String;
    .end local v8    # "clazz$iv":Lkotlin/reflect/KClass;
    .end local v17    # "$i$a$-forEach-InstanceRegistry$declareScopedInstance$1$iv":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 424
    .end local v19    # "instance$iv":Ljava/lang/Object;
    .restart local v1    # "instance$iv":Ljava/lang/Object;
    :cond_2
    move-object/from16 v19, v1

    .line 425
    .end local v1    # "instance$iv":Ljava/lang/Object;
    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    .end local v14    # "factory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .restart local v19    # "instance$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 327
    .end local v2    # "this_$iv":Lorg/koin/core/registry/InstanceRegistry;
    .end local v3    # "allowOverride$iv":Z
    .end local v9    # "def$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v10    # "scopeQualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "indexKey$iv":Ljava/lang/String;
    .end local v12    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "existingFactory$iv":Lorg/koin/core/instance/ScopedInstanceFactory;
    .end local v15    # "secondaryTypes$iv":Ljava/util/List;
    .end local v16    # "$i$f$declareScopedInstance":I
    .end local v18    # "scopeID$iv":Ljava/lang/String;
    .end local v19    # "instance$iv":Ljava/lang/Object;
    return-void
.end method
