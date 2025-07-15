.class final Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherController;->setUpdatesInterface(Lexpo/modules/updatesinterface/UpdatesInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/koin/core/module/Module;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherController.kt\nexpo/modules/devlauncher/DevLauncherController$updatesInterface$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,462:1\n103#2,6:463\n109#2,5:490\n201#3,6:469\n207#3:489\n105#4,14:475\n*S KotlinDebug\n*F\n+ 1 DevLauncherController.kt\nexpo/modules/devlauncher/DevLauncherController$updatesInterface$1\n*L\n79#1:463,6\n79#1:490,5\n79#1:469,6\n79#1:489\n79#1:475,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lorg/koin/core/module/Module;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $value:Lexpo/modules/updatesinterface/UpdatesInterface;


# direct methods
.method constructor <init>(Lexpo/modules/updatesinterface/UpdatesInterface;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1;->$value:Lexpo/modules/updatesinterface/UpdatesInterface;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 78
    move-object v0, p1

    check-cast v0, Lorg/koin/core/module/Module;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 19
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    move-object/from16 v0, p1

    const-string v1, "$this$module"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v1, Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1$1;

    move-object/from16 v2, p0

    iget-object v3, v2, Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1;->$value:Lexpo/modules/updatesinterface/UpdatesInterface;

    invoke-direct {v1, v3}, Lexpo/modules/devlauncher/DevLauncherController$updatesInterface$1$1;-><init>(Lexpo/modules/updatesinterface/UpdatesInterface;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 463
    .local v1, "definition$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 464
    const/4 v3, 0x0

    .line 463
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 465
    const/4 v11, 0x0

    .line 463
    .local v11, "createdAtStart$iv":Z
    const/4 v12, 0x0

    .line 468
    .local v12, "$i$f$single":I
    nop

    .line 469
    nop

    .line 472
    sget-object v4, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v4}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lorg/koin/core/qualifier/Qualifier;

    .line 469
    .local v13, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v14, 0x0

    .line 474
    .local v14, "$i$f$_singleInstanceFactory":I
    sget-object v15, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 475
    .local v15, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 479
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 475
    .local v16, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 482
    .local v17, "$i$f$_createDefinition":I
    new-instance v18, Lorg/koin/core/definition/BeanDefinition;

    .line 483
    const-class v4, Lexpo/modules/updatesinterface/UpdatesInterface;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 485
    nop

    .line 486
    nop

    .line 487
    nop

    .line 488
    nop

    .line 482
    move-object/from16 v4, v18

    move-object v5, v13

    move-object v7, v3

    move-object v8, v1

    move-object v9, v15

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 474
    .end local v15    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v16    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$_createDefinition":I
    nop

    .line 489
    .local v4, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v5, v4}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 468
    .end local v4    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v13    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "$i$f$_singleInstanceFactory":I
    move-object v4, v5

    .line 490
    .local v4, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 491
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 494
    :cond_0
    new-instance v5, Lorg/koin/core/definition/KoinDefinition;

    move-object v6, v4

    check-cast v6, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v5, v0, v6}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 80
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v11    # "createdAtStart$iv":Z
    .end local v12    # "$i$f$single":I
    return-void
.end method
