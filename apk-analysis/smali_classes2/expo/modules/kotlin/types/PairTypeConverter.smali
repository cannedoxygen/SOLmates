.class public final Lexpo/modules/kotlin/types/PairTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "PairTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "Lkotlin/Pair<",
        "**>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairTypeConverter.kt\nexpo/modules/kotlin/types/PairTypeConverter\n+ 2 DynamicExtenstions.kt\nexpo/modules/kotlin/DynamicExtenstionsKt\n+ 3 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 4 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,67:1\n7#2,2:68\n10#2:80\n5#3,4:70\n11#4,6:74\n*S KotlinDebug\n*F\n+ 1 PairTypeConverter.kt\nexpo/modules/kotlin/types/PairTypeConverter\n*L\n52#1:68,2\n52#1:80\n53#1:70,4\n53#1:74,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J$\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\"\u0010\u0013\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\"\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0014\u001a\u00020\u00162\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\"\u0010\u0017\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0018\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/PairTypeConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "Lkotlin/Pair;",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "pairType",
        "Lkotlin/reflect/KType;",
        "(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V",
        "converters",
        "",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "",
        "convertElement",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "array",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "index",
        "",
        "convertFromAny",
        "value",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "convertFromReadableArray",
        "jsArray",
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
.field private final converters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pairType:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
    .locals 4
    .param p1, "converterProvider"    # Lexpo/modules/kotlin/types/TypeConverterProvider;
    .param p2, "pairType"    # Lkotlin/reflect/KType;

    const-string v0, "converterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    .line 16
    iput-object p2, p0, Lexpo/modules/kotlin/types/PairTypeConverter;->pairType:Lkotlin/reflect/KType;

    .line 18
    nop

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lexpo/modules/kotlin/types/TypeConverter;

    .line 20
    iget-object v1, p0, Lexpo/modules/kotlin/types/PairTypeConverter;->pairType:Lkotlin/reflect/KType;

    invoke-interface {v1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 19
    invoke-interface {p1, v1}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v1

    aput-object v1, v0, v2

    .line 24
    nop

    .line 25
    iget-object v1, p0, Lexpo/modules/kotlin/types/PairTypeConverter;->pairType:Lkotlin/reflect/KType;

    invoke-interface {v1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    .line 24
    invoke-interface {p1, v3}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v1

    aput-object v1, v0, v2

    .line 19
    nop

    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/types/PairTypeConverter;->converters:Ljava/util/List;

    .line 14
    return-void

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    .local v0, "$i$a$-requireNotNull-PairTypeConverter$converters$2":I
    nop

    .line 25
    .end local v0    # "$i$a$-requireNotNull-PairTypeConverter$converters$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pair type should contain the type of the second parameter."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    const/4 v0, 0x0

    .line 21
    .local v0, "$i$a$-requireNotNull-PairTypeConverter$converters$1":I
    nop

    .line 20
    .end local v0    # "$i$a$-requireNotNull-PairTypeConverter$converters$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pair type should contain the type of the first parameter."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final convertElement(Lexpo/modules/kotlin/AppContext;Lcom/facebook/react/bridge/ReadableArray;I)Ljava/lang/Object;
    .locals 12
    .param p1, "context"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "array"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "index"    # I

    .line 52
    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/ReadableArray;->getDynamic(I)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v0

    .local v0, "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$f$recycle":I
    nop

    .line 69
    move-object v2, v0

    .local v2, "$this$convertElement_u24lambda_u244":Lcom/facebook/react/bridge/Dynamic;
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-recycle-PairTypeConverter$convertElement$1":I
    const/4 v4, 0x0

    .line 70
    .local v4, "$i$f$exceptionDecorator":I
    nop

    .line 71
    const/4 v5, 0x0

    .line 56
    .local v5, "$i$a$-exceptionDecorator-PairTypeConverter$convertElement$1$2":I
    :try_start_0
    iget-object v6, p0, Lexpo/modules/kotlin/types/PairTypeConverter;->converters:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v6, v2, p1}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v5    # "$i$a$-exceptionDecorator-PairTypeConverter$convertElement$1$2":I
    nop

    .line 70
    nop

    .line 53
    .end local v4    # "$i$f$exceptionDecorator":I
    nop

    .line 69
    .end local v2    # "$this$convertElement_u24lambda_u244":Lcom/facebook/react/bridge/Dynamic;
    .end local v3    # "$i$a$-recycle-PairTypeConverter$convertElement$1":I
    nop

    .line 80
    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 69
    nop

    .line 52
    .end local v0    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v1    # "$i$f$recycle":I
    return-object v6

    .line 72
    .restart local v0    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v1    # "$i$f$recycle":I
    .restart local v2    # "$this$convertElement_u24lambda_u244":Lcom/facebook/react/bridge/Dynamic;
    .restart local v3    # "$i$a$-recycle-PairTypeConverter$convertElement$1":I
    .restart local v4    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v5

    .line 73
    .local v5, "e$iv":Ljava/lang/Throwable;
    move-object v6, v5

    .local v6, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 74
    .local v7, "$i$f$toCodedException":I
    nop

    .line 75
    nop

    .line 76
    :try_start_1
    instance-of v8, v6, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v8, :cond_1

    .line 77
    instance-of v8, v6, Lexpo/modules/core/errors/CodedException;

    if-eqz v8, :cond_0

    new-instance v8, Lexpo/modules/kotlin/exception/CodedException;

    move-object v9, v6

    check-cast v9, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v9}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getCode(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v8, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v8, v6}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v8, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 76
    :cond_1
    move-object v8, v6

    check-cast v8, Lexpo/modules/kotlin/exception/CodedException;

    .line 79
    :goto_0
    nop

    .line 73
    .end local v6    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$i$f$toCodedException":I
    move-object v6, v8

    .local v6, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v7, 0x0

    .line 54
    .local v7, "$i$a$-exceptionDecorator-PairTypeConverter$convertElement$1$1":I
    new-instance v8, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    iget-object v9, p0, Lexpo/modules/kotlin/types/PairTypeConverter;->pairType:Lkotlin/reflect/KType;

    iget-object v10, p0, Lexpo/modules/kotlin/types/PairTypeConverter;->pairType:Lkotlin/reflect/KType;

    invoke-interface {v10}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v10}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v6}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lcom/facebook/react/bridge/ReadableType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v8, Ljava/lang/Throwable;

    .line 73
    .end local v6    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v7    # "$i$a$-exceptionDecorator-PairTypeConverter$convertElement$1$1":I
    nop

    .end local v0    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v1    # "$i$f$recycle":I
    .end local p1    # "context":Lexpo/modules/kotlin/AppContext;
    .end local p2    # "array":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "index":I
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .end local v2    # "$this$convertElement_u24lambda_u244":Lcom/facebook/react/bridge/Dynamic;
    .end local v3    # "$i$a$-recycle-PairTypeConverter$convertElement$1":I
    .end local v4    # "$i$f$exceptionDecorator":I
    .end local v5    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v1    # "$i$f$recycle":I
    .restart local p1    # "context":Lexpo/modules/kotlin/AppContext;
    .restart local p2    # "array":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "index":I
    :catchall_1
    move-exception v2

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    throw v2
.end method

