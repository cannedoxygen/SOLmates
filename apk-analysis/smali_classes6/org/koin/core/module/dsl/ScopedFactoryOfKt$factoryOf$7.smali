.class public final Lorg/koin/core/module/dsl/ScopedFactoryOfKt$factoryOf$7;
.super Lkotlin/jvm/internal/Lambda;
.source "ScopedFactoryOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/module/dsl/ScopedFactoryOfKt;->factoryOf(Lorg/koin/dsl/ScopeDSL;Lkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopedFactoryOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopedFactoryOf.kt\norg/koin/core/module/dsl/ScopedFactoryOfKt$factoryOf$7\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,222:1\n77#2:223\n129#3,5:224\n*S KotlinDebug\n*F\n+ 1 ScopedFactoryOf.kt\norg/koin/core/module/dsl/ScopedFactoryOfKt$factoryOf$7\n*L\n93#1:223\n93#1:224,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u0001\"\u0006\u0008\u0004\u0010\u0005\u0018\u0001\"\u0006\u0008\u0005\u0010\u0006\u0018\u0001\"\u0006\u0008\u0006\u0010\u0007\u0018\u0001*\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c"
    }
    d2 = {
        "<anonymous>",
        "R",
        "T1",
        "T2",
        "T3",
        "T4",
        "T5",
        "T6",
        "Lorg/koin/core/scope/Scope;",
        "it",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;"
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
.field final synthetic $constructor:Lkotlin/jvm/functions/Function6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function6<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/module/dsl/ScopedFactoryOfKt$factoryOf$7;->$constructor:Lkotlin/jvm/functions/Function6;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 93
    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    move-object v1, p2

    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, v0, v1}, Lorg/koin/core/module/dsl/ScopedFactoryOfKt$factoryOf$7;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 13
    .param p1, "$this$factory"    # Lorg/koin/core/scope/Scope;
    .param p2, "it"    # Lorg/koin/core/parameter/ParametersHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/koin/core/module/dsl/ScopedFactoryOfKt$factoryOf$7;->$constructor:Lkotlin/jvm/functions/Function6;

    .local v0, "constructor$iv":Lkotlin/jvm/functions/Function6;
    move-object v8, p1

    .local v8, "$this$new$iv":Lorg/koin/core/scope/Scope;
    const/4 v9, 0x0

    .line 223
    .local v9, "$i$f$new":I
    nop

    .line 224
    nop

    .line 225
    const/4 v1, 0x0

    .line 224
    .local v1, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 226
    const/4 v2, 0x0

    .line 224
    .local v2, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 228
    .local v3, "$i$f$get":I
    const-string v4, "T1"

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v8, v4, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 223
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    nop

    .line 224
    nop

    .line 225
    const/4 v1, 0x0

    .line 224
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 226
    const/4 v3, 0x0

    .line 224
    .local v3, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 228
    .local v4, "$i$f$get":I
    const-string v6, "T2"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v8, v6, v1, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    .line 223
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$get":I
    nop

    .line 224
    nop

    .line 225
    const/4 v1, 0x0

    .line 224
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 226
    const/4 v4, 0x0

    .line 224
    .local v4, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 228
    .local v6, "$i$f$get":I
    const-string v7, "T3"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v8, v7, v1, v4}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 223
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$get":I
    nop

    .line 224
    nop

    .line 225
    const/4 v1, 0x0

    .line 224
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 226
    const/4 v6, 0x0

    .line 224
    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 228
    .local v7, "$i$f$get":I
    const-string v10, "T4"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v8, v10, v1, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 223
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "$i$f$get":I
    nop

    .line 224
    nop

    .line 225
    const/4 v1, 0x0

    .line 224
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 226
    const/4 v7, 0x0

    .line 224
    .local v7, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 228
    .local v10, "$i$f$get":I
    const-string v11, "T5"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v8, v11, v1, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    .line 223
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$f$get":I
    nop

    .line 224
    nop

    .line 225
    const/4 v1, 0x0

    .line 224
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 226
    const/4 v10, 0x0

    .line 224
    .local v10, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v11, 0x0

    .line 228
    .local v11, "$i$f$get":I
    const-string v12, "T6"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v8, v5, v1, v10}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    .line 223
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$i$f$get":I
    move-object v1, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    invoke-interface/range {v1 .. v7}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .end local v0    # "constructor$iv":Lkotlin/jvm/functions/Function6;
    .end local v8    # "$this$new$iv":Lorg/koin/core/scope/Scope;
    .end local v9    # "$i$f$new":I
    return-object v0
.end method
