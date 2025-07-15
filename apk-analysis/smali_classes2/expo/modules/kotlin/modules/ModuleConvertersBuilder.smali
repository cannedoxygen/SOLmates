.class public final Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;
.super Ljava/lang/Object;
.source "ModuleConvertersBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleConvertersBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleConvertersBuilder.kt\nexpo/modules/kotlin/modules/ModuleConvertersBuilder\n+ 2 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 3 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterComponent\n+ 4 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n18#1:60\n19#1,2:69\n148#2,8:52\n148#2,8:61\n16#3:71\n17#3,2:78\n41#4,6:72\n1549#5:80\n1620#5,3:81\n*S KotlinDebug\n*F\n+ 1 ModuleConvertersBuilder.kt\nexpo/modules/kotlin/modules/ModuleConvertersBuilder\n*L\n27#1:60\n27#1:69,2\n18#1:52,8\n27#1:61,8\n28#1:71\n28#1:78,2\n28#1:72,6\n36#1:80\n36#1:81,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J)\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u0005\"\n\u0008\u0000\u0010\u000c\u0018\u0001*\u00020\u00012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000eH\u0086\u0008J]\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u0005\"\n\u0008\u0000\u0010\u000c\u0018\u0001*\u00020\u0001\"\n\u0008\u0001\u0010\u000f\u0018\u0001*\u00020\u00012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000e2#\u0008\u0004\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u0002H\u000c0\u0011H\u0086\u0008\u00f8\u0001\u0000J\u0006\u0010\u0015\u001a\u00020\u0016R.\u0010\u0003\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;",
        "",
        "()V",
        "convertersComponent",
        "",
        "Lexpo/modules/kotlin/types/TypeConverterComponent;",
        "getConvertersComponent$annotations",
        "getConvertersComponent",
        "()Ljava/util/List;",
        "setConvertersComponent",
        "(Ljava/util/List;)V",
        "TypeConverter",
        "T",
        "classifier",
        "Lkotlin/reflect/KClass;",
        "P0",
        "body",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "p0",
        "buildTypeConverterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
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
.field private convertersComponent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    .line 13
    return-void
.end method

