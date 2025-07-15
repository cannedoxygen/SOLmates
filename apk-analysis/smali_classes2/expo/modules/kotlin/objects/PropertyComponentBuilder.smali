.class public Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
.super Ljava/lang/Object;
.source "PropertyComponentBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilder\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 3 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 4 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 5 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,65:1\n26#2:66\n20#3:67\n20#3:83\n13#4,3:68\n13#4,3:84\n167#5,2:71\n158#5,8:75\n143#6,2:73\n*S KotlinDebug\n*F\n+ 1 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilder\n*L\n19#1:66\n19#1:67\n26#1:83\n19#1:68,3\n26#1:84,3\n26#1:71,2\n26#1:75,8\n26#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J$\u0010\u0012\u001a\u00020\u0000\"\u0006\u0008\u0000\u0010\u0013\u0018\u00012\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0015H\u0086\u0008\u00f8\u0001\u0000J9\u0010\u0016\u001a\u00020\u0000\"\u0006\u0008\u0000\u0010\u0017\u0018\u00012#\u0008\u0004\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u0011H\u0017\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u0002\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b0\u0018H\u0086\u0008\u00f8\u0001\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/PropertyComponentBuilder;",
        "",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "getter",
        "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "getGetter",
        "()Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "setGetter",
        "(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V",
        "getName",
        "()Ljava/lang/String;",
        "setter",
        "getSetter",
        "setSetter",
        "build",
        "Lexpo/modules/kotlin/objects/PropertyComponent;",
        "get",
        "R",
        "body",
        "Lkotlin/Function0;",
        "set",
        "T",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "newValue",
        "",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

.field private final name:Ljava/lang/String;

.field private setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->name:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public final build()Lexpo/modules/kotlin/objects/PropertyComponent;
    .locals 4

    .line 30
    new-instance v0, Lexpo/modules/kotlin/objects/PropertyComponent;

    iget-object v1, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->name:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    iget-object v3, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    invoke-direct {v0, v1, v2, v3}, Lexpo/modules/kotlin/objects/PropertyComponent;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    return-object v0
.end method

.method public final synthetic get(Lkotlin/jvm/functions/Function0;)Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .locals 14
    .param p1, "body"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)",
            "Lexpo/modules/kotlin/objects/PropertyComponentBuilder;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$get":I
    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;

    .local v1, "$this$get_u24lambda_u240":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/4 v2, 0x0

    .line 19
    .local v2, "$i$a$-apply-PropertyComponentBuilder$get$1":I
    new-instance v3, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v4, 0x0

    .line 66
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v4, v5, [Lexpo/modules/kotlin/types/AnyType;

    .end local v4    # "$i$f$emptyArray":I
    check-cast v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 19
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$f$toReturnType":I
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v6, "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v7, 0x0

    .line 68
    .local v7, "$i$f$get":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x4

    const-string v10, "R"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v8, :cond_0

    new-instance v8, Lexpo/modules/kotlin/types/ReturnType;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v8, v11}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v11, v8

    check-cast v11, Lexpo/modules/kotlin/types/ReturnType;

    .local v11, "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v12, 0x0

    .line 69
    .local v12, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    sget-object v13, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v13}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v13

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v13, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    nop

    .line 68
    .end local v11    # "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v12    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    move-object v9, v8

    check-cast v9, Lexpo/modules/kotlin/types/ReturnType;

    .line 67
    .end local v6    # "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v7    # "$i$f$get":I
    :cond_0
    nop

    .line 19
    .end local v5    # "$i$f$toReturnType":I
    new-instance v5, Lexpo/modules/kotlin/objects/PropertyComponentBuilder$get$1$1;

    invoke-direct {v5, p1}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder$get$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const-string v6, "get"

    invoke-direct {v3, v6, v4, v8, v5}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setGetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 20
    nop

    .line 18
    .end local v1    # "$this$get_u24lambda_u240":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v2    # "$i$a$-apply-PropertyComponentBuilder$get$1":I
    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;

    .line 20
    return-object v1
.end method

.method public final getGetter()Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetter()Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-object v0
.end method

.method public final synthetic set(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .locals 16
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/objects/PropertyComponentBuilder;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "body"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 25
    .local v1, "$i$f$set":I
    move-object/from16 v2, p0

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;

    .local v2, "$this$set_u24lambda_u241":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    const/4 v3, 0x0

    .line 26
    .local v3, "$i$a$-apply-PropertyComponentBuilder$set$1":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v5, 0x1

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 71
    const/4 v6, 0x0

    .local v6, "converterProvider$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 73
    .local v9, "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const/4 v11, 0x4

    const-string v12, "T"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    const/4 v14, 0x3

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .local v10, "key$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lexpo/modules/kotlin/types/AnyType;

    .line 72
    .end local v8    # "this_$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    .end local v10    # "key$iv$iv":Lkotlin/Pair;
    if-nez v13, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v8, Lexpo/modules/kotlin/objects/PropertyComponentBuilder$set$$inlined$apply$lambda$1;->INSTANCE:Lexpo/modules/kotlin/objects/PropertyComponentBuilder$set$$inlined$apply$lambda$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .local v8, "$this$toAnyType$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v9, 0x0

    .line 75
    .local v9, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 76
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 78
    const/4 v14, 0x3

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 79
    nop

    .line 76
    invoke-direct {v10, v11, v15, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 81
    nop

    .line 75
    invoke-direct {v13, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 82
    nop

    .line 72
    .end local v8    # "$this$toAnyType$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "$i$f$toAnyType":I
    :cond_0
    nop

    .end local v6    # "converterProvider$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toAnyType":I
    const/4 v6, 0x0

    aput-object v13, v5, v6

    .line 26
    const/4 v6, 0x0

    .line 83
    .local v6, "$i$f$toReturnType":I
    sget-object v7, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v7, "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v8, 0x0

    .line 84
    .local v8, "$i$f$get":I
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v9

    const-class v10, Lkotlin/Unit;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v9, :cond_1

    new-instance v9, Lexpo/modules/kotlin/types/ReturnType;

    const-class v10, Lkotlin/Unit;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v10, v9

    check-cast v10, Lexpo/modules/kotlin/types/ReturnType;

    .local v10, "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v11, 0x0

    .line 85
    .local v11, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    sget-object v12, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v12}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v12

    const-class v13, Lkotlin/Unit;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    nop

    .line 84
    .end local v10    # "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v11    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    move-object v10, v9

    check-cast v10, Lexpo/modules/kotlin/types/ReturnType;

    .line 83
    .end local v7    # "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v8    # "$i$f$get":I
    :cond_1
    nop

    .line 26
    .end local v6    # "$i$f$toReturnType":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v6, Lexpo/modules/kotlin/objects/PropertyComponentBuilder$set$1$1;

    invoke-direct {v6, v0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder$set$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const-string v7, "set"

    invoke-direct {v4, v7, v5, v9, v6}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v4}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setSetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 27
    nop

    .line 25
    .end local v2    # "$this$set_u24lambda_u241":Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
    .end local v3    # "$i$a$-apply-PropertyComponentBuilder$set$1":I
    move-object/from16 v2, p0

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;

    .line 27
    return-object v2
.end method

.method public final setGetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V
    .locals 0
    .param p1, "<set-?>"    # Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 12
    iput-object p1, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->getter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-void
.end method

.method public final setSetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V
    .locals 0
    .param p1, "<set-?>"    # Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 13
    iput-object p1, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;->setter:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-void
.end method
