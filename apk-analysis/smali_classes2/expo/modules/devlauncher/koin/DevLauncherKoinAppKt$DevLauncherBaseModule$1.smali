.class final Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;
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
    value = "SMAP\nDevLauncherKoinApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherKoinApp.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,47:1\n103#2,6:48\n109#2,5:75\n103#2,6:80\n109#2,5:107\n103#2,6:112\n109#2,5:139\n103#2,6:144\n109#2,5:171\n147#2,14:176\n161#2,2:206\n201#3,6:54\n207#3:74\n201#3,6:86\n207#3:106\n201#3,6:118\n207#3:138\n201#3,6:150\n207#3:170\n216#3:190\n217#3:205\n105#4,14:60\n105#4,14:92\n105#4,14:124\n105#4,14:156\n105#4,14:191\n*S KotlinDebug\n*F\n+ 1 DevLauncherKoinApp.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1\n*L\n21#1:48,6\n21#1:75,5\n22#1:80,6\n22#1:107,5\n23#1:112,6\n23#1:139,5\n24#1:144,6\n24#1:171,5\n25#1:176,14\n25#1:206,2\n21#1:54,6\n21#1:74\n22#1:86,6\n22#1:106\n23#1:118,6\n23#1:138\n24#1:150,6\n24#1:170\n25#1:190\n25#1:205\n21#1:60,14\n22#1:92,14\n23#1:124,14\n24#1:156,14\n25#1:191,14\n*E\n"
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
.field public static final INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;

    invoke-direct {v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;

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

    .line 20
    move-object v0, p1

    check-cast v0, Lorg/koin/core/module/Module;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 19
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    move-object/from16 v0, p1

    const-string v1, "$this$module"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$1;

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
    const-class v2, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

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

    .line 22
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "createdAtStart$iv":Z
    .end local v11    # "$i$f$single":I
    sget-object v1, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$2;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$2;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 80
    .restart local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 81
    const/4 v9, 0x0

    .line 80
    .restart local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 82
    const/4 v10, 0x0

    .line 80
    .restart local v10    # "createdAtStart$iv":Z
    const/4 v11, 0x0

    .line 85
    .restart local v11    # "$i$f$single":I
    nop

    .line 86
    nop

    .line 89
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/koin/core/qualifier/Qualifier;

    .line 86
    .restart local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 91
    .restart local v13    # "$i$f$_singleInstanceFactory":I
    sget-object v14, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 92
    .restart local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 92
    .restart local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 99
    .restart local v16    # "$i$f$_createDefinition":I
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 100
    const-class v2, Lokhttp3/OkHttpClient;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 99
    move-object/from16 v2, v17

    move-object v3, v12

    move-object v5, v9

    move-object v6, v1

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 91
    .end local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$_createDefinition":I
    nop

    .line 106
    .local v2, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v2}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 85
    .end local v2    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "$i$f$_singleInstanceFactory":I
    move-object v2, v3

    .line 107
    .local v2, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v3, v2

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 111
    :cond_1
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v2

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 23
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "createdAtStart$iv":Z
    .end local v11    # "$i$f$single":I
    sget-object v1, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$3;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$3;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 112
    .restart local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 113
    const/4 v9, 0x0

    .line 112
    .restart local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 114
    const/4 v10, 0x0

    .line 112
    .restart local v10    # "createdAtStart$iv":Z
    const/4 v11, 0x0

    .line 117
    .restart local v11    # "$i$f$single":I
    nop

    .line 118
    nop

    .line 121
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/koin/core/qualifier/Qualifier;

    .line 118
    .restart local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 123
    .restart local v13    # "$i$f$_singleInstanceFactory":I
    sget-object v14, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 124
    .restart local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 128
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 124
    .restart local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 131
    .restart local v16    # "$i$f$_createDefinition":I
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 132
    const-class v2, Lexpo/modules/devlauncher/launcher/DevLauncherLifecycle;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 131
    move-object/from16 v2, v17

    move-object v3, v12

    move-object v5, v9

    move-object v6, v1

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 123
    .end local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$_createDefinition":I
    nop

    .line 138
    .local v2, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v2}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 117
    .end local v2    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "$i$f$_singleInstanceFactory":I
    move-object v2, v3

    .line 139
    .local v2, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v3, v2

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 143
    :cond_2
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v2

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 24
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "createdAtStart$iv":Z
    .end local v11    # "$i$f$single":I
    sget-object v1, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$4;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$4;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 144
    .restart local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 145
    const/4 v9, 0x0

    .line 144
    .restart local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 146
    const/4 v10, 0x0

    .line 144
    .restart local v10    # "createdAtStart$iv":Z
    const/4 v11, 0x0

    .line 149
    .restart local v11    # "$i$f$single":I
    nop

    .line 150
    nop

    .line 153
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/koin/core/qualifier/Qualifier;

    .line 150
    .restart local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 155
    .restart local v13    # "$i$f$_singleInstanceFactory":I
    sget-object v14, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 156
    .restart local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 160
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 156
    .restart local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 163
    .restart local v16    # "$i$f$_createDefinition":I
    new-instance v17, Lorg/koin/core/definition/BeanDefinition;

    .line 164
    const-class v2, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 163
    move-object/from16 v2, v17

    move-object v3, v12

    move-object v5, v9

    move-object v6, v1

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 155
    .end local v14    # "kind$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v15    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$_createDefinition":I
    nop

    .line 170
    .local v2, "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    invoke-direct {v3, v2}, Lorg/koin/core/instance/SingleInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 149
    .end local v2    # "def$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v12    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "$i$f$_singleInstanceFactory":I
    move-object v2, v3

    .line 171
    .local v2, "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    move-object v3, v2

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->get_createdAtStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->prepareForCreationAtStart(Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 175
    :cond_3
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v2

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v0, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 25
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "factory$iv":Lorg/koin/core/instance/SingleInstanceFactory;
    .end local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "createdAtStart$iv":Z
    .end local v11    # "$i$f$single":I
    sget-object v1, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$5;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1$5;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 176
    .restart local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    nop

    .line 177
    const/4 v9, 0x0

    .line 176
    .restart local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v10, 0x0

    .line 180
    .local v10, "$i$f$factory":I
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->Companion:Lorg/koin/core/registry/ScopeRegistry$Companion;

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry$Companion;->getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/koin/core/qualifier/Qualifier;

    .local v11, "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    move-object/from16 v12, p1

    .local v12, "this_$iv$iv":Lorg/koin/core/module/Module;
    const/4 v13, 0x0

    .line 189
    .local v13, "$i$f$factory":I
    const/4 v14, 0x0

    .line 190
    .local v14, "$i$f$_factoryInstanceFactory":I
    sget-object v15, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 191
    .local v15, "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    nop

    .line 195
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 191
    .local v16, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 198
    .local v17, "$i$f$_createDefinition":I
    new-instance v18, Lorg/koin/core/definition/BeanDefinition;

    .line 199
    const-class v2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 198
    move-object/from16 v2, v18

    move-object v3, v11

    move-object v5, v9

    move-object v6, v1

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 190
    .end local v15    # "kind$iv$iv$iv$iv":Lorg/koin/core/definition/Kind;
    .end local v16    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$_createDefinition":I
    nop

    .line 205
    .local v2, "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    invoke-direct {v3, v2}, Lorg/koin/core/instance/FactoryInstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 189
    .end local v2    # "def$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v14    # "$i$f$_factoryInstanceFactory":I
    move-object v2, v3

    .line 206
    .local v2, "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    move-object v3, v2

    check-cast v3, Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v12, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 207
    new-instance v3, Lorg/koin/core/definition/KoinDefinition;

    move-object v4, v2

    check-cast v4, Lorg/koin/core/instance/InstanceFactory;

    invoke-direct {v3, v12, v4}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    .line 180
    .end local v2    # "factory$iv$iv":Lorg/koin/core/instance/FactoryInstanceFactory;
    .end local v11    # "scopeQualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .end local v13    # "$i$f$factory":I
    nop

    .line 26
    .end local v1    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v9    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "$i$f$factory":I
    return-void
.end method
