.class public final Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherKoinComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/modules/DevLauncherModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherKoinComponent.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt$optInject$1\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n*L\n1#1,26:1\n45#2,2:27\n47#2:30\n133#3:29\n107#4:31\n*S KotlinDebug\n*F\n+ 1 DevLauncherKoinComponent.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt$optInject$1\n*L\n21#1:27,2\n21#1:30\n21#1:29\n21#1:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "expo/modules/devlauncher/koin/DevLauncherKoinComponentKt$optInject$1"
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
.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_optInject:Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# direct methods
.method public constructor <init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;->$this_optInject:Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;

    iput-object p2, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;"
        }
    .end annotation

    .line 20
    nop

    .line 21
    :try_start_0
    iget-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;->$this_optInject:Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    iget-object v1, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    .local v0, "$this$get$iv":Lorg/koin/core/component/KoinComponent;
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 27
    .local v3, "$i$f$get":I
    instance-of v4, v0, Lorg/koin/core/component/KoinScopeComponent;

    if-eqz v4, :cond_0

    .line 28
    move-object v4, v0

    check-cast v4, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v4}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 29
    .local v5, "$i$f$get":I
    const-class v6, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .end local v4    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$f$get":I
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/Koin;
    const/4 v5, 0x0

    .line 31
    .restart local v5    # "$i$f$get":I
    invoke-virtual {v4}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v6

    invoke-virtual {v6}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v6

    .local v6, "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v7, 0x0

    .line 29
    .local v7, "$i$f$get":I
    const-class v8, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v6, v8, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v6    # "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v7    # "$i$f$get":I
    move-object v6, v8

    .line 27
    .end local v4    # "this_$iv$iv":Lorg/koin/core/Koin;
    .end local v5    # "$i$f$get":I
    :goto_0
    nop

    .line 20
    .end local v0    # "$this$get$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    return-object v6

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
