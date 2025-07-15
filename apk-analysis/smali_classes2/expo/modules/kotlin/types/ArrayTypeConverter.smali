.class public final Lexpo/modules/kotlin/types/ArrayTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "ArrayTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayTypeConverter.kt\nexpo/modules/kotlin/types/ArrayTypeConverter\n+ 2 DynamicExtenstions.kt\nexpo/modules/kotlin/DynamicExtenstionsKt\n+ 3 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 4 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,77:1\n7#2,2:78\n10#2:90\n5#3,4:80\n5#3,4:94\n11#4,6:84\n11#4,6:98\n11065#5:91\n11400#5,2:92\n11402#5:104\n37#6,2:105\n*S KotlinDebug\n*F\n+ 1 ArrayTypeConverter.kt\nexpo/modules/kotlin/types/ArrayTypeConverter\n*L\n28#1:78,2\n28#1:90\n29#1:80,4\n44#1:94,4\n29#1:84,6\n44#1:98,6\n43#1:91\n43#1:92,2\n43#1:104\n54#1:105,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J#\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fJ#\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0002\u0010\u0012J\u001d\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0012\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ArrayTypeConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "arrayType",
        "Lkotlin/reflect/KType;",
        "(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V",
        "arrayElementConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "convertFromAny",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;",
        "createTypedArray",
        "size",
        "",
        "(I)[Ljava/lang/Object;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
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
.field private final arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation
.end field

