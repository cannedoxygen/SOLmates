.class public final Lorg/koin/core/module/dsl/FactoryOfKt$factoryOf$11;
.super Lkotlin/jvm/internal/Lambda;
.source "FactoryOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/module/dsl/FactoryOfKt;->factoryOf(Lorg/koin/core/module/Module;Lkotlin/jvm/functions/Function10;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
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
    value = "SMAP\nFactoryOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FactoryOf.kt\norg/koin/core/module/dsl/FactoryOfKt$factoryOf$11\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,224:1\n105#2:225\n129#3,5:226\n*S KotlinDebug\n*F\n+ 1 FactoryOf.kt\norg/koin/core/module/dsl/FactoryOfKt$factoryOf$11\n*L\n126#1:225\n126#1:226,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u0001\"\u0006\u0008\u0004\u0010\u0005\u0018\u0001\"\u0006\u0008\u0005\u0010\u0006\u0018\u0001\"\u0006\u0008\u0006\u0010\u0007\u0018\u0001\"\u0006\u0008\u0007\u0010\u0008\u0018\u0001\"\u0006\u0008\u0008\u0010\t\u0018\u0001\"\u0006\u0008\t\u0010\n\u0018\u0001\"\u0006\u0008\n\u0010\u000b\u0018\u0001*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010"
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
        "T7",
        "T8",
        "T9",
        "T10",
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
.field final synthetic $constructor:Lkotlin/jvm/functions/Function10;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function10<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function10;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function10<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;-TT10;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/module/dsl/FactoryOfKt$factoryOf$11;->$constructor:Lkotlin/jvm/functions/Function10;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 126
    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    move-object v1, p2

    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, v0, v1}, Lorg/koin/core/module/dsl/FactoryOfKt$factoryOf$11;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/koin/core/module/dsl/FactoryOfKt$factoryOf$11;->$constructor:Lkotlin/jvm/functions/Function10;

    .local v14, "constructor$iv":Lkotlin/jvm/functions/Function10;
    move-object/from16 v15, p1

    .local v15, "$this$new$iv":Lorg/koin/core/scope/Scope;
    const/16 v16, 0x0

    .line 225
    .local v16, "$i$f$new":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .local v3, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v4, 0x0

    .line 226
    .local v4, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 230
    .local v5, "$i$f$get":I
    const-string v6, "T1"

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v15, v6, v3, v4}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v5, 0x0

    .line 226
    .local v5, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 230
    .local v6, "$i$f$get":I
    const-string v8, "T2"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v15, v8, v3, v5}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v6, 0x0

    .line 226
    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 230
    .local v8, "$i$f$get":I
    const-string v9, "T3"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v15, v9, v3, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v8, 0x0

    .line 226
    .local v8, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v9, 0x0

    .line 230
    .local v9, "$i$f$get":I
    const-string v10, "T4"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v15, v10, v3, v8}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v9, 0x0

    .line 226
    .local v9, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 230
    .local v10, "$i$f$get":I
    const-string v11, "T5"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v15, v11, v3, v9}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v9

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v10, 0x0

    .line 226
    .local v10, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v11, 0x0

    .line 230
    .local v11, "$i$f$get":I
    const-string v12, "T6"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v15, v12, v3, v10}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v11, 0x0

    .line 226
    .local v11, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v12, 0x0

    .line 230
    .local v12, "$i$f$get":I
    const-string v13, "T7"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-virtual {v15, v13, v3, v11}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v12, 0x0

    .line 226
    .local v12, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v13, 0x0

    .line 230
    .local v13, "$i$f$get":I
    const-string v0, "T8"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v15, v0, v3, v12}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v12, 0x0

    .line 226
    .restart local v12    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v13, 0x0

    .line 230
    .restart local v13    # "$i$f$get":I
    const-string v1, "T9"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v15, v1, v3, v12}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v12

    .line 225
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "$i$f$get":I
    nop

    .line 226
    nop

    .line 227
    const/4 v1, 0x0

    .line 226
    .local v1, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 228
    const/4 v3, 0x0

    .line 226
    .local v3, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v13, 0x0

    .line 230
    .restart local v13    # "$i$f$get":I
    const-string v2, "T10"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v15, v2, v1, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v13

    .line 225
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "$i$f$get":I
    move-object v3, v14

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v0

    invoke-interface/range {v3 .. v13}, Lkotlin/jvm/functions/Function10;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .end local v14    # "constructor$iv":Lkotlin/jvm/functions/Function10;
    .end local v15    # "$this$new$iv":Lorg/koin/core/scope/Scope;
    .end local v16    # "$i$f$new":I
    return-object v0
.end method
