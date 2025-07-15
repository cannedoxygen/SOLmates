.class public final Lexpo/modules/kotlin/types/SetTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "SetTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "Ljava/util/Set<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetTypeConverter.kt\nexpo/modules/kotlin/types/SetTypeConverter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 4 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n+ 5 DynamicExtenstions.kt\nexpo/modules/kotlin/DynamicExtenstionsKt\n*L\n1#1,69:1\n1549#2:70\n1620#2,2:71\n1622#2:83\n5#3,4:73\n5#3,4:86\n11#4,6:77\n11#4,6:90\n7#5,2:84\n10#5:96\n*S KotlinDebug\n*F\n+ 1 SetTypeConverter.kt\nexpo/modules/kotlin/types/SetTypeConverter\n*L\n31#1:70\n31#1:71,2\n31#1:83\n32#1:73,4\n49#1:86,4\n32#1:77,6\n49#1:90,6\n48#1:84,2\n48#1:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001e\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001e\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/SetTypeConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "setType",
        "Lkotlin/reflect/KType;",
        "(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V",
        "elementConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "convertFromAny",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "convertFromReadableArray",
        "jsArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
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
.field private final elementConverter:Lexpo/modules/kotlin/types/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation
.end field

.field private final setType:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
    .locals 2
    .param p1, "converterProvider"    # Lexpo/modules/kotlin/types/TypeConverterProvider;
    .param p2, "setType"    # Lkotlin/reflect/KType;

    const-string v0, "converterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lexpo/modules/kotlin/types/SetTypeConverter;->setType:Lkotlin/reflect/KType;

    .line 16
    nop

    .line 17
    iget-object v0, p0, Lexpo/modules/kotlin/types/SetTypeConverter;->setType:Lkotlin/reflect/KType;

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

    iput-object v0, p0, Lexpo/modules/kotlin/types/SetTypeConverter;->elementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    .line 12
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .local v0, "$i$a$-requireNotNull-SetTypeConverter$elementConverter$1":I
    nop

    .line 17
    .end local v0    # "$i$a$-requireNotNull-SetTypeConverter$elementConverter$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set type should contain the type of elements."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final convertFromReadableArray(Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/AppContext;)Ljava/util/Set;
    .locals 17
    .param p1, "jsArray"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 47
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v3

    .local v4, "index":I
    const/4 v5, 0x0

    .line 48
    .local v5, "$i$a$-List-SetTypeConverter$convertFromReadableArray$1":I
    move-object/from16 v6, p1

    invoke-interface {v6, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDynamic(I)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v7

    .local v7, "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    const/4 v8, 0x0

    .line 84
    .local v8, "$i$f$recycle":I
    nop

    .line 85
    move-object v9, v7

    .local v9, "$this$convertFromReadableArray_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    const/4 v10, 0x0

    .line 49
    .local v10, "$i$a$-recycle-SetTypeConverter$convertFromReadableArray$1$1":I
    const/4 v11, 0x0

    .line 86
    .local v11, "$i$f$exceptionDecorator":I
    nop

    .line 87
    const/4 v12, 0x0

    .line 57
    .local v12, "$i$a$-exceptionDecorator-SetTypeConverter$convertFromReadableArray$1$1$2":I
    :try_start_0
    iget-object v13, v1, Lexpo/modules/kotlin/types/SetTypeConverter;->elementConverter:Lexpo/modules/kotlin/types/TypeConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p2

    :try_start_1
    invoke-virtual {v13, v9, v14}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v12    # "$i$a$-exceptionDecorator-SetTypeConverter$convertFromReadableArray$1$1$2":I
    nop

    .line 86
    nop

    .line 49
    .end local v11    # "$i$f$exceptionDecorator":I
    nop

    .line 85
    .end local v9    # "$this$convertFromReadableArray_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .end local v10    # "$i$a$-recycle-SetTypeConverter$convertFromReadableArray$1$1":I
    nop

    .line 96
    invoke-interface {v7}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 85
    nop

    .line 48
    .end local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v8    # "$i$f$recycle":I
    nop

    .line 47
    .end local v4    # "index":I
    .end local v5    # "$i$a$-List-SetTypeConverter$convertFromReadableArray$1":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .restart local v4    # "index":I
    .restart local v5    # "$i$a$-List-SetTypeConverter$convertFromReadableArray$1":I
    .restart local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v8    # "$i$f$recycle":I
    .restart local v9    # "$this$convertFromReadableArray_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .restart local v10    # "$i$a$-recycle-SetTypeConverter$convertFromReadableArray$1$1":I
    .restart local v11    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v14, p2

    .line 89
    .local v0, "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v2, v0

    .local v2, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 90
    .local v3, "$i$f$toCodedException":I
    nop

    .line 91
    nop

    .line 92
    :try_start_2
    instance-of v12, v2, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v12, :cond_1

    .line 93
    instance-of v12, v2, Lexpo/modules/core/errors/CodedException;

    if-eqz v12, :cond_0

    new-instance v12, Lexpo/modules/kotlin/exception/CodedException;

    move-object v13, v2

    check-cast v13, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v13}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v13

    const-string v15, "getCode(...)"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .local v16, "e$iv":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v12, v13, v15, v0}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 94
    .end local v16    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    :cond_0
    move-object/from16 v16, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v16    # "e$iv":Ljava/lang/Throwable;
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v2}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object v12, v0

    check-cast v12, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 92
    .end local v16    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v16    # "e$iv":Ljava/lang/Throwable;
    move-object v12, v2

    check-cast v12, Lexpo/modules/kotlin/exception/CodedException;

    .line 95
    :goto_2
    nop

    .line 89
    .end local v2    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$toCodedException":I
    move-object v0, v12

    .local v0, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-exceptionDecorator-SetTypeConverter$convertFromReadableArray$1$1$1":I
    new-instance v3, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    .line 51
    iget-object v12, v1, Lexpo/modules/kotlin/types/SetTypeConverter;->setType:Lkotlin/reflect/KType;

    .line 52
    iget-object v13, v1, Lexpo/modules/kotlin/types/SetTypeConverter;->setType:Lkotlin/reflect/KType;

    invoke-interface {v13}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v13}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-interface {v9}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v15

    .line 54
    nop

    .line 50
    invoke-direct {v3, v12, v13, v15, v0}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lcom/facebook/react/bridge/ReadableType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 89
    .end local v0    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v2    # "$i$a$-exceptionDecorator-SetTypeConverter$convertFromReadableArray$1$1$1":I
    nop

    .end local v4    # "index":I
    .end local v5    # "$i$a$-List-SetTypeConverter$convertFromReadableArray$1":I
    .end local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v8    # "$i$f$recycle":I
    .end local p1    # "jsArray":Lcom/facebook/react/bridge/ReadableArray;
    .end local p2    # "context":Lexpo/modules/kotlin/AppContext;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    .end local v9    # "$this$convertFromReadableArray_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .end local v10    # "$i$a$-recycle-SetTypeConverter$convertFromReadableArray$1$1":I
    .end local v11    # "$i$f$exceptionDecorator":I
    .end local v16    # "e$iv":Ljava/lang/Throwable;
    .restart local v4    # "index":I
    .restart local v5    # "$i$a$-List-SetTypeConverter$convertFromReadableArray$1":I
    .restart local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v8    # "$i$f$recycle":I
    .restart local p1    # "jsArray":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p2    # "context":Lexpo/modules/kotlin/AppContext;
    :catchall_2
    move-exception v0

    invoke-interface {v7}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    throw v0

    .line 47
    .end local v4    # "index":I
    .end local v5    # "$i$a$-List-SetTypeConverter$convertFromReadableArray$1":I
    .end local v7    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v8    # "$i$f$recycle":I
    :cond_2
    move-object/from16 v6, p1

    move-object/from16 v14, p2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 60
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 47
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 12
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/SetTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/util/Set;
    .locals 18
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "value"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, v1, Lexpo/modules/kotlin/types/SetTypeConverter;->elementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->isTrivial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v14, p2

    goto/16 :goto_3

    .line 31
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 70
    .local v4, "$i$f$map":I
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 71
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 72
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 32
    .local v10, "$i$a$-map-SetTypeConverter$convertFromAny$1":I
    const/4 v11, 0x0

    .line 73
    .local v11, "$i$f$exceptionDecorator":I
    nop

    .line 74
    const/4 v12, 0x0

    .line 40
    .local v12, "$i$a$-exceptionDecorator-SetTypeConverter$convertFromAny$1$2":I
    :try_start_0
    iget-object v13, v1, Lexpo/modules/kotlin/types/SetTypeConverter;->elementConverter:Lexpo/modules/kotlin/types/TypeConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p2

    :try_start_1
    invoke-virtual {v13, v9, v14}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v12    # "$i$a$-exceptionDecorator-SetTypeConverter$convertFromAny$1$2":I
    nop

    .line 73
    nop

    .line 32
    .end local v11    # "$i$f$exceptionDecorator":I
    nop

    .line 72
    .end local v9    # "it":Ljava/lang/Object;
    .end local v10    # "$i$a$-map-SetTypeConverter$convertFromAny$1":I
    invoke-interface {v5, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .restart local v9    # "it":Ljava/lang/Object;
    .restart local v10    # "$i$a$-map-SetTypeConverter$convertFromAny$1":I
    .restart local v11    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v14, p2

    .line 76
    .local v0, "e$iv":Ljava/lang/Throwable;
    :goto_1
    move-object v12, v0

    .local v12, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 77
    .local v13, "$i$f$toCodedException":I
    nop

    .line 78
    nop

    .line 79
    instance-of v15, v12, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v15, :cond_2

    .line 80
    instance-of v15, v12, Lexpo/modules/core/errors/CodedException;

    if-eqz v15, :cond_1

    new-instance v15, Lexpo/modules/kotlin/exception/CodedException;

    move-object/from16 v16, v12

    check-cast v16, Lexpo/modules/core/errors/CodedException;

    move-object/from16 v17, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .local v17, "e$iv":Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getCode(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v3

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .local v16, "$this$map$iv":Ljava/lang/Iterable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v15, v0, v2, v3}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 81
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_1
    move-object/from16 v17, v0

    move-object/from16 v16, v3

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v17    # "e$iv":Ljava/lang/Throwable;
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v12}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object v15, v0

    check-cast v15, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_2

    .line 79
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v16, v3

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v17    # "e$iv":Ljava/lang/Throwable;
    move-object v15, v12

    check-cast v15, Lexpo/modules/kotlin/exception/CodedException;

    .line 82
    :goto_2
    nop

    .line 76
    .end local v12    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$i$f$toCodedException":I
    move-object v0, v15

    .local v0, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v2, 0x0

    .line 33
    .local v2, "$i$a$-exceptionDecorator-SetTypeConverter$convertFromAny$1$1":I
    new-instance v3, Lexpo/modules/kotlin/exception/CollectionElementCastException;

    .line 34
    iget-object v12, v1, Lexpo/modules/kotlin/types/SetTypeConverter;->setType:Lkotlin/reflect/KType;

    .line 35
    iget-object v13, v1, Lexpo/modules/kotlin/types/SetTypeConverter;->setType:Lkotlin/reflect/KType;

    invoke-interface {v13}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v13}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 37
    nop

    .line 33
    invoke-direct {v3, v12, v13, v15, v0}, Lexpo/modules/kotlin/exception/CollectionElementCastException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Lkotlin/reflect/KClass;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 76
    .end local v0    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v2    # "$i$a$-exceptionDecorator-SetTypeConverter$convertFromAny$1$1":I
    throw v3

    .line 83
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "it":Ljava/lang/Object;
    .end local v10    # "$i$a$-map-SetTypeConverter$convertFromAny$1":I
    .end local v11    # "$i$f$exceptionDecorator":I
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v17    # "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_3
    move-object/from16 v14, p2

    move-object/from16 v16, v3

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    .restart local v16    # "$this$map$iv":Ljava/lang/Iterable;
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 70
    nop

    .end local v4    # "$i$f$map":I
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    check-cast v0, Ljava/lang/Iterable;

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 28
    :goto_3
    return-object v0
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 12
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/SetTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/util/Set;
    .locals 2
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Dynamic;",
            "Lexpo/modules/kotlin/AppContext;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 24
    .local v0, "jsArray":Lcom/facebook/react/bridge/ReadableArray;
    invoke-direct {p0, v0, p2}, Lexpo/modules/kotlin/types/SetTypeConverter;->convertFromReadableArray(Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/AppContext;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 2

    .line 64
    sget-object v0, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    iget-object v1, p0, Lexpo/modules/kotlin/types/SetTypeConverter;->elementConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v1}, Lexpo/modules/kotlin/types/TypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forList(Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method