.field private final arrayType:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
    .locals 2
    .param p1, "converterProvider"    # Lexpo/modules/kotlin/types/TypeConverterProvider;
    .param p2, "arrayType"    # Lkotlin/reflect/KType;

    const-string v0, "converterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arrayType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    .line 16
    nop

    .line 17
    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p1, v0}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    .line 12
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .local v0, "$i$a$-requireNotNull-ArrayTypeConverter$arrayElementConverter$1":I
    nop

    .line 17
    .end local v0    # "$i$a$-requireNotNull-ArrayTypeConverter$arrayElementConverter$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array type should contain the type of the elements."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createTypedArray(I)[Ljava/lang/Object;
    .locals 2
    .param p1, "size"    # I

    .line 67
    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    nop

    .line 66
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 66
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 12
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/ArrayTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;
    .locals 19
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "value"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, v1, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v8, p2

    goto/16 :goto_3

    .line 43
    :cond_0
    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    .local v3, "$this$map$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 91
    .local v4, "$i$f$map":I
    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 92
    .local v7, "$i$f$mapTo":I
    array-length v0, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v0, :cond_3

    aget-object v10, v6, v9

    .line 93
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 44
    .local v12, "$i$a$-map-ArrayTypeConverter$convertFromAny$1":I
    const/4 v13, 0x0

    .line 94
    .local v13, "$i$f$exceptionDecorator":I
    nop

    .line 95
    const/4 v14, 0x0

    .line 52
    .local v14, "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromAny$1$2":I
    :try_start_0
    iget-object v15, v1, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, p2

    :try_start_1
    invoke-virtual {v15, v11, v8}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v14    # "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromAny$1$2":I
    nop

    .line 94
    nop

    .line 44
    .end local v13    # "$i$f$exceptionDecorator":I
    nop

    .line 93
    .end local v11    # "it":Ljava/lang/Object;
    .end local v12    # "$i$a$-map-ArrayTypeConverter$convertFromAny$1":I
    invoke-interface {v5, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 96
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    .restart local v11    # "it":Ljava/lang/Object;
    .restart local v12    # "$i$a$-map-ArrayTypeConverter$convertFromAny$1":I
    .restart local v13    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v8, p2

    .line 97
    .local v0, "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v9, v0

    .local v9, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 98
    .local v14, "$i$f$toCodedException":I
    nop

    .line 99
    nop

    .line 100
    instance-of v15, v9, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v15, :cond_2

    .line 101
    instance-of v15, v9, Lexpo/modules/core/errors/CodedException;

    if-eqz v15, :cond_1

    new-instance v15, Lexpo/modules/kotlin/exception/CodedException;

    move-object/from16 v16, v9

    check-cast v16, Lexpo/modules/core/errors/CodedException;

    move-object/from16 v17, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .local v17, "e$iv":Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getCode(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v3

    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .local v18, "$this$map$iv":[Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v15, v0, v2, v3}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 102
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .end local v18    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "$this$map$iv":[Ljava/lang/Object;
    :cond_1
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v17    # "e$iv":Ljava/lang/Throwable;
    .restart local v18    # "$this$map$iv":[Ljava/lang/Object;
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v9}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object v15, v0

    check-cast v15, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 100
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .end local v18    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "$this$map$iv":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v17    # "e$iv":Ljava/lang/Throwable;
    .restart local v18    # "$this$map$iv":[Ljava/lang/Object;
    move-object v15, v9

    check-cast v15, Lexpo/modules/kotlin/exception/CodedException;

    .line 103
    :goto_2
    nop

    .line 97
    .end local v9    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v14    # "$i$f$toCodedException":I
    move-object v0, v15

    .local v0, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromAny$1$1":I
    new-instance v3, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    .line 46
    iget-object v9, v1, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    .line 47
    iget-object v14, v1, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    invoke-interface {v14}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v14}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 49
    nop

    .line 45
    invoke-direct {v3, v9, v14, v15, v0}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lkotlin/reflect/KClass;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 97
    .end local v0    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v2    # "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromAny$1$1":I
    throw v3

    .line 104
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it":Ljava/lang/Object;
    .end local v12    # "$i$a$-map-ArrayTypeConverter$convertFromAny$1":I
    .end local v13    # "$i$f$exceptionDecorator":I
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .end local v18    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v3    # "$this$map$iv":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v8, p2

    move-object/from16 v18, v3

    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$mapTo":I
    .restart local v18    # "$this$map$iv":[Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 91
    nop

    .end local v4    # "$i$f$map":I
    .end local v18    # "$this$map$iv":[Ljava/lang/Object;
    check-cast v0, Ljava/util/Collection;

    .line 54
    nop

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 105
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v0

    .line 106
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 40
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    :goto_3
    return-object v0
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 12
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/ArrayTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)[Ljava/lang/Object;
    .locals 17
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    move-object/from16 v1, p0

    const-string v0, "value"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 24
    .local v3, "jsArray":Lcom/facebook/react/bridge/ReadableArray;
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/types/ArrayTypeConverter;->createTypedArray(I)[Ljava/lang/Object;

    move-result-object v4

    .line 25
    .local v4, "array":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 26
    nop

    .line 27
    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/ReadableArray;->getDynamic(I)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v0

    .line 28
    move-object v7, v0

    .local v7, "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    const/4 v8, 0x0

    .line 78
    .local v8, "$i$f$recycle":I
    nop

    .line 79
    move-object v9, v7

    .local v9, "$this$convertFromDynamic_u24lambda_u243":Lcom/facebook/react/bridge/Dynamic;
    const/4 v10, 0x0

    .line 29
    .local v10, "$i$a$-recycle-ArrayTypeConverter$convertFromDynamic$1":I
    const/4 v11, 0x0

    .line 80
    .local v11, "$i$f$exceptionDecorator":I
    nop

    .line 81
    const/4 v0, 0x0

    .line 32
    .local v0, "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromDynamic$1$2":I
    :try_start_0
    iget-object v12, v1, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v13, p2

    :try_start_1
    invoke-virtual {v12, v9, v13}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v0    # "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromDynamic$1$2":I
    nop

    .line 80
    nop

    .line 29
    .end local v11    # "$i$f$exceptionDecorator":I
    nop

    .line 79
    .end local v9    # "$this$convertFromDynamic_u24lambda_u243":Lcom/facebook/react/bridge/Dynamic;
    .end local v10    # "$i$a$-recycle-ArrayTypeConverter$convertFromDynamic$1":I
    nop

    .line 90
    invoke-interface {v7}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 79
    nop

    .line 90
    .end local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v8    # "$i$f$recycle":I
    aput-object v12, v4, v6

    .line 25
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .restart local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v8    # "$i$f$recycle":I
    .restart local v9    # "$this$convertFromDynamic_u24lambda_u243":Lcom/facebook/react/bridge/Dynamic;
    .restart local v10    # "$i$a$-recycle-ArrayTypeConverter$convertFromDynamic$1":I
    .restart local v11    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v13, p2

    .line 83
    .local v0, "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v5, v0

    .local v5, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 84
    .local v12, "$i$f$toCodedException":I
    nop

    .line 85
    nop

    .line 86
    :try_start_2
    instance-of v14, v5, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v14, :cond_1

    .line 87
    instance-of v14, v5, Lexpo/modules/core/errors/CodedException;

    if-eqz v14, :cond_0

    new-instance v14, Lexpo/modules/kotlin/exception/CodedException;

    move-object v15, v5

    check-cast v15, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v15}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .local v16, "e$iv":Ljava/lang/Throwable;
    const-string v0, "getCode(...)"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v14, v15, v0, v2}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 88
    .end local v16    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    move-object/from16 v16, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v16    # "e$iv":Ljava/lang/Throwable;
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v5}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object v14, v0

    check-cast v14, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 86
    .end local v16    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v16    # "e$iv":Ljava/lang/Throwable;
    move-object v14, v5

    check-cast v14, Lexpo/modules/kotlin/exception/CodedException;

    .line 89
    :goto_2
    nop

    .line 83
    .end local v5    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$i$f$toCodedException":I
    move-object v0, v14

    .local v0, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromDynamic$1$1":I
    new-instance v5, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    iget-object v12, v1, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    iget-object v14, v1, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayType:Lkotlin/reflect/KType;

    invoke-interface {v14}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v14}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v15

    invoke-direct {v5, v12, v14, v15, v0}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lcom/facebook/react/bridge/ReadableType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v5, Ljava/lang/Throwable;

    .line 83
    .end local v0    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v2    # "$i$a$-exceptionDecorator-ArrayTypeConverter$convertFromDynamic$1$1":I
    nop

    .end local v3    # "jsArray":Lcom/facebook/react/bridge/ReadableArray;
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v6    # "i":I
    .end local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v8    # "$i$f$recycle":I
    .end local p1    # "value":Lcom/facebook/react/bridge/Dynamic;
    .end local p2    # "context":Lexpo/modules/kotlin/AppContext;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    .end local v9    # "$this$convertFromDynamic_u24lambda_u243":Lcom/facebook/react/bridge/Dynamic;
    .end local v10    # "$i$a$-recycle-ArrayTypeConverter$convertFromDynamic$1":I
    .end local v11    # "$i$f$exceptionDecorator":I
    .end local v16    # "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "jsArray":Lcom/facebook/react/bridge/ReadableArray;
    .restart local v4    # "array":[Ljava/lang/Object;
    .restart local v6    # "i":I
    .restart local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v8    # "$i$f$recycle":I
    .restart local p1    # "value":Lcom/facebook/react/bridge/Dynamic;
    .restart local p2    # "context":Lexpo/modules/kotlin/AppContext;
    :catchall_2
    move-exception v0

    invoke-interface {v7}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    throw v0

    .line 25
    .end local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v8    # "$i$f$recycle":I
    :cond_2
    move-object/from16 v13, p2

    .line 36
    .end local v6    # "i":I
    return-object v4
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 2

    .line 73
    sget-object v0, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    iget-object v1, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/TypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forPrimitiveArray(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lexpo/modules/kotlin/types/ArrayTypeConverter;->arrayElementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    return v0
.end method
