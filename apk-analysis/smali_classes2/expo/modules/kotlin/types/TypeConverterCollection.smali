.class public final Lexpo/modules/kotlin/types/TypeConverterCollection;
.super Lexpo/modules/kotlin/types/NullAwareTypeConverter;
.source "TypeConverterCollection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter<",
        "TType;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeConverterCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,82:1\n125#2:83\n152#2,3:84\n766#3:87\n857#3,2:88\n1549#3:90\n1620#3,3:91\n37#4,2:94\n*S KotlinDebug\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection\n*L\n51#1:83\n51#1:84,3\n52#1:87\n52#1:88,2\n76#1:90\n76#1:91,3\n78#1:94,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0002\u0010\u0018J?\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0006\u0008\u0001\u0010\u001a\u0018\u00012#\u0008\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u0011H\u001a\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00028\u00000\u000bH\u0086\u0008\u00f8\u0001\u0000J\u0008\u0010\u001f\u001a\u00020 H\u0016R>\u0010\t\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00028\u00000\u000b0\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/TypeConverterCollection;",
        "Type",
        "",
        "Lexpo/modules/kotlin/types/NullAwareTypeConverter;",
        "type",
        "Lkotlin/reflect/KType;",
        "isOptional",
        "",
        "(Lkotlin/reflect/KType;Z)V",
        "converters",
        "",
        "Lkotlin/Function1;",
        "getConverters$annotations",
        "()V",
        "getConverters",
        "()Ljava/util/Map;",
        "setConverters",
        "(Ljava/util/Map;)V",
        "getType",
        "()Lkotlin/reflect/KType;",
        "convertNonOptional",
        "value",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;",
        "from",
        "P0",
        "body",
        "Lkotlin/ParameterName;",
        "name",
        "p0",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
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
.field private converters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "TType;>;>;"
        }
    .end annotation
.end field

.field private final type:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;Z)V
    .locals 1
    .param p1, "type"    # Lkotlin/reflect/KType;
    .param p2, "isOptional"    # Z

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p2}, Lexpo/modules/kotlin/types/NullAwareTypeConverter;-><init>(Z)V

    .line 34
    iput-object p1, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->type:Lkotlin/reflect/KType;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->converters:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static synthetic getConverters$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 13
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TType;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->converters:Ljava/util/Map;

    .line 51
    nop

    .local v0, "$this$map$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 84
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 85
    .local v6, "item$iv$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$a$-map-TypeConverterCollection$convertNonOptional$possibleConverters$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/KType;

    .local v8, "key":Lkotlin/reflect/KType;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .local v9, "converter":Lkotlin/jvm/functions/Function1;
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 85
    .end local v7    # "$i$a$-map-TypeConverterCollection$convertNonOptional$possibleConverters$1":I
    .end local v8    # "key":Lkotlin/reflect/KType;
    .end local v9    # "converter":Lkotlin/jvm/functions/Function1;
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v6    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 83
    nop

    .end local v0    # "$this$map$iv":Ljava/util/Map;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 52
    move-object v0, v2

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 87
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 88
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Lkotlin/Pair;

    const/4 v9, 0x0

    .line 52
    .local v9, "$i$a$-filter-TypeConverterCollection$convertNonOptional$possibleConverters$2":I
    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/KType;

    .line 53
    .restart local v8    # "key":Lkotlin/reflect/KType;
    invoke-interface {v8}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v10

    instance-of v11, v10, Lkotlin/reflect/KClass;

    if-eqz v11, :cond_2

    check-cast v10, Lkotlin/reflect/KClass;

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 54
    .local v10, "kClass":Lkotlin/reflect/KClass;
    :goto_2
    const/4 v11, 0x0

    if-eqz v10, :cond_3

    invoke-interface {v10, p1}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-ne v12, v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v11

    .line 88
    .end local v8    # "key":Lkotlin/reflect/KType;
    .end local v9    # "$i$a$-filter-TypeConverterCollection$convertNonOptional$possibleConverters$2":I
    .end local v10    # "kClass":Lkotlin/reflect/KClass;
    :goto_3
    if-eqz v7, :cond_1

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 87
    nop

    .line 52
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    nop

    .line 50
    move-object v0, v2

    .line 57
    .local v0, "possibleConverters":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    instance-of v1, p1, Lcom/facebook/react/bridge/Dynamic;

    if-eqz v1, :cond_5

    .line 61
    new-instance v1, Lexpo/modules/kotlin/types/ExpoDynamic;

    move-object v2, p1

    check-cast v2, Lcom/facebook/react/bridge/Dynamic;

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/types/ExpoDynamic;-><init>(Lcom/facebook/react/bridge/Dynamic;)V

    invoke-virtual {p0, v1, p2}, Lexpo/modules/kotlin/types/TypeConverterCollection;->convertNonOptional(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 64
    :cond_5
    new-instance v1, Lexpo/modules/kotlin/exception/MissingTypeConverter;

    iget-object v2, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->type:Lkotlin/reflect/KType;

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/exception/MissingTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    throw v1

    .line 67
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v7, :cond_7

    .line 71
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 68
    :cond_7
    new-instance v1, Lkotlin/TypeCastException;

    iget-object v2, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->type:Lkotlin/reflect/KType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot cast \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Type converters conflict"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final synthetic from(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterCollection;
    .locals 4
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TP0;+TType;>;)",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    .local v0, "$i$f$from":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x6

    const-string v3, "P0"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v2, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;

    invoke-direct {v2, p1}, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object p0
.end method

.method public final getConverters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "TType;>;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->converters:Ljava/util/Map;

    return-object v0
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 11

    .line 75
    sget-object v0, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    .line 76
    iget-object v1, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->converters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 91
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 92
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/KType;

    .local v8, "key":Lkotlin/reflect/KType;
    const/4 v9, 0x0

    .line 77
    .local v9, "$i$a$-map-TypeConverterCollection$getCppRequiredTypes$1":I
    sget-object v10, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    invoke-virtual {v10, v8}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->fromKType(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v8

    .line 92
    .end local v8    # "key":Lkotlin/reflect/KType;
    .end local v9    # "$i$a$-map-TypeConverterCollection$getCppRequiredTypes$1":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 90
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/util/Collection;

    .line 78
    move-object v1, v3

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 94
    .local v2, "$i$f$toTypedArray":I
    nop

    .line 95
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 78
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 76
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 75
    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->merge([Lexpo/modules/kotlin/jni/ExpectedType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lkotlin/reflect/KType;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->type:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final setConverters(Ljava/util/Map;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "TType;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lexpo/modules/kotlin/types/TypeConverterCollection;->converters:Ljava/util/Map;

    return-void
.end method
