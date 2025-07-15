.class public final Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
.super Lexpo/modules/kotlin/objects/PropertyComponentBuilder;
.source "PropertyComponentBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ThisType:",
        "Ljava/lang/Object;",
        ">",
        "Lexpo/modules/kotlin/objects/PropertyComponentBuilder;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis\n+ 2 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 3 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 5 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,65:1\n20#2:66\n20#2:82\n13#3,3:67\n13#3,3:83\n167#4,2:70\n158#4,8:74\n143#5,2:72\n*S KotlinDebug\n*F\n+ 1 PropertyComponentBuilder.kt\nexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis\n*L\n43#1:66\n56#1:82\n43#1:67,3\n56#1:83,3\n56#1:70,2\n56#1:74,8\n56#1:72,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J0\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0006\u0008\u0001\u0010\u000b\u0018\u00012\u0014\u0008\u0004\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u000b0\rH\u0086\u0008\u00f8\u0001\u0000JT\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0006\u0008\u0001\u0010\u000f\u0018\u000128\u0008\u0004\u0010\u000c\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\u0010H\u0086\u0008\u00f8\u0001\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;",
        "ThisType",
        "Lexpo/modules/kotlin/objects/PropertyComponentBuilder;",
        "thisType",
        "Lkotlin/reflect/KType;",
        "name",
        "",
        "(Lkotlin/reflect/KType;Ljava/lang/String;)V",
        "getThisType",
        "()Lkotlin/reflect/KType;",
        "get",
        "R",
        "body",
        "Lkotlin/Function1;",
        "set",
        "T",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "self",
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
.field private final thisType:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;Ljava/lang/String;)V
    .locals 1
    .param p1, "thisType"    # Lkotlin/reflect/KType;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "thisType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p2}, Lexpo/modules/kotlin/objects/PropertyComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->thisType:Lkotlin/reflect/KType;

    .line 34
    return-void
.end method


