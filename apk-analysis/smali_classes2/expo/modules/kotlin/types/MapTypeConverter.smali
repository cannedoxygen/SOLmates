.class public final Lexpo/modules/kotlin/types/MapTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "MapTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "Ljava/util/Map<",
        "**>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapTypeConverter.kt\nexpo/modules/kotlin/types/MapTypeConverter\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 5 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n+ 6 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 7 DynamicExtenstions.kt\nexpo/modules/kotlin/DynamicExtenstionsKt\n*L\n1#1,75:1\n453#2:76\n403#2:77\n1238#3,2:78\n1241#3:90\n5#4,4:80\n5#4,4:94\n11#5,6:84\n11#5,6:98\n32#6:91\n33#6:105\n7#7,2:92\n10#7:104\n*S KotlinDebug\n*F\n+ 1 MapTypeConverter.kt\nexpo/modules/kotlin/types/MapTypeConverter\n*L\n38#1:76\n38#1:77\n38#1:78,2\n38#1:90\n39#1:80,4\n58#1:94,4\n39#1:84,6\n58#1:98,6\n56#1:91\n56#1:105\n57#1:92,2\n57#1:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\"\u0010\n\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\"\u0010\u000f\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\"\u0010\u0011\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/MapTypeConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "mapType",
        "Lkotlin/reflect/KType;",
        "(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V",
        "valueConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "convertFromAny",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "convertFromReadableMap",
        "jsMap",
        "Lcom/facebook/react/bridge/ReadableMap;",
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
.field private final mapType:Lkotlin/reflect/KType;

