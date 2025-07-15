.class public final Lexpo/modules/kotlin/types/TypeConverterComponent;
.super Ljava/lang/Object;
.source "TypeConverterCollection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeConverterCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterComponent\n+ 2 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection\n*L\n1#1,82:1\n41#2,6:83\n41#2,6:89\n*S KotlinDebug\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterComponent\n*L\n16#1:83,6\n17#1:89,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0011\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00140\u00130\u0012JC\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\n\u0008\u0001\u0010\u0016\u0018\u0001*\u00020\u00022#\u0008\u0004\u0010\u0017\u001a\u001d\u0012\u0013\u0012\u0011H\u0016\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00028\u00000\u0018H\u0086\u0008\u00f8\u0001\u0000R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/TypeConverterComponent;",
        "Type",
        "",
        "notNullableType",
        "Lkotlin/reflect/KType;",
        "nullableType",
        "(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V",
        "nonNullableConverter",
        "Lkotlin/Lazy;",
        "Lexpo/modules/kotlin/types/TypeConverterCollection;",
        "getNonNullableConverter",
        "()Lkotlin/Lazy;",
        "getNotNullableType",
        "()Lkotlin/reflect/KType;",
        "nullableConverter",
        "getNullableConverter",
        "getNullableType",
        "build",
        "",
        "Lkotlin/Pair;",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "from",
        "P0",
        "body",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "p0",
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
.field private final nonNullableConverter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation
.end field

.field private final notNullableType:Lkotlin/reflect/KType;

.field private final nullableConverter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation
.end field

.field private final nullableType:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)V
    .locals 1
    .param p1, "notNullableType"    # Lkotlin/reflect/KType;
    .param p2, "nullableType"    # Lkotlin/reflect/KType;

    const-string v0, "notNullableType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nullableType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->notNullableType:Lkotlin/reflect/KType;

    iput-object p2, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableType:Lkotlin/reflect/KType;

    .line 12
    new-instance v0, Lexpo/modules/kotlin/types/TypeConverterComponent$nonNullableConverter$1;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/types/TypeConverterComponent$nonNullableConverter$1;-><init>(Lexpo/modules/kotlin/types/TypeConverterComponent;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    .line 13
    new-instance v0, Lexpo/modules/kotlin/types/TypeConverterComponent$nullableConverter$1;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/types/TypeConverterComponent$nullableConverter$1;-><init>(Lexpo/modules/kotlin/types/TypeConverterComponent;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    .line 11
    return-void
.end method


# virtual methods
.method public final build()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/KType;",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->notNullableType:Lkotlin/reflect/KType;

    iget-object v2, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    iget-object v1, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableType:Lkotlin/reflect/KType;

    iget-object v2, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    nop

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic from(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterComponent;
    .locals 8
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TP0;+TType;>;)",
            "Lexpo/modules/kotlin/types/TypeConverterComponent<",
            "TType;>;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    .local v0, "$i$f$from":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNonNullableConverter()Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .local v1, "this_$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    const/4 v2, 0x0

    .line 83
    .local v2, "$i$f$from":I
    invoke-virtual {v1}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x6

    const-string v5, "P0"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v6, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;

    invoke-direct {v6, p1}, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    nop

    .line 17
    .end local v1    # "this_$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    .end local v2    # "$i$f$from":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/TypeConverterComponent;->getNullableConverter()Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/types/TypeConverterCollection;

    .restart local v1    # "this_$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    const/4 v2, 0x0

    .line 89
    .restart local v2    # "$i$f$from":I
    invoke-virtual {v1}, Lexpo/modules/kotlin/types/TypeConverterCollection;->getConverters()Ljava/util/Map;

    move-result-object v3

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    new-instance v4, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;

    invoke-direct {v4, p1}, Lexpo/modules/kotlin/types/TypeConverterCollection$from$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    nop

    .line 18
    .end local v1    # "this_$iv":Lexpo/modules/kotlin/types/TypeConverterCollection;
    .end local v2    # "$i$f$from":I
    return-object p0
.end method

.method public final getNonNullableConverter()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nonNullableConverter:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getNotNullableType()Lkotlin/reflect/KType;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->notNullableType:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final getNullableConverter()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/types/TypeConverterCollection<",
            "TType;>;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableConverter:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getNullableType()Lkotlin/reflect/KType;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/kotlin/types/TypeConverterComponent;->nullableType:Lkotlin/reflect/KType;

    return-object v0
.end method
