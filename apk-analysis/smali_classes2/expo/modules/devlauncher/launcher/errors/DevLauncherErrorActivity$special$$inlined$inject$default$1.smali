.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;-><init>()V
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
    value = "SMAP\nKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n*L\n1#1,71:1\n45#2,2:72\n47#2:75\n133#3:74\n107#4:76\n*S KotlinDebug\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n*L\n61#1:72,2\n61#1:75\n61#1:74\n61#1:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "org/koin/core/component/KoinComponentKt$inject$1"
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

.field final synthetic $this_inject:Lorg/koin/core/component/KoinComponent;


# direct methods
.method public constructor <init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;->$this_inject:Lorg/koin/core/component/KoinComponent;

    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

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

    .line 61
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;->$this_inject:Lorg/koin/core/component/KoinComponent;

    .local v0, "$this$get$iv":Lorg/koin/core/component/KoinComponent;
    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 72
    .local v3, "$i$f$get":I
    instance-of v4, v0, Lorg/koin/core/component/KoinScopeComponent;

    if-eqz v4, :cond_0

    .line 73
    move-object v4, v0

    check-cast v4, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v4}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 74
    .local v5, "$i$f$get":I
    const-class v6, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$f$get":I
    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/Koin;
    const/4 v5, 0x0

    .line 76
    .restart local v5    # "$i$f$get":I
    invoke-virtual {v4}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v6

    invoke-virtual {v6}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v6

    .local v6, "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v7, 0x0

    .line 74
    .local v7, "$i$f$get":I
    const-class v8, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v6, v8, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 76
    .end local v6    # "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v7    # "$i$f$get":I
    move-object v4, v6

    .line 72
    .end local v4    # "this_$iv$iv":Lorg/koin/core/Koin;
    .end local v5    # "$i$f$get":I
    :goto_0
    nop

    .line 61
    .end local v0    # "$this$get$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    return-object v4
.end method