.method private final convertFromReadableArray(Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/AppContext;)Lkotlin/Pair;
    .locals 3
    .param p1, "jsArray"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Lkotlin/Pair<",
            "**>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lkotlin/Pair;

    .line 46
    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Lexpo/modules/kotlin/types/PairTypeConverter;->convertElement(Lexpo/modules/kotlin/AppContext;Lcom/facebook/react/bridge/ReadableArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 47
    const/4 v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lexpo/modules/kotlin/types/PairTypeConverter;->convertElement(Lexpo/modules/kotlin/AppContext;Lcom/facebook/react/bridge/ReadableArray;I)Ljava/lang/Object;

    move-result-object v2

    .line 45
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 14
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/PairTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lkotlin/Pair;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Lkotlin/Pair<",
            "**>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, v0, p2}, Lexpo/modules/kotlin/types/PairTypeConverter;->convertFromReadableArray(Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/AppContext;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 14
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/PairTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Lkotlin/Pair;
    .locals 2
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Dynamic;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Lkotlin/Pair<",
            "**>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 33
    .local v0, "jsArray":Lcom/facebook/react/bridge/ReadableArray;
    invoke-direct {p0, v0, p2}, Lexpo/modules/kotlin/types/PairTypeConverter;->convertFromReadableArray(Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/AppContext;)Lkotlin/Pair;

    move-result-object v1

    return-object v1
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 6

    .line 61
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [Lexpo/modules/kotlin/jni/SingleType;

    new-instance v2, Lexpo/modules/kotlin/jni/SingleType;

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->READABLE_ARRAY:Lexpo/modules/kotlin/jni/CppType;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5, v4}, Lexpo/modules/kotlin/jni/SingleType;-><init>(Lexpo/modules/kotlin/jni/CppType;[Lexpo/modules/kotlin/jni/ExpectedType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 61
    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/SingleType;)V

    .line 63
    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method