.method public static synthetic getConvertersComponent$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic TypeConverter(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/types/TypeConverterComponent;
    .locals 11
    .param p1, "classifier"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$TypeConverter":I
    new-instance v1, Lexpo/modules/kotlin/types/TypeConverterComponent;

    const/4 v2, 0x0

    .line 52
    .local v2, "$i$f$lazyTypeOf":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v3, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$1;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toLazyType$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 55
    .local v4, "$i$f$toLazyType":I
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const/4 v6, 0x4

    const-string v7, "T"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 57
    const/4 v9, 0x3

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v7, 0x0

    .line 58
    nop

    .line 55
    invoke-direct {v5, v8, v7, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 59
    nop

    .line 52
    .end local v3    # "$this$toLazyType$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$toLazyType":I
    nop

    .end local v2    # "$i$f$lazyTypeOf":I
    check-cast v5, Lkotlin/reflect/KType;

    .line 18
    const/4 v2, 0x0

    .line 52
    .restart local v2    # "$i$f$lazyTypeOf":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v3, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$2;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$lazyTypeOf$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .restart local v3    # "$this$toLazyType$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 55
    .restart local v4    # "$i$f$toLazyType":I
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-string v10, "T?"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 57
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 58
    nop

    .line 55
    invoke-direct {v8, v6, v7, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 59
    nop

    .line 52
    .end local v3    # "$this$toLazyType$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$toLazyType":I
    nop

    .end local v2    # "$i$f$lazyTypeOf":I
    check-cast v8, Lkotlin/reflect/KType;

    .line 18
    invoke-direct {v1, v5, v8}, Lexpo/modules/kotlin/types/TypeConverterComponent;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V

    .line 19
    .local v1, "converterComponent":Lexpo/modules/kotlin/types/TypeConverterComponent;
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->getConvertersComponent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-object v1
.end method

.method public final synthetic TypeConverter(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterComponent;
    .locals 16
    .param p1, "classifier"    # Lkotlin/reflect/KClass;
    .param p2, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TP0;+TT;>;)",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "classifier"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 27
    .local v1, "$i$f$TypeConverter":I
    move-object/from16 v3, p0

    .local v3, "this_$iv":Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;
    const/4 v4, 0x0

    .line 60
    .local v4, "$i$f$TypeConverter":I
    new-instance v5, Lexpo/modules/kotlin/types/TypeConverterComponent;

    const/4 v6, 0x0

    .line 61
    .local v6, "$i$f$lazyTypeOf":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v7, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$1;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toLazyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 64
    .local v8, "$i$f$toLazyType":I
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const/4 v10, 0x4

    const-string v11, "T"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 66
    const/4 v13, 0x3

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 67
    nop

    .line 64
    invoke-direct {v9, v12, v14, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 68
    nop

    .line 61
    .end local v7    # "$this$toLazyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$toLazyType":I
    nop

    .end local v6    # "$i$f$lazyTypeOf":I
    check-cast v9, Lkotlin/reflect/KType;

    .line 60
    const/4 v6, 0x0

    .line 61
    .restart local v6    # "$i$f$lazyTypeOf":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v7, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$2;->INSTANCE:Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$$inlined$TypeConverter$2;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .restart local v7    # "$this$toLazyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 64
    .restart local v8    # "$i$f$toLazyType":I
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-string v15, "T?"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 66
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 67
    nop

    .line 64
    invoke-direct {v12, v10, v14, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    .line 68
    nop

    .line 61
    .end local v7    # "$this$toLazyType$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$toLazyType":I
    nop

    .end local v6    # "$i$f$lazyTypeOf":I
    check-cast v12, Lkotlin/reflect/KType;

    .line 60
    invoke-direct {v5, v9, v12}, Lexpo/modules/kotlin/types/TypeConverterComponent;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V

    .line 69
    .local v5, "converterComponent$iv":Lexpo/modules/kotlin/types/TypeConverterComponent;
    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->getConvertersComponent()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    nop

    .line 27
    .end local v3    # "this_$iv":Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;
    .end local v4    # "$i$f$TypeConverter":I
    .end local v5    # "converterComponent$iv":Lexpo/modules/kotlin/types/TypeConverterComponent;
    move-object v3, v5

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverterComponent;

    .local v3, "$this$TypeConverter_u24lambda_u241":Lexpo/modules/kotlin/types/TypeConverterComponent;
    const/4 v4, 0x0

    .line 28
    .local v4, "$i$a$-apply-ModuleConvertersBuilder$TypeConverter$1":I
    move-object v6, v3

    .local v6, "this_$iv":Lexpo/modules/kotlin/types/TypeConverterComponent;
    const/4 v7, 0x0

    .line 71
    .local v7, "$i$f$from":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNonNullableConverter()Lkotlin/Lazy;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .local v8, "this_$iv$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    const/4 v9, 0x0

    .line 72
    .local v9, "$i$f$from":I
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v10

    const/4 v12, 0x6

    const-string v13, "P0"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v14, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$1;

    invoke-direct {v14, v0}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    nop

    .line 78
    .end local v8    # "this_$iv$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    .end local v9    # "$i$f$from":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNullableConverter()Lkotlin/Lazy;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .restart local v8    # "this_$iv$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    const/4 v9, 0x0

    .line 72
    .restart local v9    # "$i$f$from":I
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v10

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v12, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$2;

    invoke-direct {v12, v0}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    nop

    .line 79
    .end local v8    # "this_$iv$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    .end local v9    # "$i$f$from":I
    nop

    .line 31
    .end local v6    # "this_$iv":Lexpo/modules/kotlin/types/TypeConverterComponent;
    .end local v7    # "$i$f$from":I
    nop

    .line 27
    .end local v3    # "$this$TypeConverter_u24lambda_u241":Lexpo/modules/kotlin/types/TypeConverterComponent;
    .end local v4    # "$i$a$-apply-ModuleConvertersBuilder$TypeConverter$1":I
    move-object v3, v5

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverterComponent;

    return-object v3
.end method

.method public final buildTypeConverterProvider()Lexpo/modules/kotlin/types/TypeConverterProvider;
    .locals 9

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 36
    nop

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 81
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 82
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lexpo/modules/kotlin/types/TypeConverterComponent;

    .local v7, "it":Lexpo/modules/kotlin/types/TypeConverterComponent;
    const/4 v8, 0x0

    .line 36
    .local v8, "$i$a$-map-ModuleConvertersBuilder$buildTypeConverterProvider$converterMap$1":I
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/TypeConverterComponent;->build()Ljava/util/List;

    move-result-object v7

    .line 82
    .end local v7    # "it":Lexpo/modules/kotlin/types/TypeConverterComponent;
    .end local v8    # "$i$a$-map-ModuleConvertersBuilder$buildTypeConverterProvider$converterMap$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 80
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 37
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 38
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 35
    nop

    .line 39
    .local v0, "converterMap":Ljava/util/Map;
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1;-><init>(Ljava/util/Map;)V

    check-cast v1, Lexpo/modules/kotlin/types/TypeConverterProvider;

    return-object v1
.end method

.method public final getConvertersComponent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "*>;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    return-object v0
.end method

.method public final setConvertersComponent(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->convertersComponent:Ljava/util/List;

    return-void
.end method