.field private final valueConverter:Lexpo/modules/kotlin/types/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
    .locals 4
    .param p1, "converterProvider"    # Lexpo/modules/kotlin/types/TypeConverterProvider;
    .param p2, "mapType"    # Lkotlin/reflect/KType;

    const-string v0, "converterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    .line 17
    nop

    .line 18
    iget-object v0, p0, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-class v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    nop

    .line 23
    nop

    .line 24
    iget-object v0, p0, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 23
    invoke-interface {p1, v1}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/types/MapTypeConverter;->valueConverter:Lexpo/modules/kotlin/types/TypeConverter;

    .line 13
    return-void

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    .local v0, "$i$a$-requireNotNull-MapTypeConverter$valueConverter$1":I
    nop

    .line 24
    .end local v0    # "$i$a$-requireNotNull-MapTypeConverter$valueConverter$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The map type should contain the key type."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-require-MapTypeConverter$1":I
    iget-object v1, p0, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    invoke-interface {v1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The map key type should be String, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .end local v0    # "$i$a$-require-MapTypeConverter$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;)Ljava/util/Map;
    .locals 21
    .param p1, "jsMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 54
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    .line 56
    .local v2, "result":Ljava/util/Map;
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableMap;->getEntryIterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "$this$forEach$iv":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 91
    .local v4, "$i$f$forEach":I
    nop

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v6, 0x0

    .line 56
    .local v6, "$i$a$-forEach-MapTypeConverter$convertFromReadableMap$1":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 57
    .local v8, "value":Ljava/lang/Object;
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, v8}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    move-object v9, v0

    check-cast v9, Lcom/facebook/react/bridge/Dynamic;

    .local v9, "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    const/4 v10, 0x0

    .line 92
    .local v10, "$i$f$recycle":I
    nop

    .line 93
    move-object v11, v9

    .local v11, "$this$convertFromReadableMap_u24lambda_u248_u24lambda_u247":Lcom/facebook/react/bridge/Dynamic;
    const/4 v12, 0x0

    .line 58
    .local v12, "$i$a$-recycle-MapTypeConverter$convertFromReadableMap$1$1":I
    const/4 v13, 0x0

    .line 94
    .local v13, "$i$f$exceptionDecorator":I
    nop

    .line 95
    const/4 v0, 0x0

    .line 61
    .local v0, "$i$a$-exceptionDecorator-MapTypeConverter$convertFromReadableMap$1$1$2":I
    :try_start_0
    iget-object v14, v1, Lexpo/modules/kotlin/types/MapTypeConverter;->valueConverter:Lexpo/modules/kotlin/types/TypeConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v15, p2

    :try_start_1
    invoke-virtual {v14, v11, v15}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v2, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    nop

    .end local v0    # "$i$a$-exceptionDecorator-MapTypeConverter$convertFromReadableMap$1$1$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    nop

    .line 94
    nop

    .line 63
    .end local v13    # "$i$f$exceptionDecorator":I
    nop

    .end local v11    # "$this$convertFromReadableMap_u24lambda_u248_u24lambda_u247":Lcom/facebook/react/bridge/Dynamic;
    .end local v12    # "$i$a$-recycle-MapTypeConverter$convertFromReadableMap$1$1":I
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    nop

    .line 104
    invoke-interface {v9}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 93
    nop

    .line 64
    .end local v9    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v10    # "$i$f$recycle":I
    nop

    .line 91
    .end local v6    # "$i$a$-forEach-MapTypeConverter$convertFromReadableMap$1":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 104
    .restart local v5    # "element$iv":Ljava/lang/Object;
    .restart local v6    # "$i$a$-forEach-MapTypeConverter$convertFromReadableMap$1":I
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v10    # "$i$f$recycle":I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    goto/16 :goto_3

    .line 96
    .restart local v11    # "$this$convertFromReadableMap_u24lambda_u248_u24lambda_u247":Lcom/facebook/react/bridge/Dynamic;
    .restart local v12    # "$i$a$-recycle-MapTypeConverter$convertFromReadableMap$1$1":I
    .restart local v13    # "$i$f$exceptionDecorator":I
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v15, p2

    .line 97
    .local v0, "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v14, v0

    .local v14, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/16 v16, 0x0

    .line 98
    .local v16, "$i$f$toCodedException":I
    nop

    .line 99
    nop

    .line 100
    move-object/from16 v17, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .local v17, "e$iv":Ljava/lang/Throwable;
    :try_start_3
    instance-of v0, v14, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v0, :cond_1

    .line 101
    instance-of v0, v14, Lexpo/modules/core/errors/CodedException;

    if-eqz v0, :cond_0

    new-instance v0, Lexpo/modules/kotlin/exception/CodedException;

    move-object/from16 v18, v14

    check-cast v18, Lexpo/modules/core/errors/CodedException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v19, v3

    .end local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .local v19, "$this$forEach$iv":Ljava/util/Iterator;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move/from16 v18, v4

    .end local v4    # "$i$f$forEach":I
    .local v18, "$i$f$forEach":I
    :try_start_5
    const-string v4, "getCode(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v20, v5

    .end local v5    # "element$iv":Ljava/lang/Object;
    .local v20, "element$iv":Ljava/lang/Object;
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 104
    .end local v11    # "$this$convertFromReadableMap_u24lambda_u248_u24lambda_u247":Lcom/facebook/react/bridge/Dynamic;
    .end local v12    # "$i$a$-recycle-MapTypeConverter$convertFromReadableMap$1$1":I
    .end local v13    # "$i$f$exceptionDecorator":I
    .end local v14    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v16    # "$i$f$toCodedException":I
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .end local v20    # "element$iv":Ljava/lang/Object;
    .restart local v5    # "element$iv":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v5

    .end local v5    # "element$iv":Ljava/lang/Object;
    .restart local v20    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .end local v18    # "$i$f$forEach":I
    .end local v20    # "element$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$forEach":I
    .restart local v5    # "element$iv":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v20, v5

    .end local v4    # "$i$f$forEach":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$forEach":I
    .restart local v20    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 102
    .end local v18    # "$i$f$forEach":I
    .end local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v20    # "element$iv":Ljava/lang/Object;
    .restart local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v4    # "$i$f$forEach":I
    .restart local v5    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "$this$convertFromReadableMap_u24lambda_u248_u24lambda_u247":Lcom/facebook/react/bridge/Dynamic;
    .restart local v12    # "$i$a$-recycle-MapTypeConverter$convertFromReadableMap$1$1":I
    .restart local v13    # "$i$f$exceptionDecorator":I
    .restart local v14    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .restart local v16    # "$i$f$toCodedException":I
    .restart local v17    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    move-object/from16 v19, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    .end local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$forEach":I
    .restart local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v20    # "element$iv":Ljava/lang/Object;
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v14}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 100
    .end local v18    # "$i$f$forEach":I
    .end local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v20    # "element$iv":Ljava/lang/Object;
    .restart local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v4    # "$i$f$forEach":I
    .restart local v5    # "element$iv":Ljava/lang/Object;
    :cond_1
    move-object/from16 v19, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    .end local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$forEach":I
    .restart local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v20    # "element$iv":Ljava/lang/Object;
    move-object v0, v14

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    .line 103
    :goto_2
    nop

    .line 97
    .end local v14    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v16    # "$i$f$toCodedException":I
    nop

    .local v0, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v3, 0x0

    .line 59
    .local v3, "$i$a$-exceptionDecorator-MapTypeConverter$convertFromReadableMap$1$1$1":I
    new-instance v4, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    iget-object v5, v1, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    iget-object v14, v1, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    invoke-interface {v14}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v14

    const/4 v1, 0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v14

    invoke-direct {v4, v5, v1, v14, v0}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lcom/facebook/react/bridge/ReadableType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 97
    .end local v0    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v3    # "$i$a$-exceptionDecorator-MapTypeConverter$convertFromReadableMap$1$1$1":I
    nop

    .end local v2    # "result":Ljava/util/Map;
    .end local v6    # "$i$a$-forEach-MapTypeConverter$convertFromReadableMap$1":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v10    # "$i$f$recycle":I
    .end local v18    # "$i$f$forEach":I
    .end local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v20    # "element$iv":Ljava/lang/Object;
    .end local p1    # "jsMap":Lcom/facebook/react/bridge/ReadableMap;
    .end local p2    # "context":Lexpo/modules/kotlin/AppContext;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 104
    .end local v11    # "$this$convertFromReadableMap_u24lambda_u248_u24lambda_u247":Lcom/facebook/react/bridge/Dynamic;
    .end local v12    # "$i$a$-recycle-MapTypeConverter$convertFromReadableMap$1$1":I
    .end local v13    # "$i$f$exceptionDecorator":I
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .restart local v2    # "result":Ljava/util/Map;
    .restart local v6    # "$i$a$-forEach-MapTypeConverter$convertFromReadableMap$1":I
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v10    # "$i$f$recycle":I
    .restart local v18    # "$i$f$forEach":I
    .restart local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v20    # "element$iv":Ljava/lang/Object;
    .restart local p1    # "jsMap":Lcom/facebook/react/bridge/ReadableMap;
    .restart local p2    # "context":Lexpo/modules/kotlin/AppContext;
    :catchall_5
    move-exception v0

    goto :goto_3

    .end local v18    # "$i$f$forEach":I
    .end local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v20    # "element$iv":Ljava/lang/Object;
    .local v3, "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v4    # "$i$f$forEach":I
    .restart local v5    # "element$iv":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    .end local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$forEach":I
    .restart local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v20    # "element$iv":Ljava/lang/Object;
    :goto_3
    invoke-interface {v9}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    throw v0

    .line 105
    .end local v6    # "$i$a$-forEach-MapTypeConverter$convertFromReadableMap$1":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v10    # "$i$f$recycle":I
    .end local v18    # "$i$f$forEach":I
    .end local v19    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v20    # "element$iv":Ljava/lang/Object;
    .restart local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v4    # "$i$f$forEach":I
    :cond_2
    nop

    .line 66
    .end local v3    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v4    # "$i$f$forEach":I
    return-object v2
