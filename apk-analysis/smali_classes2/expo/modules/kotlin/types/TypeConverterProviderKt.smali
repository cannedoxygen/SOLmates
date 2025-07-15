.class public final Lexpo/modules/kotlin/types/TypeConverterProviderKt;
.super Ljava/lang/Object;
.source "TypeConverterProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001e\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\u0008\u00a2\u0006\u0002\u0010\u0004\u001a\u0018\u0010\u0000\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007\u001a \u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0005H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001a\u001b\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\n\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0005H\u0086\u0008\u001a\u0012\u0010\u000b\u001a\u00020\u000c*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c\u001a\u000c\u0010\u000e\u001a\u00020\u000c*\u0004\u0018\u00010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "convert",
        "T",
        "value",
        "Lcom/facebook/react/bridge/Dynamic;",
        "(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Object;",
        "",
        "type",
        "Lkotlin/reflect/KType;",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "obtainTypeConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "mergeWith",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "otherProvider",
        "mergeWithDefault",
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
.method public static final synthetic convert(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/Object;
    .locals 5
    .param p0, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$convert":I
    sget-object v1, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v1

    .line 62
    .local v1, "converter":Lexpo/modules/kotlin/types/TypeConverter;
    const/4 v4, 0x2

    invoke-static {v1, p0, v2, v4, v2}, Lexpo/modules/kotlin/types/TypeConverter;->convert$default(Lexpo/modules/kotlin/types/TypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/Object;

    return-object v2
.end method

.method public static final convert(Lcom/facebook/react/bridge/Dynamic;Lkotlin/reflect/KType;)Ljava/lang/Object;
    .locals 3
    .param p0, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p1, "type"    # Lkotlin/reflect/KType;

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    .line 72
    .local v0, "converter":Lexpo/modules/kotlin/types/TypeConverter;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lexpo/modules/kotlin/types/TypeConverter;->convert$default(Lexpo/modules/kotlin/types/TypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$convert":I
    sget-object v1, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v1

    .line 67
    .local v1, "converter":Lexpo/modules/kotlin/types/TypeConverter;
    const/4 v4, 0x2

    invoke-static {v1, p0, v2, v4, v2}, Lexpo/modules/kotlin/types/TypeConverter;->convert$default(Lexpo/modules/kotlin/types/TypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/Object;

    return-object v2
.end method

.method public static final mergeWith(Lexpo/modules/kotlin/types/TypeConverterProvider;Lexpo/modules/kotlin/types/TypeConverterProvider;)Lexpo/modules/kotlin/types/TypeConverterProvider;
    .locals 3
    .param p0, "$this$mergeWith"    # Lexpo/modules/kotlin/types/TypeConverterProvider;
    .param p1, "otherProvider"    # Lexpo/modules/kotlin/types/TypeConverterProvider;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lexpo/modules/kotlin/types/MergedTypeConverterProvider;

    const/4 v1, 0x2

    new-array v1, v1, [Lexpo/modules/kotlin/types/TypeConverterProvider;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/types/MergedTypeConverterProvider;-><init>(Ljava/util/List;)V

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterProvider;

    return-object v0
.end method

.method public static final mergeWithDefault(Lexpo/modules/kotlin/types/TypeConverterProvider;)Lexpo/modules/kotlin/types/TypeConverterProvider;
    .locals 1
    .param p0, "$this$mergeWithDefault"    # Lexpo/modules/kotlin/types/TypeConverterProvider;

    .line 329
    if-eqz p0, :cond_0

    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-static {p0, v0}, Lexpo/modules/kotlin/types/TypeConverterProviderKt;->mergeWith(Lexpo/modules/kotlin/types/TypeConverterProvider;Lexpo/modules/kotlin/types/TypeConverterProvider;)Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverterProvider;

    :cond_1
    return-object v0
.end method

.method public static final synthetic obtainTypeConverter()Lexpo/modules/kotlin/types/TypeConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$obtainTypeConverter":I
    sget-object v1, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type expo.modules.kotlin.types.TypeConverter<T of expo.modules.kotlin.types.TypeConverterProviderKt.obtainTypeConverter>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v1
.end method
