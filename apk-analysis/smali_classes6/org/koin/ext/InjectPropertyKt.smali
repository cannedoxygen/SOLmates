.class public final Lorg/koin/ext/InjectPropertyKt;
.super Ljava/lang/Object;
.source "InjectProperty.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInjectProperty.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InjectProperty.kt\norg/koin/ext/InjectPropertyKt\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,18:1\n104#2,4:19\n104#2,4:24\n133#3:23\n133#3:28\n129#3,5:29\n*S KotlinDebug\n*F\n+ 1 InjectProperty.kt\norg/koin/ext/InjectPropertyKt\n*L\n9#1:19,4\n13#1:24,4\n9#1:23\n13#1:28\n17#1:29,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001b\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\u0008\u001a#\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086\u0008\u001a#\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "inject",
        "",
        "T",
        "Lkotlin/reflect/KMutableProperty0;",
        "koin",
        "Lorg/koin/core/Koin;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
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
.method public static final synthetic inject(Lkotlin/reflect/KMutableProperty0;)V
    .locals 9
    .param p0, "$this$inject"    # Lkotlin/reflect/KMutableProperty0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    .local v0, "$i$f$inject":I
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultContext()Lorg/koin/core/context/KoinContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/koin/core/context/KoinContext;->get()Lorg/koin/core/Koin;

    move-result-object v1

    .line 19
    .local v1, "$this$iv":Lorg/koin/core/Koin;
    nop

    .line 20
    const/4 v2, 0x0

    .line 19
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 21
    const/4 v3, 0x0

    .line 19
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 22
    .local v4, "$i$f$get":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v5

    .local v5, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v6, 0x0

    .line 23
    .local v6, "$i$f$get":I
    const/4 v7, 0x4

    const-string v8, "T"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v5, v7, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    .end local v5    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "$i$f$get":I
    nop

    .line 9
    .end local v1    # "$this$iv":Lorg/koin/core/Koin;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$get":I
    invoke-interface {p0, v5}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public static final synthetic inject(Lkotlin/reflect/KMutableProperty0;Lorg/koin/core/Koin;)V
    .locals 8
    .param p0, "$this$inject"    # Lkotlin/reflect/KMutableProperty0;
    .param p1, "koin"    # Lorg/koin/core/Koin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;",
            "Lorg/koin/core/Koin;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    .local v0, "$i$f$inject":I
    nop

    .line 24
    nop

    .line 25
    const/4 v1, 0x0

    .line 24
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 26
    const/4 v2, 0x0

    .line 24
    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 27
    .local v3, "$i$f$get":I
    invoke-virtual {p1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 28
    .local v5, "$i$f$get":I
    const/4 v6, 0x4

    const-string v7, "T"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 27
    .end local v4    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$f$get":I
    nop

    .line 13
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    invoke-interface {p0, v4}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static final synthetic inject(Lkotlin/reflect/KMutableProperty0;Lorg/koin/core/scope/Scope;)V
    .locals 6
    .param p0, "$this$inject"    # Lkotlin/reflect/KMutableProperty0;
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;",
            "Lorg/koin/core/scope/Scope;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    .local v0, "$i$f$inject":I
    nop

    .line 29
    nop

    .line 30
    const/4 v1, 0x0

    .line 29
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 31
    const/4 v2, 0x0

    .line 29
    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 33
    .local v3, "$i$f$get":I
    const/4 v4, 0x4

    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    invoke-interface {p0, v1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 18
    return-void
.end method
