.class public final Lorg/koin/core/module/dsl/ScopedOfKt$scopedOf$9;
.super Lkotlin/jvm/internal/Lambda;
.source "ScopedOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/module/dsl/ScopedOfKt;->scopedOf(Lorg/koin/dsl/ScopeDSL;Lkotlin/jvm/functions/Function8;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
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
    value = "SMAP\nScopedOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopedOf.kt\norg/koin/core/module/dsl/ScopedOfKt$scopedOf$9\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,223:1\n91#2:224\n129#3,5:225\n*S KotlinDebug\n*F\n+ 1 ScopedOf.kt\norg/koin/core/module/dsl/ScopedOfKt$scopedOf$9\n*L\n110#1:224\n110#1:225,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u0001\"\u0006\u0008\u0004\u0010\u0005\u0018\u0001\"\u0006\u0008\u0005\u0010\u0006\u0018\u0001\"\u0006\u0008\u0006\u0010\u0007\u0018\u0001\"\u0006\u0008\u0007\u0010\u0008\u0018\u0001\"\u0006\u0008\u0008\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\n\u00a2\u0006\u0004\u0008\r\u0010\u000e"
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
.field final synthetic $constructor:Lkotlin/jvm/functions/Function8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function8<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/module/dsl/ScopedOfKt$scopedOf$9;->$constructor:Lkotlin/jvm/functions/Function8;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 110
    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    move-object v1, p2

    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, v0, v1}, Lorg/koin/core/module/dsl/ScopedOfKt$scopedOf$9;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 16
    .param p1, "$this$scoped"    # Lorg/koin/core/scope/Scope;
    .param p2, "it"    # Lorg/koin/core/parameter/ParametersHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$scoped"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/koin/core/module/dsl/ScopedOfKt$scopedOf$9;->$constructor:Lkotlin/jvm/functions/Function8;

    .local v12, "constructor$iv":Lkotlin/jvm/functions/Function8;
    move-object/from16 v13, p1

    .local v13, "$this$new$iv":Lorg/koin/core/scope/Scope;
    const/4 v14, 0x0

    .line 224
    .local v14, "$i$f$new":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .local v3, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v4, 0x0

    .line 225
    .local v4, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 229
    .local v5, "$i$f$get":I
    const-string v6, "T1"

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v13, v6, v3, v4}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$get":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v5, 0x0

    .line 225
    .local v5, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 229
    .local v6, "$i$f$get":I
    const-string v8, "T2"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v13, v8, v3, v5}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$get":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v6, 0x0

    .line 225
    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 229
    .local v8, "$i$f$get":I
    const-string v9, "T3"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v13, v9, v3, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$get":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v8, 0x0

    .line 225
    .local v8, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v9, 0x0

    .line 229
    .local v9, "$i$f$get":I
    const-string v10, "T4"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v13, v10, v3, v8}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "$i$f$get":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v9, 0x0

    .line 225
    .local v9, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 229
    .local v10, "$i$f$get":I
    const-string v11, "T5"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v13, v11, v3, v9}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v9

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$f$get":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v10, 0x0

    .line 225
    .local v10, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v11, 0x0

    .line 229
    .local v11, "$i$f$get":I
    const-string v15, "T6"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v15, Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-virtual {v13, v15, v3, v10}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$i$f$get":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v11, 0x0

    .line 225
    .local v11, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v15, 0x0

    .line 229
    .local v15, "$i$f$get":I
    const-string v0, "T7"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v13, v0, v3, v11}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    nop

    .line 225
    nop

    .line 226
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 227
    const/4 v11, 0x0

    .line 225
    .restart local v11    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v15, 0x0

    .line 229
    .restart local v15    # "$i$f$get":I
    const-string v1, "T8"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v13, v1, v3, v11}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    .line 224
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    move-object v3, v12

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    invoke-interface/range {v3 .. v11}, Lkotlin/jvm/functions/Function8;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .end local v12    # "constructor$iv":Lkotlin/jvm/functions/Function8;
    .end local v13    # "$this$new$iv":Lorg/koin/core/scope/Scope;
    .end local v14    # "$i$f$new":I
    return-object v0
.end method
