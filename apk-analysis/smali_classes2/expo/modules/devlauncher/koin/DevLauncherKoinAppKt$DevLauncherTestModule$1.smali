.class final Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherKoinApp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;
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
    value = "SMAP\nDevLauncherKoinApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherKoinApp.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,47:1\n103#2,6:48\n109#2,5:75\n201#3,6:54\n207#3:74\n105#4,14:60\n*S KotlinDebug\n*F\n+ 1 DevLauncherKoinApp.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1\n*L\n17#1:48,6\n17#1:75,5\n17#1:54,6\n17#1:74\n17#1:60,14\n*E\n"
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


# static fields
.field public static final INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;

    invoke-direct {v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 16
    move-object v0, p1

    check-cast v0, Lorg/koin/core/module/Module;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 18
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    move-object/from16 v0, p1

    const-string v1, "$this$module"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v1, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 48
    .local v1, "definition$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 49
    const/4 v9, 0x0

    .line 48
    .local v9, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 50
    const/4 v10, 0x0

    .line 48
    .local v10, "createdAtStart$iv":Z
    const/4 v11, 0x0

    .line 53
    .local v11, "$i$f$single":I
    nop

    .line 54
    nop

    .line 57
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/koin/core/qualifier/Qualifier;

    .line 54
    .local v12, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 59
    .local v13, "$i$f$_singleInstanceFactory":I
    sget-object v14, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 60
    .local v14, "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 64
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 60
    .local v15, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 67
    .local v16, "$i$f$_createDefinition":I
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 68
    const-class v2, Lexpo/modules/devlauncher/tests/DevLauncherTestInterceptor;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 67
    move-object/from16 v2, v17

    move-object v3, v12

    move-object v5, v9

    move-object v6, v1

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 59
    .end local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$_createDefinition":I
    nop

    .line 74
    .local v2, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v2}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 53
    .end local v2    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "$i$f$_singleInstanceFactory":I
    move-object v2, v3

    .line 75
    .local v2, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v3, v2

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 79
    :cond_0
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v2

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 18
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "createdAtStart$iv":Z
    .end local v11    # "$i$f$single":I
    return-void
.end method
