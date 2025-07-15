.class public final Lexpo/modules/kotlin/types/EitherTypeConverterKt;
.super Ljava/lang/Object;
.source "EitherTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEitherTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EitherTypeConverter.kt\nexpo/modules/kotlin/types/EitherTypeConverterKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1549#2:200\n1620#2,3:201\n*S KotlinDebug\n*F\n+ 1 EitherTypeConverter.kt\nexpo/modules/kotlin/types/EitherTypeConverterKt\n*L\n49#1:200\n49#1:201,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002\u001aL\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u001c\u0010\u000e\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u000f0\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\rH\u0002\u001a(\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00072\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "createDeferredValue",
        "Lexpo/modules/kotlin/types/DeferredValue;",
        "value",
        "",
        "wasConverted",
        "",
        "typeConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "expectedType",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "createDeferredValues",
        "",
        "list",
        "Lkotlin/Pair;",
        "typeList",
        "Lkotlin/reflect/KType;",
        "tryToConvert",
        "expo-modules-core_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$createDeferredValues(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "context"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "typeList"    # Ljava/util/List;

    .line 1
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/kotlin/types/EitherTypeConverterKt;->createDeferredValues(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final createDeferredValue(Ljava/lang/Object;ZLexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/types/DeferredValue;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "wasConverted"    # Z
    .param p2, "typeConverter"    # Lexpo/modules/kotlin/types/TypeConverter;
    .param p3, "expectedType"    # Lexpo/modules/kotlin/jni/ExpectedType;
    .param p4, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;",
            "Lexpo/modules/kotlin/jni/ExpectedType;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Lexpo/modules/kotlin/types/DeferredValue;"
        }
    .end annotation

    .line 16
    invoke-virtual {p3}, Lexpo/modules/kotlin/jni/ExpectedType;->getPossibleTypes()[Lexpo/modules/kotlin/jni/SingleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 17
    .local v3, "type":Lexpo/modules/kotlin/jni/SingleType;
    if-eqz p1, :cond_0

    .line 18
    new-instance v0, Lexpo/modules/kotlin/types/UnconvertedValue;

    invoke-direct {v0, p0, p2, p4}, Lexpo/modules/kotlin/types/UnconvertedValue;-><init>(Ljava/lang/Object;Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/AppContext;)V

    check-cast v0, Lexpo/modules/kotlin/types/DeferredValue;

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/SingleType;->getExpectedCppType$expo_modules_core_debug()Lexpo/modules/kotlin/jni/CppType;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/jni/CppType;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4, p0}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, p0, Lcom/facebook/react/bridge/Dynamic;

    if-eqz v4, :cond_2

    .line 22
    :cond_1
    invoke-static {p2, p0, p4}, Lexpo/modules/kotlin/types/EitherTypeConverterKt;->tryToConvert(Lexpo/modules/kotlin/types/TypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 16
    .end local v3    # "type":Lexpo/modules/kotlin/jni/SingleType;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    .restart local v3    # "type":Lexpo/modules/kotlin/jni/SingleType;
    :cond_3
    move-object v0, v4

    .line 23
    .local v0, "convertedValue":Ljava/lang/Object;
    new-instance v1, Lexpo/modules/kotlin/types/ConvertedValue;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/types/ConvertedValue;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lexpo/modules/kotlin/types/DeferredValue;

    return-object v1

    .line 27
    .end local v0    # "convertedValue":Ljava/lang/Object;
    .end local v3    # "type":Lexpo/modules/kotlin/jni/SingleType;
    :cond_4
    sget-object v0, Lexpo/modules/kotlin/types/IncompatibleValue;->INSTANCE:Lexpo/modules/kotlin/types/IncompatibleValue;

    check-cast v0, Lexpo/modules/kotlin/types/DeferredValue;

    return-object v0
.end method

.method private static final createDeferredValues(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 22
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "context"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "typeList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Lexpo/modules/kotlin/jni/ExpectedType;",
            "+",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;)",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/types/DeferredValue;",
            ">;"
        }
    .end annotation

    .line 48
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 49
    .local v1, "wasConverted":Z
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 200
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 201
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 202
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/Pair;

    const/4 v10, 0x0

    .line 49
    .local v10, "$i$a$-map-EitherTypeConverterKt$createDeferredValues$result$1":I
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/jni/ExpectedType;

    .local v11, "expectedType":Lexpo/modules/kotlin/jni/ExpectedType;
    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/TypeConverter;

    .line 50
    .local v9, "converter":Lexpo/modules/kotlin/types/TypeConverter;
    move-object/from16 v12, p1

    invoke-static {v0, v1, v9, v11, v12}, Lexpo/modules/kotlin/types/EitherTypeConverterKt;->createDeferredValue(Ljava/lang/Object;ZLexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/types/DeferredValue;

    move-result-object v13

    .line 51
    .local v13, "deferredValue":Lexpo/modules/kotlin/types/DeferredValue;
    instance-of v14, v13, Lexpo/modules/kotlin/types/ConvertedValue;

    if-eqz v14, :cond_0

    .line 52
    const/4 v1, 0x1

    .line 55
    :cond_0
    nop

    .line 202
    .end local v9    # "converter":Lexpo/modules/kotlin/types/TypeConverter;
    .end local v10    # "$i$a$-map-EitherTypeConverterKt$createDeferredValues$result$1":I
    .end local v11    # "expectedType":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v13    # "deferredValue":Lexpo/modules/kotlin/types/DeferredValue;
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    move-object/from16 v12, p1

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 200
    nop

    .line 49
    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    move-object v2, v4

    .line 58
    .local v2, "result":Ljava/util/List;
    if-eqz v1, :cond_2

    .line 62
    return-object v2

    .line 59
    :cond_2
    new-instance v3, Lkotlin/TypeCastException;

    move-object/from16 v13, p3

    check-cast v13, Ljava/lang/Iterable;

    const-string v4, ", "

    move-object v14, v4

    check-cast v14, Ljava/lang/CharSequence;

    sget-object v4, Lexpo/modules/kotlin/types/EitherTypeConverterKt$createDeferredValues$1;->INSTANCE:Lexpo/modules/kotlin/types/EitherTypeConverterKt$createDeferredValues$1;

    move-object/from16 v19, v4

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v20, 0x1e

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot cast \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to \'Either<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final tryToConvert(Lexpo/modules/kotlin/types/TypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 2
    .param p0, "typeConverter"    # Lexpo/modules/kotlin/types/TypeConverter;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    nop

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/facebook/react/bridge/Dynamic;

    if-nez v0, :cond_0

    .line 33
    move-object v0, p1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    move-object v0, v1

    .line 31
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method