.end method


# virtual methods
.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 13
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/MapTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/util/Map;
    .locals 19
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "value"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, v1, Lexpo/modules/kotlin/types/MapTypeConverter;->valueConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    goto/16 :goto_3

    .line 38
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    .local v3, "$this$mapValues$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 76
    .local v4, "$i$f$mapValues":I
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .local v5, "destination$iv$iv":Ljava/util/Map;
    move-object v6, v3

    .local v6, "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 77
    .local v7, "$i$f$mapValuesTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 78
    .local v9, "$i$f$associateByTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 79
    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "it$iv$iv":Ljava/util/Map$Entry;
    const/4 v12, 0x0

    .line 77
    .local v12, "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 79
    .end local v11    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v12    # "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    move-object v12, v10

    check-cast v12, Ljava/util/Map$Entry;

    const/4 v13, 0x0

    .line 38
    .local v13, "$i$a$-mapValues-MapTypeConverter$convertFromAny$1":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 39
    .local v12, "v":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 80
    .local v14, "$i$f$exceptionDecorator":I
    nop

    .line 81
    const/4 v15, 0x0

    .line 47
    .local v15, "$i$a$-exceptionDecorator-MapTypeConverter$convertFromAny$1$2":I
    move-object/from16 v16, v0

    :try_start_0
    iget-object v0, v1, Lexpo/modules/kotlin/types/MapTypeConverter;->valueConverter:Lexpo/modules/kotlin/types/TypeConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p2

    :try_start_1
    invoke-virtual {v0, v12, v2}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v15    # "$i$a$-exceptionDecorator-MapTypeConverter$convertFromAny$1$2":I
    nop

    .line 80
    nop

    .line 39
    .end local v14    # "$i$f$exceptionDecorator":I
    nop

    .line 79
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "$i$a$-mapValues-MapTypeConverter$convertFromAny$1":I
    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    goto :goto_0

    .line 82
    .restart local v12    # "v":Ljava/lang/Object;
    .restart local v13    # "$i$a$-mapValues-MapTypeConverter$convertFromAny$1":I
    .restart local v14    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v2, p2

    .line 83
    .local v0, "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v11, v0

    .local v11, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v15, 0x0

    .line 84
    .local v15, "$i$f$toCodedException":I
    nop

    .line 85
    nop

    .line 86
    move-object/from16 v16, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .local v16, "e$iv":Ljava/lang/Throwable;
    instance-of v0, v11, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v0, :cond_2

    .line 87
    instance-of v0, v11, Lexpo/modules/core/errors/CodedException;

    if-eqz v0, :cond_1

    new-instance v0, Lexpo/modules/kotlin/exception/CodedException;

    move-object/from16 v17, v11

    check-cast v17, Lexpo/modules/core/errors/CodedException;

    invoke-virtual/range {v17 .. v17}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v3

    .end local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .local v17, "$this$mapValues$iv":Ljava/util/Map;
    const-string v3, "getCode(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    move/from16 v18, v4

    .end local v4    # "$i$f$mapValues":I
    .local v18, "$i$f$mapValues":I
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 88
    .end local v17    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v18    # "$i$f$mapValues":I
    .restart local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .restart local v4    # "$i$f$mapValues":I
    :cond_1
    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapValues":I
    .restart local v17    # "$this$mapValues$iv":Ljava/util/Map;
    .restart local v18    # "$i$f$mapValues":I
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v11}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 86
    .end local v17    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v18    # "$i$f$mapValues":I
    .restart local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .restart local v4    # "$i$f$mapValues":I
    :cond_2
    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapValues":I
    .restart local v17    # "$this$mapValues$iv":Ljava/util/Map;
    .restart local v18    # "$i$f$mapValues":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    .line 89
    :goto_2
    nop

    .line 83
    .end local v11    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$f$toCodedException":I
    nop

    .local v0, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-exceptionDecorator-MapTypeConverter$convertFromAny$1$1":I
    new-instance v3, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    .line 41
    iget-object v4, v1, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    .line 42
    iget-object v11, v1, Lexpo/modules/kotlin/types/MapTypeConverter;->mapType:Lkotlin/reflect/KType;

    invoke-interface {v11}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v11

    const/4 v15, 0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v11}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 44
    nop

    .line 40
    invoke-direct {v3, v4, v11, v15, v0}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lkotlin/reflect/KClass;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 83
    .end local v0    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v2    # "$i$a$-exceptionDecorator-MapTypeConverter$convertFromAny$1$1":I
    throw v3

    .line 90
    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "$i$a$-mapValues-MapTypeConverter$convertFromAny$1":I
    .end local v14    # "$i$f$exceptionDecorator":I
    .end local v16    # "e$iv":Ljava/lang/Throwable;
    .end local v17    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v18    # "$i$f$mapValues":I
    .restart local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .restart local v4    # "$i$f$mapValues":I
    :cond_3
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 77
    .end local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapValues":I
    .end local v8    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$associateByTo":I
    .restart local v17    # "$this$mapValues$iv":Ljava/util/Map;
    .restart local v18    # "$i$f$mapValues":I
    nop

    .line 76
    .end local v5    # "destination$iv$iv":Ljava/util/Map;
    .end local v6    # "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapValuesTo":I
    move-object v0, v5

    .line 35
    .end local v17    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v18    # "$i$f$mapValues":I
    :goto_3
    return-object v0
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 13
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/MapTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/util/Map;
    .locals 2
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Dynamic;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 31
    .local v0, "jsMap":Lcom/facebook/react/bridge/ReadableMap;
    invoke-direct {p0, v0, p2}, Lexpo/modules/kotlin/types/MapTypeConverter;->convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 2

    .line 69
    sget-object v0, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    .line 70
    iget-object v1, p0, Lexpo/modules/kotlin/types/MapTypeConverter;->valueConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/TypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forMap(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lexpo/modules/kotlin/types/MapTypeConverter;->valueConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    return v0
.end method