# virtual methods
.method public final synthetic get(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    .locals 16
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TThisType;+TR;>;)",
            "Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis<",
            "TThisType;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "body"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 42
    .local v1, "$i$f$get":I
    move-object/from16 v2, p0

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;

    .local v2, "$this$get_u24lambda_u241":Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    const/4 v3, 0x0

    .line 43
    .local v3, "$i$a$-apply-PropertyComponentBuilderWithThis$get$1":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v5, 0x1

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x0

    .line 66
    .local v7, "$i$f$toReturnType":I
    sget-object v8, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v8, "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v9, 0x0

    .line 67
    .local v9, "$i$f$get":I
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x4

    const-string v12, "R"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v10, :cond_0

    new-instance v10, Lexpo/modules/kotlin/types/ReturnType;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v10, v13}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v13, v10

    check-cast v13, Lexpo/modules/kotlin/types/ReturnType;

    .local v13, "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v14, 0x0

    .line 68
    .local v14, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    sget-object v15, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v15}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v15

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-interface {v15, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    nop

    .line 67
    .end local v13    # "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v14    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    move-object v11, v10

    check-cast v11, Lexpo/modules/kotlin/types/ReturnType;

    .line 66
    .end local v8    # "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v9    # "$i$f$get":I
    :cond_0
    nop

    .line 46
    .end local v7    # "$i$f$toReturnType":I
    new-instance v7, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$get$1$1;

    invoke-direct {v7, v0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$get$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 43
    const-string v8, "get"

    invoke-direct {v4, v8, v6, v10, v7}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 46
    move-object v6, v4

    check-cast v6, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .local v6, "it":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v7, 0x0

    .line 47
    .local v7, "$i$a$-also-PropertyComponentBuilderWithThis$get$1$2":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object v8

    invoke-virtual {v6, v8}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setOwnerType(Lkotlin/reflect/KType;)V

    .line 48
    invoke-virtual {v6, v5}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setCanTakeOwner(Z)V

    .line 49
    nop

    .line 46
    .end local v6    # "it":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v7    # "$i$a$-also-PropertyComponentBuilderWithThis$get$1$2":I
    move-object v5, v4

    check-cast v5, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 43
    invoke-virtual {v2, v4}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->setGetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 50
    nop

    .line 42
    .end local v2    # "$this$get_u24lambda_u241":Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    .end local v3    # "$i$a$-apply-PropertyComponentBuilderWithThis$get$1":I
    move-object/from16 v2, p0

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;

    .line 50
    return-object v2
.end method

.method public final getThisType()Lkotlin/reflect/KType;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->thisType:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final synthetic set(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    .locals 16
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TThisType;-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis<",
            "TThisType;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "body"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 55
    .local v1, "$i$f$set":I
    move-object/from16 v2, p0

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;

    .local v2, "$this$set_u24lambda_u243":Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$a$-apply-PropertyComponentBuilderWithThis$set$1":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v5, 0x2

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v5, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    aput-object v7, v6, v5

    .line 70
    const/4 v5, 0x0

    .local v5, "converterProvider$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    const/4 v7, 0x0

    .line 71
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 72
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

    .line 73
    .local v10, "key$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lexpo/modules/kotlin/types/AnyType;

    .line 71
    .end local v8    # "this_$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    .end local v10    # "key$iv$iv":Lkotlin/Pair;
    if-nez v13, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v8, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$$inlined$apply$lambda$1;->INSTANCE:Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$$inlined$apply$lambda$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .local v8, "$this$toAnyType$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v9, 0x0

    .line 74
    .local v9, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 75
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 77
    const/4 v14, 0x3

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 78
    nop

    .line 75
    invoke-direct {v10, v11, v15, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 80
    nop

    .line 74
    invoke-direct {v13, v10, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 81
    nop

    .line 71
    .end local v8    # "$this$toAnyType$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "$i$f$toAnyType":I
    :cond_0
    nop

    .end local v5    # "converterProvider$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toAnyType":I
    const/4 v5, 0x1

    aput-object v13, v6, v5

    .line 56
    const/4 v7, 0x0

    .line 82
    .local v7, "$i$f$toReturnType":I
    sget-object v8, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v8, "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v9, 0x0

    .line 83
    .local v9, "$i$f$get":I
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v10

    const-class v11, Lkotlin/Unit;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v10, :cond_1

    new-instance v10, Lexpo/modules/kotlin/types/ReturnType;

    const-class v11, Lkotlin/Unit;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v11, v10

    check-cast v11, Lexpo/modules/kotlin/types/ReturnType;

    .local v11, "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v12, 0x0

    .line 84
    .local v12, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    sget-object v13, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v13}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v13

    const-class v14, Lkotlin/Unit;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-interface {v13, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    nop

    .line 83
    .end local v11    # "it$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v12    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv":I
    move-object v11, v10

    check-cast v11, Lexpo/modules/kotlin/types/ReturnType;

    .line 82
    .end local v8    # "this_$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v9    # "$i$f$get":I
    :cond_1
    nop

    .line 59
    .end local v7    # "$i$f$toReturnType":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v7, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$1$1;

    invoke-direct {v7, v0}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis$set$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 56
    const-string v8, "set"

    invoke-direct {v4, v8, v6, v10, v7}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 59
    move-object v6, v4

    check-cast v6, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .local v6, "it":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v7, 0x0

    .line 60
    .local v7, "$i$a$-also-PropertyComponentBuilderWithThis$set$1$2":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->getThisType()Lkotlin/reflect/KType;

    move-result-object v8

    invoke-virtual {v6, v8}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setOwnerType(Lkotlin/reflect/KType;)V

    .line 61
    invoke-virtual {v6, v5}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->setCanTakeOwner(Z)V

    .line 62
    nop

    .line 59
    .end local v6    # "it":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v7    # "$i$a$-also-PropertyComponentBuilderWithThis$set$1$2":I
    move-object v5, v4

    check-cast v5, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 56
    invoke-virtual {v2, v4}, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;->setSetter(Lexpo/modules/kotlin/functions/SyncFunctionComponent;)V

    .line 63
    nop

    .line 55
    .end local v2    # "$this$set_u24lambda_u243":Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;
    .end local v3    # "$i$a$-apply-PropertyComponentBuilderWithThis$set$1":I
    move-object/from16 v2, p0

    check-cast v2, Lexpo/modules/kotlin/objects/PropertyComponentBuilderWithThis;

    .line 63
    return-object v2
.end method
